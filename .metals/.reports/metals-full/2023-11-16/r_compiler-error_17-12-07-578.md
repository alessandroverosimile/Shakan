file://<WORKSPACE>/src/main/scala/layerPE/TreePEsWrapper.scala
### java.lang.AssertionError: assertion failed: position error, parent span does not contain child span
parent      = new ChiselStage(null: <notype>) # -1,
parent span = <8885..9002>,
child       = null # -1,
child span  = [8901..9008..9008]

occurred in the presentation compiler.

action parameters:
uri: file://<WORKSPACE>/src/main/scala/layerPE/TreePEsWrapper.scala
text:
```scala
package YoseUe_SATL

import circt.stage.ChiselStage
import chisel3._
import chisel3.util._
import chisel3.experimental._
import scala.math._


class TreePEsWrapper(n_trees: Int, max_depth: Int, n_attr: Int, n_classes: Int, n_depths: Int, info_bit: Int, tree_bit: Int, attr_bit: Int, bram_size: Int = 36864, structure_list: List[List[Int]]) extends Module{
    /*val instruction_per_bram = (bram_size/64).toInt //64 is the Node Instruction size, fixed to 64. It should not change but, if It will happen, remember to change the value here
    val trees_for_depth = (math.ceil(n_trees/n_depths)).toInt
    val max_trees_at_maximum_depth = instruction_per_bram/(math.pow(2,max_depth-1))
    val set_of_pes = (math.ceil(trees_for_depth/max_trees_at_maximum_depth)).toInt
    val n_pes = max_depth*set_of_pes
    var n_loops = 0
    if (set_of_pes > 1){
        n_loops = (max_trees_at_maximum_depth*n_depths).toInt
    }else{
        n_loops = n_trees
    }
    //optimized version of n_loops (it needs an adaptation of the code that fills the BRAMs
    //n_loops = n_trees/set_of_pes
    */
    
    var total_trees = 0
    var n_pes = 0
    for(i <- 0 until structure_list.length){
        n_pes = n_pes + structure_list(i)(0)
        total_trees = total_trees + structure_list(i)(1)
    }


    require(total_trees==n_trees)
    println("N_PES", n_pes)
    val wrapper_io = IO(new Bundle{
        val sample_in = Flipped(Decoupled(new Sample(n_attr,n_classes,n_depths,info_bit,tree_bit)))
        val sample_out = Vec(structure_list.length,Decoupled(new Sample(n_attr,n_classes,n_depths,info_bit,tree_bit)))
        val brams = Vec(n_pes,Flipped(new BRAMLikeIO(64,10)))
    })
    val brams_io = Seq.fill(n_pes)(IO(new BRAMLikeIO(64,10)))
    
    //reduce the list of lengths to a set of PEs, each one with all the linked PEs
    var link_map = Map.empty[PE,List[PE]]

    val dispatcher = Module(new DispatcherPE(new ElemId(2,0,0,0), n_attr,n_classes,n_depths,info_bit,tree_bit,structure_list.length))
    
    var counter = 0
    var first_interconnects = List.empty[FirstInterconnectPE]

    for(i <- 0 until structure_list.length){
        val pes = Seq.tabulate(structure_list(i)(0))(j => Module(new TreePEwithBRAM(new ElemId(2,i,j,0), n_attr,n_classes,n_depths,info_bit,tree_bit,attr_bit,j==0,structure_list(i)(1))))
        val brams = Seq.tabulate(structure_list(i)(0))(j => Module(new BRAMLikeMem1(new ElemId(2,i,j,0),64,10)))
        val first_interconnect = Module(new FirstInterconnectPE(new ElemId(2,i,1,0),n_attr,n_classes,n_depths,info_bit,tree_bit))
        val last_interconnect = Module(new LastInterconnectPE(new ElemId(2,i,structure_list(i)(0)+2,0),n_attr,n_classes,n_depths,info_bit,tree_bit))
        val increment = Module(new IncrementTreePE(new ElemId(2,i,structure_list(i)(0)+2,0),n_attr,n_classes,n_depths,info_bit,tree_bit))
        //brams link
        for(j <- 0 until structure_list(i)(0)){
            wrapper_io.brams(counter) <> pes(j).pe_io.mem

            brams(j).io.enable_1 := pes(j).pe_io.mem.enable_1
            brams(j).io.write_1 := pes(j).pe_io.mem.write_1
            brams(j).io.addr_1 := pes(j).pe_io.mem.addr_1
            brams(j).io.dataIn_1 := pes(j).pe_io.mem.dataIn_1
            pes(j).pe_io.mem.dataOut_1 := brams(j).io.dataOut_1

            brams(j).io.enable_2 := brams_io(counter).enable_2
            brams(j).io.write_2 := brams_io(counter).write_2
            brams(j).io.addr_2 := brams_io(counter).addr_2
            brams(j).io.dataIn_2 := brams_io(counter).dataIn_2
            brams_io(counter).dataOut_2 := brams(j).io.dataOut_2

            brams_io(counter).dataOut_1 := 0.U
            counter = counter + 1
        }

        link_map = link_map + (first_interconnect -> List(pes(0)))
        for(j <- 0 until structure_list(i)(0)){
            if(j == structure_list(i)(0)-1){
                link_map = link_map + (pes(j) -> List(last_interconnect))
            }else{
                link_map = link_map + (pes(j) -> List(pes(j+1)))
            }
        }
        link_map = link_map + (last_interconnect -> List(increment))
        link_map = link_map + (increment -> List(first_interconnect))

        first_interconnects = first_interconnects :+ first_interconnect
        last_interconnect.io.sample_leaving <> wrapper_io.sample_out(i)
    }

    link_map = link_map + (dispatcher -> first_interconnects)

    println(link_map)

    for((key,value) <- link_map){
        for(j <- 0 until value.length){
            if(value(j).isInstanceOf[TreePEwithBRAM]){
                key.link_to_tree_pe(value(j).asInstanceOf[TreePEwithBRAM])
            }else if(value(j).isInstanceOf[FirstInterconnectPE]){
                key.link_to_first_interconnect(value(j).id.x, value(j).asInstanceOf[FirstInterconnectPE])
            }else if(value(j).isInstanceOf[LastInterconnectPE]){
                key.link_to_last_interconnect(value(j).asInstanceOf[LastInterconnectPE])
            }else if(value(j).isInstanceOf[IncrementTreePE]){
                key.link_to_increment(value(j).asInstanceOf[IncrementTreePE])
            }else{
                println("WARNING: LINK TO UNKNOWN PE")
            }
        }
    }

    wrapper_io.sample_in <> dispatcher.io.sample_in

    println("END")
    //val pes = Seq.tabulate(n_pes)(i => Module(new TreePEwithBRAM(new ElemId(n_pes,i,0,0), n_attr,n_classes,n_depths,info_bit,tree_bit,attr_bit,i%max_depth==0,n_loops)))

    
    /*
    //linking pes
    wrapper_io.sample_in <> first_interconnect.io.sample_entering
    for(i <- 0 to n_pes){
        if (i==0){
            pes(i).pe_io.sample_in <> first_interconnect.io.sample_out
        }else if(i==n_pes){
            last_interconnect.io.sample_in <> pes(i-1).pe_io.sample_out
        }else{
            pes(i).pe_io.sample_in <> pes(i-1).pe_io.sample_out
        }
    }
    //pes(n_pes-1).pe_io.sample_out <> first_interconnect.io.sample_looping
    last_interconnect.io.sample_looping <> increment.io.sample_in
    increment.io.sample_out <> first_interconnect.io.sample_looping
    wrapper_io.sample_out <> last_interconnect.io.sample_leaving
    */
    
}

//Adjacency matrix

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

object emit extends App{
    val n_trees = 8
    val max_depth = 2
    val n_attr = 4
    val n_classes = 4
    val n_depths = 2
    val info_bit = 10
    val tree_bit = 8
    val attr_bit = (log(n_attr)/log(2)-0.00001).toInt + 1
    val structure_list = List(List(2,4),List(2,4))
    (new ChiselStage(.emitVerilog(new LastInterconnectPE(new ElemId(2,0,0,0),n_attr,n_classes,n_depths,info_bit,tree_bit))
    
}


```



#### Error stacktrace:

```
scala.runtime.Scala3RunTime$.assertFailed(Scala3RunTime.scala:8)
	dotty.tools.dotc.ast.Positioned.check$1(Positioned.scala:175)
	dotty.tools.dotc.ast.Positioned.check$1$$anonfun$3(Positioned.scala:205)
	scala.runtime.function.JProcedure1.apply(JProcedure1.java:15)
	scala.runtime.function.JProcedure1.apply(JProcedure1.java:10)
	scala.collection.immutable.List.foreach(List.scala:333)
	dotty.tools.dotc.ast.Positioned.check$1(Positioned.scala:205)
	dotty.tools.dotc.ast.Positioned.checkPos(Positioned.scala:226)
	dotty.tools.dotc.ast.Positioned.check$1(Positioned.scala:200)
	dotty.tools.dotc.ast.Positioned.checkPos(Positioned.scala:226)
	dotty.tools.dotc.ast.Positioned.check$1(Positioned.scala:200)
	dotty.tools.dotc.ast.Positioned.check$1$$anonfun$3(Positioned.scala:205)
	scala.runtime.function.JProcedure1.apply(JProcedure1.java:15)
	scala.runtime.function.JProcedure1.apply(JProcedure1.java:10)
	scala.collection.immutable.List.foreach(List.scala:333)
	dotty.tools.dotc.ast.Positioned.check$1(Positioned.scala:205)
	dotty.tools.dotc.ast.Positioned.checkPos(Positioned.scala:226)
	dotty.tools.dotc.ast.Positioned.check$1(Positioned.scala:200)
	dotty.tools.dotc.ast.Positioned.checkPos(Positioned.scala:226)
	dotty.tools.dotc.ast.Positioned.check$1(Positioned.scala:200)
	dotty.tools.dotc.ast.Positioned.check$1$$anonfun$3(Positioned.scala:205)
	scala.runtime.function.JProcedure1.apply(JProcedure1.java:15)
	scala.runtime.function.JProcedure1.apply(JProcedure1.java:10)
	scala.collection.immutable.List.foreach(List.scala:333)
	dotty.tools.dotc.ast.Positioned.check$1(Positioned.scala:205)
	dotty.tools.dotc.ast.Positioned.checkPos(Positioned.scala:226)
	dotty.tools.dotc.parsing.Parser.parse$$anonfun$1(ParserPhase.scala:38)
	dotty.tools.dotc.parsing.Parser.parse$$anonfun$adapted$1(ParserPhase.scala:39)
	scala.Function0.apply$mcV$sp(Function0.scala:42)
	dotty.tools.dotc.core.Phases$Phase.monitor(Phases.scala:440)
	dotty.tools.dotc.parsing.Parser.parse(ParserPhase.scala:39)
	dotty.tools.dotc.parsing.Parser.runOn$$anonfun$1(ParserPhase.scala:48)
	scala.runtime.function.JProcedure1.apply(JProcedure1.java:15)
	scala.runtime.function.JProcedure1.apply(JProcedure1.java:10)
	scala.collection.immutable.List.foreach(List.scala:333)
	dotty.tools.dotc.parsing.Parser.runOn(ParserPhase.scala:48)
	dotty.tools.dotc.Run.runPhases$1$$anonfun$1(Run.scala:246)
	scala.runtime.function.JProcedure1.apply(JProcedure1.java:15)
	scala.runtime.function.JProcedure1.apply(JProcedure1.java:10)
	scala.collection.ArrayOps$.foreach$extension(ArrayOps.scala:1321)
	dotty.tools.dotc.Run.runPhases$1(Run.scala:262)
	dotty.tools.dotc.Run.compileUnits$$anonfun$1(Run.scala:270)
	dotty.tools.dotc.Run.compileUnits$$anonfun$adapted$1(Run.scala:279)
	dotty.tools.dotc.util.Stats$.maybeMonitored(Stats.scala:67)
	dotty.tools.dotc.Run.compileUnits(Run.scala:279)
	dotty.tools.dotc.Run.compileSources(Run.scala:194)
	dotty.tools.dotc.interactive.InteractiveDriver.run(InteractiveDriver.scala:165)
	scala.meta.internal.pc.MetalsDriver.run(MetalsDriver.scala:45)
	scala.meta.internal.pc.PcCollector.<init>(PcCollector.scala:42)
	scala.meta.internal.pc.PcSemanticTokensProvider$Collector$.<init>(PcSemanticTokensProvider.scala:60)
	scala.meta.internal.pc.PcSemanticTokensProvider.Collector$lzyINIT1(PcSemanticTokensProvider.scala:60)
	scala.meta.internal.pc.PcSemanticTokensProvider.Collector(PcSemanticTokensProvider.scala:60)
	scala.meta.internal.pc.PcSemanticTokensProvider.provide(PcSemanticTokensProvider.scala:81)
	scala.meta.internal.pc.ScalaPresentationCompiler.semanticTokens$$anonfun$1(ScalaPresentationCompiler.scala:99)
```
#### Short summary: 

java.lang.AssertionError: assertion failed: position error, parent span does not contain child span
parent      = new ChiselStage(null: <notype>) # -1,
parent span = <8885..9002>,
child       = null # -1,
child span  = [8901..9008..9008]