file://<WORKSPACE>/src/test/scala/layerPE/ConverterTester.scala
### java.lang.IndexOutOfBoundsException: 0

occurred in the presentation compiler.

action parameters:
offset: 1499
uri: file://<WORKSPACE>/src/test/scala/layerPE/ConverterTester.scala
text:
```scala
package YoseUe_SATL

import chisel3._
import chiseltest._
import org.scalatest.freespec.AnyFreeSpec
import chisel3.experimental.BundleLiterals._
import scala.math._


class ConverterTester extends AnyFreeSpec with ChiselScalatestTester {

  val n_attr = 2
  val n_classes = 2
  val n_depths = 2
  val info_bit = 10
  val tree_bit = 7
  val rounded_info_bit = 16
  val rounded_tree_bit = 8

  "Converter should convert AxiSample in Sample" in {
    test(new Converter(n_attr,n_classes,n_depths,info_bit,tree_bit,rounded_info_bit,rounded_tree_bit)) { c =>
        
        c.io.sample_in.valid.poke(true.B)
        c.io.sample_in.bits.TVALID.poke(true.B)
        c.io.sample_in.bits.TDATA.poke(BigInt("1655148054556203306927680554144342013381120", 10).U(256.W))
        c.io.sample_in.bits.TKEEP.poke(0.U)
        c.io.sample_in.bits.TREADY.poke(true.B)
        c.io.sample_in.bits.TLAST.poke(false.B)
        
        c.io.sample_out.ready.poke(true)
            
        c.clock.step(1)
        
        println("SAMPLE_OUT: ")
        println("FEATURES: ")
        for (i <- 0 until n_attr){
        println(c.io.sample_out.bits.features(i).peek().litValue)
        }
        println("SCORES: ")
        for (i <- 0 until n_classes){
        println(c.io.sample_out.bits.scores(i).peek().litValue)
        }
        println("WEIGHTS: ")
        for (i <- 0 until n_depths){
        println(c.io.sample_out.bits.weights(i).peek().litValue)
        }
        println("SHIFT, OFFSET, SEARCH_FOR_ROOT, @@TREE_TO_EXEC, VALID, DEST")
        println(c.io.sample_out.bits.shift.peek().litValue)
        println(c.io.sample_out.bits.offset.peek().litValue)
        println(c.io.sample_out.bits.tree_to_exec.peek().litValue)
        println(c.io.sample_out.valid.peek().litValue)
        println(c.io.sample_out.bits.dest.peek().litValue)

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