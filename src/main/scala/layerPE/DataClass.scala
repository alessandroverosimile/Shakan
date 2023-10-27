package YoseUe_SATL

import chisel3._
import chisel3.util._
import chisel3.experimental._

class Sample(n_attr: Int, n_classes: Int, n_depths: Int, info_bit: Int, tree_bit: Int) extends Bundle{
    val features = Vec(n_attr, UInt(16.W)) //FixedPoint(16.W,8.BP))
    val offset = UInt(info_bit.W)
    val shift = Bool()
    val search_for_root = Bool()
    val tree_to_exec = UInt(tree_bit.W)
    val scores = Vec(n_classes,UInt(8.W))
    val weights = Vec(n_depths, UInt(8.W))
}

class NOInst(attr_bit: Int, info_bit: Int) extends Bundle{
    val threshold = UInt(16.W)
    val nodeRA = UInt(12.W)
    val attr_id = UInt(attr_bit.W)
    val leftChildInfo = UInt(info_bit.W)
    val rightChildInfo = UInt(info_bit.W)
    val leftChildType = Bool()
    val rightChildType = Bool()
    val is_valid = Bool()
    val depth_indicator = UInt(3.W)
}
