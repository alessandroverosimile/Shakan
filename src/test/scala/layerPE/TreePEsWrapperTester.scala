package YoseUe_SATL

import chisel3._
import chiseltest._
import org.scalatest.freespec.AnyFreeSpec
import chisel3.experimental.BundleLiterals._
import scala.math._
import java.io.PrintWriter
import java.io.File
import java.nio.file.Files
import java.nio.file.Paths
import dataclass.data
import java.nio.charset.StandardCharsets
import scala.io.Source
import chisel3.experimental.FixedPoint

class TreePEsWrapperTester extends AnyFreeSpec with ChiselScalatestTester {
  println("Synthesizing...")
  val synthesis = false

  if(!synthesis){
    val n_trees = 6
    val max_depth = 2
    val n_attr = 4
    val n_classes = 4
    val n_depths = 2
    val info_bit = 10
    val tree_bit = 8
    val attr_bit = (log(n_attr)/log(2)-0.00001).toInt + 1
    val structure_list = List(List(2,3),List(2,3))
    val n_samples = 15

    
    "Pe should compute samples score" in {
      test(new TreePEsWrapper(n_trees, max_depth, n_attr,n_classes,n_depths,info_bit,tree_bit,attr_bit,bram_size=36*1024,structure_list)) { c =>

    
          c.brams_io(0).bram_we_a.poke(15.U)
          c.brams_io(0).bram_addr_a.poke(0.U)
          c.brams_io(0).bram_wrdata_a.poke(BigInt("126118386047385600", 10).U(64.W))
          c.brams_io(1).bram_we_a.poke(15.U)
          c.brams_io(1).bram_addr_a.poke(0.U)
          c.brams_io(1).bram_wrdata_a.poke(BigInt("216190378594795520", 10).U(64.W))
          c.brams_io(2).bram_we_a.poke(15.U)
          c.brams_io(2).bram_addr_a.poke(0.U)
          c.brams_io(2).bram_wrdata_a.poke(BigInt("126118386047385600", 10).U(64.W))
          c.brams_io(3).bram_we_a.poke(15.U)
          c.brams_io(3).bram_addr_a.poke(0.U)
          c.brams_io(3).bram_wrdata_a.poke(BigInt("72075190518939648", 10).U(64.W))
          
          c.clock.step()

          c.brams_io(0).bram_we_a.poke(15.U)
          c.brams_io(0).bram_addr_a.poke(1.U)
          c.brams_io(0).bram_wrdata_a.poke(BigInt("126153604779212800", 10).U(64.W))
          c.brams_io(1).bram_we_a.poke(15.U)
          c.brams_io(1).bram_addr_a.poke(1.U)
          c.brams_io(1).bram_wrdata_a.poke(BigInt("216190378594795520", 10).U(64.W))
          c.brams_io(2).bram_we_a.poke(15.U)
          c.brams_io(2).bram_addr_a.poke(1.U)
          c.brams_io(2).bram_wrdata_a.poke(BigInt("126153604779212800", 10).U(64.W))
          c.brams_io(3).bram_we_a.poke(15.U)
          c.brams_io(3).bram_addr_a.poke(1.U)
          c.brams_io(3).bram_wrdata_a.poke(BigInt("72075190518939648", 10).U(64.W))

          c.clock.step()

          c.brams_io(0).bram_we_a.poke(15.U)
          c.brams_io(0).bram_addr_a.poke(2.U)
          c.brams_io(0).bram_wrdata_a.poke(BigInt("72075190518939648", 10).U(64.W))
          c.brams_io(1).bram_we_a.poke(15.U)
          c.brams_io(1).bram_addr_a.poke(2.U)
          c.brams_io(1).bram_wrdata_a.poke(BigInt("72075190518939648", 10).U(64.W))
          c.brams_io(2).bram_we_a.poke(15.U)
          c.brams_io(2).bram_addr_a.poke(2.U)
          c.brams_io(2).bram_wrdata_a.poke(BigInt("72075190518939648", 10).U(64.W))
          c.brams_io(3).bram_we_a.poke(15.U)
          c.brams_io(3).bram_addr_a.poke(2.U)
          c.brams_io(3).bram_wrdata_a.poke(BigInt("72075190518939648", 10).U(64.W))

          c.clock.step()

          c.brams_io(0).bram_we_a.poke(15.U)
          c.brams_io(0).bram_addr_a.poke(3.U)
          c.brams_io(0).bram_wrdata_a.poke(BigInt("0", 10).U(64.W))
          c.brams_io(1).bram_we_a.poke(15.U)
          c.brams_io(1).bram_addr_a.poke(3.U)
          c.brams_io(1).bram_wrdata_a.poke(BigInt("72075190518939648", 10).U(64.W))
          c.brams_io(2).bram_we_a.poke(15.U)
          c.brams_io(2).bram_addr_a.poke(3.U)
          c.brams_io(2).bram_wrdata_a.poke(BigInt("0", 10).U(64.W))
          c.brams_io(3).bram_we_a.poke(15.U)
          c.brams_io(3).bram_addr_a.poke(3.U)
          c.brams_io(3).bram_wrdata_a.poke(BigInt("72075190518939648", 10).U(64.W))

          c.clock.step()
          

          var queuedSamples = scala.collection.mutable.Queue[BigInt]()

          val in_stall_rate = 3
          val stall_rate = 4
          var n_samples_in = 0
          var n_sample_out = 0
          var cc = 0
          val max_c = 500
          val do_stall = true
          val in_do_stall = true
          while((n_samples_in  < n_samples) && (cc < max_c)){
            // Stall or not in out
            if(do_stall && ((cc % stall_rate) == 0)){
              c.wrapper_io.sample_out.TREADY.poke(false.B)
            } else {
              c.wrapper_io.sample_out.TREADY.poke(true.B)
            }
            // Is In Valid
            if(in_do_stall && ((cc % in_stall_rate) == 0)){
              c.wrapper_io.sample_in.TVALID.poke(false.B)
            } else {
              c.wrapper_io.sample_in.TVALID.poke(true.B)
            }
            val in_data = (BigInt("3213900608446634405305657918234759609991344031508927740903936", 10)+n_samples_in)
            c.wrapper_io.sample_in.TDATA.poke(in_data.U(256.W))
            c.wrapper_io.sample_in.TKEEP.poke(0.U)
            // Raise TLAST
            if (n_samples_in==n_samples-1){
              c.wrapper_io.sample_in.TLAST.poke(true.B)
            }else{
              c.wrapper_io.sample_in.TLAST.poke(false.B)
            }
            // Input Fire
            if((c.wrapper_io.sample_in.TREADY.peek().litValue == 1) && (c.wrapper_io.sample_in.TVALID.peek().litValue == 1)){
              queuedSamples.enqueue(in_data)
              n_samples_in += 1
            }
            // Output Fire
            if((c.wrapper_io.sample_out.TVALID.peek().litValue == 1) && (c.wrapper_io.sample_out.TREADY.peek().litValue == 1)){
              n_sample_out+= 1
  
              println("SAMPLE_OUT: ")
              println("TKEEP, TLAST, TVALID")
              println(c.wrapper_io.sample_out.TKEEP.peek())
              println(c.wrapper_io.sample_out.TLAST.peek())
              println(c.wrapper_io.sample_out.TVALID.peek())
              val data = c.wrapper_io.sample_out.TDATA.peek()
              
              println("TDATA: ", data.litValue)
              println("DATA_IN ", queuedSamples.front)
              queuedSamples.dequeue()
            }
            c.clock.step()
            cc += 1
          }
          c.wrapper_io.sample_in.TLAST.poke(false.B)

          while((n_sample_out < n_samples) && (cc < max_c)){
            // Stall or not in out
            if(do_stall && ((cc % stall_rate) == 0)){
              c.wrapper_io.sample_out.TREADY.poke(false.B)
            } else {
              c.wrapper_io.sample_out.TREADY.poke(true.B)
            }
            c.wrapper_io.sample_in.TVALID.poke(false.B)
            if((c.wrapper_io.sample_out.TVALID.peek().litValue == 1) && (c.wrapper_io.sample_out.TREADY.peek().litValue == 1)){
              n_sample_out+= 1
              println("SAMPLE_OUT: ")
              println("TKEEP, TLAST, TVALID")
              println(c.wrapper_io.sample_out.TKEEP.peek())
              println(c.wrapper_io.sample_out.TLAST.peek())
              println(c.wrapper_io.sample_out.TVALID.peek())
              val data = c.wrapper_io.sample_out.TDATA.peek()
              
              println("TDATA: ", data.litValue)
              println("DATA_IN ", queuedSamples.front)
              queuedSamples.dequeue()
            }
            c.clock.step()
            cc += 1
          }
          // Do some cycles to check final state
          for(i <- 0 until 10)
            c.clock.step()
            /*
          var counter = 0
          var counter2 = 0
          while((counter < 3) && (counter2<100)){
            c.wrapper_io.sample_in.TVALID.poke(false.B)
            print(counter,counter2)
            counter2 = counter2 + 1
            if(c.wrapper_io.sample_out.TVALID.peek().litValue == 1){
              counter = counter + 1
              println("SAMPLE_OUT: ")
              println("TKEEP, TLAST, TVALID")
              println(c.wrapper_io.sample_out.TKEEP.peek())
              println(c.wrapper_io.sample_out.TLAST.peek())
              println(c.wrapper_io.sample_out.TVALID.peek())
              val data = c.wrapper_io.sample_out.TDATA.peek()
              
              println("TDATA: ", data.litValue)
              
              println("FEATURES: ")
              for (i <- 0 until n_attr){
                  val feature = data((i+1)*16-1,i*16).litValue
                  val fixedPointValue: Double = (feature >> 8).toDouble + ((feature & BigInt("FF", 16)).toDouble) / pow(2, 8)
                  println(fixedPointValue)
              }
              
              println("SCORES: ")
              for (i <- 0 until n_classes){
                val score = data(n_attr*16+48+(i+1)*16-1,n_attr*16+48+i*16).litValue
                val fixedPointValue: Double = (score >> 8).toDouble + ((score & BigInt("FF", 16)).toDouble) / pow(2, 8)
                println(fixedPointValue)
              }
              println("WEIGHTS: ")
              for (i <- 0 until n_depths){
                val weight = data(n_attr*16+48+n_classes*16+(i+1)*16-1,n_attr*16+48+n_classes*16+i*16).litValue
                val fixedPointValue: Double = (weight >> 8).toDouble + ((weight & BigInt("FF", 16)).toDouble) / pow(2, 8)
                println(fixedPointValue)
              }
              println("SHIFT, OFFSET, TREE_TO_EXEC, SFR")
              println(data(n_attr*16+23,n_attr*16+16).litValue)
              println(data(n_attr*16+15,n_attr*16).litValue)
              println(data(n_attr*16+39,n_attr*16+32).litValue)
              println(data(n_attr*16+31,n_attr*16+24).litValue)
              
            }
            c.clock.step()
          }*/
      }
    }
  }else{
    val n_trees = 1//args(0)
    println(n_trees)
    val max_depth = 2//args(1)
    println(max_depth)
    val n_attr = 4
    val n_classes = 4
    val n_depths = 5
    val info_bit = 10
    val tree_bit = 8
    val attr_bit = (log(n_attr)/log(2)-0.00001).toInt + 1
    val bram_size = 36*1024
    val instruction_per_bram = (bram_size/64).toInt //64 is the Node Instruction size, fixed to 64. It should not change but, if It will happen, remember to change the value here
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
    val structure_list = List(List(n_pes,n_loops))

    val VerilogEmitter = (new chisel3.stage.ChiselStage).emitVerilog(
              new TreePEsWrapper(n_trees, max_depth, n_attr,n_classes,n_depths,info_bit,tree_bit,attr_bit,bram_size=bram_size,structure_list,true)
          )
              Files.write(
                  Paths.get("./test.v"),
                  VerilogEmitter.getBytes(StandardCharsets.UTF_8)
              )
  }
}

/*

object VerilogGenerator extends App{

  def main(args: Array[String]): Unit = {
    val n_trees = args(0).toInt
    println(n_trees)
    val max_depth = args(1).toInt
    println(max_depth)
    val n_attr = 4
    val n_classes = 4
    val n_depths = 5
    val info_bit = 10
    val tree_bit = 8
    val attr_bit = (log(n_attr)/log(2)-0.00001).toInt + 1
    val bram_size = 36*1024
    val instruction_per_bram = (bram_size/64).toInt //64 is the Node Instruction size, fixed to 64. It should not change but, if It will happen, remember to change the value here
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
    val structure_list = List(List(n_pes,n_loops))

    val VerilogEmitter = (new chisel3.stage.ChiselStage).emitVerilog(
              new TreePEsWrapper(n_trees, max_depth, n_attr,n_classes,n_depths,info_bit,tree_bit,attr_bit,bram_size=bram_size,structure_list,true)
          )
              Files.write(
                  Paths.get("./test.v"),
                  VerilogEmitter.getBytes(StandardCharsets.UTF_8)
              )
  }
}*/