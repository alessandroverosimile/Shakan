module Queue(
  input          clock,
  input          reset,
  output         io_enq_ready,
  input          io_enq_valid,
  input  [223:0] io_enq_bits_TDATA,
  input  [27:0]  io_enq_bits_TKEEP,
  input          io_enq_bits_TLAST,
  input          io_deq_ready,
  output         io_deq_valid,
  output [223:0] io_deq_bits_TDATA,
  output [27:0]  io_deq_bits_TKEEP,
  output         io_deq_bits_TLAST
);
`ifdef RANDOMIZE_MEM_INIT
  reg [223:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
`endif // RANDOMIZE_REG_INIT
  reg [223:0] ram_TDATA [0:3]; // @[Decoupled.scala 275:95]
  wire  ram_TDATA_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [1:0] ram_TDATA_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire [223:0] ram_TDATA_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire [223:0] ram_TDATA_MPORT_data; // @[Decoupled.scala 275:95]
  wire [1:0] ram_TDATA_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_TDATA_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_TDATA_MPORT_en; // @[Decoupled.scala 275:95]
  reg [27:0] ram_TKEEP [0:3]; // @[Decoupled.scala 275:95]
  wire  ram_TKEEP_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [1:0] ram_TKEEP_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire [27:0] ram_TKEEP_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire [27:0] ram_TKEEP_MPORT_data; // @[Decoupled.scala 275:95]
  wire [1:0] ram_TKEEP_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_TKEEP_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_TKEEP_MPORT_en; // @[Decoupled.scala 275:95]
  reg  ram_TLAST [0:3]; // @[Decoupled.scala 275:95]
  wire  ram_TLAST_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [1:0] ram_TLAST_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_TLAST_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire  ram_TLAST_MPORT_data; // @[Decoupled.scala 275:95]
  wire [1:0] ram_TLAST_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_TLAST_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_TLAST_MPORT_en; // @[Decoupled.scala 275:95]
  reg [1:0] enq_ptr_value; // @[Counter.scala 61:40]
  reg [1:0] deq_ptr_value; // @[Counter.scala 61:40]
  reg  maybe_full; // @[Decoupled.scala 278:27]
  wire  ptr_match = enq_ptr_value == deq_ptr_value; // @[Decoupled.scala 279:33]
  wire  empty = ptr_match & ~maybe_full; // @[Decoupled.scala 280:25]
  wire  full = ptr_match & maybe_full; // @[Decoupled.scala 281:24]
  wire  do_enq = io_enq_ready & io_enq_valid; // @[Decoupled.scala 52:35]
  wire  do_deq = io_deq_ready & io_deq_valid; // @[Decoupled.scala 52:35]
  wire [1:0] _value_T_1 = enq_ptr_value + 2'h1; // @[Counter.scala 77:24]
  wire [1:0] _value_T_3 = deq_ptr_value + 2'h1; // @[Counter.scala 77:24]
  assign ram_TDATA_io_deq_bits_MPORT_en = 1'h1;
  assign ram_TDATA_io_deq_bits_MPORT_addr = deq_ptr_value;
  assign ram_TDATA_io_deq_bits_MPORT_data = ram_TDATA[ram_TDATA_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  assign ram_TDATA_MPORT_data = io_enq_bits_TDATA;
  assign ram_TDATA_MPORT_addr = enq_ptr_value;
  assign ram_TDATA_MPORT_mask = 1'h1;
  assign ram_TDATA_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_TKEEP_io_deq_bits_MPORT_en = 1'h1;
  assign ram_TKEEP_io_deq_bits_MPORT_addr = deq_ptr_value;
  assign ram_TKEEP_io_deq_bits_MPORT_data = ram_TKEEP[ram_TKEEP_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  assign ram_TKEEP_MPORT_data = io_enq_bits_TKEEP;
  assign ram_TKEEP_MPORT_addr = enq_ptr_value;
  assign ram_TKEEP_MPORT_mask = 1'h1;
  assign ram_TKEEP_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_TLAST_io_deq_bits_MPORT_en = 1'h1;
  assign ram_TLAST_io_deq_bits_MPORT_addr = deq_ptr_value;
  assign ram_TLAST_io_deq_bits_MPORT_data = ram_TLAST[ram_TLAST_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  assign ram_TLAST_MPORT_data = io_enq_bits_TLAST;
  assign ram_TLAST_MPORT_addr = enq_ptr_value;
  assign ram_TLAST_MPORT_mask = 1'h1;
  assign ram_TLAST_MPORT_en = io_enq_ready & io_enq_valid;
  assign io_enq_ready = ~full; // @[Decoupled.scala 305:19]
  assign io_deq_valid = ~empty; // @[Decoupled.scala 304:19]
  assign io_deq_bits_TDATA = ram_TDATA_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_TKEEP = ram_TKEEP_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_TLAST = ram_TLAST_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  always @(posedge clock) begin
    if (ram_TDATA_MPORT_en & ram_TDATA_MPORT_mask) begin
      ram_TDATA[ram_TDATA_MPORT_addr] <= ram_TDATA_MPORT_data; // @[Decoupled.scala 275:95]
    end
    if (ram_TKEEP_MPORT_en & ram_TKEEP_MPORT_mask) begin
      ram_TKEEP[ram_TKEEP_MPORT_addr] <= ram_TKEEP_MPORT_data; // @[Decoupled.scala 275:95]
    end
    if (ram_TLAST_MPORT_en & ram_TLAST_MPORT_mask) begin
      ram_TLAST[ram_TLAST_MPORT_addr] <= ram_TLAST_MPORT_data; // @[Decoupled.scala 275:95]
    end
    if (reset) begin // @[Counter.scala 61:40]
      enq_ptr_value <= 2'h0; // @[Counter.scala 61:40]
    end else if (do_enq) begin // @[Decoupled.scala 288:16]
      enq_ptr_value <= _value_T_1; // @[Counter.scala 77:15]
    end
    if (reset) begin // @[Counter.scala 61:40]
      deq_ptr_value <= 2'h0; // @[Counter.scala 61:40]
    end else if (do_deq) begin // @[Decoupled.scala 292:16]
      deq_ptr_value <= _value_T_3; // @[Counter.scala 77:15]
    end
    if (reset) begin // @[Decoupled.scala 278:27]
      maybe_full <= 1'h0; // @[Decoupled.scala 278:27]
    end else if (do_enq != do_deq) begin // @[Decoupled.scala 295:27]
      maybe_full <= do_enq; // @[Decoupled.scala 296:16]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_MEM_INIT
  _RAND_0 = {7{`RANDOM}};
  for (initvar = 0; initvar < 4; initvar = initvar+1)
    ram_TDATA[initvar] = _RAND_0[223:0];
  _RAND_1 = {1{`RANDOM}};
  for (initvar = 0; initvar < 4; initvar = initvar+1)
    ram_TKEEP[initvar] = _RAND_1[27:0];
  _RAND_2 = {1{`RANDOM}};
  for (initvar = 0; initvar < 4; initvar = initvar+1)
    ram_TLAST[initvar] = _RAND_2[0:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  enq_ptr_value = _RAND_3[1:0];
  _RAND_4 = {1{`RANDOM}};
  deq_ptr_value = _RAND_4[1:0];
  _RAND_5 = {1{`RANDOM}};
  maybe_full = _RAND_5[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module TreePEsWrapper(
  input          clock,
  input          reset,
  output         wrapper_io_sample_in_ready,
  input          wrapper_io_sample_in_valid,
  input  [223:0] wrapper_io_sample_in_bits_TDATA,
  input  [27:0]  wrapper_io_sample_in_bits_TKEEP,
  input          wrapper_io_sample_in_bits_TLAST,
  input          wrapper_io_sample_out_ready,
  output         wrapper_io_sample_out_valid,
  output [223:0] wrapper_io_sample_out_bits_TDATA,
  output [27:0]  wrapper_io_sample_out_bits_TKEEP,
  output         wrapper_io_sample_out_bits_TLAST
);
  wire  queue_clock; // @[TreePEsWrapper.scala 55:23]
  wire  queue_reset; // @[TreePEsWrapper.scala 55:23]
  wire  queue_io_enq_ready; // @[TreePEsWrapper.scala 55:23]
  wire  queue_io_enq_valid; // @[TreePEsWrapper.scala 55:23]
  wire [223:0] queue_io_enq_bits_TDATA; // @[TreePEsWrapper.scala 55:23]
  wire [27:0] queue_io_enq_bits_TKEEP; // @[TreePEsWrapper.scala 55:23]
  wire  queue_io_enq_bits_TLAST; // @[TreePEsWrapper.scala 55:23]
  wire  queue_io_deq_ready; // @[TreePEsWrapper.scala 55:23]
  wire  queue_io_deq_valid; // @[TreePEsWrapper.scala 55:23]
  wire [223:0] queue_io_deq_bits_TDATA; // @[TreePEsWrapper.scala 55:23]
  wire [27:0] queue_io_deq_bits_TKEEP; // @[TreePEsWrapper.scala 55:23]
  wire  queue_io_deq_bits_TLAST; // @[TreePEsWrapper.scala 55:23]
  Queue queue ( // @[TreePEsWrapper.scala 55:23]
    .clock(queue_clock),
    .reset(queue_reset),
    .io_enq_ready(queue_io_enq_ready),
    .io_enq_valid(queue_io_enq_valid),
    .io_enq_bits_TDATA(queue_io_enq_bits_TDATA),
    .io_enq_bits_TKEEP(queue_io_enq_bits_TKEEP),
    .io_enq_bits_TLAST(queue_io_enq_bits_TLAST),
    .io_deq_ready(queue_io_deq_ready),
    .io_deq_valid(queue_io_deq_valid),
    .io_deq_bits_TDATA(queue_io_deq_bits_TDATA),
    .io_deq_bits_TKEEP(queue_io_deq_bits_TKEEP),
    .io_deq_bits_TLAST(queue_io_deq_bits_TLAST)
  );
  assign wrapper_io_sample_in_ready = queue_io_enq_ready; // @[TreePEsWrapper.scala 57:32]
  assign wrapper_io_sample_out_valid = queue_io_deq_valid; // @[TreePEsWrapper.scala 63:33]
  assign wrapper_io_sample_out_bits_TDATA = queue_io_deq_bits_TDATA; // @[TreePEsWrapper.scala 62:32]
  assign wrapper_io_sample_out_bits_TKEEP = queue_io_deq_bits_TKEEP; // @[TreePEsWrapper.scala 62:32]
  assign wrapper_io_sample_out_bits_TLAST = queue_io_deq_bits_TLAST; // @[TreePEsWrapper.scala 62:32]
  assign queue_clock = clock;
  assign queue_reset = reset;
  assign queue_io_enq_valid = wrapper_io_sample_in_valid; // @[TreePEsWrapper.scala 60:24]
  assign queue_io_enq_bits_TDATA = wrapper_io_sample_in_bits_TDATA; // @[TreePEsWrapper.scala 59:23]
  assign queue_io_enq_bits_TKEEP = wrapper_io_sample_in_bits_TKEEP; // @[TreePEsWrapper.scala 59:23]
  assign queue_io_enq_bits_TLAST = wrapper_io_sample_in_bits_TLAST; // @[TreePEsWrapper.scala 59:23]
  assign queue_io_deq_ready = wrapper_io_sample_out_ready; // @[TreePEsWrapper.scala 64:24]
endmodule
