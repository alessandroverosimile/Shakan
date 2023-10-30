package YoseUe_SATL

import chisel3._
import chisel3.util._
import chisel3.experimental._
import scala.math._


class TreePEsWrapper(n_trees: Int, max_depth: Int, n_attr: Int, n_classes: Int, n_depths: Int, info_bit: Int, tree_bit: Int, attr_bit: Int, bram_size: Int = 36864) extends Module{
    val instruction_per_bram = (bram_size/64).toInt //64 is the Node Instruction size, fixed to 64. It should not change but, if It will happen, remember to change the value here
    val trees_for_depth = (math.ceil(n_trees/n_depths)).toInt
    val max_trees_at_maximum_depth = instruction_per_bram/(math.pow(2,max_depth-1))
    val set_of_pes = (math.ceil(trees_for_depth/max_trees_at_maximum_depth)).toInt
    val n_pes = max_depth*set_of_pes
    val n_loops = (max_trees_at_maximum_depth*n_depths).toInt
    val pes = Seq.tabulate(n_pes)(i => Module(new TreePEwithBRAM(new ElemId(n_pes,i,0,0), n_attr,n_classes,n_depths,info_bit,tree_bit,attr_bit,i%max_depth==0,n_loops)))
    val wrapper_io = IO(new Bundle{
        val sample_in = Flipped(Decoupled(new Sample(n_attr,n_classes,n_depths,info_bit,tree_bit)))
        val sample_out = Decoupled(new Sample(n_attr,n_classes,n_depths,info_bit,tree_bit))
        val brams = Vec(n_pes,Flipped(new BRAMLikeIO(64,10)))
    })
    val brams = Seq.tabulate(n_pes)(i => Module(new BRAMLikeMem1(new ElemId(n_pes,i,0,0),64,10)))
    val brams_io = Seq.fill(n_pes)(IO(new BRAMLikeIO(64,10)))
    
    //linking pes
    for(i <- 0 to n_pes){
        if (i==0){
            pes(i).pe_io.sample_in <> wrapper_io.sample_in
        }else if(i==n_pes){
            wrapper_io.sample_out <> pes(i-1).pe_io.sample_out
        }else{
            pes(i).pe_io.sample_in <> pes(i-1).pe_io.sample_out
        }
    }
    //brams link
    for(i <- 0 until n_pes){
        wrapper_io.brams(i) <> pes(i).pe_io.mem

        brams(i).io.enable_1 := pes(i).pe_io.mem.enable_1
        brams(i).io.write_1 := pes(i).pe_io.mem.write_1
        brams(i).io.addr_1 := pes(i).pe_io.mem.addr_1
        brams(i).io.dataIn_1 := pes(i).pe_io.mem.dataIn_1
        pes(i).pe_io.mem.dataOut_1 := brams(i).io.dataOut_1

        brams(i).io.enable_2 := brams_io(i).enable_2
        brams(i).io.write_2 := brams_io(i).write_2
        brams(i).io.addr_2 := brams_io(i).addr_2
        brams(i).io.dataIn_2 := brams_io(i).dataIn_2
        brams_io(i).dataOut_2 := brams(i).io.dataOut_2

        brams_io(i).dataOut_1 := 0.U
    }
}