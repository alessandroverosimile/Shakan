package YoseUe_SATL

import chisel3._
import chisel3.util._
import chisel3.experimental._
import scala.math._


class TreePEsWrapper(n_trees: Int, max_depth: Int, n_attr: Int, n_classes: Int, n_depths: Int, info_bit: Int, tree_bit: Int, attr_bit: Int, bram_size: Int = 36864, configuration: Boolean = false) extends Module{
    val instruction_per_bram = (bram_size/64).toInt //64 is the Node Instruction size, fixed to 64. It should not change but, if It will happen, remember to change the value here
    val trees_for_depth = (math.ceil(n_trees/n_depths)).toInt
    val max_trees_at_maximum_depth = instruction_per_bram/(math.pow(2,max_depth-1))
    val set_of_pes = (math.ceil(trees_for_depth/max_trees_at_maximum_depth)).toInt
    val n_pes = max_depth*set_of_pes
    var n_loops = 0
    if (set_of_pes > 1){
        n_loops = (max_trees_at_maximum_depth*n_depths).toInt
    }else{
        n_loops = 1
    }
    //optimized version of n_loops (it needs an adaptation of the code that fills the BRAMs
    //n_loops = n_trees/set_of_pes

    /*
    n_pes = adjacency_matrix.length - 2
    val wrapper_io = IO(new Bundle{
        val sample_in = Flipped(Decoupled(new Sample(n_attr,n_classes,n_depths,info_bit,tree_bit)))
        val sample_out = Decoupled(new Sample(n_attr,n_classes,n_depths,info_bit,tree_bit))
        val brams = Vec(n_pes,Flipped(new BRAMLikeIO(64,10)))
    })
    for(i <- 0 until adjacency_matrix.length){
        val sum_rows = 0
        val sum_columns = 0
        for(j <- 0 until adjacency_matrix.length){
            sum_rows = sum_rows + adjacency_matrix(i)(j)
            sum_columns = sum_columns + adjacency_matrix(j)(i)
        }
        if(i!=0 && i!=n_pes+1){
            require(sum_rows==1)
            require(sum_columns==1)
        }else if(i==0){
            require(sum_rows==1)
            require(sum_columns==0)
        }else{
            require(sum_rows==0)
            require(sum_columns==1)
        }
        
    }
    for(i <- 0 until adjacency_matrix.length){
        require(adjacency_matrix(i)(i)==0)
    }
    val pes = Seq.tabulate(n_pes)(i => Module(new TreePEwithBRAM(new ElemId(n_pes,i,0,0), n_attr,n_classes,n_depths,info_bit,tree_bit,attr_bit,is_a_root(i),n_loops)))
    val first_interconnect = Module(new FirstInterconnect(n_attr,n_classes,n_depths,info_bit,tree_bit))
    val last_interconnect = Module(new LastInterconnect(n_attr,n_classes,n_depths,info_bit,tree_bit))
    val increment = Module(new IncrementTreePE(new ElemId(n_pes,0,1,0),n_attr,n_classes,n_depths,info_bit,tree_bit))
    wrapper_io.sample_in <> first_interconnect.io.sample_entering
    for(i <- 0 until adjacency_matrix.length){
        for(j <- 0 until adjacency_matrix.length){
            if(adjacency_matrix(i)(j)){
                if(i!=0 && j != n_pes+1){
                    pes(i-i).pe_io.sample_out <> pes(j-1).pe_io.sample_in
                }else if(i==0 && j != n_pes+1){
                    first_interconnect.io.sample_out <> pes(j-1).pe_io.sample_in
                }else if (i!=0 && j == n_pes+1){
                    pes(i-1).pe_io.sample_out <> last_interconnect.io.sample_in
                }else{
                    first_interconnect.io.sample_out <> last_interconnect.io.sample_in
                }
            }
        }
    }
    last_interconnect.io.sample_leaving <> wrapper_io.sample_out
    last_interconnect.io.sample_looping <> increment.io.sample_in
    increment.io.sample_out <> first_interconnect.io.sample_looping
    */
    val pes = Seq.tabulate(n_pes)(i => Module(new TreePEwithBRAM(new ElemId(n_pes,i,0,0), n_attr,n_classes,n_depths,info_bit,tree_bit,attr_bit,i%max_depth==0,n_loops)))
    val wrapper_io = IO(new Bundle{
        val sample_in = Flipped(Decoupled(new Sample(n_attr,n_classes,n_depths,info_bit,tree_bit)))
        val sample_out = Decoupled(new Sample(n_attr,n_classes,n_depths,info_bit,tree_bit))
        val brams = Vec(n_pes,Flipped(new BRAMLikeIO(64,10)))
    })
    val brams = Seq.tabulate(n_pes)(i => Module(new BRAMLikeMem1(new ElemId(n_pes,i,0,0),64,10)))
    val brams_io = Seq.fill(n_pes)(IO(new BRAMLikeIO(64,10)))
    val first_interconnect = Module(new FirstInterconnect(n_attr,n_classes,n_depths,info_bit,tree_bit))
    val last_interconnect = Module(new LastInterconnect(n_attr,n_classes,n_depths,info_bit,tree_bit))
    //val increment = Module(new IncrementTreePE(new ElemId(n_pes,0,1,0),n_attr,n_classes,n_depths,info_bit,tree_bit))
    
    //linking pes
    wrapper_io.sample_in <> first_interconnect.io.sample_entering
    for(i <- 0 to n_pes){
        if (i==0){
            pes(i).pe_io.sample_in <> first_interconnect.io.sample_out
        }else if(i==n_pes){
            //wrapper_io.sample_out <> pes(i-1).pe_io.sample_out
            last_interconnect.io.sample_in <> pes(i-1).pe_io.sample_out
        }else{
            pes(i).pe_io.sample_in <> pes(i-1).pe_io.sample_out
        }
    }
    //pes(n_pes-1).pe_io.sample_out <> first_interconnect.io.sample_looping
    last_interconnect.io.sample_looping <> first_interconnect.io.sample_looping
    wrapper_io.sample_out <> last_interconnect.io.sample_leaving

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