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
    
    when(RegNext(queue.valid)){
      val op_is_a_root =    Wire(Bool())
      val threshold =       io.mem.dataOut_1(15,0)
      val leftChildInfo =   io.mem.dataOut_1(16+info_bit-1,16)
      val rightChildInfo =  io.mem.dataOut_1(16+2*info_bit-1,16+info_bit)
      val leftChildType =   io.mem.dataOut_1(16+2*info_bit)
      val rightChildType =  io.mem.dataOut_1(16+2*info_bit+1)
      val is_valid =        io.mem.dataOut_1(16+2*info_bit+2)
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
      // io.sample_out.bits.tree_to_exec := RegNext(queue.bits.tree_to_exec)
      // io.sample_out.bits.scores := RegNext(queue.bits.scores)
      io.sample_out.bits.clock_cycles := RegNext(queue.bits.clock_cycles)
      io.sample_out.bits.last := RegNext(queue.bits.last)
      io.sample_out.valid := true.B

      val offset = Wire(UInt(info_bit.W)) 
      val not_leaf = Wire(Bool())
      val terminal_node = Wire(Bool())
      val features_bits = RegNext(queue.bits.features)
      val scores_bits = RegNext(queue.bits.scores)
      val sum = Wire(FixedPoint(32.W,16.BP))
      val curr_search_for_root = RegNext(queue.bits.search_for_root)
      val tree_to_exec = RegNext(queue.bits.tree_to_exec)
      val layer_to_exec = RegNext(queue.bits.layer_to_exec)
      val dest = RegNext(queue.bits.dest)

      sum := features_bits(attr_id(0)) + attr_id.tail.zip(coeffs).map { case (a, c) =>
        val p = Wire(FixedPoint(32.W,16.BP))
        when(c === 0.U) {
          p := 0.F(32.W,16.BP)
        }.otherwise {
          val negate = c(coeff_bit-1) === 0.U
          val shiftLeft = c(coeff_bit-2) =/= 0.U
          val shiftAmount = if (coeff_bit > 2) c(coeff_bit-3, 0) else 0.U

          val shifted = Mux(shiftLeft, 
                            features_bits(a) << shiftAmount,
                            features_bits(a) >> ((1 << (coeff_bit-2)).U - shiftAmount)
                          )
          p := Mux(negate, -shifted, shifted)
        }
        p
      }.reduce(_ + _)

      not_leaf := Mux(sum < threshold.asFixedPoint(8.BP),leftChildType,rightChildType)
      offset := Mux(sum < threshold.asFixedPoint(8.BP),leftChildInfo,rightChildInfo)

      op_is_a_root := (layer_to_exec === (id.y % n_layers).U) && (RegNext(queue.bits.offset) < trees_per_layer.U)
      val search_for_root =  !not_leaf || (curr_search_for_root && (layer_to_exec =/= (id.y % n_layers).U || !op_is_a_root))

      terminal_node := ((not_leaf===false.B) & is_valid && (Mux(op_is_a_root,layer_to_exec === (id.y % n_layers).U,!curr_search_for_root)))

      io.sample_out.bits.search_for_root := search_for_root
      io.sample_out.bits.offset := Mux(search_for_root,tree_to_exec,offset)

      for(i <- 0 until n_classes){
        io.sample_out.bits.scores(i) := scores_bits(i) + Mux((terminal_node & (i.U === offset)),1.U(16.W),0.U(16.W))
      }

      io.sample_out.bits.tree_to_exec  := Mux(op_is_a_root && is_valid && (layer_to_exec === (id.y % n_layers).U),Mux(tree_to_exec===(trees_per_layer-1).U,0.U,tree_to_exec+1.U),tree_to_exec)
      io.sample_out.bits.layer_to_exec := Mux(op_is_a_root && is_valid && (layer_to_exec === (id.y % n_layers).U),Mux(tree_to_exec===(trees_per_layer-1).U,layer_to_exec+1.U,layer_to_exec),layer_to_exec)

      when(op_is_a_root){
        io.sample_out.bits.dest  := dest || ((tree_to_exec === (trees_per_layer-1).U) && (layer_to_exec === (n_layers-1).U) && terminal_node)
      }.otherwise{
        io.sample_out.bits.dest  := dest || ((tree_to_exec === 0.U) && (layer_to_exec === (n_layers).U) && terminal_node)
      }

      when(RegNext(queue.bits.last)){
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
        for(i <- 31 to 16 by -1){
          printf(p"${sum(i)}")
        }
        printf(p".")
        for(i <- 15 to 0 by -1){
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
        printf( p"LInfo:      \t${leftChildInfo}, \tRInfo:       \t${rightChildInfo}, \tSelected: \t${offset}\n")
        printf( p"Offset:     \t${io.sample_out.bits.offset}\n")
        printf( p"TreeToExec: \t ${io.sample_out.bits.tree_to_exec}, \tLayerToExec: \t ${io.sample_out.bits.layer_to_exec}, \tDest:     \t   ${io.sample_out.bits.dest}\n")
        printf("Scores: \n")
        for (i <- 0 until n_classes){
          printf(p" > ${i}:${io.sample_out.bits.scores(i)}\n")
        }
        printf("\n")
      }

    }.otherwise{
      io.sample_out.bits := DontCare // 0.U.asTypeOf(io.sample_out.bits)
      io.sample_out.valid := false.B
    }

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