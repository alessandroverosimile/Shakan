package YoseUe_SATL

import chisel3._
import chiseltest._
import org.scalatest.freespec.AnyFreeSpec
import chisel3.experimental.BundleLiterals._
import scala.math._

/*


class ConverterTester extends AnyFreeSpec with ChiselScalatestTester {

  val n_attr = 4
  val n_classes = 4
  val n_depths = 2
  val info_bit = 10
  val tree_bit = 7
  val rounded_info_bit = 16
  val rounded_tree_bit = 8

  "Converter should convert AxiSample in Sample" in {
    test(new ForwardConverter(n_attr,n_classes,n_depths,info_bit,tree_bit,rounded_info_bit,rounded_tree_bit)) { c =>
        
        c.io.sample_in.valid.poke(true.B)
        c.io.sample_in.bits.TVALID.poke(true.B)
        c.io.sample_in.bits.TDATA.poke(BigInt("3213900608446634405305657918234759609991344031508927740903936", 10).U(256.W))
        c.io.sample_in.bits.TKEEP.poke(0.U)
        c.io.sample_in.bits.TREADY.poke(true.B)
        c.io.sample_in.bits.TLAST.poke(false.B)
        
        c.io.sample_out.ready.poke(true)
            
        c.clock.step(1)
        
        println("SAMPLE_OUT: ")
        println("FEATURES: ")
        for (i <- 0 until n_attr){
        println(c.io.sample_out.bits.features(i).peek().litToDouble)
        }
        println("SCORES: ")
        for (i <- 0 until n_classes){
        println(c.io.sample_out.bits.scores(i).peek().litToDouble)
        }
        println("WEIGHTS: ")
        for (i <- 0 until n_depths){
        println(c.io.sample_out.bits.weights(i).peek().litToDouble)
        }
        println("SHIFT, OFFSET, SEARCH_FOR_ROOT, TREE_TO_EXEC, VALID, DEST")
        println(c.io.sample_out.bits.shift.peek().litValue)
        println(c.io.sample_out.bits.offset.peek().litValue)
        println(c.io.sample_out.bits.search_for_root.peek().litValue)
        println(c.io.sample_out.bits.tree_to_exec.peek().litValue)
        println(c.io.sample_out.valid.peek().litValue)
        println(c.io.sample_out.bits.dest.peek().litValue)

    }
  }
}

*/