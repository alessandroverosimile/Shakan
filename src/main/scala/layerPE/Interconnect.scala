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

    val queue = Queue(io.sample_in,3)

    io.sample_looping.bits := queue.bits
    io.sample_leaving.bits := queue.bits

    when(queue.valid){
        when(queue.bits.dest){
            io.sample_looping.valid := false.B
            io.sample_leaving.valid := true.B
        }.otherwise{
            io.sample_looping.valid := true.B
            io.sample_leaving.valid := false.B
        }
    }.otherwise{
        io.sample_looping.valid := false.B
        io.sample_leaving.valid := false.B
    }
    queue.ready := io.sample_leaving.ready && io.sample_looping.ready

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

}

class FirstInterconnectPE(id:ElemId, n_attr: Int, n_classes: Int, n_depths: Int, info_bit: Int, tree_bit: Int) extends PE(id){
    val io = IO(new Bundle{
        val sample_entering = Flipped(Decoupled(new Sample(n_attr,n_classes,n_depths,info_bit,tree_bit)))
        val sample_looping = Flipped(Decoupled(new Sample(n_attr,n_classes,n_depths,info_bit,tree_bit)))
        val sample_out = Decoupled(new Sample(n_attr,n_classes,n_depths,info_bit,tree_bit))
    })

    val queue_entering = Queue(io.sample_entering,128)
    val queue_looping = Queue(io.sample_looping,128)

    when(queue_looping.valid){
        io.sample_out.bits := queue_looping.bits
        io.sample_out.valid := true.B
        queue_looping.ready := io.sample_out.ready
        queue_entering.ready := false.B
    }.elsewhen(queue_entering.valid){
        io.sample_out.bits := queue_entering.bits
        io.sample_out.valid := true.B
        queue_entering.ready := io.sample_out.ready
        queue_looping.ready := true.B
    }.otherwise{
        io.sample_out.bits := queue_entering.bits
        io.sample_out.valid := false.B
        queue_looping.ready := true.B
        queue_entering.ready := true.B
    }

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
}