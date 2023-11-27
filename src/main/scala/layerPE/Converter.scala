package YoseUe_SATL

import chisel3._
import chisel3.util._
import chisel3.experimental._

class ForwardConverter(n_attr: Int, n_classes: Int, n_depths: Int, info_bit: Int, tree_bit: Int, rounded_info_bit: Int, rounded_tree_bit: Int) extends Module{
    val io = IO(new Bundle{
        val sample_in = Flipped(Decoupled(new AxiSample(n_attr,n_classes,n_depths,rounded_info_bit,rounded_tree_bit)))
        val sample_out = Decoupled(new Sample(n_attr,n_classes,n_depths,info_bit,tree_bit))
    })

    val queue = Queue(io.sample_in,3)
    
    queue.ready := io.sample_out.ready
    //queue.bits.TREADY := io.sample_out.ready
    for(i <- 0 until n_attr){
        io.sample_out.bits.features(i) := queue.bits.TDATA((i+1)*16-1,i*16).asFixedPoint(8.BP)
    }
    io.sample_out.bits.offset := queue.bits.TDATA(n_attr*16+15,n_attr*16)
    io.sample_out.bits.shift := queue.bits.TDATA(n_attr*16+23,n_attr*16+16)
    io.sample_out.bits.search_for_root := queue.bits.TDATA(n_attr*16+31,n_attr*16+24)
    io.sample_out.bits.tree_to_exec := queue.bits.TDATA(n_attr*16+39,n_attr*16+32)
    for(i <- 0 until n_classes){
        io.sample_out.bits.scores(i) := queue.bits.TDATA(n_attr*16+48+(i+1)*16-1,n_attr*16+48+i*16).asFixedPoint(8.BP)
    }
    for(i <- 0 until n_depths){
        io.sample_out.bits.weights(i) := queue.bits.TDATA(n_attr*16+48+n_classes*16+(i+1)*16-1,n_attr*16+48+n_classes*16+i*16).asFixedPoint(8.BP)
    }
    io.sample_out.valid := queue.bits.TVALID
    io.sample_out.bits.dest := 0.U
}

class BackwardConverter(n_attr: Int, n_classes: Int, n_depths: Int, info_bit: Int, tree_bit: Int, rounded_info_bit: Int, rounded_tree_bit: Int) extends Module{
    val io = IO(new Bundle{
        val sample_in = Flipped(Decoupled(new Sample(n_attr,n_classes,n_depths,info_bit,tree_bit)))
        val sample_out = Decoupled(new AxiSample(n_attr,n_classes,n_depths,rounded_info_bit,rounded_tree_bit))
    })

    val queue = Queue(io.sample_in,3)
    
    queue.ready := io.sample_out.ready

    for(i <- 0 until n_attr){
        io.sample_out.bits.features(i) := queue.bits.TDATA((i+1)*16-1,i*16).asFixedPoint(8.BP)
    }
    io.sample_out.bits.offset := queue.bits.TDATA(n_attr*16+15,n_attr*16)
    io.sample_out.bits.shift := queue.bits.TDATA(n_attr*16+23,n_attr*16+16)
    io.sample_out.bits.search_for_root := queue.bits.TDATA(n_attr*16+31,n_attr*16+24)
    io.sample_out.bits.tree_to_exec := queue.bits.TDATA(n_attr*16+39,n_attr*16+32)
    for(i <- 0 until n_classes){
        io.sample_out.bits.scores(i) := queue.bits.TDATA(n_attr*16+48+(i+1)*16-1,n_attr*16+48+i*16).asFixedPoint(8.BP)
    }
    for(i <- 0 until n_depths){
        io.sample_out.bits.weights(i) := queue.bits.TDATA(n_attr*16+48+n_classes*16+(i+1)*16-1,n_attr*16+48+n_classes*16+i*16).asFixedPoint(8.BP)
    }
    io.sample_out.valid := queue.bits.TVALID
    io.sample_out.bits.dest := 0.U
}