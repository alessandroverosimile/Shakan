package YoseUe_SATL

import chisel3._
import chiseltest._
import org.scalatest.freespec.AnyFreeSpec
import chisel3.experimental.BundleLiterals._
import scala.math._


class TreePEsWrapperTester extends AnyFreeSpec with ChiselScalatestTester {
  
  val n_trees = 8
  val max_depth = 2
  val n_attr = 4
  val n_classes = 4
  val n_depths = 2
  val info_bit = 10
  val tree_bit = 8
  val attr_bit = (log(n_attr)/log(2)-0.00001).toInt + 1
  val structure_list = List(List(2,4),List(2,4))

  "Pe should update samples" in {
    test(new TreePEsWrapper(n_trees, max_depth, n_attr,n_classes,n_depths,info_bit,tree_bit,attr_bit,bram_size=64*10,structure_list)) { c =>

        /*for(i <- 0 until 2){
          c.brams_io(0).write_2.poke(true.B)
          c.brams_io(0).addr_2.poke(i.U)
          c.brams_io(0).dataIn_2.poke(BigInt("126118386047385600", 10).U(64.W))
          c.brams_io(1).write_2.poke(true.B)
          c.brams_io(1).addr_2.poke((2*i).U)
          c.brams_io(1).dataIn_2.poke(BigInt("72092834244591616", 10).U(64.W))
          c.brams_io(2).write_2.poke(true.B)
          c.brams_io(2).addr_2.poke(i.U)
          c.brams_io(2).dataIn_2.poke(BigInt("126118386047385600", 10).U(64.W))
          c.brams_io(3).write_2.poke(true.B)
          c.brams_io(3).addr_2.poke((2*i).U)
          c.brams_io(3).dataIn_2.poke(BigInt("72092834244591616", 10).U(64.W))
          if(i<1){
            c.brams_io(4).write_2.poke(true.B)
            c.brams_io(4).addr_2.poke(i.U)
            c.brams_io(4).dataIn_2.poke(BigInt("126118386047385600", 10).U(64.W))
            c.brams_io(5).write_2.poke(true.B)
            c.brams_io(5).addr_2.poke((2*i).U)
            c.brams_io(5).dataIn_2.poke(BigInt("72092834244591616", 10).U(64.W))
          }else{
            c.brams_io(4).write_2.poke(true.B)
            c.brams_io(4).addr_2.poke(i.U)
            c.brams_io(4).dataIn_2.poke(BigInt("0", 10).U(64.W))
            c.brams_io(5).write_2.poke(true.B)
            c.brams_io(5).addr_2.poke((2*i).U)
            c.brams_io(5).dataIn_2.poke(BigInt("0", 10).U(64.W))
          }
          
          c.clock.step()
        }

        for(i <- 0 until 2){
          c.brams_io(1).write_2.poke(true.B)
          c.brams_io(1).addr_2.poke((2*i+1).U)
          c.brams_io(1).dataIn_2.poke(BigInt("72092834244591616", 10).U(64.W))
          c.brams_io(3).write_2.poke(true.B)
          c.brams_io(3).addr_2.poke((2*i+1).U)
          c.brams_io(3).dataIn_2.poke(BigInt("72092834244591616", 10).U(64.W))
          if(i<1){
            c.brams_io(5).write_2.poke(true.B)
            c.brams_io(5).addr_2.poke((2*i+1).U)
            c.brams_io(5).dataIn_2.poke(BigInt("72092834244591616", 10).U(64.W))
          }else{
            c.brams_io(5).write_2.poke(true.B)
            c.brams_io(5).addr_2.poke((2*i+1).U)
            c.brams_io(5).dataIn_2.poke(BigInt("0", 10).U(64.W))
          }
          c.clock.step()
        }*/

        c.brams_io(0).write_2.poke(true.B)
        c.brams_io(0).addr_2.poke(0.U)
        c.brams_io(0).dataIn_2.poke(BigInt("126118386047385600", 10).U(64.W))
        c.brams_io(1).write_2.poke(true.B)
        c.brams_io(1).addr_2.poke(0.U)
        c.brams_io(1).dataIn_2.poke(BigInt("72075190518939648", 10).U(64.W))
        c.brams_io(2).write_2.poke(true.B)
        c.brams_io(2).addr_2.poke(0.U)
        c.brams_io(2).dataIn_2.poke(BigInt("126118386047385600", 10).U(64.W))
        c.brams_io(3).write_2.poke(true.B)
        c.brams_io(3).addr_2.poke(0.U)
        c.brams_io(3).dataIn_2.poke(BigInt("72075190518939648", 10).U(64.W))
        
        c.clock.step()

        c.brams_io(0).write_2.poke(true.B)
        c.brams_io(0).addr_2.poke(1.U)
        c.brams_io(0).dataIn_2.poke(BigInt("126118386047385600", 10).U(64.W))
        c.brams_io(1).write_2.poke(true.B)
        c.brams_io(1).addr_2.poke(1.U)
        c.brams_io(1).dataIn_2.poke(BigInt("72075190518939648", 10).U(64.W))
        c.brams_io(2).write_2.poke(true.B)
        c.brams_io(2).addr_2.poke(1.U)
        c.brams_io(2).dataIn_2.poke(BigInt("126118386047385600", 10).U(64.W))
        c.brams_io(3).write_2.poke(true.B)
        c.brams_io(3).addr_2.poke(1.U)
        c.brams_io(3).dataIn_2.poke(BigInt("72075190518939648", 10).U(64.W))

        c.clock.step()

        c.brams_io(0).write_2.poke(true.B)
        c.brams_io(0).addr_2.poke(2.U)
        c.brams_io(0).dataIn_2.poke(BigInt("72075190518939648", 10).U(64.W))
        c.brams_io(1).write_2.poke(true.B)
        c.brams_io(1).addr_2.poke(2.U)
        c.brams_io(1).dataIn_2.poke(BigInt("72075190518939648", 10).U(64.W))
        c.brams_io(2).write_2.poke(true.B)
        c.brams_io(2).addr_2.poke(2.U)
        c.brams_io(2).dataIn_2.poke(BigInt("72075190518939648", 10).U(64.W))
        c.brams_io(3).write_2.poke(true.B)
        c.brams_io(3).addr_2.poke(2.U)
        c.brams_io(3).dataIn_2.poke(BigInt("72075190518939648", 10).U(64.W))

        c.clock.step()

        c.brams_io(0).write_2.poke(true.B)
        c.brams_io(0).addr_2.poke(3.U)
        c.brams_io(0).dataIn_2.poke(BigInt("0", 10).U(64.W))
        c.brams_io(1).write_2.poke(true.B)
        c.brams_io(1).addr_2.poke(3.U)
        c.brams_io(1).dataIn_2.poke(BigInt("72075190518939648", 10).U(64.W))
        c.brams_io(2).write_2.poke(true.B)
        c.brams_io(2).addr_2.poke(3.U)
        c.brams_io(2).dataIn_2.poke(BigInt("0", 10).U(64.W))
        c.brams_io(3).write_2.poke(true.B)
        c.brams_io(3).addr_2.poke(3.U)
        c.brams_io(3).dataIn_2.poke(BigInt("72075190518939648", 10).U(64.W))

        c.clock.step()

        for (i <- 0 until 10){
          c.wrapper_io.sample_in.valid.poke(true.B)
          c.wrapper_io.sample_in.bits.offset.poke(0.U)
          c.wrapper_io.sample_in.bits.shift.poke(false.B)
          c.wrapper_io.sample_in.bits.search_for_root.poke(true.B)
          c.wrapper_io.sample_in.bits.tree_to_exec.poke(0.U)
          c.wrapper_io.sample_in.bits.dest.poke(0.U)

          for (j <- 0 until n_classes){
            c.wrapper_io.sample_in.bits.scores(j).poke(0.U)
          }
          for (j <- 0 until n_depths){
            c.wrapper_io.sample_in.bits.weights(j).poke((j+1).U)
          }
          for (j <- 0 until n_attr){
            c.wrapper_io.sample_in.bits.features(j).poke((i+2).U)
          }        

          for(j <- 0 until structure_list.length){
            c.wrapper_io.sample_out(j).ready.poke(true.B)
          }
          
          c.clock.step()
        }

        while(c.wrapper_io.sample_out(0).valid.peek().litValue != 1){
          c.wrapper_io.sample_in.valid.poke(false.B)
          c.clock.step()
        }
        for(j <- 0 until structure_list.length){
          println("SAMPLE_OUT: ")
          println("FEATURES: ")
          for (i <- 0 until n_attr){
            println(c.wrapper_io.sample_out(j).bits.features(i).peek().litValue)
          }
          println("SCORES: ")
          for (i <- 0 until n_classes){
            println(c.wrapper_io.sample_out(j).bits.scores(i).peek().litValue)
          }
          println("WEIGHTS: ")
          for (i <- 0 until n_depths){
            println(c.wrapper_io.sample_out(j).bits.weights(i).peek().litValue)
          }
          println("SHIFT, OFFSET, TREE_TO_EXEC, VALID, DEST")
          println(c.wrapper_io.sample_out(j).bits.shift.peek().litValue)
          println(c.wrapper_io.sample_out(j).bits.offset.peek().litValue)
          println(c.wrapper_io.sample_out(j).bits.tree_to_exec.peek().litValue)
          println(c.wrapper_io.sample_out(j).valid.peek().litValue)
          println(c.wrapper_io.sample_out(j).bits.dest.peek().litValue)
        }
      
        //c.io.sample_out.bits.scores(2).expect(0)
        //c.wrapper_io.sample_out.bits.offset.expect(0)
        //c.wrapper_io.sample_out.bits.shift.expect(false)
    }
  }
}