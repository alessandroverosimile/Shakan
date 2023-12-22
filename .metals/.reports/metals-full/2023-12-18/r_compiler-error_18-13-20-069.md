file://<WORKSPACE>/src/main/scala/layerPE/TreePE.scala
### java.lang.IndexOutOfBoundsException: 0

occurred in the presentation compiler.

action parameters:
offset: 2921
uri: file://<WORKSPACE>/src/main/scala/layerPE/TreePE.scala
text:
```scala
package YoseUe_SATL

import chisel3._
import chisel3.util._
import chisel3.experimental._


class TreePE(id: ElemId, n_attr: Int, n_classes: Int, n_depths: Int, info_bit: Int, tree_bit: Int, attr_bit: Int, is_a_root: Boolean, n_loops: Int) extends PE(id){
    val io = IO(new Bundle{
        val sample_in = Flipped(Decoupled(new Sample(n_attr,n_classes,n_depths,info_bit,tree_bit)))
        val mem = Flipped(new BRAMLikeIO(64,10))
        val sample_out = Decoupled(new Sample(n_attr,n_classes,n_depths,info_bit,tree_bit))
    })

    val queue = Queue(io.sample_in, 3)

    
    when(queue.valid){
      io.mem.enable_1 := true.B
      io.mem.addr_1 := queue.bits.offset
      io.mem.write_1 := false.B
      io.mem.dataIn_1 := 0.U
    }.otherwise{
      io.mem.enable_1 := false.B
      io.mem.addr_1 := DontCare
      io.mem.write_1 := false.B
      io.mem.dataIn_1 := DontCare
    }

    io.mem.enable_2 := DontCare
    io.mem.addr_2 := DontCare
    io.mem.write_2 := DontCare
    io.mem.dataIn_2 := DontCare

    //Decode Node instruction
    
    when(RegNext(queue.valid)){

      val attr_id = io.mem.dataOut_1(32+attr_bit-1,32)
      val threshold = io.mem.dataOut_1(15,0)
      val nodeRA = io.mem.dataOut_1(31,16)
      val leftChildInfo = io.mem.dataOut_1(32+attr_bit+info_bit-1,32+attr_bit)
      val rightChildInfo = io.mem.dataOut_1(32+attr_bit+info_bit*2-1,32+attr_bit+info_bit)
      val leftChildType = io.mem.dataOut_1(32+attr_bit+info_bit*2)
      val rightChildType = io.mem.dataOut_1(32+attr_bit+info_bit*2+1)
      val is_valid = io.mem.dataOut_1(32+attr_bit+info_bit*2+2)
      val depth_indicator = io.mem.dataOut_1(32+attr_bit+info_bit*2+5,32+attr_bit+info_bit*2+3) //depth indicator assumed to be 3 bits. If the number of weights changes, it is needed to change the end bit
      
      io.sample_out.bits.features := RegNext(queue.bits.features)
      io.sample_out.bits.weights := RegNext(queue.bits.weights)
      io.sample_out.bits.tree_to_exec := RegNext(queue.bits.tree_to_exec)
      io.sample_out.bits.scores := RegNext(queue.bits.scores)
      io.sample_out.valid := true.B

      if (is_a_root){
        val offset = Wire(UInt(info_bit.W)) 
        val shift = Wire(Bool())
        val features_bits = RegNext(queue.bits.features)
        val scores_bits = RegNext(queue.bits.scores)
        val weights_bits = RegNext(queue.bits.weights)
        shift := Mux(features_bits(attr_id) < threshold.asFixedPoint(8.BP),leftChildType,rightChildType)
        offset := Mux(features_bits(attr_id) < threshold.asFixedPoint(8.BP),leftChildInfo,rightChildInfo)
        io.sample_out.bits.offset := Mux(shift === false.B,RegNext(queue.bits.tree_to_exec),offset)
        io.sample_out.bits.shift := false.B
        io.sample_out.bits.search_for_root := !shift
        for(i <- 0 until n_classes){
          io.sample_out.bits.scores(i) := scores_bits(i) + (weights_bits(depth_indicator).asUInt()@@ & Mux(((shift===false.B) && is_valid && (i.U === offset)),0xFFFF.U(16.W),0.U(16.W))
        }
        io.sample_out.bits.dest := RegNext(queue.bits.tree_to_exec) === (n_loops-1).U
        io.sample_out.bits.last := RegNext(queue.bits.last)
      }else{
        val offset = Wire(UInt(info_bit.W)) 
        val shift = Wire(Bool())
        val features_bits = RegNext(queue.bits.features)
        val scores_bits = RegNext(queue.bits.scores)
        val weights_bits = RegNext(queue.bits.weights)
        shift := Mux(features_bits(attr_id) < threshold.asFixedPoint(8.BP),leftChildType,rightChildType)
        offset := Mux(features_bits(attr_id) < threshold.asFixedPoint(8.BP),leftChildInfo,rightChildInfo)
        io.sample_out.bits.offset := Mux(shift === false.B || queue.bits.search_for_root,RegNext(queue.bits.tree_to_exec),offset)
        io.sample_out.bits.shift := false.B
        io.sample_out.bits.search_for_root := !shift || queue.bits.search_for_root
        for(i <- 0 until n_classes){
          io.sample_out.bits.scores(i) := scores_bits(i) + weights_bits(depth_indicator) & Mux((!queue.bits.search_for_root && (shift===false.B) && is_valid && (i.U === offset)),0xFFFF.U(16.W),0.U(16.W))
        }
        io.sample_out.bits.dest := RegNext(queue.bits.tree_to_exec) === (n_loops-1).U
        io.sample_out.bits.last := RegNext(queue.bits.last)
      }
    }.otherwise{
      io.sample_out.bits := DontCare
      io.sample_out.valid := false.B
    }
    
    queue.ready := RegNext(io.sample_out.ready)

    def link_to_first_interconnect(i:Int, ic: FirstInterconnectPE): Unit = {
        println("Tree PE without BRAM cannot be linked with First Interconnect PE")
    }

    def link_to_last_interconnect(ic: LastInterconnectPE): Unit = {
        println("Tree PE without BRAM cannot be linked with Last Interconnect PE")
    }

    def link_to_tree_pe(tree_pe: TreePEwithBRAM): Unit = {
        println("Tree PE without BRAM cannot be linked with Tree PE")
    }

    def link_to_increment(increment_pe: IncrementTreePE): Unit = {
        println("Tree PE without BRAM cannot be linked with Increment PE")
    }

    def link_to_voter(i: Int, voter_pe: VoterPE): Unit = {
        println("Tree PE without BRAM cannot be linked with Voter PE")
    }

}

class TreePEwithBRAM(id: ElemId, n_attr: Int, n_classes: Int, n_depths: Int, info_bit: Int, tree_bit: Int, attr_bit: Int, is_a_root: Boolean, n_loops: Int) extends PE(id){
  val pe_io = IO(new Bundle{
        val sample_in = Flipped(Decoupled(new Sample(n_attr,n_classes,n_depths,info_bit,tree_bit)))
        val mem = Flipped(new BRAMLikeIO(64,10))
        val sample_out = Decoupled(new Sample(n_attr,n_classes,n_depths,info_bit,tree_bit))
  })
  
  val pe = Module(new TreePE(id,n_attr,n_classes,n_depths,info_bit,tree_bit,attr_bit,is_a_root, n_loops))

  pe_io <> pe.io

  def link_to_last_interconnect(ic: LastInterconnectPE): Unit = {
    pe_io.sample_out <> ic.io.sample_in
  }

  def link_to_tree_pe(tree_pe: TreePEwithBRAM): Unit = {
    pe_io.sample_out <> tree_pe.pe_io.sample_in
  }

  def link_to_first_interconnect(i: Int, ic: FirstInterconnectPE): Unit = {
    println("Tree PE cannot be linked with First Interconnect PE")
  }

  def link_to_increment(increment_pe: IncrementTreePE): Unit = {
    println("Tree PE cannot be linked with Increment PE")
  }

  def link_to_voter(i: Int, voter_pe: VoterPE): Unit = {
    println("Tree PE cannot be linked with Voter PE")
  }

  /*
  val bram_io = IO(new BRAMLikeIO(64,10))
  val bram = Module(new BRAMLikeMem1(id,64,10))

  bram.io.enable_1 := pe.io.mem.enable_1
  bram.io.write_1 := pe.io.mem.write_1
  bram.io.addr_1 := pe.io.mem.addr_1
  bram.io.dataIn_1 := pe.io.mem.dataIn_1
  pe.io.mem.dataOut_1 := bram.io.dataOut_1

  bram.io.enable_2 := bram_io.enable_2
  bram.io.write_2 := bram_io.write_2
  bram.io.addr_2 := bram_io.addr_2
  bram.io.dataIn_2 := bram_io.dataIn_2
  bram_io.dataOut_2 := bram.io.dataOut_2
  bram_io.dataOut_1 := 0.U
  */
}
```



#### Error stacktrace:

```
scala.collection.LinearSeqOps.apply(LinearSeq.scala:131)
	scala.collection.LinearSeqOps.apply$(LinearSeq.scala:128)
	scala.collection.immutable.List.apply(List.scala:79)
	dotty.tools.dotc.util.Signatures$.countParams(Signatures.scala:501)
	dotty.tools.dotc.util.Signatures$.applyCallInfo(Signatures.scala:186)
	dotty.tools.dotc.util.Signatures$.computeSignatureHelp(Signatures.scala:94)
	dotty.tools.dotc.util.Signatures$.signatureHelp(Signatures.scala:63)
	scala.meta.internal.pc.MetalsSignatures$.signatures(MetalsSignatures.scala:17)
	scala.meta.internal.pc.SignatureHelpProvider$.signatureHelp(SignatureHelpProvider.scala:51)
	scala.meta.internal.pc.ScalaPresentationCompiler.signatureHelp$$anonfun$1(ScalaPresentationCompiler.scala:388)
```
#### Short summary: 

java.lang.IndexOutOfBoundsException: 0