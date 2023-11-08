file://<WORKSPACE>/src/test/scala/layerPE/InterconnectTester.scala
### java.lang.IndexOutOfBoundsException: 0

occurred in the presentation compiler.

action parameters:
offset: 3931
uri: file://<WORKSPACE>/src/test/scala/layerPE/InterconnectTester.scala
text:
```scala
package YoseUe_SATL

import chisel3._
import chiseltest._
import org.scalatest.freespec.AnyFreeSpec
import chisel3.experimental.BundleLiterals._
import scala.math._

class LastInterconnectTester extends AnyFreeSpec with ChiselScalatestTester {

  val n_attr = 4
  val n_classes = 4
  val n_depths = 5
  val info_bit = 10
  val tree_bit = 8

  "Pe should decide whether the sample should leave the architecture or loop" in {
    test(new LastInterconnectPE(n_attr,n_classes,n_depths,info_bit,tree_bit)) { c =>
        
        for (i <- 0 until 2){
            val dest = 1
            c.io.sample_in.valid.poke(true.B)
            c.io.sample_in.bits.offset.poke(0.U)
            c.io.sample_in.bits.shift.poke(false.B)
            c.io.sample_in.bits.tree_to_exec.poke(0.U)
            c.io.sample_in.bits.dest.poke(dest.B)
            for (i <- 0 until n_classes){
                if (i==2){
                    c.io.sample_in.bits.scores(i).poke(3.U)
                }else{
                    c.io.sample_in.bits.scores(i).poke(0.U)
                }
            }
            for (i <- 0 until n_depths){
                c.io.sample_in.bits.weights(i).poke(i.U)
            }
            for (i <- 0 until n_attr){
                c.io.sample_in.bits.features(i).poke(i.U)
            }

            c.io.sample_looping.ready.poke(true)
            c.io.sample_leaving.ready.poke(true)
            
            c.clock.step(1)
            if (dest == 0){
                c.io.sample_looping.valid.expect(true.B)
                c.io.sample_leaving.valid.expect(false.B)
            }else{
                c.io.sample_looping.valid.expect(false.B)
                c.io.sample_leaving.valid.expect(true.B)
            }
            
            println("SAMPLE_OUT: ")
            println("FEATURES: ")
            for (i <- 0 until n_attr){
            println(c.io.sample_leaving.bits.features(i).peek().litValue)
            }
            println("SCORES: ")
            for (i <- 0 until n_classes){
            println(c.io.sample_leaving.bits.scores(i).peek().litValue)
            }
            println("WEIGHTS: ")
            for (i <- 0 until n_depths){
            println(c.io.sample_leaving.bits.weights(i).peek().litValue)
            }
            println("SHIFT, OFFSET, TREE_TO_EXEC, VALID, DEST")
            println(c.io.sample_leaving.bits.shift.peek().litValue)
            println(c.io.sample_leaving.bits.offset.peek().litValue)
            println(c.io.sample_leaving.bits.tree_to_exec.peek().litValue)
            println(c.io.sample_leaving.valid.peek().litValue)
            println(c.io.sample_leaving.bits.dest.peek().litValue)

            println("SAMPLE_OUT: ")
            println("FEATURES: ")
            for (i <- 0 until n_attr){
            println(c.io.sample_looping.bits.features(i).peek().litValue)
            }
            println("SCORES: ")
            for (i <- 0 until n_classes){
            println(c.io.sample_looping.bits.scores(i).peek().litValue)
            }
            println("WEIGHTS: ")
            for (i <- 0 until n_depths){
            println(c.io.sample_looping.bits.weights(i).peek().litValue)
            }
            println("SHIFT, OFFSET, TREE_TO_EXEC, VALID, DEST")
            println(c.io.sample_looping.bits.shift.peek().litValue)
            println(c.io.sample_looping.bits.offset.peek().litValue)
            println(c.io.sample_looping.bits.tree_to_exec.peek().litValue)
            println(c.io.sample_looping.valid.peek().litValue)
            println(c.io.sample_looping.bits.dest.peek().litValue)
            
        }
    }
  }
}

class FirstInterconnectTester extends AnyFreeSpec with ChiselScalatestTester {

  val n_attr = 4
  val n_classes = 4
  val n_depths = 5
  val info_bit = 10
  val tree_bit = 8

  "Pe should decide which sample should be processed and which sample has to wait" in {
    test(new FirstInterconnectPE(new ElemId(()@@n_attr,n_classes,n_depths,info_bit,tree_bit)) { c =>
        
        for (i <- 0 until 25){
            val dest = i%2
            if (i>10){
                c.io.sample_entering.valid.poke(false.B)
            }else{
                c.io.sample_entering.valid.poke(true.B)
            }
            
            c.io.sample_entering.bits.offset.poke(13.U)
            c.io.sample_entering.bits.shift.poke(false.B)
            c.io.sample_entering.bits.tree_to_exec.poke(i.U)
            c.io.sample_entering.bits.dest.poke(dest.B)
            for (j <- 0 until n_classes){
                c.io.sample_entering.bits.scores(j).poke(0.U)
            }
            for (j <- 0 until n_depths){
                c.io.sample_entering.bits.weights(j).poke(i.U)
            }
            for (j <- 0 until n_attr){
                c.io.sample_entering.bits.features(j).poke(j.U)
            }

            if (i>5 && i<16){
                c.io.sample_looping.valid.poke(true.B)
            }else{
                c.io.sample_looping.valid.poke(false.B)
            }
            c.io.sample_looping.bits.offset.poke(13.U)
            c.io.sample_looping.bits.shift.poke(false.B)
            c.io.sample_looping.bits.tree_to_exec.poke(i.U)
            c.io.sample_looping.bits.dest.poke(dest.B)
            for (j <- 0 until n_classes){
                c.io.sample_looping.bits.scores(j).poke(1.U)
            }
            for (j <- 0 until n_depths){
                c.io.sample_looping.bits.weights(j).poke(j.U)
            }
            for (j <- 0 until n_attr){
                c.io.sample_looping.bits.features(j).poke(j.U)
            }

            c.io.sample_out.ready.poke(true)
            
            c.clock.step(1)
            
            /*println("SCORES: ")
            for (i <- 0 until n_classes){
                println(c.io.sample_out.bits.scores(i).peek().litValue)
            }
            println("Valid")
            println(c.io.sample_out.valid.peek().litValue)*/
        }
    }
  }
}
```



#### Error stacktrace:

```
scala.collection.LinearSeqOps.apply(LinearSeq.scala:131)
	scala.collection.LinearSeqOps.apply$(LinearSeq.scala:128)
	scala.collection.immutable.List.apply(List.scala:79)
	dotty.tools.dotc.util.Signatures$.countParams(Signatures.scala:501)
	dotty.tools.dotc.util.Signatures$.applyCallInfo(Signatures.scala:186)
	dotty.tools.dotc.util.Signatures$.computeSignatureHelp(Signatures.scala:94)
	dotty.tools.dotc.util.Signatures$.signatureHelp(Signatures.scala:63)
	scala.meta.internal.pc.MetalsSignatures$.signatures(MetalsSignatures.scala:17)
	scala.meta.internal.pc.SignatureHelpProvider$.signatureHelp(SignatureHelpProvider.scala:51)
	scala.meta.internal.pc.ScalaPresentationCompiler.signatureHelp$$anonfun$1(ScalaPresentationCompiler.scala:375)
```
#### Short summary: 

java.lang.IndexOutOfBoundsException: 0