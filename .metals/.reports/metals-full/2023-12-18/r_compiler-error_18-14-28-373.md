file://<WORKSPACE>/src/main/scala/layerPE/ME.scala
### java.lang.NoClassDefFoundError: sourcecode/Name

occurred in the presentation compiler.

action parameters:
offset: 578
uri: file://<WORKSPACE>/src/main/scala/layerPE/ME.scala
text:
```scala
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

class BRAMLikeVivadoIO(val port_width: Int, val addr_width: Int) extends Bundle{
  val bram_addr_a = Input(UInt(addr_width.W))
  val bram_clk_a = Input(<b@@())
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

  assert((io.addr_1 < entries.U) && (io.addr_2 < entries.U))
}

class BRAMBlackBox(width_a: Int, width_b: Int, addr_width: Int) 
  extends BlackBox(Map("DATA_A" -> width_a, "DATA_B" -> width_b, "SIZE_A" -> 36*1024/width_a, "SIZE_B" -> 36*1024/width_b, "ADDR" -> addr_width)) with HasBlackBoxInline {
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

      setInline("BRAMBlackBox.v",
      """module BRAMBlackBox #(
    parameter DATA_A = 64,
    parameter DATA_B = 32,
    parameter SIZE_A = 576,
    parameter SIZE_B = 1152,
    parameter ADDR = 13
) (
    input   wire               clk,
    // Port A
    input   wire                a_en,
    input   wire                a_wr,
    input   wire    [ADDR-1:0]  a_addr,
    input   wire    [DATA_A-1:0]  a_din,
    output  wire     [DATA_A-1:0]  a_dout,
    // Port B
    input   wire                b_en,
    input   wire                b_wr,
    input   wire    [ADDR-1:0]  b_addr,
    input   wire    [DATA_B-1:0]  b_din,
    output  wire     [DATA_B-1:0]  b_dout
);
`define max(a,b) {(a) > (b) ? (a) : (b)}
`define min(a,b) {(a) < (b) ? (a) : (b)}

function integer log2;
input integer value;
reg [31:0] shifted;
integer res;
begin
if (value < 2)
log2 = value;
else
begin
shifted = value-1;
for (res=0; shifted>0; res=res+1)
shifted = shifted>>1;
log2 = res;
end
end
endfunction

localparam maxSIZE = `max(SIZE_A, SIZE_B);
localparam maxWIDTH = `max(DATA_A, DATA_B);
localparam minWIDTH = `min(DATA_A, DATA_B);

localparam RATIO = maxWIDTH / minWIDTH;
localparam log2RATIO = log2(RATIO);

reg [minWIDTH-1:0] RAM [0:maxSIZE-1];
reg [DATA_A-1:0] readA;
reg [DATA_B-1:0] readB;

always @(posedge clk)
begin
if (b_en) begin
readB <= RAM[b_addr] ;
if (b_wr)
RAM[b_addr] <= b_din;
end
end


always @(posedge clk)
begin : portA
integer i;
reg [log2RATIO-1:0] lsbaddr ;
for (i=0; i< RATIO; i= i+ 1) begin
lsbaddr = i;
if (a_en) begin
readA[(i+1)*minWIDTH -1 -: minWIDTH] <= RAM[{a_addr, lsbaddr}];

if (a_wr)
RAM[{a_addr, lsbaddr}] <= a_din[(i+1)*minWIDTH-1 -: minWIDTH];
end
end
end

assign a_dout = readA;
assign b_dout = readB;

endmodule
      """.stripMargin)
    })

}
class BRAMLikeMem2(id: ElemId, width: Int = 36, addr_width: Int = 10)
    extends BRAMLikeMem(id, width, addr_width) {

    val bramBB = Module(new BRAMBlackBox(width, width, addr_width))
    bramBB.io.a_addr := io.addr_1
    bramBB.io.a_din := io.dataIn_1
    bramBB.io.a_wr := io.write_1
    io.dataOut_1 := bramBB.io.a_dout
    bramBB.io.b_addr := io.addr_2
    bramBB.io.b_din := io.dataIn_2
    bramBB.io.b_wr := io.write_2
    io.dataOut_2 := bramBB.io.b_dout
}
```



#### Error stacktrace:

```
scala.meta.internal.tokenizers.XmlParser$Xml$.UnpStart(XmlParser.scala:48)
	scala.meta.internal.tokenizers.XmlParser$Xml$.Unparsed(XmlParser.scala:47)
	scala.meta.internal.tokenizers.XmlParser$Xml$.XmlContent(XmlParser.scala:43)
	scala.meta.internal.tokenizers.XmlParser.$anonfun$XmlExpr$1(XmlParser.scala:24)
	scala.meta.shaded.internal.fastparse.internal.RepImpls$.rec$4(RepImpls.scala:226)
	scala.meta.shaded.internal.fastparse.internal.RepImpls$.rep$extension(RepImpls.scala:266)
	scala.meta.shaded.internal.fastparse.package$ByNameOps$.rep$extension(package.scala:202)
	scala.meta.internal.tokenizers.XmlParser.XmlExpr(XmlParser.scala:24)
	scala.meta.internal.tokenizers.LegacyScanner.$anonfun$getXml$2(LegacyScanner.scala:932)
	scala.meta.shaded.internal.fastparse.SharedPackageDefs.parseInputRaw(SharedPackageDefs.scala:69)
	scala.meta.shaded.internal.fastparse.SharedPackageDefs.parseInputRaw$(SharedPackageDefs.scala:45)
	scala.meta.shaded.internal.fastparse.package$.parseInputRaw(package.scala:6)
	scala.meta.shaded.internal.fastparse.Parsed$Extra.trace(Parsed.scala:139)
	scala.meta.shaded.internal.fastparse.Parsed$Extra.traced(Parsed.scala:118)
	scala.meta.internal.tokenizers.LegacyScanner.getXml(LegacyScanner.scala:936)
	scala.meta.internal.tokenizers.LegacyScanner.fetchLT$1(LegacyScanner.scala:295)
	scala.meta.internal.tokenizers.LegacyScanner.fetchToken(LegacyScanner.scala:303)
	scala.meta.internal.tokenizers.LegacyScanner.nextToken(LegacyScanner.scala:211)
	scala.meta.internal.tokenizers.LegacyScanner.foreach(LegacyScanner.scala:1011)
	scala.meta.internal.tokenizers.ScalametaTokenizer.uncachedTokenize(ScalametaTokenizer.scala:24)
	scala.meta.internal.tokenizers.ScalametaTokenizer.$anonfun$tokenize$1(ScalametaTokenizer.scala:17)
	scala.collection.concurrent.TrieMap.getOrElseUpdate(TrieMap.scala:962)
	scala.meta.internal.tokenizers.ScalametaTokenizer.tokenize(ScalametaTokenizer.scala:17)
	scala.meta.internal.tokenizers.ScalametaTokenizer$$anon$2.apply(ScalametaTokenizer.scala:332)
	scala.meta.tokenizers.Api$XtensionTokenizeDialectInput.tokenize(Api.scala:25)
	scala.meta.tokenizers.Api$XtensionTokenizeInputLike.tokenize(Api.scala:14)
	scala.meta.internal.pc.completions.KeywordsCompletions$.reverseTokens$lzyINIT1$1(KeywordsCompletions.scala:50)
	scala.meta.internal.pc.completions.KeywordsCompletions$.reverseTokens$1(KeywordsCompletions.scala:54)
	scala.meta.internal.pc.completions.KeywordsCompletions$.contribute(KeywordsCompletions.scala:56)
	scala.meta.internal.pc.completions.Completions.completions(Completions.scala:187)
	scala.meta.internal.pc.completions.CompletionProvider.completions(CompletionProvider.scala:86)
	scala.meta.internal.pc.ScalaPresentationCompiler.complete$$anonfun$1(ScalaPresentationCompiler.scala:136)
```
#### Short summary: 

java.lang.NoClassDefFoundError: sourcecode/Name