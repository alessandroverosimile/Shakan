package YoseUe_SATL

import chisel3._
import chisel3.util._
import chisel3.experimental._

class VoterPE(id: ElemId, n_attr: Int, n_classes: Int, n_depths: Int, info_bit: Int, tree_bit: Int, n_ins: Int = 1) extends PE(id){
    val io = IO(new Bundle{
        val samples_in = Vec(n_ins,Flipped(Decoupled(new Sample(n_attr,n_classes,n_depths,info_bit,tree_bit))))
        val sample_out = Decoupled(new Sample(n_attr,n_classes,n_depths,info_bit,tree_bit))
    })

    val queues = VecInit(Seq.tabulate(n_ins)(i => Queue(io.samples_in(i), 128)))

    var valid = true.B

    for(i <- 0 until n_ins){
        valid = valid && queues(i).valid
    }

    when(valid){
        io.sample_out.valid := true.B
        io.sample_out.bits.features := queues(0).bits.features
        io.sample_out.bits.weights := queues(0).bits.weights
        io.sample_out.bits.tree_to_exec := queues(0).bits.tree_to_exec
        io.sample_out.bits.shift := queues(0).bits.shift
        io.sample_out.bits.offset := queues(0).bits.offset
        io.sample_out.bits.dest := queues(0).bits.dest
        io.sample_out.bits.search_for_root := queues(0).bits.search_for_root
        io.sample_out.bits.last := queues(0).bits.last
        for(i <- 0 until n_classes){
            var sum = queues(0).bits.scores(i)
            for(j <- 1 until n_ins){
                sum = sum +& queues(j).bits.scores(i)
            }
            io.sample_out.bits.scores(i) := sum
        }
        for(i <- 0 until n_ins){
            queues(i).ready := io.sample_out.ready
        }
    }.otherwise{
        io.sample_out.valid := false.B
        io.sample_out.bits := DontCare
        for(i <- 0 until n_ins){
            queues(i).ready := !queues(i).valid
        }
    }

    def link_to_first_interconnect(i: Int, ic: FirstInterconnectPE): Unit = {
        println("Voter cannot be linked with First Interconnect PE")
    }

    def link_to_last_interconnect(ic: LastInterconnectPE): Unit = {
        println("Voter cannot be linked with Last Interconnect PE")
    }

    def link_to_tree_pe(pe: TreePEwithBRAM): Unit = {
        println("Voter cannot be linked with Tree PE")
    }

    def link_to_increment(increment_pe: IncrementTreePE): Unit = {
        println("Voter cannot be linked with Increment PE")
    }

    def link_to_voter(i: Int, voter_pe: VoterPE): Unit = {
        println("Voter PE cannot be linked with Voter PE")
    }

}