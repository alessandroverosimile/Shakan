package YoseUe_SATL

import chisel3._
import chisel3.util._
import chisel3.experimental._

class LastInterconnectPE(id: ElemId, n_attr: Int, n_classes: Int, n_depths: Int, info_bit: Int, tree_bit: Int) extends PE(id){
    val io = IO(new Bundle{
        val sample_in = Flipped(Decoupled(new Sample(n_attr,n_classes,n_depths,info_bit,tree_bit)))
        val sample_looping = Decoupled(new Sample(n_attr,n_classes,n_depths,info_bit,tree_bit))
        val sample_leaving = Decoupled(new Sample(n_attr,n_classes,n_depths,info_bit,tree_bit))
    })

    val queue = Queue(io.sample_in,4)

    io.sample_looping.bits := queue.bits
    io.sample_leaving.bits.features := queue.bits.features 
    io.sample_leaving.bits.offset := queue.bits.offset
    io.sample_leaving.bits.shift := queue.bits.shift
    io.sample_leaving.bits.search_for_root := queue.bits.search_for_root
    io.sample_leaving.bits.tree_to_exec := queue.bits.tree_to_exec
    io.sample_leaving.bits.scores := queue.bits.scores 
    io.sample_leaving.bits.weights := queue.bits.weights 
    io.sample_leaving.bits.dest := queue.bits.dest 
    io.sample_leaving.bits.last := queue.bits.last && queue.bits.dest
    io.sample_looping.valid := queue.valid & !queue.bits.dest
    io.sample_leaving.valid := queue.valid & queue.bits.dest
    io.sample_leaving.bits.clock_cycles := queue.bits.clock_cycles

    queue.ready := (io.sample_leaving.ready & queue.bits.dest) | (io.sample_looping.ready & !queue.bits.dest)

    def link_to_increment(increment_pe: IncrementTreePE): Unit = {
        io.sample_looping <> increment_pe.io.sample_in
    }

    def link_to_first_interconnect(i: Int, ic: FirstInterconnectPE): Unit = {
        println("Last Interconnect cannot be linked with First Interconnect PE")
    }

    def link_to_last_interconnect(ic: LastInterconnectPE): Unit = {
        println("Last Interconnect cannot be linked with Last Interconnect PE")
    }

    def link_to_tree_pe(pe: TreePEwithBRAM): Unit = {
        println("Last Interconnect cannot be linked with Tree PE")
    }

    def link_to_voter(i: Int, voter_pe: VoterPE): Unit = {
        io.sample_leaving <> voter_pe.io.samples_in(i)
    }

}

class FirstInterconnectPE(id:ElemId, n_attr: Int, n_classes: Int, n_depths: Int, info_bit: Int, tree_bit: Int) extends PE(id){
    val io = IO(new Bundle{
        val sample_entering = Flipped(Decoupled(new Sample(n_attr,n_classes,n_depths,info_bit,tree_bit)))
        val sample_looping = Flipped(Decoupled(new Sample(n_attr,n_classes,n_depths,info_bit,tree_bit)))
        val sample_out = Decoupled(new Sample(n_attr,n_classes,n_depths,info_bit,tree_bit))
    })

    val queue_entering = Queue(io.sample_entering,128)
    val queue_looping = Queue(io.sample_looping,128)

    val arbiter = Module(new RRArbiter(new Sample(n_attr,n_classes,n_depths,info_bit,tree_bit),2))
    arbiter.io.in(0) <> queue_entering
    arbiter.io.in(1) <> queue_looping
    io.sample_out <> arbiter.io.out

    //io.sample_out.bits := Mux(queue_looping.valid,queue_looping.bits,queue_entering.bits)
    //io.sample_out.valid := Mux(queue_looping.valid,queue_looping.valid,queue_entering.valid)
    //queue_looping.ready := io.sample_out.ready
    //queue_entering.ready := io.sample_out.ready & !queue_looping.valid

    def link_to_tree_pe(tree_pe: TreePEwithBRAM): Unit = {
        io.sample_out <> tree_pe.pe_io.sample_in
    }

    def link_to_increment(increment_pe: IncrementTreePE): Unit = {
        println("First Interconnect cannot be linked with Increment PE")
    }

    def link_to_first_interconnect(i: Int, ic: FirstInterconnectPE): Unit = {
        println("First Interconnect cannot be linked with First Interconnect PE")
    }

    def link_to_last_interconnect(ic: LastInterconnectPE): Unit = {
        println("First Interconnect cannot be linked with Last Interconnect PE")
    }

    def link_to_voter(i: Int, voter_pe: VoterPE): Unit = {
        println("First Interconnect cannot be linked with Voter PE")
    }
}