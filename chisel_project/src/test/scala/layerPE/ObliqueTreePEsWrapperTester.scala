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

class ObliqueTreePEsWrapperTester extends AnyFreeSpec with ChiselScalatestTester {

  val synthesis = false

  if(synthesis){
    println("Synthesizing...")
  }else{
    println("Simulating...")
  }

  if(!synthesis){
    val n_trees = 1
    val max_depth = 1
    val min_depth = 1
    val n_attr = 5
    val n_classes = 6
    val n_paths = 1
    val compensation = if ((n_classes%2) == 0) 16 else 0
    val best_width = n_attr*32 + n_classes*16 + 48 + compensation
    val info_bit = 10
    val tree_bit = 8
    val n_split_features = 2
    val coeff_bit = 3
    val attr_bit = 6
    //TODO: DA RIFARE TUTTA LA PARTE DI COMPUTAZIONE MATEMATICA 
    /*val bram_size = 36*1024
    val instruction_per_bram = (bram_size/64).toInt //64 is the Node Instruction size, fixed to 64. It should not change but, if It will happen, remember to change the value here
    val max_trees_per_set = (instruction_per_bram/(math.pow(2,max_depth-1))).toInt
    var set_of_pes = 3 //math.ceil(n_trees/(max_trees_per_set.toFloat))
    var structure_list = List.empty[List[Int]]
    val path_lengths = List(5,5,5)
    val DT_distr = List(10,10,10)
    for(i <- 0 until n_paths){
      structure_list = structure_list :+ List(path_lengths(i),DT_distr(i))
    }
    */
    var structure_list = List.empty[List[Int]]
    structure_list = structure_list :+ List(2,1)

    /*
    if (set_of_pes >= n_paths){
        val n_loops = math.ceil(n_trees/(set_of_pes.toFloat)).toInt
        var remaining_paths = n_paths
        println("structure_list case 1")
        while (remaining_paths != 0){
            val sets = math.ceil(set_of_pes/remaining_paths).toInt
            structure_list = structure_list :+ List(sets*max_depth,n_loops)
            println(List(sets*max_depth,n_loops))
            set_of_pes = set_of_pes - sets
            remaining_paths = remaining_paths - 1
        }
        println("end structure_list")
    }else{
        val n_loops = math.ceil(n_trees/(n_paths.toFloat)).toInt
        println("structure_list case 2")
        for (i<-0 until n_paths){
            structure_list = structure_list :+ List(max_depth,n_loops)
            println(List(max_depth,n_loops))
        }
        println("end structure_list")
    }
    */

    println("Architecture splitted in %d paths".format(n_paths))
    
    "Pe should compute samples score" in {
      test(new TreePEsWrapper(max_depth,n_attr,n_classes,info_bit,tree_bit,attr_bit,n_split_features,coeff_bit,structure_list,best_width,synthesis)).withAnnotations(Seq(WriteVcdAnnotation)) { c =>
          c.clock.setTimeout(20000)

          c.brams_io(0).bram_we_a.poke(15.U)
          c.brams_io(0).bram_addr_a.poke(0.U)

          // From LSB: threshold(16) + left_info(10) + right_info(10) + leftType(leaf=0) + rightType + valid=1 + attr_id(6) + coeff + padding(istr_ln=64)
          c.brams_io(0).bram_wrdata_a.poke(BigInt(
            "000000000" +       // padding
            "011" +             // coeff 1 (here: 011 -> (-1)*2^(1) = -2)
            "000001"+           // attr id 1
            "000000" +          // attr id 0
            "111" +             // valid - right type - left type
            "0000001001" +      // right info
            "0000001000" +      // left info
            "0000000000000000"  // threshold
            , 2).U(64.W))
          c.clock.step()

          c.brams_io(1).bram_we_a.poke(15.U)
          c.brams_io(1).bram_addr_a.poke(0.U)
          c.brams_io(1).bram_wrdata_a.poke(BigInt(
            "000000000" +       // padding
            "011" +             // coeff 1 (here: 011 -> (-1)*2^(1) = -2)
            "000001"+           // attr id 1
            "000000" +          // attr id 0
            "100" +             // valid - right type - left type
            "0000000001" +      // right info
            "0000000000" +      // left info
            "0000000000000000"  // threshold
            , 2).U(64.W))
          c.clock.step()

          c.brams_io(1).bram_we_a.poke(15.U)
          c.brams_io(1).bram_addr_a.poke(8.U)
          c.brams_io(1).bram_wrdata_a.poke(BigInt(
            "000000000" +       // padding
            "100" +             // coeff 1 (here: 100 -> (1)*2^(-2) = 0.25)
            "000001"+           // attr id 1
            "000000" +          // attr id 0
            "100" +             // valid - right type - left type
            "0000000001" +      // right info
            "0000000000" +      // left info
            "0000000000000000"  // threshold
            , 2).U(64.W))
          c.clock.step()

          c.brams_io(1).bram_we_a.poke(15.U)
          c.brams_io(1).bram_addr_a.poke(9.U)
          c.brams_io(1).bram_wrdata_a.poke(BigInt(
            "000000000" +       // padding
            "011" +             // coeff 1 (here: 011 -> (-1)*2^(1) = -2)
            "000001"+           // attr id 1
            "000000" +          // attr id 0
            "100" +             // valid - right type - left type
            "0000000001" +      // right info
            "0000000000" +      // left info
            "0000000000000000"  // threshold
            , 2).U(64.W))
          c.clock.step()

          // c.brams_io(1).bram_wrdata_a.poke(0.U(64.W))
          // c.brams_io(1).bram_addr_a.poke(1.U)
          // c.brams_io(1).bram_wrdata_a.poke(0.U(64.W))
          // c.brams_io(1).bram_addr_a.poke(1.U)

          val n_samples = 1
          for(i <- 0 until n_samples){
            c.wrapper_io.sample_in.TVALID.poke(true.B)
            //insert tdata coherent with the dimension

            // From LSB: features(32) + offset(8) + shift(8)=0 + searchforroot(8)=1 + padding(8)=0 + score(16) + padding(16)

            c.wrapper_io.sample_in.TDATA.poke((BigInt(
              "0000000000000000" +                  // score 5
              "0000000000000000" +                  // score 4
              "0000000000000000" +                  // score 3
              "0000000000000000" +                  // score 2
              "0000000000000000" +                  // score 1
              "0000000000000000" +                  // score 0
              "00000000" +                          // padding
              "00000000" +                          // search for root
              "00000000" +                          // shift
              "00000000" +                          // offset
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
          }
          c.wrapper_io.sample_in.TVALID.poke(false.B)
          c.clock.step(20)
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