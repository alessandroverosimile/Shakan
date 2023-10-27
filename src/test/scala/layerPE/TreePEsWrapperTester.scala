package YoseUe_SATL

import chisel3._
import chiseltest._
import org.scalatest.freespec.AnyFreeSpec
import chisel3.experimental.BundleLiterals._
import scala.math._

class TreePEsWrapperTester extends AnyFreeSpec with ChiselScalatestTester {
  
  val n_trees = 5
  val max_depth = 2
  val n_attr = 4
  val n_classes = 4
  val n_depths = 5
  val info_bit = 10
  val tree_bit = 8
  val attr_bit = (log(n_attr)/log(2)-0.00001).toInt + 1

  "Pe should update samples" in {
    test(new TreePEsWrapper(n_trees, max_depth, n_attr,n_classes,n_depths,info_bit,tree_bit,attr_bit)) { c =>

        c.brams_io(0).write_2.poke(true.B)
        c.brams_io(0).addr_2.poke(0.U)
        c.brams_io(0).dataIn_2.poke(BigInt("558463950274953216", 10).U(64.W))
        c.brams_io(1).write_2.poke(true.B)
        c.brams_io(1).addr_2.poke(0.U)
        c.brams_io(1).dataIn_2.poke(BigInt("504438398472159232", 10).U(64.W))

        c.clock.step()

        c.brams_io(1).write_2.poke(true.B)
        c.brams_io(1).addr_2.poke(1.U)
        c.brams_io(1).dataIn_2.poke(BigInt("504438398472159232", 10).U(64.W))

        c.clock.step()

        c.wrapper_io.sample_in.valid.poke(true)
        c.wrapper_io.sample_in.bits.offset.poke(0.U)
        c.wrapper_io.sample_in.bits.shift.poke(false.B)
        c.wrapper_io.sample_in.bits.search_for_root.poke(true.B)
        c.wrapper_io.sample_in.bits.tree_to_exec.poke(0.U)
        for (i <- 0 until n_classes){
          c.wrapper_io.sample_in.bits.scores(i).poke(0.U)
        }
        for (i <- 0 until n_depths){
          c.wrapper_io.sample_in.bits.weights(i).poke(i.U)
        }
        for (i <- 0 until n_attr){
          c.wrapper_io.sample_in.bits.features(i).poke(i.U)
        }        

        c.wrapper_io.sample_out.ready.poke(true)
        
        c.clock.step(2)
      
        println("SAMPLE_OUT: ")
        println("FEATURES: ")
        for (i <- 0 until n_attr){
          println(c.wrapper_io.sample_out.bits.features(i).peek().litValue)
        }
        println("SCORES: ")
        for (i <- 0 until n_classes){
          println(c.wrapper_io.sample_out.bits.scores(i).peek().litValue)
        }
        println("WEIGHTS: ")
        for (i <- 0 until n_depths){
          println(c.wrapper_io.sample_out.bits.weights(i).peek().litValue)
        }
        println("SHIFT, OFFSET, TREE_TO_EXEC")
        println(c.wrapper_io.sample_out.bits.shift.peek().litValue)
        println(c.wrapper_io.sample_out.bits.offset.peek().litValue)
        println(c.wrapper_io.sample_out.bits.tree_to_exec.peek().litValue)
        //c.io.sample_out.bits.scores(2).expect(0)
        //c.wrapper_io.sample_out.bits.offset.expect(0)
        //c.wrapper_io.sample_out.bits.shift.expect(false)
    }
  }
}