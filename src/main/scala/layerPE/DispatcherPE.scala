package YoseUe_SATL

import chisel3._
import chisel3.util._
import chisel3.experimental._

class DispatcherPE(id: ElemId, n_attr: Int, n_classes: Int, n_depths: Int, info_bit: Int, tree_bit: Int, n_outs: Int = 1) extends PE(id){
    val io = IO(new Bundle{
        val sample_in = Flipped(Decoupled(new Sample(n_attr,n_classes,n_depths,info_bit,tree_bit)))
        val samples_out = Vec(n_outs, Decoupled(new Sample(n_attr,n_classes,n_depths,info_bit,tree_bit)))
    })

    val queue = Queue(io.sample_in,3)

    for(i <- 0 until n_outs){
        io.samples_out(i).bits := queue.bits
        io.samples_out(i).valid := queue.valid
    }

    queue.ready := io.samples_out(0).ready

    def link_to_first_interconnect(i: Int, ic: FirstInterconnectPE): Unit = {
        io.samples_out(i) <> ic.io.sample_entering
    }

    def link_to_last_interconnect(ic: LastInterconnectPE): Unit = {
        println("Dispatcher cannot be linked with Last Interconnect PE")
    }

    def link_to_tree_pe(pe: TreePEwithBRAM): Unit = {
        println("Dispatcher cannot be linked with Tree PE")
    }

    def link_to_increment(increment_pe: IncrementTreePE): Unit = {
        println("Dispatcher cannot be linked with Increment PE")
    }

    def link_to_voter(i: Int, voter_pe: VoterPE): Unit = {
        println("Dispatcher cannot be linked with Voter PE")
    }
}