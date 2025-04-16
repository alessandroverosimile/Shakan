package YoseUe_SATL

import chisel3._
import chisel3.util._
import chisel3.experimental._
import spatial_templates.pe._

class VoterPE(id: ElemId, n_attr: Int, n_classes: Int, info_bit: Int, tree_bit: Int, n_ins: Int = 1) 
    extends PE(id) with WithFWConnection {
    val io = IO(new Bundle{
        val samples_in = Vec(n_ins,Flipped(Decoupled(new Sample(n_attr,n_classes,info_bit,tree_bit))))
        val sample_out = Decoupled(new Sample(n_attr,n_classes,info_bit,tree_bit))
    })

    val queues = VecInit(Seq.tabulate(n_ins)(i => Queue(io.samples_in(i), 48)))
    val valid = queues.map(_.valid).reduce(_ & _)

    when(valid){
        io.sample_out.valid := true.B
        io.sample_out.bits.features := queues(0).bits.features
        io.sample_out.bits.tree_to_exec := queues(0).bits.tree_to_exec
        io.sample_out.bits.shift := queues(0).bits.shift
        io.sample_out.bits.offset := queues(0).bits.offset
        io.sample_out.bits.dest := queues(0).bits.dest
        io.sample_out.bits.search_for_root := queues(0).bits.search_for_root
        io.sample_out.bits.last := queues(0).bits.last
        io.sample_out.bits.clock_cycles := queues(0).bits.clock_cycles
        for(i <- 0 until n_classes){
            var sum = queues.map(_.bits.scores(i)).reduce(_ +& _)
            io.sample_out.bits.scores(i) := sum
        }
        
    }.otherwise{
        io.sample_out.valid := false.B
        io.sample_out.bits := DontCare
    }

    val queues_seq = Seq.tabulate(n_ins){j => (j, queues(j))}

    if (n_ins > 1){
        for(i <- 0 until n_ins){
            queues(i).ready := io.sample_out.ready & queues_seq.filter(x => x._1 != i).map(_._2.valid).reduce(_ & _)
        }
    }else{
        queues(0).ready := io.sample_out.ready
    }
    
    //queues.map(_.ready := io.sample_out.ready) 

    def linkToDest(backward_converter: BackwardConverter) {
        backward_converter.io.sample_in.bits.features := io.sample_out.bits.features
        backward_converter.io.sample_in.bits.tree_to_exec := io.sample_out.bits.tree_to_exec
        backward_converter.io.sample_in.bits.shift := io.sample_out.bits.shift
        backward_converter.io.sample_in.bits.offset := io.sample_out.bits.offset
        backward_converter.io.sample_in.bits.scores := io.sample_out.bits.scores
        backward_converter.io.sample_in.bits.search_for_root := io.sample_out.bits.search_for_root
        backward_converter.io.sample_in.bits.dest := io.sample_out.bits.dest
        backward_converter.io.sample_in.bits.last := io.sample_out.bits.last
        backward_converter.io.sample_in.valid := io.sample_out.valid
        io.sample_out.ready := backward_converter.io.sample_in.ready
    }
}