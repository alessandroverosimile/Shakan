package YoseUe_SATL

import chisel3._
import chisel3.util._
import chisel3.experimental._

class Sample(n_attr: Int, n_classes: Int, n_depths: Int, info_bit: Int, tree_bit: Int) extends Bundle{
    val features = Vec(n_attr, FixedPoint(32.W,16.BP))
    val offset = UInt(info_bit.W)
    val shift = Bool()
    val search_for_root = Bool()
    val tree_to_exec = UInt(tree_bit.W)
    val scores = Vec(n_classes,UInt(16.W))
    val dest = Bool()
    val last = Bool()
    val clock_cycles = UInt(32.W)
}

class AxiSample(best_width: Int) extends Bundle{
    val TDATA = Input(UInt((best_width).W))
    val TLAST = Input(Bool())
    val TREADY = Output(Bool())
    val TVALID = Input(Bool())
}