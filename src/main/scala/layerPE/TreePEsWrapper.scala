package YoseUe_SATL

import chisel3._
import chisel3.util._
import chisel3.experimental._
import chisel3.stage.ChiselStage
import scala.math._


class TreePEsWrapper(n_trees: Int, max_depth: Int, n_attr: Int, n_classes: Int, n_depths: Int, info_bit: Int, tree_bit: Int, attr_bit: Int, bram_size: Int = 36864, structure_list: List[List[Int]], synthesis: Boolean = false) extends Module{
    /*val instruction_per_bram = (bram_size/64).toInt //64 is the Node Instruction size, fixed to 64. It should not change but, if It will happen, remember to change the value here
    val trees_for_depth = (math.ceil(n_trees/n_depths)).toInt
    val max_trees_at_maximum_depth = instruction_per_bram/(math.pow(2,max_depth-1))
    val set_of_pes = (math.ceil(trees_for_depth/max_trees_at_maximum_depth)).toInt
    val n_pes = max_depth*set_of_pes
    var n_loops = 0
    if (set_of_pes > 1){
        n_loops = (max_trees_at_maximum_depth*n_depths).toInt
    }else{
        n_loops = n_trees
    }
    //optimized version of n_loops (it needs an adaptation of the code that fills the BRAMs
    //n_loops = n_trees/set_of_pes
    */

    
    var total_trees = 0
    var n_pes = 0
    for(i <- 0 until structure_list.length){
        n_pes = n_pes + structure_list(i)(0)
        total_trees = total_trees + structure_list(i)(1)
    }
    require(total_trees==n_trees)
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
        val sample_in = Flipped(Decoupled(new AxiSample(n_attr,n_classes,n_depths,rounded_info_bit,rounded_tree_bit,compensation)))
        val sample_out = Decoupled(new AxiSample(n_attr,n_classes,n_depths,rounded_info_bit,rounded_tree_bit,compensation))
    })

    val queue = Module(new Queue(Flipped(new AxiSample(n_attr,n_classes,n_depths,rounded_info_bit,rounded_tree_bit,compensation)),4))

    wrapper_io.sample_in.ready := queue.io.enq.ready

    queue.io.enq.bits := wrapper_io.sample_in.bits
    queue.io.enq.valid := wrapper_io.sample_in.valid

    wrapper_io.sample_out.bits := queue.io.deq.bits
    wrapper_io.sample_out.valid := queue.io.deq.valid
    queue.io.deq.ready := wrapper_io.sample_out.ready

    /*
    val wrapper_io = IO(new Bundle{
        val sample_in = new AxiSample(n_attr,n_classes,n_depths,rounded_info_bit,rounded_tree_bit,compensation)
        val sample_out = Flipped(new AxiSample(n_attr,n_classes,n_depths,rounded_info_bit,rounded_tree_bit,compensation))
    })
    val width = if(synthesis) 32 else 64 
    val brams_io = Seq.fill(n_pes)(IO(new BRAMLikeVivadoIO(width,13,synthesis)))
    
    if (synthesis){
        
        //reduce the list of lengths to a set of PEs, each one with all the linked PEs
        var link_map = Map.empty[PE,List[PE]]

        val forward_converter = Module(new ForwardConverter(n_attr,n_classes,n_depths,info_bit,tree_bit,rounded_info_bit,rounded_tree_bit,compensation))
        val backward_converter = Module(new BackwardConverter(n_attr,n_classes,n_depths,info_bit,tree_bit,rounded_info_bit,rounded_tree_bit,compensation))
        
        //val dispatcher = Module(new DispatcherPE(new ElemId(2,0,0,0), n_attr,n_classes,n_depths,info_bit,tree_bit,structure_list.length))
        //val voter = Module(new VoterPE(new ElemId(2,0,structure_list.map(row=>row(0)).max + 4,0),n_attr,n_classes,n_depths,info_bit,tree_bit,structure_list.length))

        var counter = 0
        var first_interconnects = List.empty[FirstInterconnectPE]

        for(i <- 0 until structure_list.length){
            val pes = Seq.tabulate(structure_list(i)(0))(j => Module(new TreePEwithBRAM(new ElemId(2,i,j,0), n_attr,n_classes,n_depths,info_bit,tree_bit,attr_bit,j==0,structure_list(i)(1))))
            val brams = Seq.tabulate(structure_list(i)(0))(j => Module(new BRAMBlackBox(64,32,13))) 
            
            val first_interconnect = Module(new FirstInterconnectPE(new ElemId(2,i,1,0),n_attr,n_classes,n_depths,info_bit,tree_bit))
            val last_interconnect = Module(new LastInterconnectPE(new ElemId(2,i,structure_list(i)(0)+2,0),n_attr,n_classes,n_depths,info_bit,tree_bit))
            val increment = Module(new IncrementTreePE(new ElemId(2,i,structure_list(i)(0)+3,0),n_attr,n_classes,n_depths,info_bit,tree_bit))
            //brams link
            for(j <- 0 until structure_list(i)(0)){
                //wrapper_io.brams(counter) <> pes(j).pe_io.mem

                brams(j).io.a_en := pes(j).pe_io.mem.enable_1
                brams(j).io.a_wr := pes(j).pe_io.mem.write_1
                brams(j).io.a_addr := pes(j).pe_io.mem.addr_1
                brams(j).io.a_din := pes(j).pe_io.mem.dataIn_1
                pes(j).pe_io.mem.dataOut_1 := brams(j).io.a_dout

                brams(j).io.b_en := brams_io(counter).bram_en_a
                brams(j).io.b_wr := brams_io(counter).bram_we_a(0)
                brams(j).io.b_addr := brams_io(counter).bram_addr_a
                brams(j).io.b_din := brams_io(counter).bram_wrdata_a
                brams_io(counter).bram_rddata_a := brams(j).io.b_dout

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
            last_interconnect.io.sample_leaving <> backward_converter.io.sample_in // TO REMOVE
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
        
        wrapper_io.sample_in <> forward_converter.io.sample_in
        forward_converter.io.sample_out <> first_interconnects(0).io.sample_entering
        //voter.io.sample_out <> backward_converter.io.sample_in
        wrapper_io.sample_out <> backward_converter.io.sample_out

        println("END SYNTHESIS PREPARATION")

    }else{
        
        //reduce the list of lengths to a set of PEs, each one with all the linked PEs
        var link_map = Map.empty[PE,List[PE]]

        val forward_converter = Module(new ForwardConverter(n_attr,n_classes,n_depths,info_bit,tree_bit,rounded_info_bit,rounded_tree_bit,compensation))
        val backward_converter = Module(new BackwardConverter(n_attr,n_classes,n_depths,info_bit,tree_bit,rounded_info_bit,rounded_tree_bit,compensation))
        
        val dispatcher = Module(new DispatcherPE(new ElemId(2,0,0,0), n_attr,n_classes,n_depths,info_bit,tree_bit,structure_list.length))
        val voter = Module(new VoterPE(new ElemId(2,0,structure_list.map(row=>row(0)).max + 4,0),n_attr,n_classes,n_depths,info_bit,tree_bit,structure_list.length))

        var counter = 0
        var first_interconnects = List.empty[FirstInterconnectPE]

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
            link_map = link_map + (last_interconnect -> List(increment,voter))
            link_map = link_map + (increment -> List(first_interconnect))

            first_interconnects = first_interconnects :+ first_interconnect
            //last_interconnect.io.sample_leaving <> wrapper_io.sample_out(i)
        }

        link_map = link_map + (dispatcher -> first_interconnects)

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
    
        wrapper_io.sample_in <> forward_converter.io.sample_in
        forward_converter.io.sample_out <> dispatcher.io.sample_in
        voter.io.sample_out <> backward_converter.io.sample_in
        //forward_converter.io.sample_out <> backward_converter.io.sample_in
        wrapper_io.sample_out <> backward_converter.io.sample_out

        println("END SIMULATION PREPARATION")
    }
    */
    
    /*
    val forward_converter = Module(new ForwardConverter(n_attr,n_classes,n_depths,info_bit,tree_bit,rounded_info_bit,rounded_tree_bit,compensation))
    val backward_converter = Module(new BackwardConverter(n_attr,n_classes,n_depths,info_bit,tree_bit,rounded_info_bit,rounded_tree_bit,compensation))
    val first_interconnect = Module(new FirstInterconnectPE(new ElemId(2,0,1,0),n_attr,n_classes,n_depths,info_bit,tree_bit))
            
    wrapper_io.sample_in <> forward_converter.io.sample_in
    forward_converter.io.sample_out <> first_interconnect.io.sample_entering
    for(i <- 0 until n_attr){
        first_interconnect.io.sample_looping.bits.features(i) := 5.U.asFixedPoint(8.BP)
    }
    for(i <- 0 until n_depths){
        first_interconnect.io.sample_looping.bits.weights(i) := 5.U.asFixedPoint(8.BP)
    }
    for(i <- 0 until n_classes){
        first_interconnect.io.sample_looping.bits.scores(i) := 5.U.asFixedPoint(8.BP)
    }
    first_interconnect.io.sample_looping.bits.shift := true.B
    first_interconnect.io.sample_looping.bits.offset := 5.U
    first_interconnect.io.sample_looping.bits.tree_to_exec := 5.U
    first_interconnect.io.sample_looping.bits.search_for_root := true.B
    first_interconnect.io.sample_looping.bits.last := false.B
    first_interconnect.io.sample_looping.bits.dest := false.B

    first_interconnect.io.sample_looping.valid := false.B

    first_interconnect.io.sample_out <> backward_converter.io.sample_in
    wrapper_io.sample_out <> backward_converter.io.sample_out
    */
}