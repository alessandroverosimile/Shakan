package YoseUe_SATL

import chisel3._
import chiseltest._
import org.scalatest.freespec.AnyFreeSpec
import chisel3.experimental.BundleLiterals._
import scala.math._
import spatial_templates.pe._
import spatial_templates.me._

/*
class TreePEWithBRAMTester extends AnyFreeSpec with ChiselScalatestTester {

  val n_attr = 4
  val n_classes = 4
  val info_bit = 10
  val tree_bit = 8
  val attr_bit = 6
  val flbit = true
  val n_split_features = 2
  val coeff_bit = 3

  "Pe should update samples" in {
    test(new TreePEwithBRAM(new ElemId(3,0,0,0), n_attr, n_classes, info_bit, tree_bit, attr_bit, n_split_features, coeff_bit, flbit,1)) { c =>
        
        c.pe_io.bram_io.bram_we_a.poke(15.U)
        c.pe_io.bram_io.bram_addr_a.poke(0.U)
        c.pe_io.bram_io.bram_wrdata_a.poke(BigInt("000000000000000000000000000000000001001000000000001" + "000" + "0000000000", 2).U(64.W))
        c.clock.step()

        c.pe_io.sample_in.valid.poke(true)
        c.pe_io.sample_in.bits.offset.poke(1.U)
        c.pe_io.sample_in.bits.shift.poke(false.B)
        c.pe_io.sample_in.bits.search_for_root.poke(true.B)
        c.pe_io.sample_in.bits.tree_to_exec.poke(0.U)
        for (i <- 0 until n_classes){
          if(i==1){
            c.pe_io.sample_in.bits.scores(i).poke(3.U)
          }else{
            c.pe_io.sample_in.bits.scores(i).poke(0.U)
          }
        }
        for (i <- 0 until n_attr){
          c.pe_io.sample_in.bits.features(i).poke(1.F(32.W,16.BP))
        }

        c.pe_io.sample_out.ready.poke(true)
        
        c.clock.step(1)
        
        println("SAMPLE_OUT: ")
        println("FEATURES: ")
        for (i <- 0 until n_attr){
          println(c.pe_io.sample_out.bits.features(i).peek().litValue)
        }
        println("SCORES: ")
        for (i <- 0 until n_classes){
          println(c.pe_io.sample_out.bits.scores(i).peek().litValue)
        }
        println("SHIFT, OFFSET, TREE_TO_EXEC, SFR")
        println(c.pe_io.sample_out.bits.shift.peek().litValue)
        println(c.pe_io.sample_out.bits.offset.peek().litValue)
        println(c.pe_io.sample_out.bits.tree_to_exec.peek().litValue)
        println(c.pe_io.sample_out.bits.search_for_root.peek().litValue)
        
        //c.io.sample_out.bits.scores(2).expect(0)
        //c.pe_io.sample_out.bits.offset.expect(0)
        //c.pe_io.sample_out.bits.shift.expect(false)
    }
  }
}
*/