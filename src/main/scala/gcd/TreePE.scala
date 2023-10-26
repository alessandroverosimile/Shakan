package YoseUe_SATL

import chisel3._
import chisel3.util._
import chisel3.experimental._


class TreePE(id: ElemId, attr_n: Int, n_classes: Int, number_of_depths: Int, info_bit: Int, tree_bit: Int, attr_bit: Int, is_a_root: Boolean) extends PE(id){
    val io = IO(new Bundle{
        val sample_in = Flipped(Decoupled(new Sample(attr_n,n_classes,number_of_depths,info_bit,tree_bit)))
        //val mem = Input(new NOInst(attr_bit,info_bit))
        val mem = new BRAMLikeIO(64,10) //(new ElemId(3,1,1,2),64,10)
        val sample_out = Decoupled(new Sample(attr_n,n_classes,number_of_depths,info_bit,tree_bit))
    })

    val flbit = RegInit(is_a_root.B)
    val bramMem = Module(new BRAMLikeMem1(new ElemId(3,1,1,2),64,10))
    bramMem.io.enable_1 := io.mem.enable_1
    bramMem.io.write_1 := io.mem.write_1
    bramMem.io.addr_1 := io.mem.addr_1
    bramMem.io.dataIn_1 := io.mem.dataIn_1
    io.mem.dataOut_1 := bramMem.io.dataOut_1

    bramMem.io.enable_2 := io.mem.enable_2
    bramMem.io.write_2 := io.mem.write_2
    bramMem.io.addr_2 := io.mem.addr_2
    bramMem.io.dataIn_2 := io.mem.dataIn_2
    io.mem.dataOut_2 := bramMem.io.dataOut_2

    val queue = Queue(io.sample_in, 3)

    //io.mem.addr_2 := queue.bits.offset //l'indirizzo di lettura in memoria è indicato in offset. Tuttavia addr_2 di BRAMLikeIO è un input e quindi non è possibile settarlo durante l'esecuzione

    //Decode Node instruction
    
    val node = io.mem.dataOut_2
    val attr_id = io.mem.dataOut_2(32+attr_bit-1,32)
    val threshold = io.mem.dataOut_2(19,0)
    val nodeRA = io.mem.dataOut_2(31,20)
    val leftChildInfo = io.mem.dataOut_2(32+attr_bit+info_bit-1,32+attr_bit)
    val rightChildInfo = io.mem.dataOut_2(32+attr_bit+info_bit*2-1,32+attr_bit+info_bit)
    val leftChildType = io.mem.dataOut_2(32+attr_bit+info_bit*2)
    val rightChildType = io.mem.dataOut_2(32+attr_bit+info_bit*2+1)
    val is_valid = io.mem.dataOut_2(32+attr_bit+info_bit*2+2)
    val depth_indicator = io.mem.dataOut_2(32+attr_bit+info_bit*2+5,32+attr_bit+info_bit*2+3) //depth indicator assumed to be 3 bits. If the number of weights changes, it is needed to change the end bit

    io.sample_out.bits.features := queue.bits.features
    io.sample_out.bits.weights := queue.bits.weights
    io.sample_out.bits.tree_to_exec := queue.bits.tree_to_exec
    io.sample_out.bits.scores := queue.bits.scores

    when(queue.bits.search_for_root && (!flbit)){
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
      /*
      for(i <- 0 until n_classes){

        when(i.U === offset){
          
        }.otherwise{
          io.sample_out.bits.scores(i) := queue.bits.scores(i)
        }
      }*/
      }.otherwise{
        io.sample_out.bits.offset := offset
        io.sample_out.bits.scores := queue.bits.scores
        io.sample_out.bits.shift := false.B
        io.sample_out.bits.search_for_root := false.B
      }
    }

    io.sample_out.valid := queue.valid
    queue.ready := io.sample_out.ready
}

class TreePEwithBRAM(id: ElemId, attr_n: Int, n_classes: Int, number_of_depths: Int, info_bit: Int, tree_bit: Int, attr_bit: Int, flbit: Boolean, bram_data: Int) extends Module{
  val pe = Module(new TreePE(id,attr_n,n_classes,number_of_depths,info_bit,tree_bit,attr_bit,flbit))
  val bram = Module(new BRAMLikeMem1(new ElemId(3,1,1,2),64,10))
  //connects BRAMLikeMem e BRAMLikeIO
  bram.io.enable_1 := pe.io.mem.enable_1
  bram.io.write_1 := pe.io.mem.write_1
  bram.io.addr_1 := pe.io.mem.addr_1
  bram.io.dataIn_1 := pe.io.mem.dataIn_1
  pe.io.mem.dataOut_1 := bram.io.dataOut_1

  bram.io.enable_2 := pe.io.mem.enable_2
  bram.io.write_2 := pe.io.mem.write_2
  bram.io.addr_2 := pe.io.mem.addr_2
  bram.io.dataIn_2 := pe.io.mem.dataIn_2
  pe.io.mem.dataOut_2 := bram.io.dataOut_2
}