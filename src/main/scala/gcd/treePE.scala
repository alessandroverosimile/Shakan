package YoseUe_SATL

import chisel3._
import chisel3.util._
import chisel3.experimental._

class Sample(attr_n: Int, n_classes: Int, number_of_depths: Int, info_bit: Int, tree_bit: Int) extends Bundle{
    val features = Vec(attr_n, UInt(8.W)) //FixedPoint(16.W,8.BP))
    val offset = UInt(info_bit.W)
    val shift = Bool()
    val tree_to_exec = UInt(tree_bit.W)
    val scores = Vec(n_classes,UInt(8.W))
    val weights = Vec(number_of_depths, UInt(8.W))
}

class NOInst(attr_bit: Int, info_bit: Int) extends Bundle{
    val threshold = UInt(8.W)
    val nodeRA = UInt(12.W)
    val attr_id = UInt(attr_bit.W)
    val leftChildInfo = UInt(info_bit.W)
    val rightChildInfo = UInt(info_bit.W)
    val leftChildType = Bool()
    val rightChildType = Bool()
    val is_valid = Bool()
    val depth_indicator = UInt(3.W)
}

class TreePE(id: ElemId, attr_n: Int, n_classes: Int, number_of_depths: Int, info_bit: Int, tree_bit: Int, attr_bit: Int) extends PE(id){
    val io = IO(new Bundle{
        val sample_in = Flipped(Decoupled(new Sample(attr_n,n_classes,number_of_depths,info_bit,tree_bit)))
        val mem = Input(new NOInst(attr_bit,info_bit))
        val sample_out = Decoupled(new Sample(attr_n,n_classes,number_of_depths,info_bit,tree_bit))
    })

    val queue = Queue(io.sample_in)

    io.sample_out.bits.features := queue.bits.features
    io.sample_out.bits.weights := queue.bits.weights
    io.sample_out.bits.tree_to_exec := queue.bits.tree_to_exec
    

    val shift = Wire(Bool())
    val offset = Wire(UInt(info_bit.W))
    when(queue.bits.features(io.mem.attr_id) < io.mem.threshold){
      shift := io.mem.leftChildType
      offset := io.mem.leftChildInfo
    }.otherwise{
      shift := io.mem.rightChildType
      offset := io.mem.rightChildInfo
    }
    when(shift === false.B){
      io.sample_out.bits.offset := queue.bits.tree_to_exec
      io.sample_out.bits.shift := false.B
      for(i <- 0 until n_classes){

        when(i.U === offset){
          when(io.mem.is_valid){
            io.sample_out.bits.scores(i) := queue.bits.scores(i) + queue.bits.weights(io.mem.depth_indicator)
          }.otherwise{
            io.sample_out.bits.scores(i) := queue.bits.scores(i)
          }
        }.otherwise{
          io.sample_out.bits.scores(i) := queue.bits.scores(i)
        }
      }
    }.otherwise{
      io.sample_out.bits.offset := offset
      io.sample_out.bits.scores := queue.bits.scores
      io.sample_out.bits.shift := false.B
    }

    io.sample_out.valid := queue.valid

    queue.ready := io.sample_in.ready
}