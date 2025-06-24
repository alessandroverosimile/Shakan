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


class TreePEWithBRAMTester extends AnyFreeSpec with ChiselScalatestTester {

  val n_attr = 5
  val n_classes = 7
  val info_bit = 10
  val tree_bit = 8
  val attr_bit = 6
  val n_split_features = 3
  val coeff_bit = 3
  val n_layers = 5
  val trees_per_layer = 180

  val VerilogEmitter = (new chisel3.stage.ChiselStage).emitVerilog(
          new TreePEwithBRAM(new ElemId(2,0,0,0), n_attr, n_classes, info_bit, tree_bit, attr_bit, n_split_features, coeff_bit, n_layers, trees_per_layer,n_layers, n_layers) 
      )
          Files.write(
              Paths.get("./ObliquePE.v"),
              VerilogEmitter.getBytes(StandardCharsets.UTF_8)
          )
}
