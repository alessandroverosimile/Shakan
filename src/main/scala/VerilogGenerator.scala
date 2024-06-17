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

object VerilogGenerator extends App{
    val n_trees = args(0).toInt
    val max_depth = args(1).toInt
    val n_paths = args(2).toInt
    val min_depth = 1
    val n_depths = max_depth - min_depth + 1
    val n_attr = 5
    val n_classes = 6
    val info_bit = 10
    val tree_bit = 8
    val attr_bit = (log(n_attr)/log(2)-0.00001).toInt + 1
    require(n_trees%n_paths == 0)
    val bram_size = 36*1024
    val instruction_per_bram = (bram_size/64).toInt //64 is the Node Instruction size, fixed to 64. It should not change but, if It will happen, remember to change the value here
    val trees_for_path = (math.ceil(n_trees/n_paths)).toInt
    val max_trees_per_set = n_depths*(instruction_per_bram/(math.pow(2,max_depth-1))).toInt
    val set_of_pes = math.ceil(trees_for_path/(max_trees_per_set.toFloat))
    val n_pes_per_path = (max_depth*set_of_pes).toInt
    var n_loops = 0
    if (set_of_pes > 1){
        n_loops = max_trees_per_set.toInt
    }else{
        n_loops = trees_for_path
    }
    var structure_list = List.empty[List[Int]] //List(n_pes,n_loops)
    for (i <- 0 until n_paths){
      structure_list = structure_list :+ List(n_pes_per_path,n_loops)
    }

    println("Architecture splitted in %d paths".format(n_paths))

    val VerilogEmitter = (new chisel3.stage.ChiselStage).emitVerilog(
              new TreePEsWrapper(n_trees, max_depth, n_attr,n_classes,n_depths,info_bit,tree_bit,attr_bit,bram_size=bram_size,structure_list,true)
          )
              Files.write(
                  Paths.get("./test.v"),
                  VerilogEmitter.getBytes(StandardCharsets.UTF_8)
              )
}