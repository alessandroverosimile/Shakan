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

    io.mem.addr_1 := queue.bits.offset
    io.mem.write_1 := false.B
    io.mem.dataIn_1 := 0.U
    io.mem.enable_1 := true.B

    io.mem.addr_2 := 0.U
    io.mem.write_2 := false.B
    io.mem.dataIn_2 := 0.U
    io.mem.enable_2 := false.B

    //Decode Node instruction


    
    val attr_id = io.mem.dataOut_1(32+attr_bit-1,32)
    val threshold = io.mem.dataOut_1(19,0)
    val nodeRA = io.mem.dataOut_1(31,20)
    val leftChildInfo = io.mem.dataOut_1(32+attr_bit+info_bit-1,32+attr_bit)
    val rightChildInfo = io.mem.dataOut_1(32+attr_bit+info_bit*2-1,32+attr_bit+info_bit)
    val leftChildType = io.mem.dataOut_1(32+attr_bit+info_bit*2)
    val rightChildType = io.mem.dataOut_1(32+attr_bit+info_bit*2+1)
    val is_valid = io.mem.dataOut_1(32+attr_bit+info_bit*2+2)
    val depth_indicator = io.mem.dataOut_1(32+attr_bit+info_bit*2+5,32+attr_bit+info_bit*2+3) //depth indicator assumed to be 3 bits. If the number of weights changes, it is needed to change the end bit

    io.sample_out.bits.features := queue.bits.features
    io.sample_out.bits.weights := queue.bits.weights
    io.sample_out.bits.tree_to_exec := queue.bits.tree_to_exec
    io.sample_out.bits.scores := queue.bits.scores
    
    if (is_a_root){
      val offset = Wire(UInt(info_bit.W)) 
      val shift = Wire(Bool())
      when(queue.bits.features(attr_id) < threshold){
        shift := leftChildType
        offset := leftChildInfo
      }.otherwise{
        shift := rightChildType
        offset := rightChildInfo
      }
      when(shift === false.B){
        io.sample_out.bits.offset := queue.bits.tree_to_exec
        io.sample_out.bits.shift := false.B
        io.sample_out.bits.search_for_root := true.B
        when(is_valid){
            io.sample_out.bits.scores(offset) := queue.bits.scores(offset) + queue.bits.weights(depth_indicator)
        }.otherwise{
            io.sample_out.bits.scores(offset) := queue.bits.scores(offset)
        }

      }.otherwise{
        io.sample_out.bits.offset := offset
        io.sample_out.bits.scores := queue.bits.scores
        io.sample_out.bits.shift := false.B
        io.sample_out.bits.search_for_root := false.B
      }
    }else{
      when(queue.bits.search_for_root){
        io.sample_out.bits.search_for_root := true.B
        io.sample_out.bits.offset := queue.bits.tree_to_exec
        io.sample_out.bits.shift := false.B
      }.otherwise{
        val offset = Wire(UInt(info_bit.W)) 
        val shift = Wire(Bool())
        when(queue.bits.features(attr_id) < threshold){
          shift := leftChildType
          offset := leftChildInfo
        }.otherwise{
          shift := rightChildType
          offset := rightChildInfo
        }
        when(shift === false.B){
          io.sample_out.bits.offset := queue.bits.tree_to_exec
          io.sample_out.bits.shift := false.B
          io.sample_out.bits.search_for_root := true.B
          when(is_valid){
              io.sample_out.bits.scores(offset) := queue.bits.scores(offset) + queue.bits.weights(depth_indicator)
          }.otherwise{
              io.sample_out.bits.scores(offset) := queue.bits.scores(offset)
          }
        }.otherwise{
          io.sample_out.bits.offset := offset
          io.sample_out.bits.scores := queue.bits.scores
          io.sample_out.bits.shift := false.B
          io.sample_out.bits.search_for_root := false.B
        }
      }
    }
    
    when(queue.bits.tree_to_exec === (n_loops-1).U){
      io.sample_out.bits.dest := true.B
    }.otherwise{
      io.sample_out.bits.dest := false.B
    }

    io.sample_out.valid := queue.valid
    queue.ready := io.sample_out.ready

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