package YoseUe_SATL

import chisel3._
import chisel3.util._
import chisel3.experimental._
import spatial_templates.pe._
import spatial_templates.me._

/** This abstract class represents a Processing Element for a generic spatial
  * template
  */

class TreePE(id: ElemId, n_attr: Int, n_classes: Int, info_bit: Int, tree_bit: Int, attr_bit: Int, n_split_features: Int, coeff_bit: Int, is_a_root: Boolean, n_loops: Int) 
  extends PE(id) with WithFWConnection {
    val io = IO(new Bundle{
        val sample_in = Flipped(Decoupled(new Sample(n_attr,n_classes,info_bit,tree_bit)))
        val mem = Flipped(new BRAMLikeIO(64,13))
        val sample_out = Decoupled(new Sample(n_attr,n_classes,info_bit,tree_bit))
    })

    assert(32+2*info_bit+2+attr_bit*n_split_features+coeff_bit*(n_split_features-1)+1 <= 64, "NOInst must be smaller or equal than 64 bits")

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

      val threshold = io.mem.dataOut_1(15,0)
      val leftChildInfo = io.mem.dataOut_1(16+info_bit-1,16)
      val rightChildInfo = io.mem.dataOut_1(16+2*info_bit-1,16+info_bit)
      val leftChildType = io.mem.dataOut_1(16+2*info_bit)
      val rightChildType = io.mem.dataOut_1(16+2*info_bit+1)
      val is_valid = io.mem.dataOut_1(16+2*info_bit+2)
      val attr_id = Wire(Vec(n_split_features,UInt(attr_bit.W)))
      val base = 16+2*info_bit+3
      for(i<-0 until n_split_features){
        attr_id(i) := io.mem.dataOut_1(base+attr_bit*(i+1)-1,base+attr_bit*i)
      }
      val base2 = base + attr_bit*n_split_features
      val coeffs = Wire(Vec(n_split_features-1,UInt(coeff_bit.W)))
      for(i<-0 until n_split_features-1){
        coeffs(i) := io.mem.dataOut_1(base2+coeff_bit*(i+1)-1,base2+coeff_bit*i)
      }
      
      io.sample_out.bits.features := RegNext(queue.bits.features)
      io.sample_out.bits.tree_to_exec := RegNext(queue.bits.tree_to_exec)
      io.sample_out.bits.scores := RegNext(queue.bits.scores)
      io.sample_out.valid := true.B
      io.sample_out.bits.clock_cycles := RegNext(queue.bits.clock_cycles)
      io.sample_out.bits.last := RegNext(queue.bits.last)

      if (is_a_root){
        val offset = Wire(UInt(info_bit.W)) 
        val shift = Wire(Bool())
        val features_bits = RegNext(queue.bits.features)
        val scores_bits = RegNext(queue.bits.scores)
        val sum = Wire(FixedPoint(16.W,8.BP))
        sum := features_bits(attr_id(0)) + features_bits.tail.zip(coeffs).map { case (f, c) => 
          val p = Wire(FixedPoint(16.W,8.BP))
          when(c===0.U){
            p := 0.F(16.W,8.BP)
          }.elsewhen(c(0)===0.U){
            when(c(1)===0.U){
              if (coeff_bit>2){
                p := -(f >> ((1 << (coeff_bit-2)).U-c(coeff_bit-1,2)))
              }else{
                p := -f
              }
            }.otherwise{
              if (coeff_bit>2){
                p := -(f << c(coeff_bit-1,2))
              }else{
                p := -f
              }
            }
          }.otherwise{
            when(c(1)===0.U){
              if (coeff_bit>2){
                p := (f >> ((1 << (coeff_bit-2)).U-c(coeff_bit-1,2)))
              }else{
                p := f
              }
            }.otherwise{
              if (coeff_bit>2){
                p := (f << c(coeff_bit-1,2))
              }else{
                p := f
              }
            }
          }
          p
        }.reduce(_ + _)

        shift := Mux(sum < threshold.asFixedPoint(8.BP),leftChildType,rightChildType)
        offset := Mux(sum < threshold.asFixedPoint(8.BP),leftChildInfo,rightChildInfo)
        io.sample_out.bits.offset := Mux(shift === false.B,RegNext(queue.bits.tree_to_exec),offset)
        io.sample_out.bits.shift := false.B
        io.sample_out.bits.search_for_root := !shift
        for(i <- 0 until n_classes){
          io.sample_out.bits.scores(i) := scores_bits(i) + Mux(((shift===false.B) & is_valid & (i.U === offset)),1.U(16.W),0.U(16.W))
        }
        io.sample_out.bits.dest := RegNext(queue.bits.tree_to_exec) === (n_loops-1).U
      }else{
        val offset = Wire(UInt(info_bit.W)) 
        val shift = Wire(Bool())
        val features_bits = RegNext(queue.bits.features)
        val scores_bits = RegNext(queue.bits.scores)
        val sum = Wire(FixedPoint(16.W,8.BP))
        sum := features_bits(attr_id(0)) + features_bits.tail.zip(coeffs).map { case (f, c) => 
          val p = Wire(FixedPoint(16.W,8.BP))
          when(c===0.U){
            p := 0.F(16.W,8.BP)
          }.elsewhen(c(0)===0.U){
            when(c(1)===0.U){
              if (coeff_bit>2){
                p := -(f >> ((1 << (coeff_bit-2)).U-c(coeff_bit-1,2)))
              }else{
                p := -f
              }
            }.otherwise{
              if (coeff_bit>2){
                p := -(f << c(coeff_bit-1,2))
              }else{
                p := -f
              }
            }
          }.otherwise{
            when(c(1)===0.U){
              if (coeff_bit>2){
                p := (f >> ((1 << (coeff_bit-2)).U-c(coeff_bit-1,2)))
              }else{
                p := f
              }
            }.otherwise{
              if (coeff_bit>2){
                p := (f << c(coeff_bit-1,2))
              }else{
                p := f
              }
            }
          }
          p
        }.reduce(_ + _)
        printf(p"Result: ${sum.asUInt}\n")
        shift := Mux(sum < threshold.asFixedPoint(8.BP),leftChildType,rightChildType)
        offset := Mux(sum < threshold.asFixedPoint(8.BP),leftChildInfo,rightChildInfo)
        io.sample_out.bits.offset := Mux(shift === false.B || RegNext(queue.bits.search_for_root),RegNext(queue.bits.tree_to_exec),offset)
        io.sample_out.bits.shift := false.B
        io.sample_out.bits.search_for_root := !shift || RegNext(queue.bits.search_for_root)
        for(i <- 0 until n_classes){
          io.sample_out.bits.scores(i) := scores_bits(i) + Mux((!RegNext(queue.bits.search_for_root) & (shift===false.B) & is_valid & (i.U === offset)),1.U(16.W),0.U(16.W))
        }
        io.sample_out.bits.dest := RegNext(queue.bits.tree_to_exec) === (n_loops-1).U
      }
    }.otherwise{
      io.sample_out.bits := DontCare
      io.sample_out.valid := false.B
    }
    
    queue.ready := io.sample_out.ready

}

class TreePEwithBRAM(id: ElemId, n_attr: Int, n_classes: Int, info_bit: Int, tree_bit: Int, attr_bit: Int, n_split_features: Int, coeff_bit: Int, is_a_root: Boolean, n_loops: Int) 
  extends PE(id) with WithFWConnection {
  val pe_io = IO(new Bundle{
        val sample_in = Flipped(Decoupled(new Sample(n_attr,n_classes,info_bit,tree_bit)))
        val mem = Flipped(new BRAMLikeIO(64,13))
        val sample_out = Decoupled(new Sample(n_attr,n_classes,info_bit,tree_bit))
  })
  
  val pe = Module(new TreePE(id, n_attr, n_classes, info_bit, tree_bit, attr_bit, n_split_features, coeff_bit, is_a_root, n_loops))

  pe_io <> pe.io

  def linkToDest(ic: LastInterconnectPE) {
    pe_io.sample_out <> ic.io.sample_in
  }

  def linkToDest(tree_pe: TreePEwithBRAM) {
    pe_io.sample_out <> tree_pe.pe_io.sample_in
  }

  def linkToDest(terminator_pe: EarlyTerminatorPE, i: Int) {
    pe_io.sample_out <> terminator_pe.io.samples_in(i)
  }
  
}