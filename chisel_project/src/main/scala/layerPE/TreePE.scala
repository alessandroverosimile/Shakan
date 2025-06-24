package YoseUe_SATL

import chisel3._
import chisel3.util._
import chisel3.experimental._
import spatial_templates.pe._
import spatial_templates.me._

/** This abstract class represents a Processing Element for a generic spatial
  * template
  */

class TreePE(id: ElemId, n_attr: Int, n_classes: Int, info_bit: Int, tree_bit: Int, attr_bit: Int, n_split_features: Int, coeff_bit: Int, n_layers: Int, trees_per_layer: Int, total_layers_in_path: Int, total_layers_with_trees_per_block: Int) 
  extends PE(id) with WithFWConnection {
    val io = IO(new Bundle{
        val sample_in = Flipped(Decoupled(new Sample(n_attr,n_classes,info_bit,tree_bit)))
        val mem = Flipped(new BRAMLikeIO(64,13))
        val sample_out = Decoupled(new Sample(n_attr,n_classes,info_bit,tree_bit))
    })

    assert(16+2*info_bit+3+attr_bit*n_split_features+coeff_bit*(n_split_features-1) <= 64, "NOInst must be smaller or equal than 64 bits")

    val queue = Queue(io.sample_in, 2)

    io.mem.enable_1 := true.B
    io.mem.addr_1 := queue.bits.offset
    io.mem.write_1 := false.B
    io.mem.dataIn_1 := 0.U
   
    io.mem.enable_2 := DontCare
    io.mem.addr_2 := DontCare
    io.mem.write_2 := DontCare
    io.mem.dataIn_2 := DontCare

    //Decode Node instruction
    val threshold =       io.mem.dataOut_1(15,0)
    val leftChildInfo =   io.mem.dataOut_1(16+info_bit-1,16)
    val rightChildInfo =  io.mem.dataOut_1(16+2*info_bit-1,16+info_bit)
    val leftChildType =   io.mem.dataOut_1(16+2*info_bit)
    val rightChildType =  io.mem.dataOut_1(16+2*info_bit+1)
    val is_op_valid =     io.mem.dataOut_1(16+2*info_bit+2)
    val attr_id =         Wire(Vec(n_split_features,UInt(attr_bit.W)))
    val base =            16+2*info_bit+3
    for(i<-0 until n_split_features){
      attr_id(i) := io.mem.dataOut_1(base+attr_bit*(i+1)-1,base+attr_bit*i)
    }
    val base2 = base + attr_bit*n_split_features
    val coeffs = Wire(Vec(n_split_features-1,UInt(coeff_bit.W)))
    for(i<-0 until n_split_features-1){
      coeffs(i) := io.mem.dataOut_1(base2+coeff_bit*(i+1)-1,base2+coeff_bit*i)
    }
    
    val features_bits = RegNext(queue.bits.features)
    val scores_bits = RegNext(queue.bits.scores)
    val curr_search_for_root = RegNext(queue.bits.search_for_root)
    val tree_to_exec = RegNext(queue.bits.tree_to_exec)
    val layer_to_exec = RegNext(queue.bits.layer_to_exec)
    val dest = RegNext(queue.bits.dest)
    val last = RegNext(queue.bits.last)
    val clockc = RegNext(queue.bits.clock_cycles)

    val sum = Wire(FixedPoint(16.W,8.BP))
    val actual_threshold = Wire(FixedPoint(16.W,8.BP))

    val feat1 = Wire(FixedPoint(16.W,8.BP))
    val feat1_value = Wire(FixedPoint(16.W,8.BP))
    val coeff0_value = Wire(UInt(attr_bit.W))

    feat1_value := features_bits(attr_id(1))
    coeff0_value := coeffs(0)

    when(coeff0_value===0.U){
        feat1 := 0.F(16.W,8.BP)
    }.elsewhen(coeff0_value(coeff_bit-1)===0.U){
      when(coeff0_value(coeff_bit-2)===0.U){
        if (coeff_bit>2){
          feat1 := -(feat1_value >> ((1 << (coeff_bit-2)).U - coeff0_value(coeff_bit-3,0)))
        }else{
          feat1 := -feat1_value
        }
      }.otherwise{
        if (coeff_bit>2){
          feat1 := -(feat1_value << coeff0_value(coeff_bit-3,0))
        }else{
          feat1 := -feat1_value
        }
      }
      
    }.otherwise{
      when(coeff0_value(coeff_bit-2)===0.U){
        if (coeff_bit>2){
          feat1 := (feat1_value >> ((1 << (coeff_bit-2)).U - coeff0_value(coeff_bit-3,0)))
        }else{
          feat1 := feat1_value
        }
      }.otherwise{
        if (coeff_bit>2){
          feat1 := (feat1_value << coeff0_value(coeff_bit-3,0))
        }else{
          feat1 := feat1_value
        }
      }
    }

    sum := features_bits(attr_id(0)) + feat1

    if(n_split_features == 2){
      actual_threshold := threshold.asFixedPoint(8.BP) 
    }else if(n_split_features == 3){
      val feat2 = Wire(FixedPoint(16.W,8.BP))
      val feat2_value = Wire(FixedPoint(16.W,8.BP))
      val coeff1_value = Wire(UInt(attr_bit.W))

      feat2_value := features_bits(attr_id(2))
      coeff1_value := coeffs(1)

      when(coeff1_value===0.U){
        feat2 := 0.F(16.W,8.BP)
      }.elsewhen(coeff1_value(coeff_bit-1)===0.U){
        when(coeff1_value(coeff_bit-2)===0.U){
          if (coeff_bit>2){
            feat2 := (feat2_value >> ((1 << (coeff_bit-2)).U - coeff1_value(coeff_bit-3,0)))
          }else{
            feat2 := feat2_value
          }
        }.otherwise{
          if (coeff_bit>2){
            feat2 := (feat2_value << coeff1_value(coeff_bit-3,0))
          }else{
            feat2 := feat2_value
          }
        }
        
      }.otherwise{
        when(coeff1_value(coeff_bit-2)===0.U){
          if (coeff_bit>2){
            feat2 := -(feat2_value >> ((1 << (coeff_bit-2)).U - coeff1_value(coeff_bit-3,0)))
          }else{
            feat2 := -feat2_value
          }
        }.otherwise{
          if (coeff_bit>2){
            feat2 := -(feat2_value << coeff1_value(coeff_bit-3,0))
          }else{
            feat2 := -feat2_value
          }
        }
      }

      actual_threshold := threshold.asFixedPoint(8.BP) + feat2
    }else{
      sys.error("Only 2 and 3 split features are supported")
    }
    
    // THIRD CLOCK CYCLE OF THE PIPELINE
	
	  val choose_left = RegNext(sum) < RegNext(actual_threshold)
    val c3_offset = Mux(choose_left,RegNext(leftChildInfo),RegNext(rightChildInfo))
    val c3_not_leaf = Mux(choose_left,RegNext(leftChildType),RegNext(rightChildType))

    val c3_features_bits = RegNext(features_bits)
    val c3_scores_bits = RegNext(scores_bits)
    val c3_curr_search_for_root = RegNext(curr_search_for_root)
    val c3_tree_to_exec = RegNext(tree_to_exec)
    val c3_layer_to_exec = RegNext(layer_to_exec)
    val c3_dest = RegNext(dest)
    val c3_last = RegNext(last)
    val c3_clockc = RegNext(clockc)
    val c3_is_op_valid = RegNext(is_op_valid)

    val c3_op_is_a_root    = c3_layer_to_exec === (id.y).U
    val c3_search_for_root =  !c3_not_leaf || (c3_curr_search_for_root & c3_layer_to_exec =/= (id.y).U)
    val c3_score_terminal_node   = ((c3_not_leaf===false.B) & c3_is_op_valid & (c3_op_is_a_root | !c3_curr_search_for_root))
    val c3_terminal_node   = c3_score_terminal_node | (!c3_is_op_valid & c3_op_is_a_root)

    for(i <- 0 until n_classes){
      io.sample_out.bits.scores(i) := c3_scores_bits(i) + Mux((c3_score_terminal_node & (i.U === c3_offset)),1.U(16.W),0.U(16.W))
    }

    val c3_new_layer_to_exec = Wire(UInt(8.W))
    val c3_new_tree_to_exec = Wire(UInt(tree_bit.W))
    
    if(id.y < n_layers || id.y>=total_layers_in_path - n_layers){
        when(c3_layer_to_exec < (total_layers_in_path - n_layers).U){
            c3_new_layer_to_exec := Mux(c3_terminal_node,c3_layer_to_exec+n_layers.U,c3_layer_to_exec)
            c3_new_tree_to_exec := c3_tree_to_exec
            io.sample_out.bits.tree_to_exec := c3_new_tree_to_exec
            io.sample_out.bits.layer_to_exec := c3_new_layer_to_exec
            io.sample_out.bits.dest := c3_dest
        }.otherwise{
            if(total_layers_in_path > n_layers){
              c3_new_layer_to_exec := Mux(c3_terminal_node,
                      Mux(c3_tree_to_exec===(trees_per_layer-1).U,
                          c3_layer_to_exec - (total_layers_in_path - n_layers - 1).U,
                          c3_layer_to_exec - (total_layers_in_path - n_layers).U),
                      c3_layer_to_exec)
            }else{
              c3_new_layer_to_exec := Mux(c3_terminal_node,
                      Mux(c3_tree_to_exec===(trees_per_layer-1).U,
                          c3_layer_to_exec + 1.U,
                          c3_layer_to_exec),
                      c3_layer_to_exec)
            }
            c3_new_tree_to_exec := Mux(c3_terminal_node,
                Mux(c3_tree_to_exec===(trees_per_layer-1).U,
                    0.U,
                    c3_tree_to_exec + 1.U),
                c3_tree_to_exec)
            io.sample_out.bits.tree_to_exec := c3_new_tree_to_exec
            io.sample_out.bits.layer_to_exec := c3_new_layer_to_exec
            io.sample_out.bits.dest := c3_dest || (c3_tree_to_exec===(trees_per_layer-1).U & c3_layer_to_exec===(total_layers_in_path-n_layers+total_layers_with_trees_per_block-1).U)
        }
    }else{
        c3_new_layer_to_exec := Mux(c3_terminal_node,c3_layer_to_exec+n_layers.U,c3_layer_to_exec)
        c3_new_tree_to_exec := c3_tree_to_exec
        io.sample_out.bits.layer_to_exec := c3_new_layer_to_exec
        io.sample_out.bits.tree_to_exec := c3_new_tree_to_exec
        io.sample_out.bits.dest := c3_dest
    }

    io.sample_out.bits.search_for_root := c3_search_for_root
    io.sample_out.bits.offset := Mux(c3_search_for_root,c3_new_tree_to_exec,c3_offset)
    
    io.sample_out.bits.features :=     c3_features_bits
    io.sample_out.bits.clock_cycles := c3_clockc
    io.sample_out.bits.last :=         c3_last

    when(RegNext(RegNext(queue.valid)) & RegNext(RegNext(queue.bits.last))){
      printf( 
      // p"PE ${id.y}/${total_layers_in_path} (depth ${n_layers}), instr: ${RegNext(RegNext(queue.bits.offset))}\n" +
      p"TreeToExec: \t ${io.sample_out.bits.tree_to_exec}, \tLayerToExec: \t ${io.sample_out.bits.layer_to_exec}, \tDest:     \t   ${io.sample_out.bits.dest}\n"+
      // p"Offset:     \t${io.sample_out.bits.offset}\n" +
      // p"LType:      \t   ${RegNext(leftChildType)}, \tRType:       \t   ${RegNext(rightChildType)}\n"+
      // p"LInfo:      \t${RegNext(leftChildInfo)}, \tRInfo:       \t${RegNext(rightChildInfo)}, \tSelected: \t${c3_offset}\n"+
      p" \n")
    }
    
    // when(RegNext(RegNext(queue.valid)) & RegNext(RegNext(queue.bits.last))){
    //   printf(p"PE: ${id.y}, Instr: ${RegNext(RegNext(queue.bits.offset))}\n")
    //   printf(p"Instruction: ")
    //   for (i <- 63 to 0 by -1) {
    //     printf(p"${RegNext(io.mem.dataOut_1(i))}")
    //     if (i==8) printf(".")
    //     if (i==16) printf(" |t:")
    //     if (i==16+info_bit) printf(" |li:")
    //     if (i==16+2*info_bit) printf(" |ri:")
    //     if (i==16+2*info_bit+1) printf(" |lt:")
    //     if (i==16+2*info_bit+2) printf(" |rt:")
    //     if (i==16+2*info_bit+3) printf(" |v:")
    //     if (i>16+2*info_bit+3 
    //         && i <= 16+2*info_bit+3 + attr_bit*n_split_features
    //         && (i-(16+2*info_bit+3))%attr_bit == 0) printf(" |a:")
    //     if (i>16+2*info_bit+3 + attr_bit*n_split_features
    //         && i <= 16+2*info_bit+3 + attr_bit*n_split_features + coeff_bit*(n_split_features-1)
    //         && (i-(16+2*info_bit+3 + attr_bit*n_split_features))%coeff_bit == 0) printf(" |c:")
    //   }
    //   printf(p"\n")
    //   printf(p"Result:    ")
    //   for(i <- 15 to 8 by -1){
    //     printf(p"${RegNext(sum(i))}")
    //   }
    //   printf(p".")
    //   for(i <- 7 to 0 by -1){
    //     printf(p"${RegNext(sum(i))}")
    //   }
    //   printf("\n")
    //   printf(p"Threshold: ")
    //   for(i <- 15 to 8 by -1){
    //     printf(p"${RegNext(actual_threshold(i))}")
    //   }
    //   printf(p".")
    //   for(i <- 7 to 0 by -1){
    //     printf(p"${RegNext(threshold(i))}")
    //   }
    //   printf("\n")
    //   printf(p"First coeff: ${Binary(RegNext(coeffs(0)))}\n") 
    //   printf( p"LType:      \t   ${RegNext(leftChildType)}, \tRType:       \t   ${RegNext(rightChildType)}\n")
    //   printf( p"LInfo:      \t${RegNext(leftChildInfo)}, \tRInfo:       \t${RegNext(rightChildInfo)}, \tSelected: \t${c3_offset}\n")
    //   printf( p"Offset:     \t${io.sample_out.bits.offset}\n")
    //   printf( p"TreeToExec: \t ${io.sample_out.bits.tree_to_exec}, \tLayerToExec: \t ${io.sample_out.bits.layer_to_exec}, \tDest:     \t   ${io.sample_out.bits.dest}\n")
    //   printf("Scores: \n")
    //   for (i <- 0 until n_classes){
    //     printf(p" > ${i}:${io.sample_out.bits.scores(i)}\n")
    //   }
    //   printf("\n")
    // }
   
    io.sample_out.valid := RegNext(RegNext(queue.valid))
    queue.ready := io.sample_out.ready

}

class TreePEwithBRAM(id: ElemId, n_attr: Int, n_classes: Int, info_bit: Int, tree_bit: Int, attr_bit: Int, n_split_features: Int, coeff_bit: Int,  n_layers: Int, trees_per_layer: Int, total_layers_in_path: Int, total_layers_with_trees_per_block: Int) 
  extends PE(id) with WithFWConnection {
  val pe_io = IO(new Bundle{
        val sample_in = Flipped(Decoupled(new Sample(n_attr,n_classes,info_bit,tree_bit)))
        val mem = Flipped(new BRAMLikeIO(64,13))
        val sample_out = Decoupled(new Sample(n_attr,n_classes,info_bit,tree_bit))
  })         
  val pe = Module(new TreePE(id, n_attr, n_classes, info_bit, tree_bit, attr_bit, n_split_features, coeff_bit, n_layers, trees_per_layer, total_layers_in_path, total_layers_with_trees_per_block))

  pe_io <> pe.io

  def linkToDest(ic: LastInterconnectPE) {
    pe_io.sample_out <> ic.io.sample_in
  }

  def linkToDest(tree_pe: TreePEwithBRAM) {
    pe_io.sample_out <> tree_pe.pe_io.sample_in
  }
  
}
