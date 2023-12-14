module BRAMBlackBox #(
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
      