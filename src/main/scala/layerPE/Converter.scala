package YoseUe_SATL

import chisel3._
import chisel3.util._
import chisel3.experimental._

class ForwardConverter(n_attr: Int, n_classes: Int, n_depths: Int, info_bit: Int, tree_bit: Int, rounded_info_bit: Int, rounded_tree_bit: Int, compensation: Int) extends Module{
    val io = IO(new Bundle{
        val sample_in = new AxiSample(n_attr,n_classes,n_depths,rounded_info_bit,rounded_tree_bit,compensation)
        val sample_out = Decoupled(new Sample(n_attr,n_classes,n_depths,info_bit,tree_bit))
    })
    
    io.sample_in.TREADY := io.sample_out.ready
    for(i <- 0 until n_attr){
        io.sample_out.bits.features(i) := io.sample_in.TDATA((i+1)*16-1,i*16).asFixedPoint(8.BP)
    }
    io.sample_out.bits.offset := io.sample_in.TDATA(n_attr*16+15,n_attr*16)
    io.sample_out.bits.shift := io.sample_in.TDATA(n_attr*16+23,n_attr*16+16)
    io.sample_out.bits.search_for_root := io.sample_in.TDATA(n_attr*16+31,n_attr*16+24)
    io.sample_out.bits.tree_to_exec := io.sample_in.TDATA(n_attr*16+39,n_attr*16+32)
    for(i <- 0 until n_classes){
        io.sample_out.bits.scores(i) := io.sample_in.TDATA(n_attr*16+48+(i+1)*16-1,n_attr*16+48+i*16).asFixedPoint(8.BP)
    }
    for(i <- 0 until n_depths){
        io.sample_out.bits.weights(i) := io.sample_in.TDATA(n_attr*16+48+n_classes*16+(i+1)*16-1,n_attr*16+48+n_classes*16+i*16).asFixedPoint(8.BP)
    }
    io.sample_out.valid := io.sample_in.TVALID
    io.sample_out.bits.dest := 0.U
    io.sample_out.bits.last := io.sample_in.TLAST
}

class BackwardConverter(n_attr: Int, n_classes: Int, n_depths: Int, info_bit: Int, tree_bit: Int, rounded_info_bit: Int, rounded_tree_bit: Int, compensation: Int) extends Module{
    val io = IO(new Bundle{
        val sample_in = Flipped(Decoupled(new Sample(n_attr,n_classes,n_depths,info_bit,tree_bit)))
        val sample_out = Flipped(new AxiSample(n_attr,n_classes,n_depths,rounded_info_bit,rounded_tree_bit,compensation))
    })

    val queue = Queue(io.sample_in,3)
    
    queue.ready := io.sample_out.TREADY

    io.sample_out.TKEEP := 0.U
    io.sample_out.TLAST := queue.bits.last
    io.sample_out.TVALID := queue.valid

    /*io.sample_out.bits.TDATA := Cat(Cat(queue.bits.weights.reverse),Cat(queue.bits.scores.reverse),Cat(Fill(rounded_info_bit-tree_bit,0.U),queue.bits.tree_to_exec), 
                                        Cat(Fill(7,0.U),queue.bits.search_for_root), Cat(Fill(7,0.U),queue.bits.shift), 
                                        Cat(Fill(rounded_info_bit-info_bit,0.U),queue.bits.offset), Cat(queue.bits.features.reverse))*/
    
    io.sample_out.TDATA := Cat(Cat(queue.bits.weights.reverse),Cat(queue.bits.scores.reverse),Cat(Fill(rounded_info_bit-tree_bit,0.U),queue.bits.tree_to_exec),
                                    Cat(Fill(7,0.U),queue.bits.search_for_root), Cat(Fill(7,0.U),queue.bits.shift),
                                    Cat(Fill(rounded_info_bit-info_bit,0.U),queue.bits.offset), Cat(queue.bits.features.reverse))
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