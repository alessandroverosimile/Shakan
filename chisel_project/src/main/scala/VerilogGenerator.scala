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
    val min_depth = args(2).toInt
    val n_attr = args(3).toInt
    val n_classes = args(4).toInt
    val n_paths = args(5).toInt
    val best_width = args(6).toInt
    var set_of_pes = args(7).toInt
    val early_termination = args(8).toInt
    val max_votation = args(9).toDouble
    val n_depths = max_depth - min_depth + 1
    val info_bit = 10
    val tree_bit = 8
    val attr_bit = (log(n_attr)/log(2)-0.00001).toInt + 1    
    var structure_list = List.empty[List[Int]]

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

    println("Architecture splitted in %d paths".format(n_paths))

    val VerilogEmitter = (new chisel3.stage.ChiselStage).emitVerilog(
              new TreePEsWrapper(max_depth, n_attr, n_classes, n_depths, info_bit, tree_bit, attr_bit, structure_list, best_width, true, early_termination==1, max_votation)
          )
              Files.write(
                  Paths.get("./test.v"),
                  VerilogEmitter.getBytes(StandardCharsets.UTF_8)
              )
}