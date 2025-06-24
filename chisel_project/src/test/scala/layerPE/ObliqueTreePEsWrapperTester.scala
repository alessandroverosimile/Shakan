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
import spatial_templates.pe._
import spatial_templates.me._
import scala.collection.mutable.ArrayBuffer

class ObliqueTreePEsWrapperTester extends AnyFreeSpec with ChiselScalatestTester {

  val synthesis = false

  if(synthesis){
    println("Synthesizing...")
  }else{
    println("Simulating...")
  }

  if(!synthesis){
    val n_trees = 1
    val max_depth = 9
    val n_attr = 5
    val n_classes = 7
    val n_paths = 3
    val compensation = if ((n_classes%2) == 0) 16 else 0
    val best_width = 320 // n_attr*32 + n_classes*16 + 48 + compensation
    val info_bit = 10
    val tree_bit = 8
    val n_split_features = 3
    val coeff_bit = 3
    val attr_bit = 6

    val pes_per_path = 9
    val trees_per_pe = 1

    val total_pes = n_paths * pes_per_path

    var structure_list = List.empty[List[Int]]
    for(i<-0 until n_paths)
      structure_list = structure_list :+ List(pes_per_path,trees_per_pe,1)

    println("Architecture splitted in %d paths".format(n_paths))
    
    "Pe should compute samples score" in {
      test(new TreePEsWrapper(max_depth,n_attr,n_classes,info_bit,tree_bit,attr_bit,n_split_features,coeff_bit,structure_list,best_width,synthesis)).withAnnotations(Seq(WriteVcdAnnotation)) { c =>
          c.clock.setTimeout(0)

          val latencies = ArrayBuffer[Int]()

          for(j <- 0 until trees_per_pe){
            for(i <- 0 until total_pes){
              c.brams_io(i).bram_we_a.poke(15.U)
              c.brams_io(i).bram_addr_a.poke(j.U)
              // From LSB: threshold(16) + left_info(10) + right_info(10) + leftType(leaf=0) + rightType + valid=1 + attr_id(6) + coeff + padding(istr_ln=64)
              c.brams_io(i).bram_wrdata_a.poke(BigInt(
                "0" +       // padding
                "011" +             // coeff 2 (here: 011 -> (-1)*2^(1) = -2)
                "011" +             // coeff 1 (here: 011 -> (-1)*2^(1) = -2)
                "000010"+           // attr id 2
                "000001"+           // attr id 1
                "000000" +          // attr id 0
                "111" +             // valid - right type - left type
                "1000000000" +      // right info
                "1000000000" +      // left info
                "0000000000000000"  // threshold
                , 2).U(64.W))
            }
            c.clock.step()
          }
          for(i <- 0 until total_pes){
            c.brams_io(i).bram_we_a.poke(15.U)
            c.brams_io(i).bram_addr_a.poke(512.U)
            // From LSB: threshold(16) + left_info(10) + right_info(10) + leftType(leaf=0) + rightType + valid=1 + attr_id(6) + coeff + padding(istr_ln=64)
            c.brams_io(i).bram_wrdata_a.poke(BigInt(
              "0" +       // padding
              "011" +             // coeff 2 (here: 011 -> (-1)*2^(1) = -2)
              "011" +             // coeff 1 (here: 011 -> (-1)*2^(1) = -2)
              "000010"+           // attr id 2
              "000001"+           // attr id 1
              "000000" +          // attr id 0
              "100" +             // valid - right type - left type
              "0000000000" +      // right info
              "0000000000" +      // left info
              "0000000000000000"  // threshold
              , 2).U(64.W))
          }
          c.clock.step()
          for(i <- 0 until total_pes){
            c.brams_io(i).bram_we_a.poke(0.U)
            c.brams_io(i).bram_addr_a.poke(500.U)
          }
          c.clock.step()

          // c.brams_io(1).bram_wrdata_a.poke(0.U(64.W))
          // c.brams_io(1).bram_addr_a.poke(1.U)
          // c.brams_io(1).bram_wrdata_a.poke(0.U(64.W))
          // c.brams_io(1).bram_addr_a.poke(1.U)

          val n_samples = 1
          var clock_cycles = 0
          var base_clock_cycles = 0
          var first_sample_out = false
          for(i <- 0 until n_samples){
          
            c.wrapper_io.sample_in.TVALID.poke(true.B)
            //insert tdata coherent with the dimension

            // From LSB: features(32) + offset(8) + shift(8)=0 + searchforroot(8)=1 + padding(8)=0 + score(16) + padding(16)

            c.wrapper_io.sample_in.TDATA.poke((BigInt(
              "0000000000000000" +                  // score 6
              "0000000000000000" +                  // score 5
              "0000000000000000" +                  // score 4
              "0000000000000000" +                  // score 3
              "0000000000000000" +                  // score 2
              "0000000000000000" +                  // score 1
              "0000000000000000" +                  // score 0
              "00000000" +                          // tree to exec
              "00000001" +                          // search for root
              "00000000" +                          // layer to exec
              "0000000000000000" +                          // offset
              "00000000000000000000000000000000" +  // feature 4
              "00000000000000000000000000000000" +  // feature 3
              "00000000000000000000000000000000" +  // feature 2
              "00000000000000010000000000000000" +  // feature 1
              "00000000000000010000000000000000"    // feature 0
              , 2)).U(320.W))

            if (i==(n_samples-1)){
              c.wrapper_io.sample_in.TLAST.poke(true.B)
            }else{
              c.wrapper_io.sample_in.TLAST.poke(false.B)
            }
            c.wrapper_io.sample_out.TREADY.poke(true.B)

            c.clock.step()
            clock_cycles += 1
            if(c.wrapper_io.sample_out.TVALID.peek().litValue != 0){
              latencies += (clock_cycles - base_clock_cycles)
              println("Clock cycles: %d".format(clock_cycles - base_clock_cycles))
              base_clock_cycles += 3
              first_sample_out = true
              println(s"Arrived Samples: ${latencies.length}")
            }

            c.wrapper_io.sample_in.TLAST.poke(false.B)
            c.wrapper_io.sample_in.TVALID.poke(false.B)

            c.clock.step()
            clock_cycles += 1
            if(c.wrapper_io.sample_out.TVALID.peek().litValue != 0){
              latencies += (clock_cycles - base_clock_cycles)
              println("Clock cycles: %d".format(clock_cycles - base_clock_cycles))
              base_clock_cycles += 3
              first_sample_out = true
              println(s"Arrived Samples: ${latencies.length}")
            }

            c.clock.step()
            clock_cycles += 1
            if(c.wrapper_io.sample_out.TVALID.peek().litValue != 0){
              latencies += (clock_cycles - base_clock_cycles)
              println("Clock cycles: %d".format(clock_cycles - base_clock_cycles))
              base_clock_cycles += 3
              first_sample_out = true
              println(s"Arrived Samples: ${latencies.length}")
            }
          }
          c.wrapper_io.sample_in.TVALID.poke(false.B)
          
          while (c.wrapper_io.sample_out.TLAST.peek().litValue == 0) {
            c.clock.step(1)
            clock_cycles += 1
            if(c.wrapper_io.sample_out.TVALID.peek().litValue != 0){
              latencies += (clock_cycles - base_clock_cycles)
              println("Clock cycles: %d".format(clock_cycles - base_clock_cycles))
              base_clock_cycles += 3
              first_sample_out = true
              println(s"Arrived Samples: ${latencies.length}")
            }
          }

          c.clock.step(2)

          val mean = latencies.sum.toDouble / latencies.length
          println(s"AVERAGE LATENCY: ${mean}")

          val writer = new PrintWriter(new File("output_latency.txt"))
          writer.write("AVERAGE LATENCY: ")
          writer.write(mean.toString) // Writing the number 42
          writer.close()
      }
    }

  }else{
    print("synthesis not supported in test")
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