package YoseUe_SATL

import chisel3._
import chisel3.util._

/** Generic memory element. Extend this class to instantiate memories with more
  * specific characteristics
  *
  * @param id
  *   the identifier for this element in the spatial template. ME ids are
  *   independent and may overlap with PE ids. The programmer is expected to
  *   handle them separately.
  */
abstract class ME(val id: ElemId) extends Module

class BRAMLikeVivadoIO(val port_width: Int, val addr_width: Int, val synthesis: Boolean) extends Bundle{
  val bram_addr_a = Input(UInt(addr_width.W))
  val bram_clk_a = if(synthesis) Input(Clock()) else Input(Bool())
  val bram_wrdata_a = Input(UInt(port_width.W))
  val bram_rddata_a = Output(UInt(port_width.W))
  val bram_en_a = Input(Bool())
  val bram_rst_a = Input(Bool())
  val bram_we_a = Input(UInt((port_width/8).toInt.W))
}

class BRAMLikeIO(val port_width: Int, val addr_width: Int) extends Bundle {
  val enable_1 = Input(Bool())
  val write_1 = Input(Bool())
  val addr_1 = Input(UInt(addr_width.W))
  val dataIn_1 = Input(UInt(port_width.W))
  val dataOut_1 = Output(UInt(port_width.W))
  val enable_2 = Input(Bool())
  val write_2 = Input(Bool())
  val addr_2 = Input(UInt(addr_width.W))
  val dataIn_2 = Input(UInt(port_width.W))
  val dataOut_2 = Output(UInt(port_width.W))
}

/** This class implements a dual-port 36-bit wide memory with two read and two
  * write ports. The capacity is 1024 * 36 bit entries. This memory is meant to
  * resemble an FPGA Block RAM element
  */
class BRAMLikeMem(id: ElemId, width: Int = 36, addr_width: Int = 10)
    extends ME(id) {

  val io = IO(new BRAMLikeIO(width, addr_width))

  val entries: Int = scala.math.pow(2, addr_width).toInt
}

/** This class implements a dual-port 36-bit wide memory with two read and two
  * write ports. The capacity is 1024 * 36 bit entries. This memory is meant to
  * resemble an FPGA Block RAM element
  */
class BRAMLikeMem1(id: ElemId, width: Int = 36, addr_width: Int = 10)
    extends BRAMLikeMem(id, width, addr_width) {

  val mem = SyncReadMem(entries, UInt(width.W))
  // Create the first write port and one read port
  when(io.write_1) { mem.write(io.addr_1, io.dataIn_1) }
  io.dataOut_1 := mem.read(io.addr_1, io.enable_1)
  // Create the second write port and one read port
  when(io.write_2) { mem.write(io.addr_2, io.dataIn_2) }
  io.dataOut_2 := mem.read(io.addr_2, io.enable_2)

  assert((io.addr_1 < entries.U) & (io.addr_2 < entries.U))
}

class BRAMBlackBox(width_a: Int, width_b: Int, addr_width: Int) 
  extends Module {
    val io = IO(new Bundle{
      val clk = Input(Clock())
      // Port A
      val a_en = Input(Bool())
      val a_wr = Input(Bool())
      val a_addr = Input(UInt(addr_width.W))
      val a_din = Input(UInt(width_a.W))
      val a_dout = Output(UInt(width_a.W))
      // Port B
      val b_en = Input(Bool())
      val b_wr = Input(Bool())
      val b_addr = Input(UInt(addr_width.W))
      val b_din = Input(UInt(width_b.W))
      val b_dout = Output(UInt(width_b.W))
    })
    assert(width_b == (width_a/2))

    val bram_1 = Module(new BRAMBlackBoxSingle(width_b,addr_width))
  
    when(io.b_en){
      // Multi-port, 64 bit behavior
      bram_1.io.a_wr := io.b_wr
      bram_1.io.a_addr := (io.b_addr << 1)
      bram_1.io.a_din := io.b_din(width_a-1,0)
      io.b_dout(width_a-1,0) := bram_1.io.a_dout
      bram_1.io.b_wr := io.b_wr
      bram_1.io.b_addr := (io.b_addr << 1) + 1.U
      bram_1.io.b_din := io.b_din(width_b-1,width_a)
      io.b_dout(width_b-1,width_a) := bram_1.io.b_dout
      io.a_dout := DontCare
    }.elsewhen(io.a_en){
      // Single port contiguous
      bram_1.io.a_wr := io.a_wr
      bram_1.io.a_addr := io.a_addr
      bram_1.io.a_din := io.a_din
      io.a_dout := bram_1.io.a_dout
      bram_1.io.b_wr := DontCare
      bram_1.io.b_addr := DontCare
      bram_1.io.b_din := DontCare
      io.b_dout := DontCare 
    }.otherwise{
      bram_1.io.a_wr := DontCare
      bram_1.io.a_addr := DontCare
      bram_1.io.a_din := DontCare
      io.a_dout := DontCare
      bram_1.io.b_wr := DontCare
      bram_1.io.b_addr := DontCare
      bram_1.io.b_din := DontCare
      io.b_dout := DontCare 
    }

  }

class BRAMBlackBoxSingle(width: Int = 36, addr_width: Int = 10) 
  extends BlackBox(Map("DATA" -> width, "ADDR" -> addr_width)) with HasBlackBoxInline {
    val io = IO(new Bundle{
      val clk = Input(Clock())
      // Port A
      val a_wr = Input(Bool())
      val a_addr = Input(UInt(addr_width.W))
      val a_din = Input(UInt(width.W))
      val a_dout = Output(UInt(width.W))
      // Port B
      val b_wr = Input(Bool())
      val b_addr = Input(UInt(addr_width.W))
      val b_din = Input(UInt(width.W))
      val b_dout = Output(UInt(width.W))

      setInline("BRAMBlackBox.v",
      """module BRAMBlackBox #(
      |    parameter DATA = 36,
      |    parameter ADDR = 10
      |) (
      |    input   wire               clk,
      |    // Port A
      |    input   wire                a_wr,
      |    input   wire    [ADDR-1:0]  a_addr,
      |    input   wire    [DATA-1:0]  a_din,
      |    output  reg     [DATA-1:0]  a_dout,
      |    // Port B
      |    input   wire                b_wr,
      |    input   wire    [ADDR-1:0]  b_addr,
      |    input   wire    [DATA-1:0]  b_din,
      |    output  reg     [DATA-1:0]  b_dout
      |);
      |// Shared memory
      |reg [DATA-1:0] mem [(2**ADDR)-1:0];
      |// Port A
      |always @(posedge clk) begin
      |    a_dout      <= mem[a_addr];
      |    if(a_wr) begin
      |        a_dout      <= a_din;
      |        mem[a_addr] <= a_din;
      |    end
      |end
      |// Port B
      |always @(posedge clk) begin
      |    b_dout      <= mem[b_addr];
      |    if(b_wr) begin
      |        b_dout      <= b_din;
      |        mem[b_addr] <= b_din;
      |    end
      |end
      |endmodule
      """.stripMargin)
    })

}
class BRAMLikeMem2(id: ElemId, width: Int = 36, addr_width: Int = 10)
    extends BRAMLikeMem(id, width, addr_width) {

    val bramBB = Module(new BRAMBlackBoxSingle(width, addr_width))
    bramBB.io.a_addr := io.addr_1
    bramBB.io.a_din := io.dataIn_1
    bramBB.io.a_wr := io.write_1
    io.dataOut_1 := bramBB.io.a_dout
    bramBB.io.b_addr := io.addr_2
    bramBB.io.b_din := io.dataIn_2
    bramBB.io.b_wr := io.write_2
    io.dataOut_2 := bramBB.io.b_dout
}