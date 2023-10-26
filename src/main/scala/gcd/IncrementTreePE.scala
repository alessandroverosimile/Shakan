package YoseUe_SATL

import chisel3._
import chisel3.util._
import chisel3.experimental._

class IncrementTreePE(id: ElemId, attr_n: Int, n_classes: Int, number_of_depths: Int, info_bit: Int, tree_bit: Int) extends PE(id){
    val io = IO(new Bundle{
        val sample_in = Flipped(Decoupled(new Sample(attr_n,n_classes,number_of_depths,info_bit,tree_bit)))
        val sample_out = Decoupled(new Sample(attr_n,n_classes,number_of_depths,info_bit,tree_bit))
    })

    val queue = Queue(io.sample_in)

    io.sample_out.bits.features := queue.bits.features
    io.sample_out.bits.weights := queue.bits.weights
    io.sample_out.bits.tree_to_exec := queue.bits.tree_to_exec + 1.U
    io.sample_out.bits.shift := queue.bits.shift
    io.sample_out.bits.offset := queue.bits.tree_to_exec + 1.U
    io.sample_out.bits.scores := queue.bits.scores
    io.sample_out.bits.search_for_root := queue.bits.search_for_root

    io.sample_out.valid := queue.valid

    queue.ready := io.sample_in.ready
    
}