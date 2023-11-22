file://<WORKSPACE>/src/test/scala/layerPE/IncrementTreePETester.scala
### java.lang.IndexOutOfBoundsException: 0

occurred in the presentation compiler.

action parameters:
offset: 1133
uri: file://<WORKSPACE>/src/test/scala/layerPE/IncrementTreePETester.scala
text:
```scala
package YoseUe_SATL

import chisel3._
import chiseltest._
import org.scalatest.freespec.AnyFreeSpec
import chisel3.experimental.BundleLiterals._
import scala.math._

class IncrementTreePETester extends AnyFreeSpec with ChiselScalatestTester {

  val n_attr = 4
  val n_classes = 4
  val n_depths = 5
  val info_bit = 10
  val tree_bit = 8

  "Pe should increment tree to exec and offset to the old value of tree_to_exec plus one" in {
    test(new IncrementTreePE(new ElemId(3,1,1,1),n_attr,n_classes,n_depths,info_bit,tree_bit)) { c =>
        
        for (i <- 0 until 10){
            c.io.sample_in.valid.poke(true.B)
            c.io.sample_in.bits.offset.poke(13.U)
            c.io.sample_in.bits.shift.poke(false.B)
            c.io.sample_in.bits.tree_to_exec.poke(i.U)
            c.io.sample_in.bits.dest.poke(0.U)
            for (i <- 0 until n_classes){
            c.io.sample_in.bits.scores(i).poke(0.U)
            }
            for (i <- 0 until n_depths){
            c.io.sample_in.bits.weights(i).poke(i.U)
            }
            for (i <- 0 until n_attr){
            c.io.sample_in.bits.features(i).poke(i,@@U.asFixedPoint(8.BP))
            }

            c.io.sample_out.ready.poke(true)
            
            c.clock.step(1)

            c.io.sample_out.bits.offset.expect(i+1)
            c.io.sample_out.bits.tree_to_exec.expect(i+1)
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