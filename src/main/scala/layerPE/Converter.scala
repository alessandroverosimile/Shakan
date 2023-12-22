package YoseUe_SATL

import chisel3._
import chisel3.util._
import chisel3.experimental._
/*
class ForwardConverter(n_attr: Int, n_classes: Int, n_depths: Int, info_bit: Int, tree_bit: Int, rounded_info_bit: Int, rounded_tree_bit: Int, compensation: Int) extends Module{
    val io = IO(new Bundle{
        val sample_in = new AxiSample(n_attr,n_classes,n_depths,rounded_info_bit,rounded_tree_bit,compensation)
        val sample_out = Decoupled(new Sample(n_attr,n_classes,n_depths,info_bit,tree_bit))
    })

    val queue = Module(new Queue(new Sample(n_attr,n_classes,n_depths,info_bit,tree_bit), 3))
    
    for(i <- 0 until n_attr){
        queue.io.enq.bits.features(i) := io.sample_in.TDATA((i+1)*16-1,i*16).asFixedPoint(8.BP)
    }
    queue.io.enq.bits.offset := io.sample_in.TDATA(n_attr*16+15,n_attr*16)
    queue.io.enq.bits.shift := io.sample_in.TDATA(n_attr*16+23,n_attr*16+16)
    queue.io.enq.bits.search_for_root := io.sample_in.TDATA(n_attr*16+31,n_attr*16+24)
    queue.io.enq.bits.tree_to_exec := io.sample_in.TDATA(n_attr*16+39,n_attr*16+32)
    for(i <- 0 until n_classes){
        queue.io.enq.bits.scores(i) := io.sample_in.TDATA(n_attr*16+48+(i+1)*16-1,n_attr*16+48+i*16).asFixedPoint(8.BP)
    }
    for(i <- 0 until n_depths){
        queue.io.enq.bits.weights(i) := io.sample_in.TDATA(n_attr*16+48+n_classes*16+(i+1)*16-1,n_attr*16+48+n_classes*16+i*16).asFixedPoint(8.BP)
    }
    queue.io.enq.valid := io.sample_in.TVALID
    queue.io.enq.bits.dest := false.B
    queue.io.enq.bits.last := io.sample_in.TLAST
    io.sample_in.TREADY := queue.io.enq.ready

    io.sample_out.valid := queue.io.deq.valid
    io.sample_out.bits := queue.io.deq.bits
    queue.io.deq.ready := io.sample_out.ready
}

class BackwardConverter(n_attr: Int, n_classes: Int, n_depths: Int, info_bit: Int, tree_bit: Int, rounded_info_bit: Int, rounded_tree_bit: Int, compensation: Int) extends Module{
    val io = IO(new Bundle{
        val sample_in = Flipped(Decoupled(new Sample(n_attr,n_classes,n_depths,info_bit,tree_bit)))
        val sample_out = Flipped(new AxiSample(n_attr,n_classes,n_depths,rounded_info_bit,rounded_tree_bit,compensation))
    })
    
    io.sample_in.ready := io.sample_out.TREADY

    io.sample_out.TKEEP := (scala.math.pow(2,((((n_attr+n_depths+n_classes)*16+24+rounded_info_bit+rounded_tree_bit+compensation)/8).toInt))-1).toInt.U
    io.sample_out.TLAST := io.sample_in.bits.last
    io.sample_out.TVALID := io.sample_in.valid

    /*io.sample_out.bits.TDATA := Cat(Cat(queue.bits.weights.reverse),Cat(queue.bits.scores.reverse),Cat(Fill(rounded_info_bit-tree_bit,0.U),queue.bits.tree_to_exec), 
                                        Cat(Fill(7,0.U),queue.bits.search_for_root), Cat(Fill(7,0.U),queue.bits.shift), 
                                        Cat(Fill(rounded_info_bit-info_bit,0.U),queue.bits.offset), Cat(queue.bits.features.reverse))*/
    
    io.sample_out.TDATA := Cat(Cat(io.sample_in.bits.weights.reverse),Cat(io.sample_in.bits.scores.reverse),Cat(Fill(rounded_info_bit-tree_bit,0.U),io.sample_in.bits.tree_to_exec),
                                    Cat(Fill(7,0.U),io.sample_in.bits.search_for_root), Cat(Fill(7,0.U),io.sample_in.bits.shift),
                                    Cat(Fill(rounded_info_bit-info_bit,0.U),io.sample_in.bits.offset), Cat(io.sample_in.bits.features.reverse))
    /*
    io.sample_out.bits.TDATA := queue.bits.features(0).asUInt()
    for(i <- 1 until n_attr){
        io.sample_out.bits.TDATA := Cat(queue.bits.features(i),io.sample_out.bits.TDATA)
    }
    io.sample_out.bits.TDATA := Cat(queue.bits.offset,io.sample_out.bits.TDATA)
    io.sample_out.bits.TDATA := Cat(queue.bits.shift,io.sample_out.bits.TDATA)
    io.sample_out.bits.TDATA := Cat(queue.bits.search_for_root,io.sample_out.bits.TDATA)
    io.sample_out.bits.TDATA := Cat(queue.bits.tree_to_exec,io.sample_out.bits.TDATA)
    for(i <- 0 until n_classes){
        io.sample_out.bits.TDATA := Cat(queue.bits.scores(i),io.sample_out.bits.TDATA)
    }
    for(i <- 0 until n_depths){
        io.sample_out.bits.TDATA := Cat(queue.bits.weights(i),io.sample_out.bits.TDATA)
    }
    */
}
*/