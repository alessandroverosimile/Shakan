package YoseUe_SATL

import chisel3._
import chiseltest._
import org.scalatest.freespec.AnyFreeSpec
import chisel3.experimental.BundleLiterals._
import scala.math._

class TreePETester extends AnyFreeSpec with ChiselScalatestTester {

  val attr_n = 4
  val n_classes = 4
  val number_of_depths = 5
  val info_bit = 10
  val tree_bit = 8
  val attr_bit = (log(attr_n)/log(2)-0.00001).toInt + 1
  val flbit = true

  "Pe should update samples" in {
    test(new TreePE(new ElemId(3,1,1,1),attr_n,n_classes,number_of_depths,info_bit,tree_bit,attr_bit,flbit)) { c =>
        
        c.io.sample_in.valid.poke(true)
        c.io.sample_in.bits.offset.poke(0.U)
        c.io.sample_in.bits.shift.poke(false.B)
        c.io.sample_in.bits.search_for_root.poke(true.B)
        c.io.sample_in.bits.tree_to_exec.poke(0.U)
        for (i <- 0 until n_classes){
          c.io.sample_in.bits.scores(i).poke(0.U)
        }
        for (i <- 0 until number_of_depths){
          c.io.sample_in.bits.weights(i).poke(i.U)
        }
        for (i <- 0 until attr_n){
          c.io.sample_in.bits.features(i).poke(i.U)
        }

        c.io.mem.write_1.poke(true.B)
        c.io.mem.addr_1.poke(0.U)
        c.io.mem.dataIn_1.poke(BigInt("504438398472159232", 10).U(64.W))
        c.io.mem.write_2.poke(false.B)
        c.io.mem.addr_2.poke(0.U)
        c.io.mem.dataIn_2.poke(0.U)

        /*
        c.io.mem.threshold.poke(2.U)
        c.io.mem.attr_id.poke(3.U)
        c.io.mem.is_valid.poke(true.B)
        c.io.mem.depth_indicator.poke(2.U)
        c.io.mem.is_valid.poke(true.B)
        c.io.mem.leftChildType.poke(false.B)
        c.io.mem.rightChildType.poke(false.B)
        c.io.mem.leftChildInfo.poke(1.U)
        c.io.mem.rightChildInfo.poke(2.U)
        */

        c.io.sample_out.ready.poke(true)
        
        c.clock.step(1)
      
        println("SAMPLE_OUT: ")
        println("FEATURES: ")
        for (i <- 0 until attr_n){
          println(c.io.sample_out.bits.features(i).peek().litValue)
        }
        println("SCORES: ")
        for (i <- 0 until n_classes){
          println(c.io.sample_out.bits.scores(i).peek().litValue)
        }
        println("WEIGHTS: ")
        for (i <- 0 until number_of_depths){
          println(c.io.sample_out.bits.weights(i).peek().litValue)
        }
        println("SHIFT, OFFSET, TREE_TO_EXEC")
        println(c.io.sample_out.bits.shift.peek().litValue)
        println(c.io.sample_out.bits.offset.peek().litValue)
        println(c.io.sample_out.bits.tree_to_exec.peek().litValue)
        //c.io.sample_out.bits.scores(2).expect(0)
        c.io.sample_out.bits.offset.expect(0)
        c.io.sample_out.bits.shift.expect(false)
        
    }
  }
}