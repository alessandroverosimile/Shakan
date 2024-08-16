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

object UnevenPathsVerilogGenerator extends App{

    val n_trees = args(0).toInt
    val max_depth = args(1).toInt
    val min_depth = args(2).toInt
    val n_attr = args(3).toInt
    val n_classes = args(4).toInt
    val n_paths = args(5).toInt
    val best_width = args(6).toInt
    val n_depths = max_depth - min_depth + 1
    val info_bit = 10
    val tree_bit = 8
    val attr_bit = (log(n_attr)/log(2)-0.00001).toInt + 1    
    var structure_list = List.empty[List[Int]]
    for (i <- 0 until n_paths){
        structure_list = structure_list :+ List(args(6+i).toInt,args(6+n_paths+i).toInt)
    }

    println("Architecture splitted in %d paths".format(n_paths))

    val VerilogEmitter = (new chisel3.stage.ChiselStage).emitVerilog(
              new TreePEsWrapper(max_depth, n_attr, n_classes, n_depths, info_bit, tree_bit, attr_bit, structure_list, best_width, true)
          )
              Files.write(
                  Paths.get("./test.v"),
                  VerilogEmitter.getBytes(StandardCharsets.UTF_8)
              )
}