package YoseUe_SATL

import chisel3._
import chisel3.util._
import chisel3.experimental._
import spatial_templates.pe._
import spatial_templates.me._

/** This abstract class represents a Processing Element for a generic spatial
  * template
  */

class TreePE(id: ElemId, n_attr: Int, n_classes: Int, info_bit: Int, tree_bit: Int, attr_bit: Int, n_split_features: Int, coeff_bit: Int, n_layers: Int, trees_per_layer: Int) 
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
    
    io.sample_out.bits.features := RegNext(queue.bits.features)
    io.sample_out.bits.clock_cycles := RegNext(queue.bits.clock_cycles)
    io.sample_out.bits.last := RegNext(queue.bits.last)
    
    val offset = Wire(UInt(info_bit.W)) 
    val not_leaf = Wire(Bool())
    val features_bits = RegNext(queue.bits.features)
    val scores_bits = RegNext(queue.bits.scores)
    val sum = Wire(FixedPoint(16.W,8.BP))
    val curr_search_for_root = RegNext(queue.bits.search_for_root)
    val tree_to_exec = RegNext(queue.bits.tree_to_exec)
    val layer_to_exec = RegNext(queue.bits.layer_to_exec)
    val dest = RegNext(queue.bits.dest)
    
    sum := features_bits(attr_id(0)) + attr_id.tail.zip(coeffs).map { case (a, c) => 
      val p = Wire(FixedPoint(16.W,8.BP))
      val feat = Wire(FixedPoint(16.W,8.BP))
      feat := features_bits(a)

      // when(c===0.U){
      //  p := 0.F(32.W,16.BP)
      // }.else
      when(c(coeff_bit-1)===0.U){
        when(c(coeff_bit-2)===0.U){
          if (coeff_bit>2){
            p := -(feat >> ((1 << (coeff_bit-2)).U - c(coeff_bit-3,0)))
          }else{
            p := -feat
          }
        }.otherwise{
          if (coeff_bit>2){
            p := -(feat << c(coeff_bit-3,0))
          }else{
            p := -feat
          }
        }
        
      }.otherwise{
        when(c(coeff_bit-2)===0.U){
          if (coeff_bit>2){
            p := (feat >> ((1 << (coeff_bit-2)).U - c(coeff_bit-3,0)))
          }else{
            p := feat
          }
        }.otherwise{
          if (coeff_bit>2){
            p := (feat << c(coeff_bit-3,0))
          }else{
            p := feat
          }
        }
      }
      // p
      val res = Wire(FixedPoint(16.W,8.BP))
      res := (p.asUInt & Fill(16,c =/= 0.U)).asFixedPoint(8.BP)
      res
    }.reduce(_ + _)

    val choose_left = sum < threshold.asFixedPoint(8.BP) 
    not_leaf := Mux(choose_left,leftChildType,rightChildType)
    offset :=   Mux(choose_left,leftChildInfo,rightChildInfo)

    val op_is_a_root    = layer_to_exec === (id.y % n_layers).U //&& (RegNext(queue.bits.offset) < trees_per_layer.U)
    val search_for_root =  !not_leaf || (curr_search_for_root & layer_to_exec =/= (id.y % n_layers).U)
    val terminal_node   = ((not_leaf===false.B) & is_op_valid & (op_is_a_root | !curr_search_for_root))

    io.sample_out.bits.search_for_root := search_for_root
    io.sample_out.bits.offset := Mux(search_for_root,tree_to_exec,offset)

    for(i <- 0 until n_classes){
      io.sample_out.bits.scores(i) := scores_bits(i) + Mux((terminal_node & (i.U === offset)),1.U(16.W),0.U(16.W))
    }

    val new_layer_to_exec = Wire(UInt(8.W))
    io.sample_out.bits.tree_to_exec  := Mux(terminal_node,Mux(tree_to_exec===(trees_per_layer-1).U,0.U,tree_to_exec+1.U),tree_to_exec)
    new_layer_to_exec := Mux(terminal_node & tree_to_exec===(trees_per_layer-1).U,layer_to_exec+1.U,layer_to_exec)
    io.sample_out.bits.layer_to_exec := new_layer_to_exec

    io.sample_out.bits.dest := new_layer_to_exec === (n_layers).U
    
    /* when(RegNext(queue.valid) & RegNext(queue.bits.last)){
      printf(p"PE: ${id.y}, Instr: ${RegNext(queue.bits.offset)}\n")
      printf(p"Instruction: ")
      for (i <- 63 to 0 by -1) {
        printf(p"${io.mem.dataOut_1(i)}")
        if (i==8) printf(".")
        if (i==16) printf(" |t:")
        if (i==16+info_bit) printf(" |li:")
        if (i==16+2*info_bit) printf(" |ri:")
        if (i==16+2*info_bit+1) printf(" |lt:")
        if (i==16+2*info_bit+2) printf(" |rt:")
        if (i==16+2*info_bit+3) printf(" |v:")
        if (i>16+2*info_bit+3 
            && i <= 16+2*info_bit+3 + attr_bit*n_split_features
            && (i-(16+2*info_bit+3))%attr_bit == 0) printf(" |a:")
        if (i>16+2*info_bit+3 + attr_bit*n_split_features
            && i <= 16+2*info_bit+3 + attr_bit*n_split_features + coeff_bit*(n_split_features-1)
            && (i-(16+2*info_bit+3 + attr_bit*n_split_features))%coeff_bit == 0) printf(" |c:")
      }
      printf(p"\n")
      printf(p"Result:    ")
      for(i <- 15 to 8 by -1){
        printf(p"${sum(i)}")
      }
      printf(p".")
      for(i <- 7 to 0 by -1){
        printf(p"${sum(i)}")
      }
      printf("\n")
      printf(p"Threshold: ")
      for(i <- 15 to 8 by -1){
        printf(p"${threshold(i)}")
      }
      printf(p".")
      for(i <- 7 to 0 by -1){
        printf(p"${threshold(i)}")
      }
      printf("\n")
      printf(p"First coeff: ${Binary(coeffs(0))}\n") 
      printf( p"LType:      \t   ${leftChildType}, \tRType:       \t   ${rightChildType}\n")
      printf( p"LInfo:      \t${leftChildInfo}, \tRInfo:       \t${rightChildInfo}, \tSelected: \t${offset}\n")
      printf( p"Offset:     \t${io.sample_out.bits.offset}\n")
      printf( p"TreeToExec: \t ${io.sample_out.bits.tree_to_exec}, \tLayerToExec: \t ${io.sample_out.bits.layer_to_exec}, \tDest:     \t   ${io.sample_out.bits.dest}\n")
      printf("Scores: \n")
      for (i <- 0 until n_classes){
        printf(p" > ${i}:${io.sample_out.bits.scores(i)}\n")
      }
      printf("\n")
    } */
   
    io.sample_out.valid := RegNext(queue.valid)
    queue.ready := io.sample_out.ready

}

class TreePEwithBRAM(id: ElemId, n_attr: Int, n_classes: Int, info_bit: Int, tree_bit: Int, attr_bit: Int, n_split_features: Int, coeff_bit: Int,  n_layers: Int, trees_per_layer: Int) 
  extends PE(id) with WithFWConnection {
  val pe_io = IO(new Bundle{
        val sample_in = Flipped(Decoupled(new Sample(n_attr,n_classes,info_bit,tree_bit)))
        val mem = Flipped(new BRAMLikeIO(64,13))
        val sample_out = Decoupled(new Sample(n_attr,n_classes,info_bit,tree_bit))
  })         
  val pe = Module(new TreePE(id, n_attr, n_classes, info_bit, tree_bit, attr_bit, n_split_features, coeff_bit, n_layers, trees_per_layer))

  pe_io <> pe.io

  def linkToDest(ic: LastInterconnectPE) {
    pe_io.sample_out <> ic.io.sample_in
  }

  def linkToDest(tree_pe: TreePEwithBRAM) {
    pe_io.sample_out <> tree_pe.pe_io.sample_in
  }
  
}