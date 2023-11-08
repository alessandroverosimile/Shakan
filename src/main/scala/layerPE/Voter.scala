package YoseUe_SATL

import chisel3._
import chisel3.util._
import chisel3.experimental._

/*

class Voter(n_attr: Int, n_classes: Int, n_depths: Int, info_bit: Int, tree_bit: Int, n_ins: Int = 1) extends Module{
    val io = IO(new Bundle{
        val samples_in = Vec(n_ins,Flipped(Decoupled(new Sample(n_attr,n_classes,n_depths,info_bit,tree_bit))))
        val sample_out = Decoupled(new Sample(n_attr,n_classes,n_depths,info_bit,tree_bit))
    })

    val queue = Vec(n_ins, Queue(Flipped(Decoupled(new Sample(n_attr,n_classes,n_depths,info_bit,tree_bit)),128)))

    for(i <- 0 until n_ins){
        queue(i) := Queue(samples_in(i),128)
    }

    val valid := true.B

    for(i <- 0 until n_ins){
        valid := valid && queue(i).valid
    }

    when(valid){
        io.sample_out.valid := true.B
        //implementation
    }.otherwise{
        io.sample_out.bits := 0
        io.sample_out.valid := false.B 
    }

    def link(i: Int, ic: FirstInterconnect): Unit = {
        io.samples_out(i) <> ic.io.sample_entering
    }
}
*/