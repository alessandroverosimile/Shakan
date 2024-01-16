package YoseUe_SATL

import chisel3._
import chisel3.util._
import chisel3.experimental._
import chisel3.stage.ChiselStage
import scala.math._


class TreePEsWrapper(n_trees: Int, max_depth: Int, n_attr: Int, n_classes: Int, n_depths: Int, info_bit: Int, tree_bit: Int, attr_bit: Int, bram_size: Int = 36864, structure_list: List[List[Int]], synthesis: Boolean = false) extends Module{
    
    var total_trees = 0
    var n_pes = 0
    for(i <- 0 until structure_list.length){
        n_pes = n_pes + structure_list(i)(0)
        total_trees = total_trees + structure_list(i)(1)
    }

    println("N_PES", n_pes)

    var rounded_info_bit = 0
    if (info_bit%8==0){
        rounded_info_bit = info_bit
    }else{
        rounded_info_bit = info_bit + 8 - info_bit%8
    }
    var rounded_tree_bit = 0
    if (tree_bit%8==0){
        rounded_tree_bit = tree_bit
    }else{
        rounded_tree_bit = tree_bit + 8 - tree_bit%8
    }
    val compensation = if ((n_attr+n_classes+n_depths)%2==0) 16 else 0 
    
    
    val wrapper_io = IO(new Bundle{
        val sample_in = new AxiSample(n_attr,n_classes,n_depths,rounded_info_bit,rounded_tree_bit,compensation)
        val sample_out = Flipped(new AxiSample(n_attr,n_classes,n_depths,rounded_info_bit,rounded_tree_bit,compensation))
    })
    val width = if(synthesis) 32 else 64 
    val brams_io = Seq.fill(n_pes)(IO(new BRAMLikeVivadoIO(width,13,synthesis)))
    
    if (synthesis){
        val cycles_counter = RegInit(0.U.asTypeOf(UInt(32.W)))
        val counting = RegInit(false.B)
        val stop_count = RegInit(false.B)
        //reduce the list of lengths to a set of PEs, each one with all the linked PEs
        var link_map = Map.empty[PE,List[PE]]

        val forward_converter = Module(new ForwardConverter(n_attr,n_classes,n_depths,info_bit,tree_bit,rounded_info_bit,rounded_tree_bit,compensation))
        val backward_converter = Module(new BackwardConverter(n_attr,n_classes,n_depths,info_bit,tree_bit,rounded_info_bit,rounded_tree_bit,compensation))
        
        var counter = 0
        var first_interconnects = List.empty[FirstInterconnectPE]
        var last_interconnects = List.empty[LastInterconnectPE]
        for(i <- 0 until structure_list.length){
            val pes = Seq.tabulate(structure_list(i)(0))(j => Module(new TreePEwithBRAM(new ElemId(2,i,j,0), n_attr,n_classes,n_depths,info_bit,tree_bit,attr_bit,j%max_depth==0,structure_list(i)(1))))
            val brams = Seq.tabulate(structure_list(i)(0))(j => Module(new BRAMBlackBox(32,64,13))) 
            
            val first_interconnect = Module(new FirstInterconnectPE(new ElemId(2,i,1,0),n_attr,n_classes,n_depths,info_bit,tree_bit))
            val last_interconnect = Module(new LastInterconnectPE(new ElemId(2,i,structure_list(i)(0)+2,0),n_attr,n_classes,n_depths,info_bit,tree_bit))
            val increment = Module(new IncrementTreePE(new ElemId(2,i,structure_list(i)(0)+3,0),n_attr,n_classes,n_depths,info_bit,tree_bit))
            //brams link
            for(j <- 0 until structure_list(i)(0)){
                //wrapper_io.brams(counter) <> pes(j).pe_io.mem

                brams(j).io.b_en := pes(j).pe_io.mem.enable_1
                brams(j).io.b_wr := pes(j).pe_io.mem.write_1
                brams(j).io.b_addr := pes(j).pe_io.mem.addr_1
                brams(j).io.b_din := pes(j).pe_io.mem.dataIn_1
                pes(j).pe_io.mem.dataOut_1 := brams(j).io.b_dout

                brams(j).io.a_en := brams_io(counter).bram_en_a
                brams(j).io.a_wr := brams_io(counter).bram_we_a(0)
                brams(j).io.a_addr := brams_io(counter).bram_addr_a
                brams(j).io.a_din := brams_io(counter).bram_wrdata_a
                brams_io(counter).bram_rddata_a := brams(j).io.a_dout

                brams(j).io.clk := brams_io(counter).bram_clk_a

                pes(j).pe_io.mem.dataOut_2 := DontCare
                
                counter = counter + 1
            }

            link_map = link_map + (first_interconnect -> List(pes(0)))
            for(j <- 0 until structure_list(i)(0)){
                if(j == structure_list(i)(0)-1){
                    link_map = link_map + (pes(j) -> List(last_interconnect))
                }else{
                    link_map = link_map + (pes(j) -> List(pes(j+1)))
                }
            }
            link_map = link_map + (last_interconnect -> List(increment)) //List(increment,voter)
            link_map = link_map + (increment -> List(first_interconnect))

            first_interconnects = first_interconnects :+ first_interconnect
            last_interconnects = last_interconnects :+ last_interconnect

            backward_converter.io.sample_in.bits.features := last_interconnect.io.sample_leaving.bits.features
            backward_converter.io.sample_in.bits.weights := last_interconnect.io.sample_leaving.bits.weights
            backward_converter.io.sample_in.bits.tree_to_exec := last_interconnect.io.sample_leaving.bits.tree_to_exec
            backward_converter.io.sample_in.bits.shift := last_interconnect.io.sample_leaving.bits.shift
            backward_converter.io.sample_in.bits.offset := last_interconnect.io.sample_leaving.bits.offset
            backward_converter.io.sample_in.bits.scores := last_interconnect.io.sample_leaving.bits.scores
            backward_converter.io.sample_in.bits.search_for_root := last_interconnect.io.sample_leaving.bits.search_for_root
            backward_converter.io.sample_in.bits.dest := last_interconnect.io.sample_leaving.bits.dest
            backward_converter.io.sample_in.bits.last := last_interconnect.io.sample_leaving.bits.last
            backward_converter.io.sample_in.valid := last_interconnect.io.sample_leaving.valid
            backward_converter.io.sample_in.bits.clock_cycles := cycles_counter
            last_interconnect.io.sample_leaving.ready := backward_converter.io.sample_in.ready
        }

        //link_map = link_map + (dispatcher -> first_interconnects)

        println(link_map)

        for((key,value) <- link_map){
            for(j <- 0 until value.length){
                if(value(j).isInstanceOf[TreePEwithBRAM]){
                    key.link_to_tree_pe(value(j).asInstanceOf[TreePEwithBRAM])
                }else if(value(j).isInstanceOf[FirstInterconnectPE]){
                    key.link_to_first_interconnect(value(j).id.x, value(j).asInstanceOf[FirstInterconnectPE])
                }else if(value(j).isInstanceOf[LastInterconnectPE]){
                    key.link_to_last_interconnect(value(j).asInstanceOf[LastInterconnectPE])
                }else if(value(j).isInstanceOf[IncrementTreePE]){
                    key.link_to_increment(value(j).asInstanceOf[IncrementTreePE])
                }else if(value(j).isInstanceOf[VoterPE]){
                    key.link_to_voter(key.id.x,value(j).asInstanceOf[VoterPE])
                }else{
                    println("WARNING: LINK TO UNKNOWN PE")
                }
            }
        }

        when(wrapper_io.sample_in.TVALID & !counting & !stop_count){
            counting := true.B
        }.elsewhen(last_interconnects(0).io.sample_leaving.valid & last_interconnects(0).io.sample_leaving.bits.last){
            counting := false.B
            stop_count := true.B
        }.otherwise{
            counting := counting
        }
        cycles_counter := Mux(counting,cycles_counter+1.U,cycles_counter)
    
        wrapper_io.sample_in <> forward_converter.io.sample_in
        forward_converter.io.sample_out <> first_interconnects(0).io.sample_entering
        //voter.io.sample_out <> backward_converter.io.sample_in
        wrapper_io.sample_out <> backward_converter.io.sample_out
        //wrapper_io.sample_out.TVALID := backward_converter.io.sample_out.TVALID
        //wrapper_io.sample_out.TLAST := backward_converter.io.sample_out.TLAST
        //backward_converter.io.sample_out.TREADY := wrapper_io.sample_out.TREADY
        //wrapper_io.sample_out.TDATA := Cat(cycles_counter,  backward_converter.io.sample_out.TDATA((n_attr+n_depths+n_classes)*16+24+rounded_info_bit+rounded_tree_bit+compensation - 33,0))
        
        println("END SYNTHESIS PREPARATION")

    }else{
        val cycles_counter = RegInit(1.U.asTypeOf(UInt(32.W)))
        val counting = RegInit(false.B)
        val stop_count = RegInit(false.B)
        //reduce the list of lengths to a set of PEs, each one with all the linked PEs
        var link_map = Map.empty[PE,List[PE]]

        val forward_converter = Module(new ForwardConverter(n_attr,n_classes,n_depths,info_bit,tree_bit,rounded_info_bit,rounded_tree_bit,compensation))
        val backward_converter = Module(new BackwardConverter(n_attr,n_classes,n_depths,info_bit,tree_bit,rounded_info_bit,rounded_tree_bit,compensation))
        
        //val dispatcher = Module(new DispatcherPE(new ElemId(2,0,0,0), n_attr,n_classes,n_depths,info_bit,tree_bit,structure_list.length))
        //val voter = Module(new VoterPE(new ElemId(2,0,structure_list.map(row=>row(0)).max + 4,0),n_attr,n_classes,n_depths,info_bit,tree_bit,structure_list.length))

        var counter = 0
        var first_interconnects = List.empty[FirstInterconnectPE]
        var last_interconnects = List.empty[LastInterconnectPE]

        for(i <- 0 until structure_list.length){
            val pes = Seq.tabulate(structure_list(i)(0))(j => Module(new TreePEwithBRAM(new ElemId(2,i,j,0), n_attr,n_classes,n_depths,info_bit,tree_bit,attr_bit,j==0,structure_list(i)(1))))
            val brams = Seq.tabulate(structure_list(i)(0))(j => Module(new BRAMLikeMem1(new ElemId(2,i,j,0),64,13)))
            val first_interconnect = Module(new FirstInterconnectPE(new ElemId(2,i,1,0),n_attr,n_classes,n_depths,info_bit,tree_bit))
            val last_interconnect = Module(new LastInterconnectPE(new ElemId(2,i,structure_list(i)(0)+2,0),n_attr,n_classes,n_depths,info_bit,tree_bit))
            val increment = Module(new IncrementTreePE(new ElemId(2,i,structure_list(i)(0)+3,0),n_attr,n_classes,n_depths,info_bit,tree_bit))
            //brams link
            for(j <- 0 until structure_list(i)(0)){
                //wrapper_io.brams(counter) <> pes(j).pe_io.mem

                brams(j).io.enable_1 := pes(j).pe_io.mem.enable_1
                brams(j).io.write_1 := pes(j).pe_io.mem.write_1
                brams(j).io.addr_1 := pes(j).pe_io.mem.addr_1
                brams(j).io.dataIn_1 := pes(j).pe_io.mem.dataIn_1
                pes(j).pe_io.mem.dataOut_1 := brams(j).io.dataOut_1

                brams(j).io.enable_2 := brams_io(counter).bram_en_a
                brams(j).io.write_2 := brams_io(counter).bram_we_a(0)
                brams(j).io.addr_2 := brams_io(counter).bram_addr_a
                brams(j).io.dataIn_2 := brams_io(counter).bram_wrdata_a
                brams_io(counter).bram_rddata_a := brams(j).io.dataOut_2

                pes(j).pe_io.mem.dataOut_2 := DontCare
                
                counter = counter + 1
            }

            link_map = link_map + (first_interconnect -> List(pes(0)))
            for(j <- 0 until structure_list(i)(0)){
                if(j == structure_list(i)(0)-1){
                    link_map = link_map + (pes(j) -> List(last_interconnect))
                }else{
                    link_map = link_map + (pes(j) -> List(pes(j+1)))
                }
            }
            link_map = link_map + (last_interconnect -> List(increment)) //List(increment,voter)
            link_map = link_map + (increment -> List(first_interconnect))

            first_interconnects = first_interconnects :+ first_interconnect
            last_interconnects = last_interconnects :+ last_interconnect

            backward_converter.io.sample_in.bits.features := last_interconnect.io.sample_leaving.bits.features
            backward_converter.io.sample_in.bits.weights := last_interconnect.io.sample_leaving.bits.weights
            backward_converter.io.sample_in.bits.tree_to_exec := last_interconnect.io.sample_leaving.bits.tree_to_exec
            backward_converter.io.sample_in.bits.shift := last_interconnect.io.sample_leaving.bits.shift
            backward_converter.io.sample_in.bits.offset := last_interconnect.io.sample_leaving.bits.offset
            backward_converter.io.sample_in.bits.scores := last_interconnect.io.sample_leaving.bits.scores
            backward_converter.io.sample_in.bits.search_for_root := last_interconnect.io.sample_leaving.bits.search_for_root
            backward_converter.io.sample_in.bits.dest := last_interconnect.io.sample_leaving.bits.dest
            backward_converter.io.sample_in.bits.last := last_interconnect.io.sample_leaving.bits.last
            backward_converter.io.sample_in.valid := last_interconnect.io.sample_leaving.valid
            backward_converter.io.sample_in.bits.clock_cycles := cycles_counter
            last_interconnect.io.sample_leaving.ready := backward_converter.io.sample_in.ready
        }

       // link_map = link_map + (dispatcher -> first_interconnects)

        println(link_map)

        for((key,value) <- link_map){
            for(j <- 0 until value.length){
                if(value(j).isInstanceOf[TreePEwithBRAM]){
                    key.link_to_tree_pe(value(j).asInstanceOf[TreePEwithBRAM])
                }else if(value(j).isInstanceOf[FirstInterconnectPE]){
                    key.link_to_first_interconnect(value(j).id.x, value(j).asInstanceOf[FirstInterconnectPE])
                }else if(value(j).isInstanceOf[LastInterconnectPE]){
                    key.link_to_last_interconnect(value(j).asInstanceOf[LastInterconnectPE])
                }else if(value(j).isInstanceOf[IncrementTreePE]){
                    key.link_to_increment(value(j).asInstanceOf[IncrementTreePE])
                }else if(value(j).isInstanceOf[VoterPE]){
                    key.link_to_voter(key.id.x,value(j).asInstanceOf[VoterPE])
                }else{
                    println("WARNING: LINK TO UNKNOWN PE")
                }
            }
        }

        when(wrapper_io.sample_in.TVALID & !counting & !stop_count){
            counting := true.B
        }.elsewhen(last_interconnects(0).io.sample_leaving.valid & last_interconnects(0).io.sample_leaving.bits.last){
            counting := false.B
            stop_count := true.B
        }.otherwise{
            counting := counting
        }
        cycles_counter := Mux(counting,cycles_counter+1.U,cycles_counter)
    
        wrapper_io.sample_in <> forward_converter.io.sample_in
        forward_converter.io.sample_out <> first_interconnects(0).io.sample_entering
        //voter.io.sample_out <> backward_converter.io.sample_in
        wrapper_io.sample_out <> backward_converter.io.sample_out
        //wrapper_io.sample_out.TVALID := backward_converter.io.sample_out.TVALID
        //wrapper_io.sample_out.TLAST := backward_converter.io.sample_out.TLAST
        //backward_converter.io.sample_out.TREADY := wrapper_io.sample_out.TREADY
        //wrapper_io.sample_out.TDATA := Cat(cycles_counter,  backward_converter.io.sample_out.TDATA((n_attr+n_depths+n_classes)*16+24+rounded_info_bit+rounded_tree_bit+compensation - 33,0))
        
        println("END SIMULATION PREPARATION")
    }
    
}