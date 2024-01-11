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
    val n_trees = 10
    val max_depth = 5
    val n_attr = 4
    val n_classes = 4
    val n_depths = 5
    val info_bit = 10
    val tree_bit = 8
    val attr_bit = (log(n_attr)/log(2)-0.00001).toInt + 1
    print("ATTR BIT: ", attr_bit)
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
    val n_samples = 15
    
    "Pe should compute samples score" in {
      test(new TreePEsWrapper(n_trees, max_depth, n_attr,n_classes,n_depths,info_bit,tree_bit,attr_bit,bram_size=36*1024,structure_list)) { c =>

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
          

          for(i <- 0 until 3){
            c.wrapper_io.sample_in.TVALID.poke(true.B)
            c.wrapper_io.sample_in.TDATA.poke(BigInt("3213900608446634405305657918234759609991344031508927740903936", 10).U(256.W))
            c.wrapper_io.sample_in.TKEEP.poke(0.U)
            if (i==2){
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
          }

          /*
          for (i <- 0 until 1){
            c.wrapper_io.sample_in.valid.poke(true.B)
            c.wrapper_io.sample_in.bits.offset.poke(0.U)
            c.wrapper_io.sample_in.bits.shift.poke(false.B)
            c.wrapper_io.sample_in.bits.search_for_root.poke(true.B)
            c.wrapper_io.sample_in.bits.tree_to_exec.poke(0.U)
            c.wrapper_io.sample_in.bits.dest.poke(0.U)

            for (j <- 0 until n_classes){
              c.wrapper_io.sample_in.bits.scores(j).poke(FixedPoint.fromDouble(0,16.W,8.BP))
            }
            for (j <- 0 until n_depths){
              c.wrapper_io.sample_in.bits.weights(j).poke(FixedPoint.fromDouble((j+1),16.W,8.BP))
            }
            for (j <- 0 until n_attr){
              c.wrapper_io.sample_in.bits.features(j).poke((i+2).U)
            }        

            c.wrapper_io.sample_out.ready.poke(true.B)
            
            
            c.clock.step()
          }
          */
          var counter = 0
          var counter2 = 0
          while((counter < 10) && (counter2<200)){
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
              println("SHIFT, OFFSET, TREE_TO_EXEC, SFR, TIMER")
              println(data(n_attr*16+23,n_attr*16+16).litValue)
              println(data(n_attr*16+15,n_attr*16).litValue)
              println(data(n_attr*16+39,n_attr*16+32).litValue)
              println(data(n_attr*16+31,n_attr*16+24).litValue)
              println(data(255,224))
              
            }
            c.clock.step()
          }*/
      }
    }
  }else{
    val n_trees = args(0)
    println(n_trees)
    val max_depth = args(1)
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