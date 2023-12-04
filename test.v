module ForwardConverter(
  input  [239:0] io_sample_in_TDATA,
  input          io_sample_in_TLAST,
  output         io_sample_in_TREADY,
  input          io_sample_in_TVALID,
  input          io_sample_out_ready,
  output         io_sample_out_valid,
  output [15:0]  io_sample_out_bits_features_0,
  output [15:0]  io_sample_out_bits_features_1,
  output [15:0]  io_sample_out_bits_features_2,
  output [15:0]  io_sample_out_bits_features_3,
  output [9:0]   io_sample_out_bits_offset,
  output         io_sample_out_bits_shift,
  output         io_sample_out_bits_search_for_root,
  output [7:0]   io_sample_out_bits_tree_to_exec,
  output [15:0]  io_sample_out_bits_scores_0,
  output [15:0]  io_sample_out_bits_scores_1,
  output [15:0]  io_sample_out_bits_scores_2,
  output [15:0]  io_sample_out_bits_scores_3,
  output [15:0]  io_sample_out_bits_weights_0,
  output [15:0]  io_sample_out_bits_weights_1,
  output         io_sample_out_bits_last
);
  assign io_sample_in_TREADY = io_sample_out_ready; // @[Converter.scala 13:25]
  assign io_sample_out_valid = io_sample_in_TVALID; // @[Converter.scala 27:25]
  assign io_sample_out_bits_features_0 = io_sample_in_TDATA[15:0]; // @[Converter.scala 15:91]
  assign io_sample_out_bits_features_1 = io_sample_in_TDATA[31:16]; // @[Converter.scala 15:91]
  assign io_sample_out_bits_features_2 = io_sample_in_TDATA[47:32]; // @[Converter.scala 15:91]
  assign io_sample_out_bits_features_3 = io_sample_in_TDATA[63:48]; // @[Converter.scala 15:91]
  assign io_sample_out_bits_offset = io_sample_in_TDATA[73:64]; // @[Converter.scala 17:31]
  assign io_sample_out_bits_shift = io_sample_in_TDATA[80]; // @[Converter.scala 18:30]
  assign io_sample_out_bits_search_for_root = io_sample_in_TDATA[88]; // @[Converter.scala 19:40]
  assign io_sample_out_bits_tree_to_exec = io_sample_in_TDATA[103:96]; // @[Converter.scala 20:58]
  assign io_sample_out_bits_scores_0 = io_sample_in_TDATA[127:112]; // @[Converter.scala 22:115]
  assign io_sample_out_bits_scores_1 = io_sample_in_TDATA[143:128]; // @[Converter.scala 22:115]
  assign io_sample_out_bits_scores_2 = io_sample_in_TDATA[159:144]; // @[Converter.scala 22:115]
  assign io_sample_out_bits_scores_3 = io_sample_in_TDATA[175:160]; // @[Converter.scala 22:115]
  assign io_sample_out_bits_weights_0 = io_sample_in_TDATA[191:176]; // @[Converter.scala 25:142]
  assign io_sample_out_bits_weights_1 = io_sample_in_TDATA[207:192]; // @[Converter.scala 25:142]
  assign io_sample_out_bits_last = io_sample_in_TLAST; // @[Converter.scala 29:29]
endmodule
module Queue(
  input         clock,
  input         reset,
  output        io_enq_ready,
  input         io_enq_valid,
  input  [15:0] io_enq_bits_features_0,
  input  [15:0] io_enq_bits_features_1,
  input  [15:0] io_enq_bits_features_2,
  input  [15:0] io_enq_bits_features_3,
  input  [9:0]  io_enq_bits_offset,
  input         io_enq_bits_shift,
  input         io_enq_bits_search_for_root,
  input  [7:0]  io_enq_bits_tree_to_exec,
  input  [15:0] io_enq_bits_scores_0,
  input  [15:0] io_enq_bits_scores_1,
  input  [15:0] io_enq_bits_scores_2,
  input  [15:0] io_enq_bits_scores_3,
  input  [15:0] io_enq_bits_weights_0,
  input  [15:0] io_enq_bits_weights_1,
  input         io_enq_bits_dest,
  input         io_enq_bits_last,
  input         io_deq_ready,
  output        io_deq_valid,
  output [15:0] io_deq_bits_features_0,
  output [15:0] io_deq_bits_features_1,
  output [15:0] io_deq_bits_features_2,
  output [15:0] io_deq_bits_features_3,
  output [9:0]  io_deq_bits_offset,
  output        io_deq_bits_shift,
  output        io_deq_bits_search_for_root,
  output [7:0]  io_deq_bits_tree_to_exec,
  output [15:0] io_deq_bits_scores_0,
  output [15:0] io_deq_bits_scores_1,
  output [15:0] io_deq_bits_scores_2,
  output [15:0] io_deq_bits_scores_3,
  output [15:0] io_deq_bits_weights_0,
  output [15:0] io_deq_bits_weights_1,
  output        io_deq_bits_dest,
  output        io_deq_bits_last
);
`ifdef RANDOMIZE_GARBAGE_ASSIGN
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_31;
`endif // RANDOMIZE_GARBAGE_ASSIGN
`ifdef RANDOMIZE_MEM_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_30;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_32;
  reg [31:0] _RAND_33;
  reg [31:0] _RAND_34;
`endif // RANDOMIZE_REG_INIT
  reg [15:0] ram_features_0 [0:2]; // @[Decoupled.scala 275:95]
  wire  ram_features_0_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [1:0] ram_features_0_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire [15:0] ram_features_0_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire [15:0] ram_features_0_MPORT_data; // @[Decoupled.scala 275:95]
  wire [1:0] ram_features_0_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_features_0_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_features_0_MPORT_en; // @[Decoupled.scala 275:95]
  reg [15:0] ram_features_1 [0:2]; // @[Decoupled.scala 275:95]
  wire  ram_features_1_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [1:0] ram_features_1_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire [15:0] ram_features_1_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire [15:0] ram_features_1_MPORT_data; // @[Decoupled.scala 275:95]
  wire [1:0] ram_features_1_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_features_1_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_features_1_MPORT_en; // @[Decoupled.scala 275:95]
  reg [15:0] ram_features_2 [0:2]; // @[Decoupled.scala 275:95]
  wire  ram_features_2_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [1:0] ram_features_2_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire [15:0] ram_features_2_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire [15:0] ram_features_2_MPORT_data; // @[Decoupled.scala 275:95]
  wire [1:0] ram_features_2_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_features_2_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_features_2_MPORT_en; // @[Decoupled.scala 275:95]
  reg [15:0] ram_features_3 [0:2]; // @[Decoupled.scala 275:95]
  wire  ram_features_3_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [1:0] ram_features_3_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire [15:0] ram_features_3_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire [15:0] ram_features_3_MPORT_data; // @[Decoupled.scala 275:95]
  wire [1:0] ram_features_3_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_features_3_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_features_3_MPORT_en; // @[Decoupled.scala 275:95]
  reg [9:0] ram_offset [0:2]; // @[Decoupled.scala 275:95]
  wire  ram_offset_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [1:0] ram_offset_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire [9:0] ram_offset_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire [9:0] ram_offset_MPORT_data; // @[Decoupled.scala 275:95]
  wire [1:0] ram_offset_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_offset_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_offset_MPORT_en; // @[Decoupled.scala 275:95]
  reg  ram_shift [0:2]; // @[Decoupled.scala 275:95]
  wire  ram_shift_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [1:0] ram_shift_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_shift_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire  ram_shift_MPORT_data; // @[Decoupled.scala 275:95]
  wire [1:0] ram_shift_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_shift_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_shift_MPORT_en; // @[Decoupled.scala 275:95]
  reg  ram_search_for_root [0:2]; // @[Decoupled.scala 275:95]
  wire  ram_search_for_root_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [1:0] ram_search_for_root_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_search_for_root_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire  ram_search_for_root_MPORT_data; // @[Decoupled.scala 275:95]
  wire [1:0] ram_search_for_root_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_search_for_root_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_search_for_root_MPORT_en; // @[Decoupled.scala 275:95]
  reg [7:0] ram_tree_to_exec [0:2]; // @[Decoupled.scala 275:95]
  wire  ram_tree_to_exec_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [1:0] ram_tree_to_exec_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire [7:0] ram_tree_to_exec_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire [7:0] ram_tree_to_exec_MPORT_data; // @[Decoupled.scala 275:95]
  wire [1:0] ram_tree_to_exec_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_tree_to_exec_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_tree_to_exec_MPORT_en; // @[Decoupled.scala 275:95]
  reg [15:0] ram_scores_0 [0:2]; // @[Decoupled.scala 275:95]
  wire  ram_scores_0_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [1:0] ram_scores_0_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire [15:0] ram_scores_0_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire [15:0] ram_scores_0_MPORT_data; // @[Decoupled.scala 275:95]
  wire [1:0] ram_scores_0_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_scores_0_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_scores_0_MPORT_en; // @[Decoupled.scala 275:95]
  reg [15:0] ram_scores_1 [0:2]; // @[Decoupled.scala 275:95]
  wire  ram_scores_1_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [1:0] ram_scores_1_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire [15:0] ram_scores_1_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire [15:0] ram_scores_1_MPORT_data; // @[Decoupled.scala 275:95]
  wire [1:0] ram_scores_1_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_scores_1_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_scores_1_MPORT_en; // @[Decoupled.scala 275:95]
  reg [15:0] ram_scores_2 [0:2]; // @[Decoupled.scala 275:95]
  wire  ram_scores_2_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [1:0] ram_scores_2_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire [15:0] ram_scores_2_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire [15:0] ram_scores_2_MPORT_data; // @[Decoupled.scala 275:95]
  wire [1:0] ram_scores_2_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_scores_2_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_scores_2_MPORT_en; // @[Decoupled.scala 275:95]
  reg [15:0] ram_scores_3 [0:2]; // @[Decoupled.scala 275:95]
  wire  ram_scores_3_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [1:0] ram_scores_3_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire [15:0] ram_scores_3_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire [15:0] ram_scores_3_MPORT_data; // @[Decoupled.scala 275:95]
  wire [1:0] ram_scores_3_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_scores_3_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_scores_3_MPORT_en; // @[Decoupled.scala 275:95]
  reg [15:0] ram_weights_0 [0:2]; // @[Decoupled.scala 275:95]
  wire  ram_weights_0_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [1:0] ram_weights_0_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire [15:0] ram_weights_0_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire [15:0] ram_weights_0_MPORT_data; // @[Decoupled.scala 275:95]
  wire [1:0] ram_weights_0_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_weights_0_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_weights_0_MPORT_en; // @[Decoupled.scala 275:95]
  reg [15:0] ram_weights_1 [0:2]; // @[Decoupled.scala 275:95]
  wire  ram_weights_1_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [1:0] ram_weights_1_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire [15:0] ram_weights_1_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire [15:0] ram_weights_1_MPORT_data; // @[Decoupled.scala 275:95]
  wire [1:0] ram_weights_1_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_weights_1_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_weights_1_MPORT_en; // @[Decoupled.scala 275:95]
  reg  ram_dest [0:2]; // @[Decoupled.scala 275:95]
  wire  ram_dest_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [1:0] ram_dest_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_dest_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire  ram_dest_MPORT_data; // @[Decoupled.scala 275:95]
  wire [1:0] ram_dest_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_dest_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_dest_MPORT_en; // @[Decoupled.scala 275:95]
  reg  ram_last [0:2]; // @[Decoupled.scala 275:95]
  wire  ram_last_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [1:0] ram_last_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_last_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire  ram_last_MPORT_data; // @[Decoupled.scala 275:95]
  wire [1:0] ram_last_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_last_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_last_MPORT_en; // @[Decoupled.scala 275:95]
  reg [1:0] enq_ptr_value; // @[Counter.scala 61:40]
  reg [1:0] deq_ptr_value; // @[Counter.scala 61:40]
  reg  maybe_full; // @[Decoupled.scala 278:27]
  wire  ptr_match = enq_ptr_value == deq_ptr_value; // @[Decoupled.scala 279:33]
  wire  empty = ptr_match & ~maybe_full; // @[Decoupled.scala 280:25]
  wire  full = ptr_match & maybe_full; // @[Decoupled.scala 281:24]
  wire  do_enq = io_enq_ready & io_enq_valid; // @[Decoupled.scala 52:35]
  wire  do_deq = io_deq_ready & io_deq_valid; // @[Decoupled.scala 52:35]
  wire  wrap = enq_ptr_value == 2'h2; // @[Counter.scala 73:24]
  wire [1:0] _value_T_1 = enq_ptr_value + 2'h1; // @[Counter.scala 77:24]
  wire  wrap_1 = deq_ptr_value == 2'h2; // @[Counter.scala 73:24]
  wire [1:0] _value_T_3 = deq_ptr_value + 2'h1; // @[Counter.scala 77:24]
  assign ram_features_0_io_deq_bits_MPORT_en = 1'h1;
  assign ram_features_0_io_deq_bits_MPORT_addr = deq_ptr_value;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign ram_features_0_io_deq_bits_MPORT_data = ram_features_0[ram_features_0_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `else
  assign ram_features_0_io_deq_bits_MPORT_data = ram_features_0_io_deq_bits_MPORT_addr >= 2'h3 ? _RAND_1[15:0] :
    ram_features_0[ram_features_0_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign ram_features_0_MPORT_data = io_enq_bits_features_0;
  assign ram_features_0_MPORT_addr = enq_ptr_value;
  assign ram_features_0_MPORT_mask = 1'h1;
  assign ram_features_0_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_features_1_io_deq_bits_MPORT_en = 1'h1;
  assign ram_features_1_io_deq_bits_MPORT_addr = deq_ptr_value;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign ram_features_1_io_deq_bits_MPORT_data = ram_features_1[ram_features_1_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `else
  assign ram_features_1_io_deq_bits_MPORT_data = ram_features_1_io_deq_bits_MPORT_addr >= 2'h3 ? _RAND_3[15:0] :
    ram_features_1[ram_features_1_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign ram_features_1_MPORT_data = io_enq_bits_features_1;
  assign ram_features_1_MPORT_addr = enq_ptr_value;
  assign ram_features_1_MPORT_mask = 1'h1;
  assign ram_features_1_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_features_2_io_deq_bits_MPORT_en = 1'h1;
  assign ram_features_2_io_deq_bits_MPORT_addr = deq_ptr_value;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign ram_features_2_io_deq_bits_MPORT_data = ram_features_2[ram_features_2_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `else
  assign ram_features_2_io_deq_bits_MPORT_data = ram_features_2_io_deq_bits_MPORT_addr >= 2'h3 ? _RAND_5[15:0] :
    ram_features_2[ram_features_2_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign ram_features_2_MPORT_data = io_enq_bits_features_2;
  assign ram_features_2_MPORT_addr = enq_ptr_value;
  assign ram_features_2_MPORT_mask = 1'h1;
  assign ram_features_2_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_features_3_io_deq_bits_MPORT_en = 1'h1;
  assign ram_features_3_io_deq_bits_MPORT_addr = deq_ptr_value;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign ram_features_3_io_deq_bits_MPORT_data = ram_features_3[ram_features_3_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `else
  assign ram_features_3_io_deq_bits_MPORT_data = ram_features_3_io_deq_bits_MPORT_addr >= 2'h3 ? _RAND_7[15:0] :
    ram_features_3[ram_features_3_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign ram_features_3_MPORT_data = io_enq_bits_features_3;
  assign ram_features_3_MPORT_addr = enq_ptr_value;
  assign ram_features_3_MPORT_mask = 1'h1;
  assign ram_features_3_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_offset_io_deq_bits_MPORT_en = 1'h1;
  assign ram_offset_io_deq_bits_MPORT_addr = deq_ptr_value;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign ram_offset_io_deq_bits_MPORT_data = ram_offset[ram_offset_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `else
  assign ram_offset_io_deq_bits_MPORT_data = ram_offset_io_deq_bits_MPORT_addr >= 2'h3 ? _RAND_9[9:0] :
    ram_offset[ram_offset_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign ram_offset_MPORT_data = io_enq_bits_offset;
  assign ram_offset_MPORT_addr = enq_ptr_value;
  assign ram_offset_MPORT_mask = 1'h1;
  assign ram_offset_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_shift_io_deq_bits_MPORT_en = 1'h1;
  assign ram_shift_io_deq_bits_MPORT_addr = deq_ptr_value;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign ram_shift_io_deq_bits_MPORT_data = ram_shift[ram_shift_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `else
  assign ram_shift_io_deq_bits_MPORT_data = ram_shift_io_deq_bits_MPORT_addr >= 2'h3 ? _RAND_11[0:0] :
    ram_shift[ram_shift_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign ram_shift_MPORT_data = io_enq_bits_shift;
  assign ram_shift_MPORT_addr = enq_ptr_value;
  assign ram_shift_MPORT_mask = 1'h1;
  assign ram_shift_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_search_for_root_io_deq_bits_MPORT_en = 1'h1;
  assign ram_search_for_root_io_deq_bits_MPORT_addr = deq_ptr_value;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign ram_search_for_root_io_deq_bits_MPORT_data = ram_search_for_root[ram_search_for_root_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `else
  assign ram_search_for_root_io_deq_bits_MPORT_data = ram_search_for_root_io_deq_bits_MPORT_addr >= 2'h3 ? _RAND_13[0:0]
     : ram_search_for_root[ram_search_for_root_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign ram_search_for_root_MPORT_data = io_enq_bits_search_for_root;
  assign ram_search_for_root_MPORT_addr = enq_ptr_value;
  assign ram_search_for_root_MPORT_mask = 1'h1;
  assign ram_search_for_root_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_tree_to_exec_io_deq_bits_MPORT_en = 1'h1;
  assign ram_tree_to_exec_io_deq_bits_MPORT_addr = deq_ptr_value;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign ram_tree_to_exec_io_deq_bits_MPORT_data = ram_tree_to_exec[ram_tree_to_exec_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `else
  assign ram_tree_to_exec_io_deq_bits_MPORT_data = ram_tree_to_exec_io_deq_bits_MPORT_addr >= 2'h3 ? _RAND_15[7:0] :
    ram_tree_to_exec[ram_tree_to_exec_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign ram_tree_to_exec_MPORT_data = io_enq_bits_tree_to_exec;
  assign ram_tree_to_exec_MPORT_addr = enq_ptr_value;
  assign ram_tree_to_exec_MPORT_mask = 1'h1;
  assign ram_tree_to_exec_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_scores_0_io_deq_bits_MPORT_en = 1'h1;
  assign ram_scores_0_io_deq_bits_MPORT_addr = deq_ptr_value;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign ram_scores_0_io_deq_bits_MPORT_data = ram_scores_0[ram_scores_0_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `else
  assign ram_scores_0_io_deq_bits_MPORT_data = ram_scores_0_io_deq_bits_MPORT_addr >= 2'h3 ? _RAND_17[15:0] :
    ram_scores_0[ram_scores_0_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign ram_scores_0_MPORT_data = io_enq_bits_scores_0;
  assign ram_scores_0_MPORT_addr = enq_ptr_value;
  assign ram_scores_0_MPORT_mask = 1'h1;
  assign ram_scores_0_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_scores_1_io_deq_bits_MPORT_en = 1'h1;
  assign ram_scores_1_io_deq_bits_MPORT_addr = deq_ptr_value;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign ram_scores_1_io_deq_bits_MPORT_data = ram_scores_1[ram_scores_1_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `else
  assign ram_scores_1_io_deq_bits_MPORT_data = ram_scores_1_io_deq_bits_MPORT_addr >= 2'h3 ? _RAND_19[15:0] :
    ram_scores_1[ram_scores_1_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign ram_scores_1_MPORT_data = io_enq_bits_scores_1;
  assign ram_scores_1_MPORT_addr = enq_ptr_value;
  assign ram_scores_1_MPORT_mask = 1'h1;
  assign ram_scores_1_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_scores_2_io_deq_bits_MPORT_en = 1'h1;
  assign ram_scores_2_io_deq_bits_MPORT_addr = deq_ptr_value;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign ram_scores_2_io_deq_bits_MPORT_data = ram_scores_2[ram_scores_2_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `else
  assign ram_scores_2_io_deq_bits_MPORT_data = ram_scores_2_io_deq_bits_MPORT_addr >= 2'h3 ? _RAND_21[15:0] :
    ram_scores_2[ram_scores_2_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign ram_scores_2_MPORT_data = io_enq_bits_scores_2;
  assign ram_scores_2_MPORT_addr = enq_ptr_value;
  assign ram_scores_2_MPORT_mask = 1'h1;
  assign ram_scores_2_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_scores_3_io_deq_bits_MPORT_en = 1'h1;
  assign ram_scores_3_io_deq_bits_MPORT_addr = deq_ptr_value;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign ram_scores_3_io_deq_bits_MPORT_data = ram_scores_3[ram_scores_3_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `else
  assign ram_scores_3_io_deq_bits_MPORT_data = ram_scores_3_io_deq_bits_MPORT_addr >= 2'h3 ? _RAND_23[15:0] :
    ram_scores_3[ram_scores_3_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign ram_scores_3_MPORT_data = io_enq_bits_scores_3;
  assign ram_scores_3_MPORT_addr = enq_ptr_value;
  assign ram_scores_3_MPORT_mask = 1'h1;
  assign ram_scores_3_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_weights_0_io_deq_bits_MPORT_en = 1'h1;
  assign ram_weights_0_io_deq_bits_MPORT_addr = deq_ptr_value;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign ram_weights_0_io_deq_bits_MPORT_data = ram_weights_0[ram_weights_0_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `else
  assign ram_weights_0_io_deq_bits_MPORT_data = ram_weights_0_io_deq_bits_MPORT_addr >= 2'h3 ? _RAND_25[15:0] :
    ram_weights_0[ram_weights_0_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign ram_weights_0_MPORT_data = io_enq_bits_weights_0;
  assign ram_weights_0_MPORT_addr = enq_ptr_value;
  assign ram_weights_0_MPORT_mask = 1'h1;
  assign ram_weights_0_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_weights_1_io_deq_bits_MPORT_en = 1'h1;
  assign ram_weights_1_io_deq_bits_MPORT_addr = deq_ptr_value;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign ram_weights_1_io_deq_bits_MPORT_data = ram_weights_1[ram_weights_1_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `else
  assign ram_weights_1_io_deq_bits_MPORT_data = ram_weights_1_io_deq_bits_MPORT_addr >= 2'h3 ? _RAND_27[15:0] :
    ram_weights_1[ram_weights_1_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign ram_weights_1_MPORT_data = io_enq_bits_weights_1;
  assign ram_weights_1_MPORT_addr = enq_ptr_value;
  assign ram_weights_1_MPORT_mask = 1'h1;
  assign ram_weights_1_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_dest_io_deq_bits_MPORT_en = 1'h1;
  assign ram_dest_io_deq_bits_MPORT_addr = deq_ptr_value;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign ram_dest_io_deq_bits_MPORT_data = ram_dest[ram_dest_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `else
  assign ram_dest_io_deq_bits_MPORT_data = ram_dest_io_deq_bits_MPORT_addr >= 2'h3 ? _RAND_29[0:0] :
    ram_dest[ram_dest_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign ram_dest_MPORT_data = io_enq_bits_dest;
  assign ram_dest_MPORT_addr = enq_ptr_value;
  assign ram_dest_MPORT_mask = 1'h1;
  assign ram_dest_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_last_io_deq_bits_MPORT_en = 1'h1;
  assign ram_last_io_deq_bits_MPORT_addr = deq_ptr_value;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign ram_last_io_deq_bits_MPORT_data = ram_last[ram_last_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `else
  assign ram_last_io_deq_bits_MPORT_data = ram_last_io_deq_bits_MPORT_addr >= 2'h3 ? _RAND_31[0:0] :
    ram_last[ram_last_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign ram_last_MPORT_data = io_enq_bits_last;
  assign ram_last_MPORT_addr = enq_ptr_value;
  assign ram_last_MPORT_mask = 1'h1;
  assign ram_last_MPORT_en = io_enq_ready & io_enq_valid;
  assign io_enq_ready = ~full; // @[Decoupled.scala 305:19]
  assign io_deq_valid = ~empty; // @[Decoupled.scala 304:19]
  assign io_deq_bits_features_0 = ram_features_0_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_features_1 = ram_features_1_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_features_2 = ram_features_2_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_features_3 = ram_features_3_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_offset = ram_offset_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_shift = ram_shift_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_search_for_root = ram_search_for_root_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_tree_to_exec = ram_tree_to_exec_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_scores_0 = ram_scores_0_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_scores_1 = ram_scores_1_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_scores_2 = ram_scores_2_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_scores_3 = ram_scores_3_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_weights_0 = ram_weights_0_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_weights_1 = ram_weights_1_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_dest = ram_dest_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_last = ram_last_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  always @(posedge clock) begin
    if (ram_features_0_MPORT_en & ram_features_0_MPORT_mask) begin
      ram_features_0[ram_features_0_MPORT_addr] <= ram_features_0_MPORT_data; // @[Decoupled.scala 275:95]
    end
    if (ram_features_1_MPORT_en & ram_features_1_MPORT_mask) begin
      ram_features_1[ram_features_1_MPORT_addr] <= ram_features_1_MPORT_data; // @[Decoupled.scala 275:95]
    end
    if (ram_features_2_MPORT_en & ram_features_2_MPORT_mask) begin
      ram_features_2[ram_features_2_MPORT_addr] <= ram_features_2_MPORT_data; // @[Decoupled.scala 275:95]
    end
    if (ram_features_3_MPORT_en & ram_features_3_MPORT_mask) begin
      ram_features_3[ram_features_3_MPORT_addr] <= ram_features_3_MPORT_data; // @[Decoupled.scala 275:95]
    end
    if (ram_offset_MPORT_en & ram_offset_MPORT_mask) begin
      ram_offset[ram_offset_MPORT_addr] <= ram_offset_MPORT_data; // @[Decoupled.scala 275:95]
    end
    if (ram_shift_MPORT_en & ram_shift_MPORT_mask) begin
      ram_shift[ram_shift_MPORT_addr] <= ram_shift_MPORT_data; // @[Decoupled.scala 275:95]
    end
    if (ram_search_for_root_MPORT_en & ram_search_for_root_MPORT_mask) begin
      ram_search_for_root[ram_search_for_root_MPORT_addr] <= ram_search_for_root_MPORT_data; // @[Decoupled.scala 275:95]
    end
    if (ram_tree_to_exec_MPORT_en & ram_tree_to_exec_MPORT_mask) begin
      ram_tree_to_exec[ram_tree_to_exec_MPORT_addr] <= ram_tree_to_exec_MPORT_data; // @[Decoupled.scala 275:95]
    end
    if (ram_scores_0_MPORT_en & ram_scores_0_MPORT_mask) begin
      ram_scores_0[ram_scores_0_MPORT_addr] <= ram_scores_0_MPORT_data; // @[Decoupled.scala 275:95]
    end
    if (ram_scores_1_MPORT_en & ram_scores_1_MPORT_mask) begin
      ram_scores_1[ram_scores_1_MPORT_addr] <= ram_scores_1_MPORT_data; // @[Decoupled.scala 275:95]
    end
    if (ram_scores_2_MPORT_en & ram_scores_2_MPORT_mask) begin
      ram_scores_2[ram_scores_2_MPORT_addr] <= ram_scores_2_MPORT_data; // @[Decoupled.scala 275:95]
    end
    if (ram_scores_3_MPORT_en & ram_scores_3_MPORT_mask) begin
      ram_scores_3[ram_scores_3_MPORT_addr] <= ram_scores_3_MPORT_data; // @[Decoupled.scala 275:95]
    end
    if (ram_weights_0_MPORT_en & ram_weights_0_MPORT_mask) begin
      ram_weights_0[ram_weights_0_MPORT_addr] <= ram_weights_0_MPORT_data; // @[Decoupled.scala 275:95]
    end
    if (ram_weights_1_MPORT_en & ram_weights_1_MPORT_mask) begin
      ram_weights_1[ram_weights_1_MPORT_addr] <= ram_weights_1_MPORT_data; // @[Decoupled.scala 275:95]
    end
    if (ram_dest_MPORT_en & ram_dest_MPORT_mask) begin
      ram_dest[ram_dest_MPORT_addr] <= ram_dest_MPORT_data; // @[Decoupled.scala 275:95]
    end
    if (ram_last_MPORT_en & ram_last_MPORT_mask) begin
      ram_last[ram_last_MPORT_addr] <= ram_last_MPORT_data; // @[Decoupled.scala 275:95]
    end
    if (reset) begin // @[Counter.scala 61:40]
      enq_ptr_value <= 2'h0; // @[Counter.scala 61:40]
    end else if (do_enq) begin // @[Decoupled.scala 288:16]
      if (wrap) begin // @[Counter.scala 87:20]
        enq_ptr_value <= 2'h0; // @[Counter.scala 87:28]
      end else begin
        enq_ptr_value <= _value_T_1; // @[Counter.scala 77:15]
      end
    end
    if (reset) begin // @[Counter.scala 61:40]
      deq_ptr_value <= 2'h0; // @[Counter.scala 61:40]
    end else if (do_deq) begin // @[Decoupled.scala 292:16]
      if (wrap_1) begin // @[Counter.scala 87:20]
        deq_ptr_value <= 2'h0; // @[Counter.scala 87:28]
      end else begin
        deq_ptr_value <= _value_T_3; // @[Counter.scala 77:15]
      end
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
`ifdef RANDOMIZE_GARBAGE_ASSIGN
  _RAND_1 = {1{`RANDOM}};
  _RAND_3 = {1{`RANDOM}};
  _RAND_5 = {1{`RANDOM}};
  _RAND_7 = {1{`RANDOM}};
  _RAND_9 = {1{`RANDOM}};
  _RAND_11 = {1{`RANDOM}};
  _RAND_13 = {1{`RANDOM}};
  _RAND_15 = {1{`RANDOM}};
  _RAND_17 = {1{`RANDOM}};
  _RAND_19 = {1{`RANDOM}};
  _RAND_21 = {1{`RANDOM}};
  _RAND_23 = {1{`RANDOM}};
  _RAND_25 = {1{`RANDOM}};
  _RAND_27 = {1{`RANDOM}};
  _RAND_29 = {1{`RANDOM}};
  _RAND_31 = {1{`RANDOM}};
`endif // RANDOMIZE_GARBAGE_ASSIGN
`ifdef RANDOMIZE_MEM_INIT
  _RAND_0 = {1{`RANDOM}};
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    ram_features_0[initvar] = _RAND_0[15:0];
  _RAND_2 = {1{`RANDOM}};
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    ram_features_1[initvar] = _RAND_2[15:0];
  _RAND_4 = {1{`RANDOM}};
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    ram_features_2[initvar] = _RAND_4[15:0];
  _RAND_6 = {1{`RANDOM}};
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    ram_features_3[initvar] = _RAND_6[15:0];
  _RAND_8 = {1{`RANDOM}};
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    ram_offset[initvar] = _RAND_8[9:0];
  _RAND_10 = {1{`RANDOM}};
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    ram_shift[initvar] = _RAND_10[0:0];
  _RAND_12 = {1{`RANDOM}};
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    ram_search_for_root[initvar] = _RAND_12[0:0];
  _RAND_14 = {1{`RANDOM}};
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    ram_tree_to_exec[initvar] = _RAND_14[7:0];
  _RAND_16 = {1{`RANDOM}};
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    ram_scores_0[initvar] = _RAND_16[15:0];
  _RAND_18 = {1{`RANDOM}};
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    ram_scores_1[initvar] = _RAND_18[15:0];
  _RAND_20 = {1{`RANDOM}};
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    ram_scores_2[initvar] = _RAND_20[15:0];
  _RAND_22 = {1{`RANDOM}};
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    ram_scores_3[initvar] = _RAND_22[15:0];
  _RAND_24 = {1{`RANDOM}};
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    ram_weights_0[initvar] = _RAND_24[15:0];
  _RAND_26 = {1{`RANDOM}};
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    ram_weights_1[initvar] = _RAND_26[15:0];
  _RAND_28 = {1{`RANDOM}};
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    ram_dest[initvar] = _RAND_28[0:0];
  _RAND_30 = {1{`RANDOM}};
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    ram_last[initvar] = _RAND_30[0:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_32 = {1{`RANDOM}};
  enq_ptr_value = _RAND_32[1:0];
  _RAND_33 = {1{`RANDOM}};
  deq_ptr_value = _RAND_33[1:0];
  _RAND_34 = {1{`RANDOM}};
  maybe_full = _RAND_34[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module DispatcherPE(
  input         clock,
  input         reset,
  output        io_sample_in_ready,
  input         io_sample_in_valid,
  input  [15:0] io_sample_in_bits_features_0,
  input  [15:0] io_sample_in_bits_features_1,
  input  [15:0] io_sample_in_bits_features_2,
  input  [15:0] io_sample_in_bits_features_3,
  input  [9:0]  io_sample_in_bits_offset,
  input         io_sample_in_bits_shift,
  input         io_sample_in_bits_search_for_root,
  input  [7:0]  io_sample_in_bits_tree_to_exec,
  input  [15:0] io_sample_in_bits_scores_0,
  input  [15:0] io_sample_in_bits_scores_1,
  input  [15:0] io_sample_in_bits_scores_2,
  input  [15:0] io_sample_in_bits_scores_3,
  input  [15:0] io_sample_in_bits_weights_0,
  input  [15:0] io_sample_in_bits_weights_1,
  input         io_sample_in_bits_last,
  input         io_samples_out_0_ready,
  output        io_samples_out_0_valid,
  output [15:0] io_samples_out_0_bits_features_0,
  output [15:0] io_samples_out_0_bits_features_1,
  output [15:0] io_samples_out_0_bits_features_2,
  output [15:0] io_samples_out_0_bits_features_3,
  output [9:0]  io_samples_out_0_bits_offset,
  output        io_samples_out_0_bits_shift,
  output        io_samples_out_0_bits_search_for_root,
  output [7:0]  io_samples_out_0_bits_tree_to_exec,
  output [15:0] io_samples_out_0_bits_scores_0,
  output [15:0] io_samples_out_0_bits_scores_1,
  output [15:0] io_samples_out_0_bits_scores_2,
  output [15:0] io_samples_out_0_bits_scores_3,
  output [15:0] io_samples_out_0_bits_weights_0,
  output [15:0] io_samples_out_0_bits_weights_1,
  output        io_samples_out_0_bits_last,
  output        io_samples_out_1_valid,
  output [15:0] io_samples_out_1_bits_features_0,
  output [15:0] io_samples_out_1_bits_features_1,
  output [15:0] io_samples_out_1_bits_features_2,
  output [15:0] io_samples_out_1_bits_features_3,
  output [9:0]  io_samples_out_1_bits_offset,
  output        io_samples_out_1_bits_shift,
  output        io_samples_out_1_bits_search_for_root,
  output [7:0]  io_samples_out_1_bits_tree_to_exec,
  output [15:0] io_samples_out_1_bits_scores_0,
  output [15:0] io_samples_out_1_bits_scores_1,
  output [15:0] io_samples_out_1_bits_scores_2,
  output [15:0] io_samples_out_1_bits_scores_3,
  output [15:0] io_samples_out_1_bits_weights_0,
  output [15:0] io_samples_out_1_bits_weights_1,
  output        io_samples_out_1_bits_last
);
  wire  queue_clock; // @[Decoupled.scala 377:21]
  wire  queue_reset; // @[Decoupled.scala 377:21]
  wire  queue_io_enq_ready; // @[Decoupled.scala 377:21]
  wire  queue_io_enq_valid; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_features_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_features_1; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_features_2; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_features_3; // @[Decoupled.scala 377:21]
  wire [9:0] queue_io_enq_bits_offset; // @[Decoupled.scala 377:21]
  wire  queue_io_enq_bits_shift; // @[Decoupled.scala 377:21]
  wire  queue_io_enq_bits_search_for_root; // @[Decoupled.scala 377:21]
  wire [7:0] queue_io_enq_bits_tree_to_exec; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_scores_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_scores_1; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_scores_2; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_scores_3; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_weights_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_weights_1; // @[Decoupled.scala 377:21]
  wire  queue_io_enq_bits_dest; // @[Decoupled.scala 377:21]
  wire  queue_io_enq_bits_last; // @[Decoupled.scala 377:21]
  wire  queue_io_deq_ready; // @[Decoupled.scala 377:21]
  wire  queue_io_deq_valid; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_features_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_features_1; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_features_2; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_features_3; // @[Decoupled.scala 377:21]
  wire [9:0] queue_io_deq_bits_offset; // @[Decoupled.scala 377:21]
  wire  queue_io_deq_bits_shift; // @[Decoupled.scala 377:21]
  wire  queue_io_deq_bits_search_for_root; // @[Decoupled.scala 377:21]
  wire [7:0] queue_io_deq_bits_tree_to_exec; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_scores_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_scores_1; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_scores_2; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_scores_3; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_weights_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_weights_1; // @[Decoupled.scala 377:21]
  wire  queue_io_deq_bits_dest; // @[Decoupled.scala 377:21]
  wire  queue_io_deq_bits_last; // @[Decoupled.scala 377:21]
  Queue queue ( // @[Decoupled.scala 377:21]
    .clock(queue_clock),
    .reset(queue_reset),
    .io_enq_ready(queue_io_enq_ready),
    .io_enq_valid(queue_io_enq_valid),
    .io_enq_bits_features_0(queue_io_enq_bits_features_0),
    .io_enq_bits_features_1(queue_io_enq_bits_features_1),
    .io_enq_bits_features_2(queue_io_enq_bits_features_2),
    .io_enq_bits_features_3(queue_io_enq_bits_features_3),
    .io_enq_bits_offset(queue_io_enq_bits_offset),
    .io_enq_bits_shift(queue_io_enq_bits_shift),
    .io_enq_bits_search_for_root(queue_io_enq_bits_search_for_root),
    .io_enq_bits_tree_to_exec(queue_io_enq_bits_tree_to_exec),
    .io_enq_bits_scores_0(queue_io_enq_bits_scores_0),
    .io_enq_bits_scores_1(queue_io_enq_bits_scores_1),
    .io_enq_bits_scores_2(queue_io_enq_bits_scores_2),
    .io_enq_bits_scores_3(queue_io_enq_bits_scores_3),
    .io_enq_bits_weights_0(queue_io_enq_bits_weights_0),
    .io_enq_bits_weights_1(queue_io_enq_bits_weights_1),
    .io_enq_bits_dest(queue_io_enq_bits_dest),
    .io_enq_bits_last(queue_io_enq_bits_last),
    .io_deq_ready(queue_io_deq_ready),
    .io_deq_valid(queue_io_deq_valid),
    .io_deq_bits_features_0(queue_io_deq_bits_features_0),
    .io_deq_bits_features_1(queue_io_deq_bits_features_1),
    .io_deq_bits_features_2(queue_io_deq_bits_features_2),
    .io_deq_bits_features_3(queue_io_deq_bits_features_3),
    .io_deq_bits_offset(queue_io_deq_bits_offset),
    .io_deq_bits_shift(queue_io_deq_bits_shift),
    .io_deq_bits_search_for_root(queue_io_deq_bits_search_for_root),
    .io_deq_bits_tree_to_exec(queue_io_deq_bits_tree_to_exec),
    .io_deq_bits_scores_0(queue_io_deq_bits_scores_0),
    .io_deq_bits_scores_1(queue_io_deq_bits_scores_1),
    .io_deq_bits_scores_2(queue_io_deq_bits_scores_2),
    .io_deq_bits_scores_3(queue_io_deq_bits_scores_3),
    .io_deq_bits_weights_0(queue_io_deq_bits_weights_0),
    .io_deq_bits_weights_1(queue_io_deq_bits_weights_1),
    .io_deq_bits_dest(queue_io_deq_bits_dest),
    .io_deq_bits_last(queue_io_deq_bits_last)
  );
  assign io_sample_in_ready = queue_io_enq_ready; // @[Decoupled.scala 381:17]
  assign io_samples_out_0_valid = queue_io_deq_valid; // @[DispatcherPE.scala 17:33]
  assign io_samples_out_0_bits_features_0 = queue_io_deq_bits_features_0; // @[DispatcherPE.scala 16:32]
  assign io_samples_out_0_bits_features_1 = queue_io_deq_bits_features_1; // @[DispatcherPE.scala 16:32]
  assign io_samples_out_0_bits_features_2 = queue_io_deq_bits_features_2; // @[DispatcherPE.scala 16:32]
  assign io_samples_out_0_bits_features_3 = queue_io_deq_bits_features_3; // @[DispatcherPE.scala 16:32]
  assign io_samples_out_0_bits_offset = queue_io_deq_bits_offset; // @[DispatcherPE.scala 16:32]
  assign io_samples_out_0_bits_shift = queue_io_deq_bits_shift; // @[DispatcherPE.scala 16:32]
  assign io_samples_out_0_bits_search_for_root = queue_io_deq_bits_search_for_root; // @[DispatcherPE.scala 16:32]
  assign io_samples_out_0_bits_tree_to_exec = queue_io_deq_bits_tree_to_exec; // @[DispatcherPE.scala 16:32]
  assign io_samples_out_0_bits_scores_0 = queue_io_deq_bits_scores_0; // @[DispatcherPE.scala 16:32]
  assign io_samples_out_0_bits_scores_1 = queue_io_deq_bits_scores_1; // @[DispatcherPE.scala 16:32]
  assign io_samples_out_0_bits_scores_2 = queue_io_deq_bits_scores_2; // @[DispatcherPE.scala 16:32]
  assign io_samples_out_0_bits_scores_3 = queue_io_deq_bits_scores_3; // @[DispatcherPE.scala 16:32]
  assign io_samples_out_0_bits_weights_0 = queue_io_deq_bits_weights_0; // @[DispatcherPE.scala 16:32]
  assign io_samples_out_0_bits_weights_1 = queue_io_deq_bits_weights_1; // @[DispatcherPE.scala 16:32]
  assign io_samples_out_0_bits_last = queue_io_deq_bits_last; // @[DispatcherPE.scala 16:32]
  assign io_samples_out_1_valid = queue_io_deq_valid; // @[DispatcherPE.scala 17:33]
  assign io_samples_out_1_bits_features_0 = queue_io_deq_bits_features_0; // @[DispatcherPE.scala 16:32]
  assign io_samples_out_1_bits_features_1 = queue_io_deq_bits_features_1; // @[DispatcherPE.scala 16:32]
  assign io_samples_out_1_bits_features_2 = queue_io_deq_bits_features_2; // @[DispatcherPE.scala 16:32]
  assign io_samples_out_1_bits_features_3 = queue_io_deq_bits_features_3; // @[DispatcherPE.scala 16:32]
  assign io_samples_out_1_bits_offset = queue_io_deq_bits_offset; // @[DispatcherPE.scala 16:32]
  assign io_samples_out_1_bits_shift = queue_io_deq_bits_shift; // @[DispatcherPE.scala 16:32]
  assign io_samples_out_1_bits_search_for_root = queue_io_deq_bits_search_for_root; // @[DispatcherPE.scala 16:32]
  assign io_samples_out_1_bits_tree_to_exec = queue_io_deq_bits_tree_to_exec; // @[DispatcherPE.scala 16:32]
  assign io_samples_out_1_bits_scores_0 = queue_io_deq_bits_scores_0; // @[DispatcherPE.scala 16:32]
  assign io_samples_out_1_bits_scores_1 = queue_io_deq_bits_scores_1; // @[DispatcherPE.scala 16:32]
  assign io_samples_out_1_bits_scores_2 = queue_io_deq_bits_scores_2; // @[DispatcherPE.scala 16:32]
  assign io_samples_out_1_bits_scores_3 = queue_io_deq_bits_scores_3; // @[DispatcherPE.scala 16:32]
  assign io_samples_out_1_bits_weights_0 = queue_io_deq_bits_weights_0; // @[DispatcherPE.scala 16:32]
  assign io_samples_out_1_bits_weights_1 = queue_io_deq_bits_weights_1; // @[DispatcherPE.scala 16:32]
  assign io_samples_out_1_bits_last = queue_io_deq_bits_last; // @[DispatcherPE.scala 16:32]
  assign queue_clock = clock;
  assign queue_reset = reset;
  assign queue_io_enq_valid = io_sample_in_valid; // @[Decoupled.scala 379:22]
  assign queue_io_enq_bits_features_0 = io_sample_in_bits_features_0; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_features_1 = io_sample_in_bits_features_1; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_features_2 = io_sample_in_bits_features_2; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_features_3 = io_sample_in_bits_features_3; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_offset = io_sample_in_bits_offset; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_shift = io_sample_in_bits_shift; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_search_for_root = io_sample_in_bits_search_for_root; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_tree_to_exec = io_sample_in_bits_tree_to_exec; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_scores_0 = io_sample_in_bits_scores_0; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_scores_1 = io_sample_in_bits_scores_1; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_scores_2 = io_sample_in_bits_scores_2; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_scores_3 = io_sample_in_bits_scores_3; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_weights_0 = io_sample_in_bits_weights_0; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_weights_1 = io_sample_in_bits_weights_1; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_dest = 1'h0; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_last = io_sample_in_bits_last; // @[Decoupled.scala 380:21]
  assign queue_io_deq_ready = io_samples_out_0_ready; // @[DispatcherPE.scala 20:17]
endmodule
module Queue_1(
  input         clock,
  input         reset,
  output        io_enq_ready,
  input         io_enq_valid,
  input  [15:0] io_enq_bits_features_0,
  input  [15:0] io_enq_bits_features_1,
  input  [15:0] io_enq_bits_features_2,
  input  [15:0] io_enq_bits_features_3,
  input  [9:0]  io_enq_bits_offset,
  input         io_enq_bits_shift,
  input         io_enq_bits_search_for_root,
  input  [7:0]  io_enq_bits_tree_to_exec,
  input  [15:0] io_enq_bits_scores_0,
  input  [15:0] io_enq_bits_scores_1,
  input  [15:0] io_enq_bits_scores_2,
  input  [15:0] io_enq_bits_scores_3,
  input  [15:0] io_enq_bits_weights_0,
  input  [15:0] io_enq_bits_weights_1,
  input         io_enq_bits_last,
  input         io_deq_ready,
  output        io_deq_valid,
  output [15:0] io_deq_bits_features_0,
  output [15:0] io_deq_bits_features_1,
  output [15:0] io_deq_bits_features_2,
  output [15:0] io_deq_bits_features_3,
  output [9:0]  io_deq_bits_offset,
  output        io_deq_bits_shift,
  output        io_deq_bits_search_for_root,
  output [7:0]  io_deq_bits_tree_to_exec,
  output [15:0] io_deq_bits_scores_0,
  output [15:0] io_deq_bits_scores_1,
  output [15:0] io_deq_bits_scores_2,
  output [15:0] io_deq_bits_scores_3,
  output [15:0] io_deq_bits_weights_0,
  output [15:0] io_deq_bits_weights_1,
  output        io_deq_bits_last
);
`ifdef RANDOMIZE_MEM_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
`endif // RANDOMIZE_REG_INIT
  reg [15:0] ram_features_0 [0:127]; // @[Decoupled.scala 275:95]
  wire  ram_features_0_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [6:0] ram_features_0_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire [15:0] ram_features_0_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire [15:0] ram_features_0_MPORT_data; // @[Decoupled.scala 275:95]
  wire [6:0] ram_features_0_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_features_0_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_features_0_MPORT_en; // @[Decoupled.scala 275:95]
  reg [15:0] ram_features_1 [0:127]; // @[Decoupled.scala 275:95]
  wire  ram_features_1_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [6:0] ram_features_1_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire [15:0] ram_features_1_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire [15:0] ram_features_1_MPORT_data; // @[Decoupled.scala 275:95]
  wire [6:0] ram_features_1_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_features_1_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_features_1_MPORT_en; // @[Decoupled.scala 275:95]
  reg [15:0] ram_features_2 [0:127]; // @[Decoupled.scala 275:95]
  wire  ram_features_2_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [6:0] ram_features_2_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire [15:0] ram_features_2_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire [15:0] ram_features_2_MPORT_data; // @[Decoupled.scala 275:95]
  wire [6:0] ram_features_2_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_features_2_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_features_2_MPORT_en; // @[Decoupled.scala 275:95]
  reg [15:0] ram_features_3 [0:127]; // @[Decoupled.scala 275:95]
  wire  ram_features_3_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [6:0] ram_features_3_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire [15:0] ram_features_3_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire [15:0] ram_features_3_MPORT_data; // @[Decoupled.scala 275:95]
  wire [6:0] ram_features_3_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_features_3_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_features_3_MPORT_en; // @[Decoupled.scala 275:95]
  reg [9:0] ram_offset [0:127]; // @[Decoupled.scala 275:95]
  wire  ram_offset_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [6:0] ram_offset_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire [9:0] ram_offset_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire [9:0] ram_offset_MPORT_data; // @[Decoupled.scala 275:95]
  wire [6:0] ram_offset_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_offset_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_offset_MPORT_en; // @[Decoupled.scala 275:95]
  reg  ram_shift [0:127]; // @[Decoupled.scala 275:95]
  wire  ram_shift_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [6:0] ram_shift_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_shift_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire  ram_shift_MPORT_data; // @[Decoupled.scala 275:95]
  wire [6:0] ram_shift_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_shift_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_shift_MPORT_en; // @[Decoupled.scala 275:95]
  reg  ram_search_for_root [0:127]; // @[Decoupled.scala 275:95]
  wire  ram_search_for_root_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [6:0] ram_search_for_root_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_search_for_root_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire  ram_search_for_root_MPORT_data; // @[Decoupled.scala 275:95]
  wire [6:0] ram_search_for_root_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_search_for_root_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_search_for_root_MPORT_en; // @[Decoupled.scala 275:95]
  reg [7:0] ram_tree_to_exec [0:127]; // @[Decoupled.scala 275:95]
  wire  ram_tree_to_exec_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [6:0] ram_tree_to_exec_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire [7:0] ram_tree_to_exec_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire [7:0] ram_tree_to_exec_MPORT_data; // @[Decoupled.scala 275:95]
  wire [6:0] ram_tree_to_exec_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_tree_to_exec_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_tree_to_exec_MPORT_en; // @[Decoupled.scala 275:95]
  reg [15:0] ram_scores_0 [0:127]; // @[Decoupled.scala 275:95]
  wire  ram_scores_0_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [6:0] ram_scores_0_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire [15:0] ram_scores_0_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire [15:0] ram_scores_0_MPORT_data; // @[Decoupled.scala 275:95]
  wire [6:0] ram_scores_0_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_scores_0_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_scores_0_MPORT_en; // @[Decoupled.scala 275:95]
  reg [15:0] ram_scores_1 [0:127]; // @[Decoupled.scala 275:95]
  wire  ram_scores_1_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [6:0] ram_scores_1_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire [15:0] ram_scores_1_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire [15:0] ram_scores_1_MPORT_data; // @[Decoupled.scala 275:95]
  wire [6:0] ram_scores_1_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_scores_1_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_scores_1_MPORT_en; // @[Decoupled.scala 275:95]
  reg [15:0] ram_scores_2 [0:127]; // @[Decoupled.scala 275:95]
  wire  ram_scores_2_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [6:0] ram_scores_2_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire [15:0] ram_scores_2_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire [15:0] ram_scores_2_MPORT_data; // @[Decoupled.scala 275:95]
  wire [6:0] ram_scores_2_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_scores_2_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_scores_2_MPORT_en; // @[Decoupled.scala 275:95]
  reg [15:0] ram_scores_3 [0:127]; // @[Decoupled.scala 275:95]
  wire  ram_scores_3_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [6:0] ram_scores_3_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire [15:0] ram_scores_3_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire [15:0] ram_scores_3_MPORT_data; // @[Decoupled.scala 275:95]
  wire [6:0] ram_scores_3_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_scores_3_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_scores_3_MPORT_en; // @[Decoupled.scala 275:95]
  reg [15:0] ram_weights_0 [0:127]; // @[Decoupled.scala 275:95]
  wire  ram_weights_0_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [6:0] ram_weights_0_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire [15:0] ram_weights_0_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire [15:0] ram_weights_0_MPORT_data; // @[Decoupled.scala 275:95]
  wire [6:0] ram_weights_0_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_weights_0_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_weights_0_MPORT_en; // @[Decoupled.scala 275:95]
  reg [15:0] ram_weights_1 [0:127]; // @[Decoupled.scala 275:95]
  wire  ram_weights_1_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [6:0] ram_weights_1_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire [15:0] ram_weights_1_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire [15:0] ram_weights_1_MPORT_data; // @[Decoupled.scala 275:95]
  wire [6:0] ram_weights_1_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_weights_1_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_weights_1_MPORT_en; // @[Decoupled.scala 275:95]
  reg  ram_last [0:127]; // @[Decoupled.scala 275:95]
  wire  ram_last_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [6:0] ram_last_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_last_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire  ram_last_MPORT_data; // @[Decoupled.scala 275:95]
  wire [6:0] ram_last_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_last_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_last_MPORT_en; // @[Decoupled.scala 275:95]
  reg [6:0] enq_ptr_value; // @[Counter.scala 61:40]
  reg [6:0] deq_ptr_value; // @[Counter.scala 61:40]
  reg  maybe_full; // @[Decoupled.scala 278:27]
  wire  ptr_match = enq_ptr_value == deq_ptr_value; // @[Decoupled.scala 279:33]
  wire  empty = ptr_match & ~maybe_full; // @[Decoupled.scala 280:25]
  wire  full = ptr_match & maybe_full; // @[Decoupled.scala 281:24]
  wire  do_enq = io_enq_ready & io_enq_valid; // @[Decoupled.scala 52:35]
  wire  do_deq = io_deq_ready & io_deq_valid; // @[Decoupled.scala 52:35]
  wire [6:0] _value_T_1 = enq_ptr_value + 7'h1; // @[Counter.scala 77:24]
  wire [6:0] _value_T_3 = deq_ptr_value + 7'h1; // @[Counter.scala 77:24]
  assign ram_features_0_io_deq_bits_MPORT_en = 1'h1;
  assign ram_features_0_io_deq_bits_MPORT_addr = deq_ptr_value;
  assign ram_features_0_io_deq_bits_MPORT_data = ram_features_0[ram_features_0_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  assign ram_features_0_MPORT_data = io_enq_bits_features_0;
  assign ram_features_0_MPORT_addr = enq_ptr_value;
  assign ram_features_0_MPORT_mask = 1'h1;
  assign ram_features_0_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_features_1_io_deq_bits_MPORT_en = 1'h1;
  assign ram_features_1_io_deq_bits_MPORT_addr = deq_ptr_value;
  assign ram_features_1_io_deq_bits_MPORT_data = ram_features_1[ram_features_1_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  assign ram_features_1_MPORT_data = io_enq_bits_features_1;
  assign ram_features_1_MPORT_addr = enq_ptr_value;
  assign ram_features_1_MPORT_mask = 1'h1;
  assign ram_features_1_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_features_2_io_deq_bits_MPORT_en = 1'h1;
  assign ram_features_2_io_deq_bits_MPORT_addr = deq_ptr_value;
  assign ram_features_2_io_deq_bits_MPORT_data = ram_features_2[ram_features_2_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  assign ram_features_2_MPORT_data = io_enq_bits_features_2;
  assign ram_features_2_MPORT_addr = enq_ptr_value;
  assign ram_features_2_MPORT_mask = 1'h1;
  assign ram_features_2_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_features_3_io_deq_bits_MPORT_en = 1'h1;
  assign ram_features_3_io_deq_bits_MPORT_addr = deq_ptr_value;
  assign ram_features_3_io_deq_bits_MPORT_data = ram_features_3[ram_features_3_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  assign ram_features_3_MPORT_data = io_enq_bits_features_3;
  assign ram_features_3_MPORT_addr = enq_ptr_value;
  assign ram_features_3_MPORT_mask = 1'h1;
  assign ram_features_3_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_offset_io_deq_bits_MPORT_en = 1'h1;
  assign ram_offset_io_deq_bits_MPORT_addr = deq_ptr_value;
  assign ram_offset_io_deq_bits_MPORT_data = ram_offset[ram_offset_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  assign ram_offset_MPORT_data = io_enq_bits_offset;
  assign ram_offset_MPORT_addr = enq_ptr_value;
  assign ram_offset_MPORT_mask = 1'h1;
  assign ram_offset_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_shift_io_deq_bits_MPORT_en = 1'h1;
  assign ram_shift_io_deq_bits_MPORT_addr = deq_ptr_value;
  assign ram_shift_io_deq_bits_MPORT_data = ram_shift[ram_shift_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  assign ram_shift_MPORT_data = io_enq_bits_shift;
  assign ram_shift_MPORT_addr = enq_ptr_value;
  assign ram_shift_MPORT_mask = 1'h1;
  assign ram_shift_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_search_for_root_io_deq_bits_MPORT_en = 1'h1;
  assign ram_search_for_root_io_deq_bits_MPORT_addr = deq_ptr_value;
  assign ram_search_for_root_io_deq_bits_MPORT_data = ram_search_for_root[ram_search_for_root_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  assign ram_search_for_root_MPORT_data = io_enq_bits_search_for_root;
  assign ram_search_for_root_MPORT_addr = enq_ptr_value;
  assign ram_search_for_root_MPORT_mask = 1'h1;
  assign ram_search_for_root_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_tree_to_exec_io_deq_bits_MPORT_en = 1'h1;
  assign ram_tree_to_exec_io_deq_bits_MPORT_addr = deq_ptr_value;
  assign ram_tree_to_exec_io_deq_bits_MPORT_data = ram_tree_to_exec[ram_tree_to_exec_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  assign ram_tree_to_exec_MPORT_data = io_enq_bits_tree_to_exec;
  assign ram_tree_to_exec_MPORT_addr = enq_ptr_value;
  assign ram_tree_to_exec_MPORT_mask = 1'h1;
  assign ram_tree_to_exec_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_scores_0_io_deq_bits_MPORT_en = 1'h1;
  assign ram_scores_0_io_deq_bits_MPORT_addr = deq_ptr_value;
  assign ram_scores_0_io_deq_bits_MPORT_data = ram_scores_0[ram_scores_0_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  assign ram_scores_0_MPORT_data = io_enq_bits_scores_0;
  assign ram_scores_0_MPORT_addr = enq_ptr_value;
  assign ram_scores_0_MPORT_mask = 1'h1;
  assign ram_scores_0_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_scores_1_io_deq_bits_MPORT_en = 1'h1;
  assign ram_scores_1_io_deq_bits_MPORT_addr = deq_ptr_value;
  assign ram_scores_1_io_deq_bits_MPORT_data = ram_scores_1[ram_scores_1_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  assign ram_scores_1_MPORT_data = io_enq_bits_scores_1;
  assign ram_scores_1_MPORT_addr = enq_ptr_value;
  assign ram_scores_1_MPORT_mask = 1'h1;
  assign ram_scores_1_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_scores_2_io_deq_bits_MPORT_en = 1'h1;
  assign ram_scores_2_io_deq_bits_MPORT_addr = deq_ptr_value;
  assign ram_scores_2_io_deq_bits_MPORT_data = ram_scores_2[ram_scores_2_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  assign ram_scores_2_MPORT_data = io_enq_bits_scores_2;
  assign ram_scores_2_MPORT_addr = enq_ptr_value;
  assign ram_scores_2_MPORT_mask = 1'h1;
  assign ram_scores_2_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_scores_3_io_deq_bits_MPORT_en = 1'h1;
  assign ram_scores_3_io_deq_bits_MPORT_addr = deq_ptr_value;
  assign ram_scores_3_io_deq_bits_MPORT_data = ram_scores_3[ram_scores_3_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  assign ram_scores_3_MPORT_data = io_enq_bits_scores_3;
  assign ram_scores_3_MPORT_addr = enq_ptr_value;
  assign ram_scores_3_MPORT_mask = 1'h1;
  assign ram_scores_3_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_weights_0_io_deq_bits_MPORT_en = 1'h1;
  assign ram_weights_0_io_deq_bits_MPORT_addr = deq_ptr_value;
  assign ram_weights_0_io_deq_bits_MPORT_data = ram_weights_0[ram_weights_0_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  assign ram_weights_0_MPORT_data = io_enq_bits_weights_0;
  assign ram_weights_0_MPORT_addr = enq_ptr_value;
  assign ram_weights_0_MPORT_mask = 1'h1;
  assign ram_weights_0_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_weights_1_io_deq_bits_MPORT_en = 1'h1;
  assign ram_weights_1_io_deq_bits_MPORT_addr = deq_ptr_value;
  assign ram_weights_1_io_deq_bits_MPORT_data = ram_weights_1[ram_weights_1_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  assign ram_weights_1_MPORT_data = io_enq_bits_weights_1;
  assign ram_weights_1_MPORT_addr = enq_ptr_value;
  assign ram_weights_1_MPORT_mask = 1'h1;
  assign ram_weights_1_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_last_io_deq_bits_MPORT_en = 1'h1;
  assign ram_last_io_deq_bits_MPORT_addr = deq_ptr_value;
  assign ram_last_io_deq_bits_MPORT_data = ram_last[ram_last_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  assign ram_last_MPORT_data = io_enq_bits_last;
  assign ram_last_MPORT_addr = enq_ptr_value;
  assign ram_last_MPORT_mask = 1'h1;
  assign ram_last_MPORT_en = io_enq_ready & io_enq_valid;
  assign io_enq_ready = ~full; // @[Decoupled.scala 305:19]
  assign io_deq_valid = ~empty; // @[Decoupled.scala 304:19]
  assign io_deq_bits_features_0 = ram_features_0_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_features_1 = ram_features_1_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_features_2 = ram_features_2_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_features_3 = ram_features_3_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_offset = ram_offset_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_shift = ram_shift_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_search_for_root = ram_search_for_root_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_tree_to_exec = ram_tree_to_exec_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_scores_0 = ram_scores_0_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_scores_1 = ram_scores_1_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_scores_2 = ram_scores_2_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_scores_3 = ram_scores_3_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_weights_0 = ram_weights_0_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_weights_1 = ram_weights_1_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_last = ram_last_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  always @(posedge clock) begin
    if (ram_features_0_MPORT_en & ram_features_0_MPORT_mask) begin
      ram_features_0[ram_features_0_MPORT_addr] <= ram_features_0_MPORT_data; // @[Decoupled.scala 275:95]
    end
    if (ram_features_1_MPORT_en & ram_features_1_MPORT_mask) begin
      ram_features_1[ram_features_1_MPORT_addr] <= ram_features_1_MPORT_data; // @[Decoupled.scala 275:95]
    end
    if (ram_features_2_MPORT_en & ram_features_2_MPORT_mask) begin
      ram_features_2[ram_features_2_MPORT_addr] <= ram_features_2_MPORT_data; // @[Decoupled.scala 275:95]
    end
    if (ram_features_3_MPORT_en & ram_features_3_MPORT_mask) begin
      ram_features_3[ram_features_3_MPORT_addr] <= ram_features_3_MPORT_data; // @[Decoupled.scala 275:95]
    end
    if (ram_offset_MPORT_en & ram_offset_MPORT_mask) begin
      ram_offset[ram_offset_MPORT_addr] <= ram_offset_MPORT_data; // @[Decoupled.scala 275:95]
    end
    if (ram_shift_MPORT_en & ram_shift_MPORT_mask) begin
      ram_shift[ram_shift_MPORT_addr] <= ram_shift_MPORT_data; // @[Decoupled.scala 275:95]
    end
    if (ram_search_for_root_MPORT_en & ram_search_for_root_MPORT_mask) begin
      ram_search_for_root[ram_search_for_root_MPORT_addr] <= ram_search_for_root_MPORT_data; // @[Decoupled.scala 275:95]
    end
    if (ram_tree_to_exec_MPORT_en & ram_tree_to_exec_MPORT_mask) begin
      ram_tree_to_exec[ram_tree_to_exec_MPORT_addr] <= ram_tree_to_exec_MPORT_data; // @[Decoupled.scala 275:95]
    end
    if (ram_scores_0_MPORT_en & ram_scores_0_MPORT_mask) begin
      ram_scores_0[ram_scores_0_MPORT_addr] <= ram_scores_0_MPORT_data; // @[Decoupled.scala 275:95]
    end
    if (ram_scores_1_MPORT_en & ram_scores_1_MPORT_mask) begin
      ram_scores_1[ram_scores_1_MPORT_addr] <= ram_scores_1_MPORT_data; // @[Decoupled.scala 275:95]
    end
    if (ram_scores_2_MPORT_en & ram_scores_2_MPORT_mask) begin
      ram_scores_2[ram_scores_2_MPORT_addr] <= ram_scores_2_MPORT_data; // @[Decoupled.scala 275:95]
    end
    if (ram_scores_3_MPORT_en & ram_scores_3_MPORT_mask) begin
      ram_scores_3[ram_scores_3_MPORT_addr] <= ram_scores_3_MPORT_data; // @[Decoupled.scala 275:95]
    end
    if (ram_weights_0_MPORT_en & ram_weights_0_MPORT_mask) begin
      ram_weights_0[ram_weights_0_MPORT_addr] <= ram_weights_0_MPORT_data; // @[Decoupled.scala 275:95]
    end
    if (ram_weights_1_MPORT_en & ram_weights_1_MPORT_mask) begin
      ram_weights_1[ram_weights_1_MPORT_addr] <= ram_weights_1_MPORT_data; // @[Decoupled.scala 275:95]
    end
    if (ram_last_MPORT_en & ram_last_MPORT_mask) begin
      ram_last[ram_last_MPORT_addr] <= ram_last_MPORT_data; // @[Decoupled.scala 275:95]
    end
    if (reset) begin // @[Counter.scala 61:40]
      enq_ptr_value <= 7'h0; // @[Counter.scala 61:40]
    end else if (do_enq) begin // @[Decoupled.scala 288:16]
      enq_ptr_value <= _value_T_1; // @[Counter.scala 77:15]
    end
    if (reset) begin // @[Counter.scala 61:40]
      deq_ptr_value <= 7'h0; // @[Counter.scala 61:40]
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
  _RAND_0 = {1{`RANDOM}};
  for (initvar = 0; initvar < 128; initvar = initvar+1)
    ram_features_0[initvar] = _RAND_0[15:0];
  _RAND_1 = {1{`RANDOM}};
  for (initvar = 0; initvar < 128; initvar = initvar+1)
    ram_features_1[initvar] = _RAND_1[15:0];
  _RAND_2 = {1{`RANDOM}};
  for (initvar = 0; initvar < 128; initvar = initvar+1)
    ram_features_2[initvar] = _RAND_2[15:0];
  _RAND_3 = {1{`RANDOM}};
  for (initvar = 0; initvar < 128; initvar = initvar+1)
    ram_features_3[initvar] = _RAND_3[15:0];
  _RAND_4 = {1{`RANDOM}};
  for (initvar = 0; initvar < 128; initvar = initvar+1)
    ram_offset[initvar] = _RAND_4[9:0];
  _RAND_5 = {1{`RANDOM}};
  for (initvar = 0; initvar < 128; initvar = initvar+1)
    ram_shift[initvar] = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  for (initvar = 0; initvar < 128; initvar = initvar+1)
    ram_search_for_root[initvar] = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  for (initvar = 0; initvar < 128; initvar = initvar+1)
    ram_tree_to_exec[initvar] = _RAND_7[7:0];
  _RAND_8 = {1{`RANDOM}};
  for (initvar = 0; initvar < 128; initvar = initvar+1)
    ram_scores_0[initvar] = _RAND_8[15:0];
  _RAND_9 = {1{`RANDOM}};
  for (initvar = 0; initvar < 128; initvar = initvar+1)
    ram_scores_1[initvar] = _RAND_9[15:0];
  _RAND_10 = {1{`RANDOM}};
  for (initvar = 0; initvar < 128; initvar = initvar+1)
    ram_scores_2[initvar] = _RAND_10[15:0];
  _RAND_11 = {1{`RANDOM}};
  for (initvar = 0; initvar < 128; initvar = initvar+1)
    ram_scores_3[initvar] = _RAND_11[15:0];
  _RAND_12 = {1{`RANDOM}};
  for (initvar = 0; initvar < 128; initvar = initvar+1)
    ram_weights_0[initvar] = _RAND_12[15:0];
  _RAND_13 = {1{`RANDOM}};
  for (initvar = 0; initvar < 128; initvar = initvar+1)
    ram_weights_1[initvar] = _RAND_13[15:0];
  _RAND_14 = {1{`RANDOM}};
  for (initvar = 0; initvar < 128; initvar = initvar+1)
    ram_last[initvar] = _RAND_14[0:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  enq_ptr_value = _RAND_15[6:0];
  _RAND_16 = {1{`RANDOM}};
  deq_ptr_value = _RAND_16[6:0];
  _RAND_17 = {1{`RANDOM}};
  maybe_full = _RAND_17[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module VoterPE(
  input         clock,
  input         reset,
  output        io_samples_in_0_ready,
  input         io_samples_in_0_valid,
  input  [15:0] io_samples_in_0_bits_features_0,
  input  [15:0] io_samples_in_0_bits_features_1,
  input  [15:0] io_samples_in_0_bits_features_2,
  input  [15:0] io_samples_in_0_bits_features_3,
  input  [9:0]  io_samples_in_0_bits_offset,
  input         io_samples_in_0_bits_shift,
  input         io_samples_in_0_bits_search_for_root,
  input  [7:0]  io_samples_in_0_bits_tree_to_exec,
  input  [15:0] io_samples_in_0_bits_scores_0,
  input  [15:0] io_samples_in_0_bits_scores_1,
  input  [15:0] io_samples_in_0_bits_scores_2,
  input  [15:0] io_samples_in_0_bits_scores_3,
  input  [15:0] io_samples_in_0_bits_weights_0,
  input  [15:0] io_samples_in_0_bits_weights_1,
  input         io_samples_in_0_bits_last,
  output        io_samples_in_1_ready,
  input         io_samples_in_1_valid,
  input  [15:0] io_samples_in_1_bits_features_0,
  input  [15:0] io_samples_in_1_bits_features_1,
  input  [15:0] io_samples_in_1_bits_features_2,
  input  [15:0] io_samples_in_1_bits_features_3,
  input  [9:0]  io_samples_in_1_bits_offset,
  input         io_samples_in_1_bits_shift,
  input         io_samples_in_1_bits_search_for_root,
  input  [7:0]  io_samples_in_1_bits_tree_to_exec,
  input  [15:0] io_samples_in_1_bits_scores_0,
  input  [15:0] io_samples_in_1_bits_scores_1,
  input  [15:0] io_samples_in_1_bits_scores_2,
  input  [15:0] io_samples_in_1_bits_scores_3,
  input  [15:0] io_samples_in_1_bits_weights_0,
  input  [15:0] io_samples_in_1_bits_weights_1,
  input         io_samples_in_1_bits_last,
  input         io_sample_out_ready,
  output        io_sample_out_valid,
  output [15:0] io_sample_out_bits_features_0,
  output [15:0] io_sample_out_bits_features_1,
  output [15:0] io_sample_out_bits_features_2,
  output [15:0] io_sample_out_bits_features_3,
  output [9:0]  io_sample_out_bits_offset,
  output        io_sample_out_bits_shift,
  output        io_sample_out_bits_search_for_root,
  output [7:0]  io_sample_out_bits_tree_to_exec,
  output [15:0] io_sample_out_bits_scores_0,
  output [15:0] io_sample_out_bits_scores_1,
  output [15:0] io_sample_out_bits_scores_2,
  output [15:0] io_sample_out_bits_scores_3,
  output [15:0] io_sample_out_bits_weights_0,
  output [15:0] io_sample_out_bits_weights_1,
  output        io_sample_out_bits_last
);
  wire  queues_q_clock; // @[Decoupled.scala 377:21]
  wire  queues_q_reset; // @[Decoupled.scala 377:21]
  wire  queues_q_io_enq_ready; // @[Decoupled.scala 377:21]
  wire  queues_q_io_enq_valid; // @[Decoupled.scala 377:21]
  wire [15:0] queues_q_io_enq_bits_features_0; // @[Decoupled.scala 377:21]
  wire [15:0] queues_q_io_enq_bits_features_1; // @[Decoupled.scala 377:21]
  wire [15:0] queues_q_io_enq_bits_features_2; // @[Decoupled.scala 377:21]
  wire [15:0] queues_q_io_enq_bits_features_3; // @[Decoupled.scala 377:21]
  wire [9:0] queues_q_io_enq_bits_offset; // @[Decoupled.scala 377:21]
  wire  queues_q_io_enq_bits_shift; // @[Decoupled.scala 377:21]
  wire  queues_q_io_enq_bits_search_for_root; // @[Decoupled.scala 377:21]
  wire [7:0] queues_q_io_enq_bits_tree_to_exec; // @[Decoupled.scala 377:21]
  wire [15:0] queues_q_io_enq_bits_scores_0; // @[Decoupled.scala 377:21]
  wire [15:0] queues_q_io_enq_bits_scores_1; // @[Decoupled.scala 377:21]
  wire [15:0] queues_q_io_enq_bits_scores_2; // @[Decoupled.scala 377:21]
  wire [15:0] queues_q_io_enq_bits_scores_3; // @[Decoupled.scala 377:21]
  wire [15:0] queues_q_io_enq_bits_weights_0; // @[Decoupled.scala 377:21]
  wire [15:0] queues_q_io_enq_bits_weights_1; // @[Decoupled.scala 377:21]
  wire  queues_q_io_enq_bits_last; // @[Decoupled.scala 377:21]
  wire  queues_q_io_deq_ready; // @[Decoupled.scala 377:21]
  wire  queues_q_io_deq_valid; // @[Decoupled.scala 377:21]
  wire [15:0] queues_q_io_deq_bits_features_0; // @[Decoupled.scala 377:21]
  wire [15:0] queues_q_io_deq_bits_features_1; // @[Decoupled.scala 377:21]
  wire [15:0] queues_q_io_deq_bits_features_2; // @[Decoupled.scala 377:21]
  wire [15:0] queues_q_io_deq_bits_features_3; // @[Decoupled.scala 377:21]
  wire [9:0] queues_q_io_deq_bits_offset; // @[Decoupled.scala 377:21]
  wire  queues_q_io_deq_bits_shift; // @[Decoupled.scala 377:21]
  wire  queues_q_io_deq_bits_search_for_root; // @[Decoupled.scala 377:21]
  wire [7:0] queues_q_io_deq_bits_tree_to_exec; // @[Decoupled.scala 377:21]
  wire [15:0] queues_q_io_deq_bits_scores_0; // @[Decoupled.scala 377:21]
  wire [15:0] queues_q_io_deq_bits_scores_1; // @[Decoupled.scala 377:21]
  wire [15:0] queues_q_io_deq_bits_scores_2; // @[Decoupled.scala 377:21]
  wire [15:0] queues_q_io_deq_bits_scores_3; // @[Decoupled.scala 377:21]
  wire [15:0] queues_q_io_deq_bits_weights_0; // @[Decoupled.scala 377:21]
  wire [15:0] queues_q_io_deq_bits_weights_1; // @[Decoupled.scala 377:21]
  wire  queues_q_io_deq_bits_last; // @[Decoupled.scala 377:21]
  wire  queues_q_1_clock; // @[Decoupled.scala 377:21]
  wire  queues_q_1_reset; // @[Decoupled.scala 377:21]
  wire  queues_q_1_io_enq_ready; // @[Decoupled.scala 377:21]
  wire  queues_q_1_io_enq_valid; // @[Decoupled.scala 377:21]
  wire [15:0] queues_q_1_io_enq_bits_features_0; // @[Decoupled.scala 377:21]
  wire [15:0] queues_q_1_io_enq_bits_features_1; // @[Decoupled.scala 377:21]
  wire [15:0] queues_q_1_io_enq_bits_features_2; // @[Decoupled.scala 377:21]
  wire [15:0] queues_q_1_io_enq_bits_features_3; // @[Decoupled.scala 377:21]
  wire [9:0] queues_q_1_io_enq_bits_offset; // @[Decoupled.scala 377:21]
  wire  queues_q_1_io_enq_bits_shift; // @[Decoupled.scala 377:21]
  wire  queues_q_1_io_enq_bits_search_for_root; // @[Decoupled.scala 377:21]
  wire [7:0] queues_q_1_io_enq_bits_tree_to_exec; // @[Decoupled.scala 377:21]
  wire [15:0] queues_q_1_io_enq_bits_scores_0; // @[Decoupled.scala 377:21]
  wire [15:0] queues_q_1_io_enq_bits_scores_1; // @[Decoupled.scala 377:21]
  wire [15:0] queues_q_1_io_enq_bits_scores_2; // @[Decoupled.scala 377:21]
  wire [15:0] queues_q_1_io_enq_bits_scores_3; // @[Decoupled.scala 377:21]
  wire [15:0] queues_q_1_io_enq_bits_weights_0; // @[Decoupled.scala 377:21]
  wire [15:0] queues_q_1_io_enq_bits_weights_1; // @[Decoupled.scala 377:21]
  wire  queues_q_1_io_enq_bits_last; // @[Decoupled.scala 377:21]
  wire  queues_q_1_io_deq_ready; // @[Decoupled.scala 377:21]
  wire  queues_q_1_io_deq_valid; // @[Decoupled.scala 377:21]
  wire [15:0] queues_q_1_io_deq_bits_features_0; // @[Decoupled.scala 377:21]
  wire [15:0] queues_q_1_io_deq_bits_features_1; // @[Decoupled.scala 377:21]
  wire [15:0] queues_q_1_io_deq_bits_features_2; // @[Decoupled.scala 377:21]
  wire [15:0] queues_q_1_io_deq_bits_features_3; // @[Decoupled.scala 377:21]
  wire [9:0] queues_q_1_io_deq_bits_offset; // @[Decoupled.scala 377:21]
  wire  queues_q_1_io_deq_bits_shift; // @[Decoupled.scala 377:21]
  wire  queues_q_1_io_deq_bits_search_for_root; // @[Decoupled.scala 377:21]
  wire [7:0] queues_q_1_io_deq_bits_tree_to_exec; // @[Decoupled.scala 377:21]
  wire [15:0] queues_q_1_io_deq_bits_scores_0; // @[Decoupled.scala 377:21]
  wire [15:0] queues_q_1_io_deq_bits_scores_1; // @[Decoupled.scala 377:21]
  wire [15:0] queues_q_1_io_deq_bits_scores_2; // @[Decoupled.scala 377:21]
  wire [15:0] queues_q_1_io_deq_bits_scores_3; // @[Decoupled.scala 377:21]
  wire [15:0] queues_q_1_io_deq_bits_weights_0; // @[Decoupled.scala 377:21]
  wire [15:0] queues_q_1_io_deq_bits_weights_1; // @[Decoupled.scala 377:21]
  wire  queues_q_1_io_deq_bits_last; // @[Decoupled.scala 377:21]
  wire  queues_0_valid = queues_q_io_deq_valid; // @[VoterPE.scala 13:{25,25}]
  wire  queues_1_valid = queues_q_1_io_deq_valid; // @[VoterPE.scala 13:{25,25}]
  wire  valid = queues_0_valid & queues_1_valid; // @[VoterPE.scala 18:23]
  wire [15:0] queues_0_bits_scores_0 = queues_q_io_deq_bits_scores_0; // @[VoterPE.scala 13:{25,25}]
  wire [15:0] queues_1_bits_scores_0 = queues_q_1_io_deq_bits_scores_0; // @[VoterPE.scala 13:{25,25}]
  wire [16:0] _T_1 = $signed(queues_0_bits_scores_0) + $signed(queues_1_bits_scores_0); // @[VoterPE.scala 34:27]
  wire [15:0] queues_0_bits_scores_1 = queues_q_io_deq_bits_scores_1; // @[VoterPE.scala 13:{25,25}]
  wire [15:0] queues_1_bits_scores_1 = queues_q_1_io_deq_bits_scores_1; // @[VoterPE.scala 13:{25,25}]
  wire [16:0] _T_2 = $signed(queues_0_bits_scores_1) + $signed(queues_1_bits_scores_1); // @[VoterPE.scala 34:27]
  wire [15:0] queues_0_bits_scores_2 = queues_q_io_deq_bits_scores_2; // @[VoterPE.scala 13:{25,25}]
  wire [15:0] queues_1_bits_scores_2 = queues_q_1_io_deq_bits_scores_2; // @[VoterPE.scala 13:{25,25}]
  wire [16:0] _T_3 = $signed(queues_0_bits_scores_2) + $signed(queues_1_bits_scores_2); // @[VoterPE.scala 34:27]
  wire [15:0] queues_0_bits_scores_3 = queues_q_io_deq_bits_scores_3; // @[VoterPE.scala 13:{25,25}]
  wire [15:0] queues_1_bits_scores_3 = queues_q_1_io_deq_bits_scores_3; // @[VoterPE.scala 13:{25,25}]
  wire [16:0] _T_4 = $signed(queues_0_bits_scores_3) + $signed(queues_1_bits_scores_3); // @[VoterPE.scala 34:27]
  Queue_1 queues_q ( // @[Decoupled.scala 377:21]
    .clock(queues_q_clock),
    .reset(queues_q_reset),
    .io_enq_ready(queues_q_io_enq_ready),
    .io_enq_valid(queues_q_io_enq_valid),
    .io_enq_bits_features_0(queues_q_io_enq_bits_features_0),
    .io_enq_bits_features_1(queues_q_io_enq_bits_features_1),
    .io_enq_bits_features_2(queues_q_io_enq_bits_features_2),
    .io_enq_bits_features_3(queues_q_io_enq_bits_features_3),
    .io_enq_bits_offset(queues_q_io_enq_bits_offset),
    .io_enq_bits_shift(queues_q_io_enq_bits_shift),
    .io_enq_bits_search_for_root(queues_q_io_enq_bits_search_for_root),
    .io_enq_bits_tree_to_exec(queues_q_io_enq_bits_tree_to_exec),
    .io_enq_bits_scores_0(queues_q_io_enq_bits_scores_0),
    .io_enq_bits_scores_1(queues_q_io_enq_bits_scores_1),
    .io_enq_bits_scores_2(queues_q_io_enq_bits_scores_2),
    .io_enq_bits_scores_3(queues_q_io_enq_bits_scores_3),
    .io_enq_bits_weights_0(queues_q_io_enq_bits_weights_0),
    .io_enq_bits_weights_1(queues_q_io_enq_bits_weights_1),
    .io_enq_bits_last(queues_q_io_enq_bits_last),
    .io_deq_ready(queues_q_io_deq_ready),
    .io_deq_valid(queues_q_io_deq_valid),
    .io_deq_bits_features_0(queues_q_io_deq_bits_features_0),
    .io_deq_bits_features_1(queues_q_io_deq_bits_features_1),
    .io_deq_bits_features_2(queues_q_io_deq_bits_features_2),
    .io_deq_bits_features_3(queues_q_io_deq_bits_features_3),
    .io_deq_bits_offset(queues_q_io_deq_bits_offset),
    .io_deq_bits_shift(queues_q_io_deq_bits_shift),
    .io_deq_bits_search_for_root(queues_q_io_deq_bits_search_for_root),
    .io_deq_bits_tree_to_exec(queues_q_io_deq_bits_tree_to_exec),
    .io_deq_bits_scores_0(queues_q_io_deq_bits_scores_0),
    .io_deq_bits_scores_1(queues_q_io_deq_bits_scores_1),
    .io_deq_bits_scores_2(queues_q_io_deq_bits_scores_2),
    .io_deq_bits_scores_3(queues_q_io_deq_bits_scores_3),
    .io_deq_bits_weights_0(queues_q_io_deq_bits_weights_0),
    .io_deq_bits_weights_1(queues_q_io_deq_bits_weights_1),
    .io_deq_bits_last(queues_q_io_deq_bits_last)
  );
  Queue_1 queues_q_1 ( // @[Decoupled.scala 377:21]
    .clock(queues_q_1_clock),
    .reset(queues_q_1_reset),
    .io_enq_ready(queues_q_1_io_enq_ready),
    .io_enq_valid(queues_q_1_io_enq_valid),
    .io_enq_bits_features_0(queues_q_1_io_enq_bits_features_0),
    .io_enq_bits_features_1(queues_q_1_io_enq_bits_features_1),
    .io_enq_bits_features_2(queues_q_1_io_enq_bits_features_2),
    .io_enq_bits_features_3(queues_q_1_io_enq_bits_features_3),
    .io_enq_bits_offset(queues_q_1_io_enq_bits_offset),
    .io_enq_bits_shift(queues_q_1_io_enq_bits_shift),
    .io_enq_bits_search_for_root(queues_q_1_io_enq_bits_search_for_root),
    .io_enq_bits_tree_to_exec(queues_q_1_io_enq_bits_tree_to_exec),
    .io_enq_bits_scores_0(queues_q_1_io_enq_bits_scores_0),
    .io_enq_bits_scores_1(queues_q_1_io_enq_bits_scores_1),
    .io_enq_bits_scores_2(queues_q_1_io_enq_bits_scores_2),
    .io_enq_bits_scores_3(queues_q_1_io_enq_bits_scores_3),
    .io_enq_bits_weights_0(queues_q_1_io_enq_bits_weights_0),
    .io_enq_bits_weights_1(queues_q_1_io_enq_bits_weights_1),
    .io_enq_bits_last(queues_q_1_io_enq_bits_last),
    .io_deq_ready(queues_q_1_io_deq_ready),
    .io_deq_valid(queues_q_1_io_deq_valid),
    .io_deq_bits_features_0(queues_q_1_io_deq_bits_features_0),
    .io_deq_bits_features_1(queues_q_1_io_deq_bits_features_1),
    .io_deq_bits_features_2(queues_q_1_io_deq_bits_features_2),
    .io_deq_bits_features_3(queues_q_1_io_deq_bits_features_3),
    .io_deq_bits_offset(queues_q_1_io_deq_bits_offset),
    .io_deq_bits_shift(queues_q_1_io_deq_bits_shift),
    .io_deq_bits_search_for_root(queues_q_1_io_deq_bits_search_for_root),
    .io_deq_bits_tree_to_exec(queues_q_1_io_deq_bits_tree_to_exec),
    .io_deq_bits_scores_0(queues_q_1_io_deq_bits_scores_0),
    .io_deq_bits_scores_1(queues_q_1_io_deq_bits_scores_1),
    .io_deq_bits_scores_2(queues_q_1_io_deq_bits_scores_2),
    .io_deq_bits_scores_3(queues_q_1_io_deq_bits_scores_3),
    .io_deq_bits_weights_0(queues_q_1_io_deq_bits_weights_0),
    .io_deq_bits_weights_1(queues_q_1_io_deq_bits_weights_1),
    .io_deq_bits_last(queues_q_1_io_deq_bits_last)
  );
  assign io_samples_in_0_ready = queues_q_io_enq_ready; // @[Decoupled.scala 381:17]
  assign io_samples_in_1_ready = queues_q_1_io_enq_ready; // @[Decoupled.scala 381:17]
  assign io_sample_out_valid = queues_0_valid & queues_1_valid; // @[VoterPE.scala 18:23]
  assign io_sample_out_bits_features_0 = queues_q_io_deq_bits_features_0; // @[VoterPE.scala 13:{25,25}]
  assign io_sample_out_bits_features_1 = queues_q_io_deq_bits_features_1; // @[VoterPE.scala 13:{25,25}]
  assign io_sample_out_bits_features_2 = queues_q_io_deq_bits_features_2; // @[VoterPE.scala 13:{25,25}]
  assign io_sample_out_bits_features_3 = queues_q_io_deq_bits_features_3; // @[VoterPE.scala 13:{25,25}]
  assign io_sample_out_bits_offset = queues_q_io_deq_bits_offset; // @[VoterPE.scala 13:{25,25}]
  assign io_sample_out_bits_shift = queues_q_io_deq_bits_shift; // @[VoterPE.scala 13:{25,25}]
  assign io_sample_out_bits_search_for_root = queues_q_io_deq_bits_search_for_root; // @[VoterPE.scala 13:{25,25}]
  assign io_sample_out_bits_tree_to_exec = queues_q_io_deq_bits_tree_to_exec; // @[VoterPE.scala 13:{25,25}]
  assign io_sample_out_bits_scores_0 = _T_1[15:0];
  assign io_sample_out_bits_scores_1 = _T_2[15:0];
  assign io_sample_out_bits_scores_2 = _T_3[15:0];
  assign io_sample_out_bits_scores_3 = _T_4[15:0];
  assign io_sample_out_bits_weights_0 = queues_q_io_deq_bits_weights_0; // @[VoterPE.scala 13:{25,25}]
  assign io_sample_out_bits_weights_1 = queues_q_io_deq_bits_weights_1; // @[VoterPE.scala 13:{25,25}]
  assign io_sample_out_bits_last = queues_q_io_deq_bits_last; // @[VoterPE.scala 13:{25,25}]
  assign queues_q_clock = clock;
  assign queues_q_reset = reset;
  assign queues_q_io_enq_valid = io_samples_in_0_valid; // @[Decoupled.scala 379:22]
  assign queues_q_io_enq_bits_features_0 = io_samples_in_0_bits_features_0; // @[Decoupled.scala 380:21]
  assign queues_q_io_enq_bits_features_1 = io_samples_in_0_bits_features_1; // @[Decoupled.scala 380:21]
  assign queues_q_io_enq_bits_features_2 = io_samples_in_0_bits_features_2; // @[Decoupled.scala 380:21]
  assign queues_q_io_enq_bits_features_3 = io_samples_in_0_bits_features_3; // @[Decoupled.scala 380:21]
  assign queues_q_io_enq_bits_offset = io_samples_in_0_bits_offset; // @[Decoupled.scala 380:21]
  assign queues_q_io_enq_bits_shift = io_samples_in_0_bits_shift; // @[Decoupled.scala 380:21]
  assign queues_q_io_enq_bits_search_for_root = io_samples_in_0_bits_search_for_root; // @[Decoupled.scala 380:21]
  assign queues_q_io_enq_bits_tree_to_exec = io_samples_in_0_bits_tree_to_exec; // @[Decoupled.scala 380:21]
  assign queues_q_io_enq_bits_scores_0 = io_samples_in_0_bits_scores_0; // @[Decoupled.scala 380:21]
  assign queues_q_io_enq_bits_scores_1 = io_samples_in_0_bits_scores_1; // @[Decoupled.scala 380:21]
  assign queues_q_io_enq_bits_scores_2 = io_samples_in_0_bits_scores_2; // @[Decoupled.scala 380:21]
  assign queues_q_io_enq_bits_scores_3 = io_samples_in_0_bits_scores_3; // @[Decoupled.scala 380:21]
  assign queues_q_io_enq_bits_weights_0 = io_samples_in_0_bits_weights_0; // @[Decoupled.scala 380:21]
  assign queues_q_io_enq_bits_weights_1 = io_samples_in_0_bits_weights_1; // @[Decoupled.scala 380:21]
  assign queues_q_io_enq_bits_last = io_samples_in_0_bits_last; // @[Decoupled.scala 380:21]
  assign queues_q_io_deq_ready = valid ? io_sample_out_ready : ~queues_0_valid; // @[VoterPE.scala 21:16 39:29 45:29]
  assign queues_q_1_clock = clock;
  assign queues_q_1_reset = reset;
  assign queues_q_1_io_enq_valid = io_samples_in_1_valid; // @[Decoupled.scala 379:22]
  assign queues_q_1_io_enq_bits_features_0 = io_samples_in_1_bits_features_0; // @[Decoupled.scala 380:21]
  assign queues_q_1_io_enq_bits_features_1 = io_samples_in_1_bits_features_1; // @[Decoupled.scala 380:21]
  assign queues_q_1_io_enq_bits_features_2 = io_samples_in_1_bits_features_2; // @[Decoupled.scala 380:21]
  assign queues_q_1_io_enq_bits_features_3 = io_samples_in_1_bits_features_3; // @[Decoupled.scala 380:21]
  assign queues_q_1_io_enq_bits_offset = io_samples_in_1_bits_offset; // @[Decoupled.scala 380:21]
  assign queues_q_1_io_enq_bits_shift = io_samples_in_1_bits_shift; // @[Decoupled.scala 380:21]
  assign queues_q_1_io_enq_bits_search_for_root = io_samples_in_1_bits_search_for_root; // @[Decoupled.scala 380:21]
  assign queues_q_1_io_enq_bits_tree_to_exec = io_samples_in_1_bits_tree_to_exec; // @[Decoupled.scala 380:21]
  assign queues_q_1_io_enq_bits_scores_0 = io_samples_in_1_bits_scores_0; // @[Decoupled.scala 380:21]
  assign queues_q_1_io_enq_bits_scores_1 = io_samples_in_1_bits_scores_1; // @[Decoupled.scala 380:21]
  assign queues_q_1_io_enq_bits_scores_2 = io_samples_in_1_bits_scores_2; // @[Decoupled.scala 380:21]
  assign queues_q_1_io_enq_bits_scores_3 = io_samples_in_1_bits_scores_3; // @[Decoupled.scala 380:21]
  assign queues_q_1_io_enq_bits_weights_0 = io_samples_in_1_bits_weights_0; // @[Decoupled.scala 380:21]
  assign queues_q_1_io_enq_bits_weights_1 = io_samples_in_1_bits_weights_1; // @[Decoupled.scala 380:21]
  assign queues_q_1_io_enq_bits_last = io_samples_in_1_bits_last; // @[Decoupled.scala 380:21]
  assign queues_q_1_io_deq_ready = valid ? io_sample_out_ready : ~queues_1_valid; // @[VoterPE.scala 21:16 39:29 45:29]
endmodule
module Queue_3(
  input         clock,
  input         reset,
  output        io_enq_ready,
  input         io_enq_valid,
  input  [15:0] io_enq_bits_features_0,
  input  [15:0] io_enq_bits_features_1,
  input  [15:0] io_enq_bits_features_2,
  input  [15:0] io_enq_bits_features_3,
  input  [9:0]  io_enq_bits_offset,
  input         io_enq_bits_shift,
  input         io_enq_bits_search_for_root,
  input  [7:0]  io_enq_bits_tree_to_exec,
  input  [15:0] io_enq_bits_scores_0,
  input  [15:0] io_enq_bits_scores_1,
  input  [15:0] io_enq_bits_scores_2,
  input  [15:0] io_enq_bits_scores_3,
  input  [15:0] io_enq_bits_weights_0,
  input  [15:0] io_enq_bits_weights_1,
  input         io_enq_bits_last,
  input         io_deq_ready,
  output        io_deq_valid,
  output [15:0] io_deq_bits_features_0,
  output [15:0] io_deq_bits_features_1,
  output [15:0] io_deq_bits_features_2,
  output [15:0] io_deq_bits_features_3,
  output [9:0]  io_deq_bits_offset,
  output        io_deq_bits_shift,
  output        io_deq_bits_search_for_root,
  output [7:0]  io_deq_bits_tree_to_exec,
  output [15:0] io_deq_bits_scores_0,
  output [15:0] io_deq_bits_scores_1,
  output [15:0] io_deq_bits_scores_2,
  output [15:0] io_deq_bits_scores_3,
  output [15:0] io_deq_bits_weights_0,
  output [15:0] io_deq_bits_weights_1,
  output        io_deq_bits_last
);
`ifdef RANDOMIZE_GARBAGE_ASSIGN
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_29;
`endif // RANDOMIZE_GARBAGE_ASSIGN
`ifdef RANDOMIZE_MEM_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_28;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
`endif // RANDOMIZE_REG_INIT
  reg [15:0] ram_features_0 [0:2]; // @[Decoupled.scala 275:95]
  wire  ram_features_0_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [1:0] ram_features_0_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire [15:0] ram_features_0_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire [15:0] ram_features_0_MPORT_data; // @[Decoupled.scala 275:95]
  wire [1:0] ram_features_0_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_features_0_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_features_0_MPORT_en; // @[Decoupled.scala 275:95]
  reg [15:0] ram_features_1 [0:2]; // @[Decoupled.scala 275:95]
  wire  ram_features_1_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [1:0] ram_features_1_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire [15:0] ram_features_1_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire [15:0] ram_features_1_MPORT_data; // @[Decoupled.scala 275:95]
  wire [1:0] ram_features_1_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_features_1_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_features_1_MPORT_en; // @[Decoupled.scala 275:95]
  reg [15:0] ram_features_2 [0:2]; // @[Decoupled.scala 275:95]
  wire  ram_features_2_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [1:0] ram_features_2_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire [15:0] ram_features_2_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire [15:0] ram_features_2_MPORT_data; // @[Decoupled.scala 275:95]
  wire [1:0] ram_features_2_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_features_2_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_features_2_MPORT_en; // @[Decoupled.scala 275:95]
  reg [15:0] ram_features_3 [0:2]; // @[Decoupled.scala 275:95]
  wire  ram_features_3_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [1:0] ram_features_3_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire [15:0] ram_features_3_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire [15:0] ram_features_3_MPORT_data; // @[Decoupled.scala 275:95]
  wire [1:0] ram_features_3_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_features_3_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_features_3_MPORT_en; // @[Decoupled.scala 275:95]
  reg [9:0] ram_offset [0:2]; // @[Decoupled.scala 275:95]
  wire  ram_offset_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [1:0] ram_offset_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire [9:0] ram_offset_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire [9:0] ram_offset_MPORT_data; // @[Decoupled.scala 275:95]
  wire [1:0] ram_offset_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_offset_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_offset_MPORT_en; // @[Decoupled.scala 275:95]
  reg  ram_shift [0:2]; // @[Decoupled.scala 275:95]
  wire  ram_shift_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [1:0] ram_shift_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_shift_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire  ram_shift_MPORT_data; // @[Decoupled.scala 275:95]
  wire [1:0] ram_shift_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_shift_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_shift_MPORT_en; // @[Decoupled.scala 275:95]
  reg  ram_search_for_root [0:2]; // @[Decoupled.scala 275:95]
  wire  ram_search_for_root_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [1:0] ram_search_for_root_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_search_for_root_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire  ram_search_for_root_MPORT_data; // @[Decoupled.scala 275:95]
  wire [1:0] ram_search_for_root_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_search_for_root_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_search_for_root_MPORT_en; // @[Decoupled.scala 275:95]
  reg [7:0] ram_tree_to_exec [0:2]; // @[Decoupled.scala 275:95]
  wire  ram_tree_to_exec_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [1:0] ram_tree_to_exec_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire [7:0] ram_tree_to_exec_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire [7:0] ram_tree_to_exec_MPORT_data; // @[Decoupled.scala 275:95]
  wire [1:0] ram_tree_to_exec_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_tree_to_exec_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_tree_to_exec_MPORT_en; // @[Decoupled.scala 275:95]
  reg [15:0] ram_scores_0 [0:2]; // @[Decoupled.scala 275:95]
  wire  ram_scores_0_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [1:0] ram_scores_0_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire [15:0] ram_scores_0_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire [15:0] ram_scores_0_MPORT_data; // @[Decoupled.scala 275:95]
  wire [1:0] ram_scores_0_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_scores_0_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_scores_0_MPORT_en; // @[Decoupled.scala 275:95]
  reg [15:0] ram_scores_1 [0:2]; // @[Decoupled.scala 275:95]
  wire  ram_scores_1_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [1:0] ram_scores_1_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire [15:0] ram_scores_1_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire [15:0] ram_scores_1_MPORT_data; // @[Decoupled.scala 275:95]
  wire [1:0] ram_scores_1_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_scores_1_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_scores_1_MPORT_en; // @[Decoupled.scala 275:95]
  reg [15:0] ram_scores_2 [0:2]; // @[Decoupled.scala 275:95]
  wire  ram_scores_2_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [1:0] ram_scores_2_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire [15:0] ram_scores_2_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire [15:0] ram_scores_2_MPORT_data; // @[Decoupled.scala 275:95]
  wire [1:0] ram_scores_2_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_scores_2_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_scores_2_MPORT_en; // @[Decoupled.scala 275:95]
  reg [15:0] ram_scores_3 [0:2]; // @[Decoupled.scala 275:95]
  wire  ram_scores_3_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [1:0] ram_scores_3_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire [15:0] ram_scores_3_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire [15:0] ram_scores_3_MPORT_data; // @[Decoupled.scala 275:95]
  wire [1:0] ram_scores_3_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_scores_3_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_scores_3_MPORT_en; // @[Decoupled.scala 275:95]
  reg [15:0] ram_weights_0 [0:2]; // @[Decoupled.scala 275:95]
  wire  ram_weights_0_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [1:0] ram_weights_0_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire [15:0] ram_weights_0_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire [15:0] ram_weights_0_MPORT_data; // @[Decoupled.scala 275:95]
  wire [1:0] ram_weights_0_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_weights_0_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_weights_0_MPORT_en; // @[Decoupled.scala 275:95]
  reg [15:0] ram_weights_1 [0:2]; // @[Decoupled.scala 275:95]
  wire  ram_weights_1_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [1:0] ram_weights_1_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire [15:0] ram_weights_1_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire [15:0] ram_weights_1_MPORT_data; // @[Decoupled.scala 275:95]
  wire [1:0] ram_weights_1_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_weights_1_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_weights_1_MPORT_en; // @[Decoupled.scala 275:95]
  reg  ram_last [0:2]; // @[Decoupled.scala 275:95]
  wire  ram_last_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [1:0] ram_last_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_last_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire  ram_last_MPORT_data; // @[Decoupled.scala 275:95]
  wire [1:0] ram_last_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_last_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_last_MPORT_en; // @[Decoupled.scala 275:95]
  reg [1:0] enq_ptr_value; // @[Counter.scala 61:40]
  reg [1:0] deq_ptr_value; // @[Counter.scala 61:40]
  reg  maybe_full; // @[Decoupled.scala 278:27]
  wire  ptr_match = enq_ptr_value == deq_ptr_value; // @[Decoupled.scala 279:33]
  wire  empty = ptr_match & ~maybe_full; // @[Decoupled.scala 280:25]
  wire  full = ptr_match & maybe_full; // @[Decoupled.scala 281:24]
  wire  do_enq = io_enq_ready & io_enq_valid; // @[Decoupled.scala 52:35]
  wire  do_deq = io_deq_ready & io_deq_valid; // @[Decoupled.scala 52:35]
  wire  wrap = enq_ptr_value == 2'h2; // @[Counter.scala 73:24]
  wire [1:0] _value_T_1 = enq_ptr_value + 2'h1; // @[Counter.scala 77:24]
  wire  wrap_1 = deq_ptr_value == 2'h2; // @[Counter.scala 73:24]
  wire [1:0] _value_T_3 = deq_ptr_value + 2'h1; // @[Counter.scala 77:24]
  assign ram_features_0_io_deq_bits_MPORT_en = 1'h1;
  assign ram_features_0_io_deq_bits_MPORT_addr = deq_ptr_value;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign ram_features_0_io_deq_bits_MPORT_data = ram_features_0[ram_features_0_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `else
  assign ram_features_0_io_deq_bits_MPORT_data = ram_features_0_io_deq_bits_MPORT_addr >= 2'h3 ? _RAND_1[15:0] :
    ram_features_0[ram_features_0_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign ram_features_0_MPORT_data = io_enq_bits_features_0;
  assign ram_features_0_MPORT_addr = enq_ptr_value;
  assign ram_features_0_MPORT_mask = 1'h1;
  assign ram_features_0_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_features_1_io_deq_bits_MPORT_en = 1'h1;
  assign ram_features_1_io_deq_bits_MPORT_addr = deq_ptr_value;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign ram_features_1_io_deq_bits_MPORT_data = ram_features_1[ram_features_1_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `else
  assign ram_features_1_io_deq_bits_MPORT_data = ram_features_1_io_deq_bits_MPORT_addr >= 2'h3 ? _RAND_3[15:0] :
    ram_features_1[ram_features_1_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign ram_features_1_MPORT_data = io_enq_bits_features_1;
  assign ram_features_1_MPORT_addr = enq_ptr_value;
  assign ram_features_1_MPORT_mask = 1'h1;
  assign ram_features_1_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_features_2_io_deq_bits_MPORT_en = 1'h1;
  assign ram_features_2_io_deq_bits_MPORT_addr = deq_ptr_value;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign ram_features_2_io_deq_bits_MPORT_data = ram_features_2[ram_features_2_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `else
  assign ram_features_2_io_deq_bits_MPORT_data = ram_features_2_io_deq_bits_MPORT_addr >= 2'h3 ? _RAND_5[15:0] :
    ram_features_2[ram_features_2_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign ram_features_2_MPORT_data = io_enq_bits_features_2;
  assign ram_features_2_MPORT_addr = enq_ptr_value;
  assign ram_features_2_MPORT_mask = 1'h1;
  assign ram_features_2_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_features_3_io_deq_bits_MPORT_en = 1'h1;
  assign ram_features_3_io_deq_bits_MPORT_addr = deq_ptr_value;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign ram_features_3_io_deq_bits_MPORT_data = ram_features_3[ram_features_3_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `else
  assign ram_features_3_io_deq_bits_MPORT_data = ram_features_3_io_deq_bits_MPORT_addr >= 2'h3 ? _RAND_7[15:0] :
    ram_features_3[ram_features_3_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign ram_features_3_MPORT_data = io_enq_bits_features_3;
  assign ram_features_3_MPORT_addr = enq_ptr_value;
  assign ram_features_3_MPORT_mask = 1'h1;
  assign ram_features_3_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_offset_io_deq_bits_MPORT_en = 1'h1;
  assign ram_offset_io_deq_bits_MPORT_addr = deq_ptr_value;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign ram_offset_io_deq_bits_MPORT_data = ram_offset[ram_offset_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `else
  assign ram_offset_io_deq_bits_MPORT_data = ram_offset_io_deq_bits_MPORT_addr >= 2'h3 ? _RAND_9[9:0] :
    ram_offset[ram_offset_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign ram_offset_MPORT_data = io_enq_bits_offset;
  assign ram_offset_MPORT_addr = enq_ptr_value;
  assign ram_offset_MPORT_mask = 1'h1;
  assign ram_offset_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_shift_io_deq_bits_MPORT_en = 1'h1;
  assign ram_shift_io_deq_bits_MPORT_addr = deq_ptr_value;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign ram_shift_io_deq_bits_MPORT_data = ram_shift[ram_shift_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `else
  assign ram_shift_io_deq_bits_MPORT_data = ram_shift_io_deq_bits_MPORT_addr >= 2'h3 ? _RAND_11[0:0] :
    ram_shift[ram_shift_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign ram_shift_MPORT_data = io_enq_bits_shift;
  assign ram_shift_MPORT_addr = enq_ptr_value;
  assign ram_shift_MPORT_mask = 1'h1;
  assign ram_shift_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_search_for_root_io_deq_bits_MPORT_en = 1'h1;
  assign ram_search_for_root_io_deq_bits_MPORT_addr = deq_ptr_value;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign ram_search_for_root_io_deq_bits_MPORT_data = ram_search_for_root[ram_search_for_root_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `else
  assign ram_search_for_root_io_deq_bits_MPORT_data = ram_search_for_root_io_deq_bits_MPORT_addr >= 2'h3 ? _RAND_13[0:0]
     : ram_search_for_root[ram_search_for_root_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign ram_search_for_root_MPORT_data = io_enq_bits_search_for_root;
  assign ram_search_for_root_MPORT_addr = enq_ptr_value;
  assign ram_search_for_root_MPORT_mask = 1'h1;
  assign ram_search_for_root_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_tree_to_exec_io_deq_bits_MPORT_en = 1'h1;
  assign ram_tree_to_exec_io_deq_bits_MPORT_addr = deq_ptr_value;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign ram_tree_to_exec_io_deq_bits_MPORT_data = ram_tree_to_exec[ram_tree_to_exec_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `else
  assign ram_tree_to_exec_io_deq_bits_MPORT_data = ram_tree_to_exec_io_deq_bits_MPORT_addr >= 2'h3 ? _RAND_15[7:0] :
    ram_tree_to_exec[ram_tree_to_exec_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign ram_tree_to_exec_MPORT_data = io_enq_bits_tree_to_exec;
  assign ram_tree_to_exec_MPORT_addr = enq_ptr_value;
  assign ram_tree_to_exec_MPORT_mask = 1'h1;
  assign ram_tree_to_exec_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_scores_0_io_deq_bits_MPORT_en = 1'h1;
  assign ram_scores_0_io_deq_bits_MPORT_addr = deq_ptr_value;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign ram_scores_0_io_deq_bits_MPORT_data = ram_scores_0[ram_scores_0_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `else
  assign ram_scores_0_io_deq_bits_MPORT_data = ram_scores_0_io_deq_bits_MPORT_addr >= 2'h3 ? _RAND_17[15:0] :
    ram_scores_0[ram_scores_0_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign ram_scores_0_MPORT_data = io_enq_bits_scores_0;
  assign ram_scores_0_MPORT_addr = enq_ptr_value;
  assign ram_scores_0_MPORT_mask = 1'h1;
  assign ram_scores_0_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_scores_1_io_deq_bits_MPORT_en = 1'h1;
  assign ram_scores_1_io_deq_bits_MPORT_addr = deq_ptr_value;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign ram_scores_1_io_deq_bits_MPORT_data = ram_scores_1[ram_scores_1_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `else
  assign ram_scores_1_io_deq_bits_MPORT_data = ram_scores_1_io_deq_bits_MPORT_addr >= 2'h3 ? _RAND_19[15:0] :
    ram_scores_1[ram_scores_1_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign ram_scores_1_MPORT_data = io_enq_bits_scores_1;
  assign ram_scores_1_MPORT_addr = enq_ptr_value;
  assign ram_scores_1_MPORT_mask = 1'h1;
  assign ram_scores_1_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_scores_2_io_deq_bits_MPORT_en = 1'h1;
  assign ram_scores_2_io_deq_bits_MPORT_addr = deq_ptr_value;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign ram_scores_2_io_deq_bits_MPORT_data = ram_scores_2[ram_scores_2_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `else
  assign ram_scores_2_io_deq_bits_MPORT_data = ram_scores_2_io_deq_bits_MPORT_addr >= 2'h3 ? _RAND_21[15:0] :
    ram_scores_2[ram_scores_2_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign ram_scores_2_MPORT_data = io_enq_bits_scores_2;
  assign ram_scores_2_MPORT_addr = enq_ptr_value;
  assign ram_scores_2_MPORT_mask = 1'h1;
  assign ram_scores_2_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_scores_3_io_deq_bits_MPORT_en = 1'h1;
  assign ram_scores_3_io_deq_bits_MPORT_addr = deq_ptr_value;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign ram_scores_3_io_deq_bits_MPORT_data = ram_scores_3[ram_scores_3_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `else
  assign ram_scores_3_io_deq_bits_MPORT_data = ram_scores_3_io_deq_bits_MPORT_addr >= 2'h3 ? _RAND_23[15:0] :
    ram_scores_3[ram_scores_3_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign ram_scores_3_MPORT_data = io_enq_bits_scores_3;
  assign ram_scores_3_MPORT_addr = enq_ptr_value;
  assign ram_scores_3_MPORT_mask = 1'h1;
  assign ram_scores_3_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_weights_0_io_deq_bits_MPORT_en = 1'h1;
  assign ram_weights_0_io_deq_bits_MPORT_addr = deq_ptr_value;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign ram_weights_0_io_deq_bits_MPORT_data = ram_weights_0[ram_weights_0_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `else
  assign ram_weights_0_io_deq_bits_MPORT_data = ram_weights_0_io_deq_bits_MPORT_addr >= 2'h3 ? _RAND_25[15:0] :
    ram_weights_0[ram_weights_0_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign ram_weights_0_MPORT_data = io_enq_bits_weights_0;
  assign ram_weights_0_MPORT_addr = enq_ptr_value;
  assign ram_weights_0_MPORT_mask = 1'h1;
  assign ram_weights_0_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_weights_1_io_deq_bits_MPORT_en = 1'h1;
  assign ram_weights_1_io_deq_bits_MPORT_addr = deq_ptr_value;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign ram_weights_1_io_deq_bits_MPORT_data = ram_weights_1[ram_weights_1_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `else
  assign ram_weights_1_io_deq_bits_MPORT_data = ram_weights_1_io_deq_bits_MPORT_addr >= 2'h3 ? _RAND_27[15:0] :
    ram_weights_1[ram_weights_1_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign ram_weights_1_MPORT_data = io_enq_bits_weights_1;
  assign ram_weights_1_MPORT_addr = enq_ptr_value;
  assign ram_weights_1_MPORT_mask = 1'h1;
  assign ram_weights_1_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_last_io_deq_bits_MPORT_en = 1'h1;
  assign ram_last_io_deq_bits_MPORT_addr = deq_ptr_value;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign ram_last_io_deq_bits_MPORT_data = ram_last[ram_last_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `else
  assign ram_last_io_deq_bits_MPORT_data = ram_last_io_deq_bits_MPORT_addr >= 2'h3 ? _RAND_29[0:0] :
    ram_last[ram_last_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign ram_last_MPORT_data = io_enq_bits_last;
  assign ram_last_MPORT_addr = enq_ptr_value;
  assign ram_last_MPORT_mask = 1'h1;
  assign ram_last_MPORT_en = io_enq_ready & io_enq_valid;
  assign io_enq_ready = ~full; // @[Decoupled.scala 305:19]
  assign io_deq_valid = ~empty; // @[Decoupled.scala 304:19]
  assign io_deq_bits_features_0 = ram_features_0_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_features_1 = ram_features_1_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_features_2 = ram_features_2_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_features_3 = ram_features_3_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_offset = ram_offset_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_shift = ram_shift_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_search_for_root = ram_search_for_root_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_tree_to_exec = ram_tree_to_exec_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_scores_0 = ram_scores_0_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_scores_1 = ram_scores_1_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_scores_2 = ram_scores_2_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_scores_3 = ram_scores_3_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_weights_0 = ram_weights_0_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_weights_1 = ram_weights_1_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_last = ram_last_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  always @(posedge clock) begin
    if (ram_features_0_MPORT_en & ram_features_0_MPORT_mask) begin
      ram_features_0[ram_features_0_MPORT_addr] <= ram_features_0_MPORT_data; // @[Decoupled.scala 275:95]
    end
    if (ram_features_1_MPORT_en & ram_features_1_MPORT_mask) begin
      ram_features_1[ram_features_1_MPORT_addr] <= ram_features_1_MPORT_data; // @[Decoupled.scala 275:95]
    end
    if (ram_features_2_MPORT_en & ram_features_2_MPORT_mask) begin
      ram_features_2[ram_features_2_MPORT_addr] <= ram_features_2_MPORT_data; // @[Decoupled.scala 275:95]
    end
    if (ram_features_3_MPORT_en & ram_features_3_MPORT_mask) begin
      ram_features_3[ram_features_3_MPORT_addr] <= ram_features_3_MPORT_data; // @[Decoupled.scala 275:95]
    end
    if (ram_offset_MPORT_en & ram_offset_MPORT_mask) begin
      ram_offset[ram_offset_MPORT_addr] <= ram_offset_MPORT_data; // @[Decoupled.scala 275:95]
    end
    if (ram_shift_MPORT_en & ram_shift_MPORT_mask) begin
      ram_shift[ram_shift_MPORT_addr] <= ram_shift_MPORT_data; // @[Decoupled.scala 275:95]
    end
    if (ram_search_for_root_MPORT_en & ram_search_for_root_MPORT_mask) begin
      ram_search_for_root[ram_search_for_root_MPORT_addr] <= ram_search_for_root_MPORT_data; // @[Decoupled.scala 275:95]
    end
    if (ram_tree_to_exec_MPORT_en & ram_tree_to_exec_MPORT_mask) begin
      ram_tree_to_exec[ram_tree_to_exec_MPORT_addr] <= ram_tree_to_exec_MPORT_data; // @[Decoupled.scala 275:95]
    end
    if (ram_scores_0_MPORT_en & ram_scores_0_MPORT_mask) begin
      ram_scores_0[ram_scores_0_MPORT_addr] <= ram_scores_0_MPORT_data; // @[Decoupled.scala 275:95]
    end
    if (ram_scores_1_MPORT_en & ram_scores_1_MPORT_mask) begin
      ram_scores_1[ram_scores_1_MPORT_addr] <= ram_scores_1_MPORT_data; // @[Decoupled.scala 275:95]
    end
    if (ram_scores_2_MPORT_en & ram_scores_2_MPORT_mask) begin
      ram_scores_2[ram_scores_2_MPORT_addr] <= ram_scores_2_MPORT_data; // @[Decoupled.scala 275:95]
    end
    if (ram_scores_3_MPORT_en & ram_scores_3_MPORT_mask) begin
      ram_scores_3[ram_scores_3_MPORT_addr] <= ram_scores_3_MPORT_data; // @[Decoupled.scala 275:95]
    end
    if (ram_weights_0_MPORT_en & ram_weights_0_MPORT_mask) begin
      ram_weights_0[ram_weights_0_MPORT_addr] <= ram_weights_0_MPORT_data; // @[Decoupled.scala 275:95]
    end
    if (ram_weights_1_MPORT_en & ram_weights_1_MPORT_mask) begin
      ram_weights_1[ram_weights_1_MPORT_addr] <= ram_weights_1_MPORT_data; // @[Decoupled.scala 275:95]
    end
    if (ram_last_MPORT_en & ram_last_MPORT_mask) begin
      ram_last[ram_last_MPORT_addr] <= ram_last_MPORT_data; // @[Decoupled.scala 275:95]
    end
    if (reset) begin // @[Counter.scala 61:40]
      enq_ptr_value <= 2'h0; // @[Counter.scala 61:40]
    end else if (do_enq) begin // @[Decoupled.scala 288:16]
      if (wrap) begin // @[Counter.scala 87:20]
        enq_ptr_value <= 2'h0; // @[Counter.scala 87:28]
      end else begin
        enq_ptr_value <= _value_T_1; // @[Counter.scala 77:15]
      end
    end
    if (reset) begin // @[Counter.scala 61:40]
      deq_ptr_value <= 2'h0; // @[Counter.scala 61:40]
    end else if (do_deq) begin // @[Decoupled.scala 292:16]
      if (wrap_1) begin // @[Counter.scala 87:20]
        deq_ptr_value <= 2'h0; // @[Counter.scala 87:28]
      end else begin
        deq_ptr_value <= _value_T_3; // @[Counter.scala 77:15]
      end
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
`ifdef RANDOMIZE_GARBAGE_ASSIGN
  _RAND_1 = {1{`RANDOM}};
  _RAND_3 = {1{`RANDOM}};
  _RAND_5 = {1{`RANDOM}};
  _RAND_7 = {1{`RANDOM}};
  _RAND_9 = {1{`RANDOM}};
  _RAND_11 = {1{`RANDOM}};
  _RAND_13 = {1{`RANDOM}};
  _RAND_15 = {1{`RANDOM}};
  _RAND_17 = {1{`RANDOM}};
  _RAND_19 = {1{`RANDOM}};
  _RAND_21 = {1{`RANDOM}};
  _RAND_23 = {1{`RANDOM}};
  _RAND_25 = {1{`RANDOM}};
  _RAND_27 = {1{`RANDOM}};
  _RAND_29 = {1{`RANDOM}};
`endif // RANDOMIZE_GARBAGE_ASSIGN
`ifdef RANDOMIZE_MEM_INIT
  _RAND_0 = {1{`RANDOM}};
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    ram_features_0[initvar] = _RAND_0[15:0];
  _RAND_2 = {1{`RANDOM}};
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    ram_features_1[initvar] = _RAND_2[15:0];
  _RAND_4 = {1{`RANDOM}};
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    ram_features_2[initvar] = _RAND_4[15:0];
  _RAND_6 = {1{`RANDOM}};
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    ram_features_3[initvar] = _RAND_6[15:0];
  _RAND_8 = {1{`RANDOM}};
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    ram_offset[initvar] = _RAND_8[9:0];
  _RAND_10 = {1{`RANDOM}};
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    ram_shift[initvar] = _RAND_10[0:0];
  _RAND_12 = {1{`RANDOM}};
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    ram_search_for_root[initvar] = _RAND_12[0:0];
  _RAND_14 = {1{`RANDOM}};
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    ram_tree_to_exec[initvar] = _RAND_14[7:0];
  _RAND_16 = {1{`RANDOM}};
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    ram_scores_0[initvar] = _RAND_16[15:0];
  _RAND_18 = {1{`RANDOM}};
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    ram_scores_1[initvar] = _RAND_18[15:0];
  _RAND_20 = {1{`RANDOM}};
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    ram_scores_2[initvar] = _RAND_20[15:0];
  _RAND_22 = {1{`RANDOM}};
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    ram_scores_3[initvar] = _RAND_22[15:0];
  _RAND_24 = {1{`RANDOM}};
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    ram_weights_0[initvar] = _RAND_24[15:0];
  _RAND_26 = {1{`RANDOM}};
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    ram_weights_1[initvar] = _RAND_26[15:0];
  _RAND_28 = {1{`RANDOM}};
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    ram_last[initvar] = _RAND_28[0:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_30 = {1{`RANDOM}};
  enq_ptr_value = _RAND_30[1:0];
  _RAND_31 = {1{`RANDOM}};
  deq_ptr_value = _RAND_31[1:0];
  _RAND_32 = {1{`RANDOM}};
  maybe_full = _RAND_32[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module BackwardConverter(
  input          clock,
  input          reset,
  output         io_sample_in_ready,
  input          io_sample_in_valid,
  input  [15:0]  io_sample_in_bits_features_0,
  input  [15:0]  io_sample_in_bits_features_1,
  input  [15:0]  io_sample_in_bits_features_2,
  input  [15:0]  io_sample_in_bits_features_3,
  input  [9:0]   io_sample_in_bits_offset,
  input          io_sample_in_bits_shift,
  input          io_sample_in_bits_search_for_root,
  input  [7:0]   io_sample_in_bits_tree_to_exec,
  input  [15:0]  io_sample_in_bits_scores_0,
  input  [15:0]  io_sample_in_bits_scores_1,
  input  [15:0]  io_sample_in_bits_scores_2,
  input  [15:0]  io_sample_in_bits_scores_3,
  input  [15:0]  io_sample_in_bits_weights_0,
  input  [15:0]  io_sample_in_bits_weights_1,
  input          io_sample_in_bits_last,
  output [239:0] io_sample_out_TDATA,
  output         io_sample_out_TLAST,
  input          io_sample_out_TREADY,
  output         io_sample_out_TVALID
);
  wire  queue_clock; // @[Decoupled.scala 377:21]
  wire  queue_reset; // @[Decoupled.scala 377:21]
  wire  queue_io_enq_ready; // @[Decoupled.scala 377:21]
  wire  queue_io_enq_valid; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_features_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_features_1; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_features_2; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_features_3; // @[Decoupled.scala 377:21]
  wire [9:0] queue_io_enq_bits_offset; // @[Decoupled.scala 377:21]
  wire  queue_io_enq_bits_shift; // @[Decoupled.scala 377:21]
  wire  queue_io_enq_bits_search_for_root; // @[Decoupled.scala 377:21]
  wire [7:0] queue_io_enq_bits_tree_to_exec; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_scores_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_scores_1; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_scores_2; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_scores_3; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_weights_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_weights_1; // @[Decoupled.scala 377:21]
  wire  queue_io_enq_bits_last; // @[Decoupled.scala 377:21]
  wire  queue_io_deq_ready; // @[Decoupled.scala 377:21]
  wire  queue_io_deq_valid; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_features_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_features_1; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_features_2; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_features_3; // @[Decoupled.scala 377:21]
  wire [9:0] queue_io_deq_bits_offset; // @[Decoupled.scala 377:21]
  wire  queue_io_deq_bits_shift; // @[Decoupled.scala 377:21]
  wire  queue_io_deq_bits_search_for_root; // @[Decoupled.scala 377:21]
  wire [7:0] queue_io_deq_bits_tree_to_exec; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_scores_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_scores_1; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_scores_2; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_scores_3; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_weights_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_weights_1; // @[Decoupled.scala 377:21]
  wire  queue_io_deq_bits_last; // @[Decoupled.scala 377:21]
  wire [119:0] io_sample_out_TDATA_hi_3 = {queue_io_deq_bits_weights_1,queue_io_deq_bits_weights_0,
    queue_io_deq_bits_scores_3,queue_io_deq_bits_scores_2,queue_io_deq_bits_scores_1,queue_io_deq_bits_scores_0,8'h0,
    queue_io_deq_bits_tree_to_exec,7'h0,queue_io_deq_bits_search_for_root}; // @[Cat.scala 33:92]
  wire [207:0] _io_sample_out_TDATA_T_11 = {io_sample_out_TDATA_hi_3,7'h0,queue_io_deq_bits_shift,6'h0,
    queue_io_deq_bits_offset,queue_io_deq_bits_features_3,queue_io_deq_bits_features_2,queue_io_deq_bits_features_1,
    queue_io_deq_bits_features_0}; // @[Cat.scala 33:92]
  Queue_3 queue ( // @[Decoupled.scala 377:21]
    .clock(queue_clock),
    .reset(queue_reset),
    .io_enq_ready(queue_io_enq_ready),
    .io_enq_valid(queue_io_enq_valid),
    .io_enq_bits_features_0(queue_io_enq_bits_features_0),
    .io_enq_bits_features_1(queue_io_enq_bits_features_1),
    .io_enq_bits_features_2(queue_io_enq_bits_features_2),
    .io_enq_bits_features_3(queue_io_enq_bits_features_3),
    .io_enq_bits_offset(queue_io_enq_bits_offset),
    .io_enq_bits_shift(queue_io_enq_bits_shift),
    .io_enq_bits_search_for_root(queue_io_enq_bits_search_for_root),
    .io_enq_bits_tree_to_exec(queue_io_enq_bits_tree_to_exec),
    .io_enq_bits_scores_0(queue_io_enq_bits_scores_0),
    .io_enq_bits_scores_1(queue_io_enq_bits_scores_1),
    .io_enq_bits_scores_2(queue_io_enq_bits_scores_2),
    .io_enq_bits_scores_3(queue_io_enq_bits_scores_3),
    .io_enq_bits_weights_0(queue_io_enq_bits_weights_0),
    .io_enq_bits_weights_1(queue_io_enq_bits_weights_1),
    .io_enq_bits_last(queue_io_enq_bits_last),
    .io_deq_ready(queue_io_deq_ready),
    .io_deq_valid(queue_io_deq_valid),
    .io_deq_bits_features_0(queue_io_deq_bits_features_0),
    .io_deq_bits_features_1(queue_io_deq_bits_features_1),
    .io_deq_bits_features_2(queue_io_deq_bits_features_2),
    .io_deq_bits_features_3(queue_io_deq_bits_features_3),
    .io_deq_bits_offset(queue_io_deq_bits_offset),
    .io_deq_bits_shift(queue_io_deq_bits_shift),
    .io_deq_bits_search_for_root(queue_io_deq_bits_search_for_root),
    .io_deq_bits_tree_to_exec(queue_io_deq_bits_tree_to_exec),
    .io_deq_bits_scores_0(queue_io_deq_bits_scores_0),
    .io_deq_bits_scores_1(queue_io_deq_bits_scores_1),
    .io_deq_bits_scores_2(queue_io_deq_bits_scores_2),
    .io_deq_bits_scores_3(queue_io_deq_bits_scores_3),
    .io_deq_bits_weights_0(queue_io_deq_bits_weights_0),
    .io_deq_bits_weights_1(queue_io_deq_bits_weights_1),
    .io_deq_bits_last(queue_io_deq_bits_last)
  );
  assign io_sample_in_ready = queue_io_enq_ready; // @[Decoupled.scala 381:17]
  assign io_sample_out_TDATA = {{32'd0}, _io_sample_out_TDATA_T_11}; // @[Converter.scala 50:25]
  assign io_sample_out_TLAST = queue_io_deq_bits_last; // @[Converter.scala 43:25]
  assign io_sample_out_TVALID = queue_io_deq_valid; // @[Converter.scala 44:26]
  assign queue_clock = clock;
  assign queue_reset = reset;
  assign queue_io_enq_valid = io_sample_in_valid; // @[Decoupled.scala 379:22]
  assign queue_io_enq_bits_features_0 = io_sample_in_bits_features_0; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_features_1 = io_sample_in_bits_features_1; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_features_2 = io_sample_in_bits_features_2; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_features_3 = io_sample_in_bits_features_3; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_offset = io_sample_in_bits_offset; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_shift = io_sample_in_bits_shift; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_search_for_root = io_sample_in_bits_search_for_root; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_tree_to_exec = io_sample_in_bits_tree_to_exec; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_scores_0 = io_sample_in_bits_scores_0; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_scores_1 = io_sample_in_bits_scores_1; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_scores_2 = io_sample_in_bits_scores_2; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_scores_3 = io_sample_in_bits_scores_3; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_weights_0 = io_sample_in_bits_weights_0; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_weights_1 = io_sample_in_bits_weights_1; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_last = io_sample_in_bits_last; // @[Decoupled.scala 380:21]
  assign queue_io_deq_ready = io_sample_out_TREADY; // @[Converter.scala 40:17]
endmodule
module TreePE(
  input         clock,
  input         reset,
  output        io_sample_in_ready,
  input         io_sample_in_valid,
  input  [15:0] io_sample_in_bits_features_0,
  input  [15:0] io_sample_in_bits_features_1,
  input  [15:0] io_sample_in_bits_features_2,
  input  [15:0] io_sample_in_bits_features_3,
  input  [9:0]  io_sample_in_bits_offset,
  input         io_sample_in_bits_shift,
  input         io_sample_in_bits_search_for_root,
  input  [7:0]  io_sample_in_bits_tree_to_exec,
  input  [15:0] io_sample_in_bits_scores_0,
  input  [15:0] io_sample_in_bits_scores_1,
  input  [15:0] io_sample_in_bits_scores_2,
  input  [15:0] io_sample_in_bits_scores_3,
  input  [15:0] io_sample_in_bits_weights_0,
  input  [15:0] io_sample_in_bits_weights_1,
  input         io_sample_in_bits_last,
  output [9:0]  io_mem_addr_1,
  input  [63:0] io_mem_dataOut_1,
  input         io_sample_out_ready,
  output        io_sample_out_valid,
  output [15:0] io_sample_out_bits_features_0,
  output [15:0] io_sample_out_bits_features_1,
  output [15:0] io_sample_out_bits_features_2,
  output [15:0] io_sample_out_bits_features_3,
  output [9:0]  io_sample_out_bits_offset,
  output        io_sample_out_bits_search_for_root,
  output [7:0]  io_sample_out_bits_tree_to_exec,
  output [15:0] io_sample_out_bits_scores_0,
  output [15:0] io_sample_out_bits_scores_1,
  output [15:0] io_sample_out_bits_scores_2,
  output [15:0] io_sample_out_bits_scores_3,
  output [15:0] io_sample_out_bits_weights_0,
  output [15:0] io_sample_out_bits_weights_1,
  output        io_sample_out_bits_last
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
`endif // RANDOMIZE_REG_INIT
  wire  queue_clock; // @[Decoupled.scala 377:21]
  wire  queue_reset; // @[Decoupled.scala 377:21]
  wire  queue_io_enq_ready; // @[Decoupled.scala 377:21]
  wire  queue_io_enq_valid; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_features_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_features_1; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_features_2; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_features_3; // @[Decoupled.scala 377:21]
  wire [9:0] queue_io_enq_bits_offset; // @[Decoupled.scala 377:21]
  wire  queue_io_enq_bits_shift; // @[Decoupled.scala 377:21]
  wire  queue_io_enq_bits_search_for_root; // @[Decoupled.scala 377:21]
  wire [7:0] queue_io_enq_bits_tree_to_exec; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_scores_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_scores_1; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_scores_2; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_scores_3; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_weights_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_weights_1; // @[Decoupled.scala 377:21]
  wire  queue_io_enq_bits_last; // @[Decoupled.scala 377:21]
  wire  queue_io_deq_ready; // @[Decoupled.scala 377:21]
  wire  queue_io_deq_valid; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_features_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_features_1; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_features_2; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_features_3; // @[Decoupled.scala 377:21]
  wire [9:0] queue_io_deq_bits_offset; // @[Decoupled.scala 377:21]
  wire  queue_io_deq_bits_shift; // @[Decoupled.scala 377:21]
  wire  queue_io_deq_bits_search_for_root; // @[Decoupled.scala 377:21]
  wire [7:0] queue_io_deq_bits_tree_to_exec; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_scores_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_scores_1; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_scores_2; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_scores_3; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_weights_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_weights_1; // @[Decoupled.scala 377:21]
  wire  queue_io_deq_bits_last; // @[Decoupled.scala 377:21]
  wire [1:0] attr_id = io_mem_dataOut_1[33:32]; // @[TreePE.scala 29:35]
  wire [9:0] leftChildInfo = io_mem_dataOut_1[43:34]; // @[TreePE.scala 32:41]
  wire [9:0] rightChildInfo = io_mem_dataOut_1[53:44]; // @[TreePE.scala 33:42]
  wire  leftChildType = io_mem_dataOut_1[54]; // @[TreePE.scala 34:41]
  wire  rightChildType = io_mem_dataOut_1[55]; // @[TreePE.scala 35:42]
  wire  is_valid = io_mem_dataOut_1[56]; // @[TreePE.scala 36:36]
  wire [2:0] depth_indicator = io_mem_dataOut_1[59:57]; // @[TreePE.scala 37:43]
  reg [15:0] REG__0; // @[TreePE.scala 39:43]
  reg [15:0] REG__1; // @[TreePE.scala 39:43]
  reg [15:0] REG__2; // @[TreePE.scala 39:43]
  reg [15:0] REG__3; // @[TreePE.scala 39:43]
  reg [15:0] REG_1_0; // @[TreePE.scala 40:42]
  reg [15:0] REG_1_1; // @[TreePE.scala 40:42]
  reg [7:0] io_sample_out_bits_tree_to_exec_REG; // @[TreePE.scala 41:47]
  reg [15:0] REG_2_0; // @[TreePE.scala 42:41]
  reg [15:0] REG_2_1; // @[TreePE.scala 42:41]
  reg [15:0] REG_2_2; // @[TreePE.scala 42:41]
  reg [15:0] REG_2_3; // @[TreePE.scala 42:41]
  reg [15:0] features_bits_0; // @[TreePE.scala 47:34]
  reg [15:0] features_bits_1; // @[TreePE.scala 47:34]
  reg [15:0] features_bits_2; // @[TreePE.scala 47:34]
  reg [15:0] features_bits_3; // @[TreePE.scala 47:34]
  wire [19:0] _T = io_mem_dataOut_1[19:0]; // @[TreePE.scala 48:59]
  wire [15:0] _GEN_1 = 2'h1 == attr_id ? $signed(features_bits_1) : $signed(features_bits_0); // @[TreePE.scala 48:{35,35}]
  wire [15:0] _GEN_2 = 2'h2 == attr_id ? $signed(features_bits_2) : $signed(_GEN_1); // @[TreePE.scala 48:{35,35}]
  wire [15:0] _GEN_3 = 2'h3 == attr_id ? $signed(features_bits_3) : $signed(_GEN_2); // @[TreePE.scala 48:{35,35}]
  wire [19:0] _GEN_36 = {{4{_GEN_3[15]}},_GEN_3}; // @[TreePE.scala 48:35]
  wire  shift = $signed(_GEN_36) < $signed(_T) ? leftChildType : rightChildType; // @[TreePE.scala 48:66 49:15 52:15]
  wire [9:0] offset = $signed(_GEN_36) < $signed(_T) ? leftChildInfo : rightChildInfo; // @[TreePE.scala 48:66 50:16 53:16]
  reg [7:0] io_sample_out_bits_offset_REG; // @[TreePE.scala 56:45]
  reg [15:0] scores_bits_0; // @[TreePE.scala 59:34]
  reg [15:0] scores_bits_1; // @[TreePE.scala 59:34]
  reg [15:0] scores_bits_2; // @[TreePE.scala 59:34]
  reg [15:0] scores_bits_3; // @[TreePE.scala 59:34]
  reg [15:0] weights_bits_0; // @[TreePE.scala 60:35]
  reg [15:0] weights_bits_1; // @[TreePE.scala 60:35]
  wire [15:0] _GEN_7 = 2'h1 == offset[1:0] ? $signed(scores_bits_1) : $signed(scores_bits_0); // @[TreePE.scala 62:{70,70}]
  wire [15:0] _GEN_8 = 2'h2 == offset[1:0] ? $signed(scores_bits_2) : $signed(_GEN_7); // @[TreePE.scala 62:{70,70}]
  wire [15:0] _GEN_9 = 2'h3 == offset[1:0] ? $signed(scores_bits_3) : $signed(_GEN_8); // @[TreePE.scala 62:{70,70}]
  wire [15:0] _GEN_11 = depth_indicator[0] ? $signed(weights_bits_1) : $signed(weights_bits_0); // @[TreePE.scala 62:{70,70}]
  wire [15:0] _io_sample_out_bits_scores_T_4 = $signed(_GEN_9) + $signed(_GEN_11); // @[TreePE.scala 62:70]
  wire [15:0] _GEN_12 = 2'h0 == offset[1:0] ? $signed(_io_sample_out_bits_scores_T_4) : $signed(REG_2_0); // @[TreePE.scala 42:31 62:{47,47}]
  wire [15:0] _GEN_13 = 2'h1 == offset[1:0] ? $signed(_io_sample_out_bits_scores_T_4) : $signed(REG_2_1); // @[TreePE.scala 42:31 62:{47,47}]
  wire [15:0] _GEN_14 = 2'h2 == offset[1:0] ? $signed(_io_sample_out_bits_scores_T_4) : $signed(REG_2_2); // @[TreePE.scala 42:31 62:{47,47}]
  wire [15:0] _GEN_15 = 2'h3 == offset[1:0] ? $signed(_io_sample_out_bits_scores_T_4) : $signed(REG_2_3); // @[TreePE.scala 42:31 62:{47,47}]
  wire [15:0] _GEN_16 = 2'h0 == offset[1:0] ? $signed(_GEN_9) : $signed(REG_2_0); // @[TreePE.scala 42:31 64:{47,47}]
  wire [15:0] _GEN_17 = 2'h1 == offset[1:0] ? $signed(_GEN_9) : $signed(REG_2_1); // @[TreePE.scala 42:31 64:{47,47}]
  wire [15:0] _GEN_18 = 2'h2 == offset[1:0] ? $signed(_GEN_9) : $signed(REG_2_2); // @[TreePE.scala 42:31 64:{47,47}]
  wire [15:0] _GEN_19 = 2'h3 == offset[1:0] ? $signed(_GEN_9) : $signed(REG_2_3); // @[TreePE.scala 42:31 64:{47,47}]
  wire [15:0] _GEN_24 = is_valid ? $signed(_GEN_12) : $signed(_GEN_16); // @[TreePE.scala 61:23]
  wire [15:0] _GEN_25 = is_valid ? $signed(_GEN_13) : $signed(_GEN_17); // @[TreePE.scala 61:23]
  wire [15:0] _GEN_26 = is_valid ? $signed(_GEN_14) : $signed(_GEN_18); // @[TreePE.scala 61:23]
  wire [15:0] _GEN_27 = is_valid ? $signed(_GEN_15) : $signed(_GEN_19); // @[TreePE.scala 61:23]
  reg [15:0] REG_3_0; // @[TreePE.scala 69:45]
  reg [15:0] REG_3_1; // @[TreePE.scala 69:45]
  reg [15:0] REG_3_2; // @[TreePE.scala 69:45]
  reg [15:0] REG_3_3; // @[TreePE.scala 69:45]
  reg  io_sample_out_bits_last_REG; // @[TreePE.scala 115:39]
  reg  io_sample_out_valid_REG; // @[TreePE.scala 116:35]
  reg  queue_io_deq_ready_REG; // @[TreePE.scala 117:27]
  Queue_3 queue ( // @[Decoupled.scala 377:21]
    .clock(queue_clock),
    .reset(queue_reset),
    .io_enq_ready(queue_io_enq_ready),
    .io_enq_valid(queue_io_enq_valid),
    .io_enq_bits_features_0(queue_io_enq_bits_features_0),
    .io_enq_bits_features_1(queue_io_enq_bits_features_1),
    .io_enq_bits_features_2(queue_io_enq_bits_features_2),
    .io_enq_bits_features_3(queue_io_enq_bits_features_3),
    .io_enq_bits_offset(queue_io_enq_bits_offset),
    .io_enq_bits_shift(queue_io_enq_bits_shift),
    .io_enq_bits_search_for_root(queue_io_enq_bits_search_for_root),
    .io_enq_bits_tree_to_exec(queue_io_enq_bits_tree_to_exec),
    .io_enq_bits_scores_0(queue_io_enq_bits_scores_0),
    .io_enq_bits_scores_1(queue_io_enq_bits_scores_1),
    .io_enq_bits_scores_2(queue_io_enq_bits_scores_2),
    .io_enq_bits_scores_3(queue_io_enq_bits_scores_3),
    .io_enq_bits_weights_0(queue_io_enq_bits_weights_0),
    .io_enq_bits_weights_1(queue_io_enq_bits_weights_1),
    .io_enq_bits_last(queue_io_enq_bits_last),
    .io_deq_ready(queue_io_deq_ready),
    .io_deq_valid(queue_io_deq_valid),
    .io_deq_bits_features_0(queue_io_deq_bits_features_0),
    .io_deq_bits_features_1(queue_io_deq_bits_features_1),
    .io_deq_bits_features_2(queue_io_deq_bits_features_2),
    .io_deq_bits_features_3(queue_io_deq_bits_features_3),
    .io_deq_bits_offset(queue_io_deq_bits_offset),
    .io_deq_bits_shift(queue_io_deq_bits_shift),
    .io_deq_bits_search_for_root(queue_io_deq_bits_search_for_root),
    .io_deq_bits_tree_to_exec(queue_io_deq_bits_tree_to_exec),
    .io_deq_bits_scores_0(queue_io_deq_bits_scores_0),
    .io_deq_bits_scores_1(queue_io_deq_bits_scores_1),
    .io_deq_bits_scores_2(queue_io_deq_bits_scores_2),
    .io_deq_bits_scores_3(queue_io_deq_bits_scores_3),
    .io_deq_bits_weights_0(queue_io_deq_bits_weights_0),
    .io_deq_bits_weights_1(queue_io_deq_bits_weights_1),
    .io_deq_bits_last(queue_io_deq_bits_last)
  );
  assign io_sample_in_ready = queue_io_enq_ready; // @[Decoupled.scala 381:17]
  assign io_mem_addr_1 = queue_io_deq_bits_offset; // @[TreePE.scala 17:19]
  assign io_sample_out_valid = io_sample_out_valid_REG; // @[TreePE.scala 116:25]
  assign io_sample_out_bits_features_0 = REG__0; // @[TreePE.scala 39:33]
  assign io_sample_out_bits_features_1 = REG__1; // @[TreePE.scala 39:33]
  assign io_sample_out_bits_features_2 = REG__2; // @[TreePE.scala 39:33]
  assign io_sample_out_bits_features_3 = REG__3; // @[TreePE.scala 39:33]
  assign io_sample_out_bits_offset = ~shift ? {{2'd0}, io_sample_out_bits_offset_REG} : offset; // @[TreePE.scala 55:30 56:35 68:35]
  assign io_sample_out_bits_search_for_root = ~shift; // @[TreePE.scala 55:18]
  assign io_sample_out_bits_tree_to_exec = io_sample_out_bits_tree_to_exec_REG; // @[TreePE.scala 41:37]
  assign io_sample_out_bits_scores_0 = ~shift ? $signed(_GEN_24) : $signed(REG_3_0); // @[TreePE.scala 55:30 69:35]
  assign io_sample_out_bits_scores_1 = ~shift ? $signed(_GEN_25) : $signed(REG_3_1); // @[TreePE.scala 55:30 69:35]
  assign io_sample_out_bits_scores_2 = ~shift ? $signed(_GEN_26) : $signed(REG_3_2); // @[TreePE.scala 55:30 69:35]
  assign io_sample_out_bits_scores_3 = ~shift ? $signed(_GEN_27) : $signed(REG_3_3); // @[TreePE.scala 55:30 69:35]
  assign io_sample_out_bits_weights_0 = REG_1_0; // @[TreePE.scala 40:32]
  assign io_sample_out_bits_weights_1 = REG_1_1; // @[TreePE.scala 40:32]
  assign io_sample_out_bits_last = io_sample_out_bits_last_REG; // @[TreePE.scala 115:29]
  assign queue_clock = clock;
  assign queue_reset = reset;
  assign queue_io_enq_valid = io_sample_in_valid; // @[Decoupled.scala 379:22]
  assign queue_io_enq_bits_features_0 = io_sample_in_bits_features_0; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_features_1 = io_sample_in_bits_features_1; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_features_2 = io_sample_in_bits_features_2; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_features_3 = io_sample_in_bits_features_3; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_offset = io_sample_in_bits_offset; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_shift = io_sample_in_bits_shift; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_search_for_root = io_sample_in_bits_search_for_root; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_tree_to_exec = io_sample_in_bits_tree_to_exec; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_scores_0 = io_sample_in_bits_scores_0; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_scores_1 = io_sample_in_bits_scores_1; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_scores_2 = io_sample_in_bits_scores_2; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_scores_3 = io_sample_in_bits_scores_3; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_weights_0 = io_sample_in_bits_weights_0; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_weights_1 = io_sample_in_bits_weights_1; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_last = io_sample_in_bits_last; // @[Decoupled.scala 380:21]
  assign queue_io_deq_ready = queue_io_deq_ready_REG; // @[TreePE.scala 117:17]
  always @(posedge clock) begin
    REG__0 <= queue_io_deq_bits_features_0; // @[TreePE.scala 39:43]
    REG__1 <= queue_io_deq_bits_features_1; // @[TreePE.scala 39:43]
    REG__2 <= queue_io_deq_bits_features_2; // @[TreePE.scala 39:43]
    REG__3 <= queue_io_deq_bits_features_3; // @[TreePE.scala 39:43]
    REG_1_0 <= queue_io_deq_bits_weights_0; // @[TreePE.scala 40:42]
    REG_1_1 <= queue_io_deq_bits_weights_1; // @[TreePE.scala 40:42]
    io_sample_out_bits_tree_to_exec_REG <= queue_io_deq_bits_tree_to_exec; // @[TreePE.scala 41:47]
    REG_2_0 <= queue_io_deq_bits_scores_0; // @[TreePE.scala 42:41]
    REG_2_1 <= queue_io_deq_bits_scores_1; // @[TreePE.scala 42:41]
    REG_2_2 <= queue_io_deq_bits_scores_2; // @[TreePE.scala 42:41]
    REG_2_3 <= queue_io_deq_bits_scores_3; // @[TreePE.scala 42:41]
    features_bits_0 <= queue_io_deq_bits_features_0; // @[TreePE.scala 47:34]
    features_bits_1 <= queue_io_deq_bits_features_1; // @[TreePE.scala 47:34]
    features_bits_2 <= queue_io_deq_bits_features_2; // @[TreePE.scala 47:34]
    features_bits_3 <= queue_io_deq_bits_features_3; // @[TreePE.scala 47:34]
    io_sample_out_bits_offset_REG <= queue_io_deq_bits_tree_to_exec; // @[TreePE.scala 56:45]
    scores_bits_0 <= queue_io_deq_bits_scores_0; // @[TreePE.scala 59:34]
    scores_bits_1 <= queue_io_deq_bits_scores_1; // @[TreePE.scala 59:34]
    scores_bits_2 <= queue_io_deq_bits_scores_2; // @[TreePE.scala 59:34]
    scores_bits_3 <= queue_io_deq_bits_scores_3; // @[TreePE.scala 59:34]
    weights_bits_0 <= queue_io_deq_bits_weights_0; // @[TreePE.scala 60:35]
    weights_bits_1 <= queue_io_deq_bits_weights_1; // @[TreePE.scala 60:35]
    REG_3_0 <= queue_io_deq_bits_scores_0; // @[TreePE.scala 69:45]
    REG_3_1 <= queue_io_deq_bits_scores_1; // @[TreePE.scala 69:45]
    REG_3_2 <= queue_io_deq_bits_scores_2; // @[TreePE.scala 69:45]
    REG_3_3 <= queue_io_deq_bits_scores_3; // @[TreePE.scala 69:45]
    io_sample_out_bits_last_REG <= queue_io_deq_bits_last; // @[TreePE.scala 115:39]
    io_sample_out_valid_REG <= queue_io_deq_valid; // @[TreePE.scala 116:35]
    queue_io_deq_ready_REG <= io_sample_out_ready; // @[TreePE.scala 117:27]
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
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  REG__0 = _RAND_0[15:0];
  _RAND_1 = {1{`RANDOM}};
  REG__1 = _RAND_1[15:0];
  _RAND_2 = {1{`RANDOM}};
  REG__2 = _RAND_2[15:0];
  _RAND_3 = {1{`RANDOM}};
  REG__3 = _RAND_3[15:0];
  _RAND_4 = {1{`RANDOM}};
  REG_1_0 = _RAND_4[15:0];
  _RAND_5 = {1{`RANDOM}};
  REG_1_1 = _RAND_5[15:0];
  _RAND_6 = {1{`RANDOM}};
  io_sample_out_bits_tree_to_exec_REG = _RAND_6[7:0];
  _RAND_7 = {1{`RANDOM}};
  REG_2_0 = _RAND_7[15:0];
  _RAND_8 = {1{`RANDOM}};
  REG_2_1 = _RAND_8[15:0];
  _RAND_9 = {1{`RANDOM}};
  REG_2_2 = _RAND_9[15:0];
  _RAND_10 = {1{`RANDOM}};
  REG_2_3 = _RAND_10[15:0];
  _RAND_11 = {1{`RANDOM}};
  features_bits_0 = _RAND_11[15:0];
  _RAND_12 = {1{`RANDOM}};
  features_bits_1 = _RAND_12[15:0];
  _RAND_13 = {1{`RANDOM}};
  features_bits_2 = _RAND_13[15:0];
  _RAND_14 = {1{`RANDOM}};
  features_bits_3 = _RAND_14[15:0];
  _RAND_15 = {1{`RANDOM}};
  io_sample_out_bits_offset_REG = _RAND_15[7:0];
  _RAND_16 = {1{`RANDOM}};
  scores_bits_0 = _RAND_16[15:0];
  _RAND_17 = {1{`RANDOM}};
  scores_bits_1 = _RAND_17[15:0];
  _RAND_18 = {1{`RANDOM}};
  scores_bits_2 = _RAND_18[15:0];
  _RAND_19 = {1{`RANDOM}};
  scores_bits_3 = _RAND_19[15:0];
  _RAND_20 = {1{`RANDOM}};
  weights_bits_0 = _RAND_20[15:0];
  _RAND_21 = {1{`RANDOM}};
  weights_bits_1 = _RAND_21[15:0];
  _RAND_22 = {1{`RANDOM}};
  REG_3_0 = _RAND_22[15:0];
  _RAND_23 = {1{`RANDOM}};
  REG_3_1 = _RAND_23[15:0];
  _RAND_24 = {1{`RANDOM}};
  REG_3_2 = _RAND_24[15:0];
  _RAND_25 = {1{`RANDOM}};
  REG_3_3 = _RAND_25[15:0];
  _RAND_26 = {1{`RANDOM}};
  io_sample_out_bits_last_REG = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  io_sample_out_valid_REG = _RAND_27[0:0];
  _RAND_28 = {1{`RANDOM}};
  queue_io_deq_ready_REG = _RAND_28[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module TreePEwithBRAM(
  input         clock,
  input         reset,
  output        pe_io_sample_in_ready,
  input         pe_io_sample_in_valid,
  input  [15:0] pe_io_sample_in_bits_features_0,
  input  [15:0] pe_io_sample_in_bits_features_1,
  input  [15:0] pe_io_sample_in_bits_features_2,
  input  [15:0] pe_io_sample_in_bits_features_3,
  input  [9:0]  pe_io_sample_in_bits_offset,
  input         pe_io_sample_in_bits_shift,
  input         pe_io_sample_in_bits_search_for_root,
  input  [7:0]  pe_io_sample_in_bits_tree_to_exec,
  input  [15:0] pe_io_sample_in_bits_scores_0,
  input  [15:0] pe_io_sample_in_bits_scores_1,
  input  [15:0] pe_io_sample_in_bits_scores_2,
  input  [15:0] pe_io_sample_in_bits_scores_3,
  input  [15:0] pe_io_sample_in_bits_weights_0,
  input  [15:0] pe_io_sample_in_bits_weights_1,
  input         pe_io_sample_in_bits_last,
  output [9:0]  pe_io_mem_addr_1,
  input  [63:0] pe_io_mem_dataOut_1,
  input         pe_io_sample_out_ready,
  output        pe_io_sample_out_valid,
  output [15:0] pe_io_sample_out_bits_features_0,
  output [15:0] pe_io_sample_out_bits_features_1,
  output [15:0] pe_io_sample_out_bits_features_2,
  output [15:0] pe_io_sample_out_bits_features_3,
  output [9:0]  pe_io_sample_out_bits_offset,
  output        pe_io_sample_out_bits_search_for_root,
  output [7:0]  pe_io_sample_out_bits_tree_to_exec,
  output [15:0] pe_io_sample_out_bits_scores_0,
  output [15:0] pe_io_sample_out_bits_scores_1,
  output [15:0] pe_io_sample_out_bits_scores_2,
  output [15:0] pe_io_sample_out_bits_scores_3,
  output [15:0] pe_io_sample_out_bits_weights_0,
  output [15:0] pe_io_sample_out_bits_weights_1,
  output        pe_io_sample_out_bits_last
);
  wire  pe__clock; // @[TreePE.scala 148:18]
  wire  pe__reset; // @[TreePE.scala 148:18]
  wire  pe__io_sample_in_ready; // @[TreePE.scala 148:18]
  wire  pe__io_sample_in_valid; // @[TreePE.scala 148:18]
  wire [15:0] pe__io_sample_in_bits_features_0; // @[TreePE.scala 148:18]
  wire [15:0] pe__io_sample_in_bits_features_1; // @[TreePE.scala 148:18]
  wire [15:0] pe__io_sample_in_bits_features_2; // @[TreePE.scala 148:18]
  wire [15:0] pe__io_sample_in_bits_features_3; // @[TreePE.scala 148:18]
  wire [9:0] pe__io_sample_in_bits_offset; // @[TreePE.scala 148:18]
  wire  pe__io_sample_in_bits_shift; // @[TreePE.scala 148:18]
  wire  pe__io_sample_in_bits_search_for_root; // @[TreePE.scala 148:18]
  wire [7:0] pe__io_sample_in_bits_tree_to_exec; // @[TreePE.scala 148:18]
  wire [15:0] pe__io_sample_in_bits_scores_0; // @[TreePE.scala 148:18]
  wire [15:0] pe__io_sample_in_bits_scores_1; // @[TreePE.scala 148:18]
  wire [15:0] pe__io_sample_in_bits_scores_2; // @[TreePE.scala 148:18]
  wire [15:0] pe__io_sample_in_bits_scores_3; // @[TreePE.scala 148:18]
  wire [15:0] pe__io_sample_in_bits_weights_0; // @[TreePE.scala 148:18]
  wire [15:0] pe__io_sample_in_bits_weights_1; // @[TreePE.scala 148:18]
  wire  pe__io_sample_in_bits_last; // @[TreePE.scala 148:18]
  wire [9:0] pe__io_mem_addr_1; // @[TreePE.scala 148:18]
  wire [63:0] pe__io_mem_dataOut_1; // @[TreePE.scala 148:18]
  wire  pe__io_sample_out_ready; // @[TreePE.scala 148:18]
  wire  pe__io_sample_out_valid; // @[TreePE.scala 148:18]
  wire [15:0] pe__io_sample_out_bits_features_0; // @[TreePE.scala 148:18]
  wire [15:0] pe__io_sample_out_bits_features_1; // @[TreePE.scala 148:18]
  wire [15:0] pe__io_sample_out_bits_features_2; // @[TreePE.scala 148:18]
  wire [15:0] pe__io_sample_out_bits_features_3; // @[TreePE.scala 148:18]
  wire [9:0] pe__io_sample_out_bits_offset; // @[TreePE.scala 148:18]
  wire  pe__io_sample_out_bits_search_for_root; // @[TreePE.scala 148:18]
  wire [7:0] pe__io_sample_out_bits_tree_to_exec; // @[TreePE.scala 148:18]
  wire [15:0] pe__io_sample_out_bits_scores_0; // @[TreePE.scala 148:18]
  wire [15:0] pe__io_sample_out_bits_scores_1; // @[TreePE.scala 148:18]
  wire [15:0] pe__io_sample_out_bits_scores_2; // @[TreePE.scala 148:18]
  wire [15:0] pe__io_sample_out_bits_scores_3; // @[TreePE.scala 148:18]
  wire [15:0] pe__io_sample_out_bits_weights_0; // @[TreePE.scala 148:18]
  wire [15:0] pe__io_sample_out_bits_weights_1; // @[TreePE.scala 148:18]
  wire  pe__io_sample_out_bits_last; // @[TreePE.scala 148:18]
  TreePE pe_ ( // @[TreePE.scala 148:18]
    .clock(pe__clock),
    .reset(pe__reset),
    .io_sample_in_ready(pe__io_sample_in_ready),
    .io_sample_in_valid(pe__io_sample_in_valid),
    .io_sample_in_bits_features_0(pe__io_sample_in_bits_features_0),
    .io_sample_in_bits_features_1(pe__io_sample_in_bits_features_1),
    .io_sample_in_bits_features_2(pe__io_sample_in_bits_features_2),
    .io_sample_in_bits_features_3(pe__io_sample_in_bits_features_3),
    .io_sample_in_bits_offset(pe__io_sample_in_bits_offset),
    .io_sample_in_bits_shift(pe__io_sample_in_bits_shift),
    .io_sample_in_bits_search_for_root(pe__io_sample_in_bits_search_for_root),
    .io_sample_in_bits_tree_to_exec(pe__io_sample_in_bits_tree_to_exec),
    .io_sample_in_bits_scores_0(pe__io_sample_in_bits_scores_0),
    .io_sample_in_bits_scores_1(pe__io_sample_in_bits_scores_1),
    .io_sample_in_bits_scores_2(pe__io_sample_in_bits_scores_2),
    .io_sample_in_bits_scores_3(pe__io_sample_in_bits_scores_3),
    .io_sample_in_bits_weights_0(pe__io_sample_in_bits_weights_0),
    .io_sample_in_bits_weights_1(pe__io_sample_in_bits_weights_1),
    .io_sample_in_bits_last(pe__io_sample_in_bits_last),
    .io_mem_addr_1(pe__io_mem_addr_1),
    .io_mem_dataOut_1(pe__io_mem_dataOut_1),
    .io_sample_out_ready(pe__io_sample_out_ready),
    .io_sample_out_valid(pe__io_sample_out_valid),
    .io_sample_out_bits_features_0(pe__io_sample_out_bits_features_0),
    .io_sample_out_bits_features_1(pe__io_sample_out_bits_features_1),
    .io_sample_out_bits_features_2(pe__io_sample_out_bits_features_2),
    .io_sample_out_bits_features_3(pe__io_sample_out_bits_features_3),
    .io_sample_out_bits_offset(pe__io_sample_out_bits_offset),
    .io_sample_out_bits_search_for_root(pe__io_sample_out_bits_search_for_root),
    .io_sample_out_bits_tree_to_exec(pe__io_sample_out_bits_tree_to_exec),
    .io_sample_out_bits_scores_0(pe__io_sample_out_bits_scores_0),
    .io_sample_out_bits_scores_1(pe__io_sample_out_bits_scores_1),
    .io_sample_out_bits_scores_2(pe__io_sample_out_bits_scores_2),
    .io_sample_out_bits_scores_3(pe__io_sample_out_bits_scores_3),
    .io_sample_out_bits_weights_0(pe__io_sample_out_bits_weights_0),
    .io_sample_out_bits_weights_1(pe__io_sample_out_bits_weights_1),
    .io_sample_out_bits_last(pe__io_sample_out_bits_last)
  );
  assign pe_io_sample_in_ready = pe__io_sample_in_ready; // @[TreePE.scala 150:9]
  assign pe_io_mem_addr_1 = pe__io_mem_addr_1; // @[TreePE.scala 150:9]
  assign pe_io_sample_out_valid = pe__io_sample_out_valid; // @[TreePE.scala 150:9]
  assign pe_io_sample_out_bits_features_0 = pe__io_sample_out_bits_features_0; // @[TreePE.scala 150:9]
  assign pe_io_sample_out_bits_features_1 = pe__io_sample_out_bits_features_1; // @[TreePE.scala 150:9]
  assign pe_io_sample_out_bits_features_2 = pe__io_sample_out_bits_features_2; // @[TreePE.scala 150:9]
  assign pe_io_sample_out_bits_features_3 = pe__io_sample_out_bits_features_3; // @[TreePE.scala 150:9]
  assign pe_io_sample_out_bits_offset = pe__io_sample_out_bits_offset; // @[TreePE.scala 150:9]
  assign pe_io_sample_out_bits_search_for_root = pe__io_sample_out_bits_search_for_root; // @[TreePE.scala 150:9]
  assign pe_io_sample_out_bits_tree_to_exec = pe__io_sample_out_bits_tree_to_exec; // @[TreePE.scala 150:9]
  assign pe_io_sample_out_bits_scores_0 = pe__io_sample_out_bits_scores_0; // @[TreePE.scala 150:9]
  assign pe_io_sample_out_bits_scores_1 = pe__io_sample_out_bits_scores_1; // @[TreePE.scala 150:9]
  assign pe_io_sample_out_bits_scores_2 = pe__io_sample_out_bits_scores_2; // @[TreePE.scala 150:9]
  assign pe_io_sample_out_bits_scores_3 = pe__io_sample_out_bits_scores_3; // @[TreePE.scala 150:9]
  assign pe_io_sample_out_bits_weights_0 = pe__io_sample_out_bits_weights_0; // @[TreePE.scala 150:9]
  assign pe_io_sample_out_bits_weights_1 = pe__io_sample_out_bits_weights_1; // @[TreePE.scala 150:9]
  assign pe_io_sample_out_bits_last = pe__io_sample_out_bits_last; // @[TreePE.scala 150:9]
  assign pe__clock = clock;
  assign pe__reset = reset;
  assign pe__io_sample_in_valid = pe_io_sample_in_valid; // @[TreePE.scala 150:9]
  assign pe__io_sample_in_bits_features_0 = pe_io_sample_in_bits_features_0; // @[TreePE.scala 150:9]
  assign pe__io_sample_in_bits_features_1 = pe_io_sample_in_bits_features_1; // @[TreePE.scala 150:9]
  assign pe__io_sample_in_bits_features_2 = pe_io_sample_in_bits_features_2; // @[TreePE.scala 150:9]
  assign pe__io_sample_in_bits_features_3 = pe_io_sample_in_bits_features_3; // @[TreePE.scala 150:9]
  assign pe__io_sample_in_bits_offset = pe_io_sample_in_bits_offset; // @[TreePE.scala 150:9]
  assign pe__io_sample_in_bits_shift = pe_io_sample_in_bits_shift; // @[TreePE.scala 150:9]
  assign pe__io_sample_in_bits_search_for_root = pe_io_sample_in_bits_search_for_root; // @[TreePE.scala 150:9]
  assign pe__io_sample_in_bits_tree_to_exec = pe_io_sample_in_bits_tree_to_exec; // @[TreePE.scala 150:9]
  assign pe__io_sample_in_bits_scores_0 = pe_io_sample_in_bits_scores_0; // @[TreePE.scala 150:9]
  assign pe__io_sample_in_bits_scores_1 = pe_io_sample_in_bits_scores_1; // @[TreePE.scala 150:9]
  assign pe__io_sample_in_bits_scores_2 = pe_io_sample_in_bits_scores_2; // @[TreePE.scala 150:9]
  assign pe__io_sample_in_bits_scores_3 = pe_io_sample_in_bits_scores_3; // @[TreePE.scala 150:9]
  assign pe__io_sample_in_bits_weights_0 = pe_io_sample_in_bits_weights_0; // @[TreePE.scala 150:9]
  assign pe__io_sample_in_bits_weights_1 = pe_io_sample_in_bits_weights_1; // @[TreePE.scala 150:9]
  assign pe__io_sample_in_bits_last = pe_io_sample_in_bits_last; // @[TreePE.scala 150:9]
  assign pe__io_mem_dataOut_1 = pe_io_mem_dataOut_1; // @[TreePE.scala 150:9]
  assign pe__io_sample_out_ready = pe_io_sample_out_ready; // @[TreePE.scala 150:9]
endmodule
module TreePE_1(
  input         clock,
  input         reset,
  output        io_sample_in_ready,
  input         io_sample_in_valid,
  input  [15:0] io_sample_in_bits_features_0,
  input  [15:0] io_sample_in_bits_features_1,
  input  [15:0] io_sample_in_bits_features_2,
  input  [15:0] io_sample_in_bits_features_3,
  input  [9:0]  io_sample_in_bits_offset,
  input         io_sample_in_bits_search_for_root,
  input  [7:0]  io_sample_in_bits_tree_to_exec,
  input  [15:0] io_sample_in_bits_scores_0,
  input  [15:0] io_sample_in_bits_scores_1,
  input  [15:0] io_sample_in_bits_scores_2,
  input  [15:0] io_sample_in_bits_scores_3,
  input  [15:0] io_sample_in_bits_weights_0,
  input  [15:0] io_sample_in_bits_weights_1,
  input         io_sample_in_bits_last,
  output [9:0]  io_mem_addr_1,
  input  [63:0] io_mem_dataOut_1,
  input         io_sample_out_ready,
  output        io_sample_out_valid,
  output [15:0] io_sample_out_bits_features_0,
  output [15:0] io_sample_out_bits_features_1,
  output [15:0] io_sample_out_bits_features_2,
  output [15:0] io_sample_out_bits_features_3,
  output [9:0]  io_sample_out_bits_offset,
  output        io_sample_out_bits_search_for_root,
  output [7:0]  io_sample_out_bits_tree_to_exec,
  output [15:0] io_sample_out_bits_scores_0,
  output [15:0] io_sample_out_bits_scores_1,
  output [15:0] io_sample_out_bits_scores_2,
  output [15:0] io_sample_out_bits_scores_3,
  output [15:0] io_sample_out_bits_weights_0,
  output [15:0] io_sample_out_bits_weights_1,
  output        io_sample_out_bits_dest,
  output        io_sample_out_bits_last
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
`endif // RANDOMIZE_REG_INIT
  wire  queue_clock; // @[Decoupled.scala 377:21]
  wire  queue_reset; // @[Decoupled.scala 377:21]
  wire  queue_io_enq_ready; // @[Decoupled.scala 377:21]
  wire  queue_io_enq_valid; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_features_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_features_1; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_features_2; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_features_3; // @[Decoupled.scala 377:21]
  wire [9:0] queue_io_enq_bits_offset; // @[Decoupled.scala 377:21]
  wire  queue_io_enq_bits_shift; // @[Decoupled.scala 377:21]
  wire  queue_io_enq_bits_search_for_root; // @[Decoupled.scala 377:21]
  wire [7:0] queue_io_enq_bits_tree_to_exec; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_scores_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_scores_1; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_scores_2; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_scores_3; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_weights_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_weights_1; // @[Decoupled.scala 377:21]
  wire  queue_io_enq_bits_last; // @[Decoupled.scala 377:21]
  wire  queue_io_deq_ready; // @[Decoupled.scala 377:21]
  wire  queue_io_deq_valid; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_features_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_features_1; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_features_2; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_features_3; // @[Decoupled.scala 377:21]
  wire [9:0] queue_io_deq_bits_offset; // @[Decoupled.scala 377:21]
  wire  queue_io_deq_bits_shift; // @[Decoupled.scala 377:21]
  wire  queue_io_deq_bits_search_for_root; // @[Decoupled.scala 377:21]
  wire [7:0] queue_io_deq_bits_tree_to_exec; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_scores_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_scores_1; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_scores_2; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_scores_3; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_weights_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_weights_1; // @[Decoupled.scala 377:21]
  wire  queue_io_deq_bits_last; // @[Decoupled.scala 377:21]
  wire [1:0] attr_id = io_mem_dataOut_1[33:32]; // @[TreePE.scala 29:35]
  wire [9:0] leftChildInfo = io_mem_dataOut_1[43:34]; // @[TreePE.scala 32:41]
  wire [9:0] rightChildInfo = io_mem_dataOut_1[53:44]; // @[TreePE.scala 33:42]
  wire  leftChildType = io_mem_dataOut_1[54]; // @[TreePE.scala 34:41]
  wire  rightChildType = io_mem_dataOut_1[55]; // @[TreePE.scala 35:42]
  wire  is_valid = io_mem_dataOut_1[56]; // @[TreePE.scala 36:36]
  wire [2:0] depth_indicator = io_mem_dataOut_1[59:57]; // @[TreePE.scala 37:43]
  reg [15:0] REG__0; // @[TreePE.scala 39:43]
  reg [15:0] REG__1; // @[TreePE.scala 39:43]
  reg [15:0] REG__2; // @[TreePE.scala 39:43]
  reg [15:0] REG__3; // @[TreePE.scala 39:43]
  reg [15:0] REG_1_0; // @[TreePE.scala 40:42]
  reg [15:0] REG_1_1; // @[TreePE.scala 40:42]
  reg [7:0] io_sample_out_bits_tree_to_exec_REG; // @[TreePE.scala 41:47]
  reg [15:0] REG_2_0; // @[TreePE.scala 42:41]
  reg [15:0] REG_2_1; // @[TreePE.scala 42:41]
  reg [15:0] REG_2_2; // @[TreePE.scala 42:41]
  reg [15:0] REG_2_3; // @[TreePE.scala 42:41]
  reg  REG_3; // @[TreePE.scala 74:19]
  reg [7:0] io_sample_out_bits_offset_REG; // @[TreePE.scala 76:45]
  reg [15:0] features_bits_0; // @[TreePE.scala 81:36]
  reg [15:0] features_bits_1; // @[TreePE.scala 81:36]
  reg [15:0] features_bits_2; // @[TreePE.scala 81:36]
  reg [15:0] features_bits_3; // @[TreePE.scala 81:36]
  wire [19:0] _T = io_mem_dataOut_1[19:0]; // @[TreePE.scala 82:61]
  wire [15:0] _GEN_1 = 2'h1 == attr_id ? $signed(features_bits_1) : $signed(features_bits_0); // @[TreePE.scala 82:{37,37}]
  wire [15:0] _GEN_2 = 2'h2 == attr_id ? $signed(features_bits_2) : $signed(_GEN_1); // @[TreePE.scala 82:{37,37}]
  wire [15:0] _GEN_3 = 2'h3 == attr_id ? $signed(features_bits_3) : $signed(_GEN_2); // @[TreePE.scala 82:{37,37}]
  wire [19:0] _GEN_43 = {{4{_GEN_3[15]}},_GEN_3}; // @[TreePE.scala 82:37]
  wire  shift = $signed(_GEN_43) < $signed(_T) ? leftChildType : rightChildType; // @[TreePE.scala 82:68 83:17 86:17]
  wire [9:0] offset = $signed(_GEN_43) < $signed(_T) ? leftChildInfo : rightChildInfo; // @[TreePE.scala 82:68 84:18 87:18]
  wire  _T_2 = ~shift; // @[TreePE.scala 89:20]
  reg [7:0] io_sample_out_bits_offset_REG_1; // @[TreePE.scala 90:47]
  reg [15:0] scores_bits_0; // @[TreePE.scala 93:36]
  reg [15:0] scores_bits_1; // @[TreePE.scala 93:36]
  reg [15:0] scores_bits_2; // @[TreePE.scala 93:36]
  reg [15:0] scores_bits_3; // @[TreePE.scala 93:36]
  reg [15:0] weights_bits_0; // @[TreePE.scala 94:37]
  reg [15:0] weights_bits_1; // @[TreePE.scala 94:37]
  wire [15:0] _GEN_7 = 2'h1 == offset[1:0] ? $signed(scores_bits_1) : $signed(scores_bits_0); // @[TreePE.scala 96:{72,72}]
  wire [15:0] _GEN_8 = 2'h2 == offset[1:0] ? $signed(scores_bits_2) : $signed(_GEN_7); // @[TreePE.scala 96:{72,72}]
  wire [15:0] _GEN_9 = 2'h3 == offset[1:0] ? $signed(scores_bits_3) : $signed(_GEN_8); // @[TreePE.scala 96:{72,72}]
  wire [15:0] _GEN_11 = depth_indicator[0] ? $signed(weights_bits_1) : $signed(weights_bits_0); // @[TreePE.scala 96:{72,72}]
  wire [15:0] _io_sample_out_bits_scores_T_4 = $signed(_GEN_9) + $signed(_GEN_11); // @[TreePE.scala 96:72]
  wire [15:0] _GEN_12 = 2'h0 == offset[1:0] ? $signed(_io_sample_out_bits_scores_T_4) : $signed(REG_2_0); // @[TreePE.scala 42:31 96:{49,49}]
  wire [15:0] _GEN_13 = 2'h1 == offset[1:0] ? $signed(_io_sample_out_bits_scores_T_4) : $signed(REG_2_1); // @[TreePE.scala 42:31 96:{49,49}]
  wire [15:0] _GEN_14 = 2'h2 == offset[1:0] ? $signed(_io_sample_out_bits_scores_T_4) : $signed(REG_2_2); // @[TreePE.scala 42:31 96:{49,49}]
  wire [15:0] _GEN_15 = 2'h3 == offset[1:0] ? $signed(_io_sample_out_bits_scores_T_4) : $signed(REG_2_3); // @[TreePE.scala 42:31 96:{49,49}]
  wire [15:0] _GEN_16 = 2'h0 == offset[1:0] ? $signed(_GEN_9) : $signed(REG_2_0); // @[TreePE.scala 42:31 98:{49,49}]
  wire [15:0] _GEN_17 = 2'h1 == offset[1:0] ? $signed(_GEN_9) : $signed(REG_2_1); // @[TreePE.scala 42:31 98:{49,49}]
  wire [15:0] _GEN_18 = 2'h2 == offset[1:0] ? $signed(_GEN_9) : $signed(REG_2_2); // @[TreePE.scala 42:31 98:{49,49}]
  wire [15:0] _GEN_19 = 2'h3 == offset[1:0] ? $signed(_GEN_9) : $signed(REG_2_3); // @[TreePE.scala 42:31 98:{49,49}]
  wire [15:0] _GEN_24 = is_valid ? $signed(_GEN_12) : $signed(_GEN_16); // @[TreePE.scala 95:25]
  wire [15:0] _GEN_25 = is_valid ? $signed(_GEN_13) : $signed(_GEN_17); // @[TreePE.scala 95:25]
  wire [15:0] _GEN_26 = is_valid ? $signed(_GEN_14) : $signed(_GEN_18); // @[TreePE.scala 95:25]
  wire [15:0] _GEN_27 = is_valid ? $signed(_GEN_15) : $signed(_GEN_19); // @[TreePE.scala 95:25]
  reg [15:0] REG_4_0; // @[TreePE.scala 102:47]
  reg [15:0] REG_4_1; // @[TreePE.scala 102:47]
  reg [15:0] REG_4_2; // @[TreePE.scala 102:47]
  reg [15:0] REG_4_3; // @[TreePE.scala 102:47]
  wire [9:0] _GEN_28 = ~shift ? {{2'd0}, io_sample_out_bits_offset_REG_1} : offset; // @[TreePE.scala 89:32 101:37 90:37]
  wire [15:0] _GEN_31 = ~shift ? $signed(_GEN_24) : $signed(REG_4_0); // @[TreePE.scala 89:32 102:37]
  wire [15:0] _GEN_32 = ~shift ? $signed(_GEN_25) : $signed(REG_4_1); // @[TreePE.scala 89:32 102:37]
  wire [15:0] _GEN_33 = ~shift ? $signed(_GEN_26) : $signed(REG_4_2); // @[TreePE.scala 89:32 102:37]
  wire [15:0] _GEN_34 = ~shift ? $signed(_GEN_27) : $signed(REG_4_3); // @[TreePE.scala 89:32 102:37]
  reg [7:0] REG_5; // @[TreePE.scala 109:17]
  reg  io_sample_out_bits_last_REG; // @[TreePE.scala 115:39]
  reg  io_sample_out_valid_REG; // @[TreePE.scala 116:35]
  reg  queue_io_deq_ready_REG; // @[TreePE.scala 117:27]
  Queue_3 queue ( // @[Decoupled.scala 377:21]
    .clock(queue_clock),
    .reset(queue_reset),
    .io_enq_ready(queue_io_enq_ready),
    .io_enq_valid(queue_io_enq_valid),
    .io_enq_bits_features_0(queue_io_enq_bits_features_0),
    .io_enq_bits_features_1(queue_io_enq_bits_features_1),
    .io_enq_bits_features_2(queue_io_enq_bits_features_2),
    .io_enq_bits_features_3(queue_io_enq_bits_features_3),
    .io_enq_bits_offset(queue_io_enq_bits_offset),
    .io_enq_bits_shift(queue_io_enq_bits_shift),
    .io_enq_bits_search_for_root(queue_io_enq_bits_search_for_root),
    .io_enq_bits_tree_to_exec(queue_io_enq_bits_tree_to_exec),
    .io_enq_bits_scores_0(queue_io_enq_bits_scores_0),
    .io_enq_bits_scores_1(queue_io_enq_bits_scores_1),
    .io_enq_bits_scores_2(queue_io_enq_bits_scores_2),
    .io_enq_bits_scores_3(queue_io_enq_bits_scores_3),
    .io_enq_bits_weights_0(queue_io_enq_bits_weights_0),
    .io_enq_bits_weights_1(queue_io_enq_bits_weights_1),
    .io_enq_bits_last(queue_io_enq_bits_last),
    .io_deq_ready(queue_io_deq_ready),
    .io_deq_valid(queue_io_deq_valid),
    .io_deq_bits_features_0(queue_io_deq_bits_features_0),
    .io_deq_bits_features_1(queue_io_deq_bits_features_1),
    .io_deq_bits_features_2(queue_io_deq_bits_features_2),
    .io_deq_bits_features_3(queue_io_deq_bits_features_3),
    .io_deq_bits_offset(queue_io_deq_bits_offset),
    .io_deq_bits_shift(queue_io_deq_bits_shift),
    .io_deq_bits_search_for_root(queue_io_deq_bits_search_for_root),
    .io_deq_bits_tree_to_exec(queue_io_deq_bits_tree_to_exec),
    .io_deq_bits_scores_0(queue_io_deq_bits_scores_0),
    .io_deq_bits_scores_1(queue_io_deq_bits_scores_1),
    .io_deq_bits_scores_2(queue_io_deq_bits_scores_2),
    .io_deq_bits_scores_3(queue_io_deq_bits_scores_3),
    .io_deq_bits_weights_0(queue_io_deq_bits_weights_0),
    .io_deq_bits_weights_1(queue_io_deq_bits_weights_1),
    .io_deq_bits_last(queue_io_deq_bits_last)
  );
  assign io_sample_in_ready = queue_io_enq_ready; // @[Decoupled.scala 381:17]
  assign io_mem_addr_1 = queue_io_deq_bits_offset; // @[TreePE.scala 17:19]
  assign io_sample_out_valid = io_sample_out_valid_REG; // @[TreePE.scala 116:25]
  assign io_sample_out_bits_features_0 = REG__0; // @[TreePE.scala 39:33]
  assign io_sample_out_bits_features_1 = REG__1; // @[TreePE.scala 39:33]
  assign io_sample_out_bits_features_2 = REG__2; // @[TreePE.scala 39:33]
  assign io_sample_out_bits_features_3 = REG__3; // @[TreePE.scala 39:33]
  assign io_sample_out_bits_offset = REG_3 ? {{2'd0}, io_sample_out_bits_offset_REG} : _GEN_28; // @[TreePE.scala 74:48 76:35]
  assign io_sample_out_bits_search_for_root = REG_3 | _T_2; // @[TreePE.scala 74:48 75:44]
  assign io_sample_out_bits_tree_to_exec = io_sample_out_bits_tree_to_exec_REG; // @[TreePE.scala 41:37]
  assign io_sample_out_bits_scores_0 = REG_3 ? $signed(REG_2_0) : $signed(_GEN_31); // @[TreePE.scala 42:31 74:48]
  assign io_sample_out_bits_scores_1 = REG_3 ? $signed(REG_2_1) : $signed(_GEN_32); // @[TreePE.scala 42:31 74:48]
  assign io_sample_out_bits_scores_2 = REG_3 ? $signed(REG_2_2) : $signed(_GEN_33); // @[TreePE.scala 42:31 74:48]
  assign io_sample_out_bits_scores_3 = REG_3 ? $signed(REG_2_3) : $signed(_GEN_34); // @[TreePE.scala 42:31 74:48]
  assign io_sample_out_bits_weights_0 = REG_1_0; // @[TreePE.scala 40:32]
  assign io_sample_out_bits_weights_1 = REG_1_1; // @[TreePE.scala 40:32]
  assign io_sample_out_bits_dest = REG_5 == 8'h3; // @[TreePE.scala 109:43]
  assign io_sample_out_bits_last = io_sample_out_bits_last_REG; // @[TreePE.scala 115:29]
  assign queue_clock = clock;
  assign queue_reset = reset;
  assign queue_io_enq_valid = io_sample_in_valid; // @[Decoupled.scala 379:22]
  assign queue_io_enq_bits_features_0 = io_sample_in_bits_features_0; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_features_1 = io_sample_in_bits_features_1; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_features_2 = io_sample_in_bits_features_2; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_features_3 = io_sample_in_bits_features_3; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_offset = io_sample_in_bits_offset; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_shift = 1'h0; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_search_for_root = io_sample_in_bits_search_for_root; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_tree_to_exec = io_sample_in_bits_tree_to_exec; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_scores_0 = io_sample_in_bits_scores_0; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_scores_1 = io_sample_in_bits_scores_1; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_scores_2 = io_sample_in_bits_scores_2; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_scores_3 = io_sample_in_bits_scores_3; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_weights_0 = io_sample_in_bits_weights_0; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_weights_1 = io_sample_in_bits_weights_1; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_last = io_sample_in_bits_last; // @[Decoupled.scala 380:21]
  assign queue_io_deq_ready = queue_io_deq_ready_REG; // @[TreePE.scala 117:17]
  always @(posedge clock) begin
    REG__0 <= queue_io_deq_bits_features_0; // @[TreePE.scala 39:43]
    REG__1 <= queue_io_deq_bits_features_1; // @[TreePE.scala 39:43]
    REG__2 <= queue_io_deq_bits_features_2; // @[TreePE.scala 39:43]
    REG__3 <= queue_io_deq_bits_features_3; // @[TreePE.scala 39:43]
    REG_1_0 <= queue_io_deq_bits_weights_0; // @[TreePE.scala 40:42]
    REG_1_1 <= queue_io_deq_bits_weights_1; // @[TreePE.scala 40:42]
    io_sample_out_bits_tree_to_exec_REG <= queue_io_deq_bits_tree_to_exec; // @[TreePE.scala 41:47]
    REG_2_0 <= queue_io_deq_bits_scores_0; // @[TreePE.scala 42:41]
    REG_2_1 <= queue_io_deq_bits_scores_1; // @[TreePE.scala 42:41]
    REG_2_2 <= queue_io_deq_bits_scores_2; // @[TreePE.scala 42:41]
    REG_2_3 <= queue_io_deq_bits_scores_3; // @[TreePE.scala 42:41]
    REG_3 <= queue_io_deq_bits_search_for_root; // @[TreePE.scala 74:19]
    io_sample_out_bits_offset_REG <= queue_io_deq_bits_tree_to_exec; // @[TreePE.scala 76:45]
    features_bits_0 <= queue_io_deq_bits_features_0; // @[TreePE.scala 81:36]
    features_bits_1 <= queue_io_deq_bits_features_1; // @[TreePE.scala 81:36]
    features_bits_2 <= queue_io_deq_bits_features_2; // @[TreePE.scala 81:36]
    features_bits_3 <= queue_io_deq_bits_features_3; // @[TreePE.scala 81:36]
    io_sample_out_bits_offset_REG_1 <= queue_io_deq_bits_tree_to_exec; // @[TreePE.scala 90:47]
    scores_bits_0 <= queue_io_deq_bits_scores_0; // @[TreePE.scala 93:36]
    scores_bits_1 <= queue_io_deq_bits_scores_1; // @[TreePE.scala 93:36]
    scores_bits_2 <= queue_io_deq_bits_scores_2; // @[TreePE.scala 93:36]
    scores_bits_3 <= queue_io_deq_bits_scores_3; // @[TreePE.scala 93:36]
    weights_bits_0 <= queue_io_deq_bits_weights_0; // @[TreePE.scala 94:37]
    weights_bits_1 <= queue_io_deq_bits_weights_1; // @[TreePE.scala 94:37]
    REG_4_0 <= queue_io_deq_bits_scores_0; // @[TreePE.scala 102:47]
    REG_4_1 <= queue_io_deq_bits_scores_1; // @[TreePE.scala 102:47]
    REG_4_2 <= queue_io_deq_bits_scores_2; // @[TreePE.scala 102:47]
    REG_4_3 <= queue_io_deq_bits_scores_3; // @[TreePE.scala 102:47]
    REG_5 <= queue_io_deq_bits_tree_to_exec; // @[TreePE.scala 109:17]
    io_sample_out_bits_last_REG <= queue_io_deq_bits_last; // @[TreePE.scala 115:39]
    io_sample_out_valid_REG <= queue_io_deq_valid; // @[TreePE.scala 116:35]
    queue_io_deq_ready_REG <= io_sample_out_ready; // @[TreePE.scala 117:27]
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
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  REG__0 = _RAND_0[15:0];
  _RAND_1 = {1{`RANDOM}};
  REG__1 = _RAND_1[15:0];
  _RAND_2 = {1{`RANDOM}};
  REG__2 = _RAND_2[15:0];
  _RAND_3 = {1{`RANDOM}};
  REG__3 = _RAND_3[15:0];
  _RAND_4 = {1{`RANDOM}};
  REG_1_0 = _RAND_4[15:0];
  _RAND_5 = {1{`RANDOM}};
  REG_1_1 = _RAND_5[15:0];
  _RAND_6 = {1{`RANDOM}};
  io_sample_out_bits_tree_to_exec_REG = _RAND_6[7:0];
  _RAND_7 = {1{`RANDOM}};
  REG_2_0 = _RAND_7[15:0];
  _RAND_8 = {1{`RANDOM}};
  REG_2_1 = _RAND_8[15:0];
  _RAND_9 = {1{`RANDOM}};
  REG_2_2 = _RAND_9[15:0];
  _RAND_10 = {1{`RANDOM}};
  REG_2_3 = _RAND_10[15:0];
  _RAND_11 = {1{`RANDOM}};
  REG_3 = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  io_sample_out_bits_offset_REG = _RAND_12[7:0];
  _RAND_13 = {1{`RANDOM}};
  features_bits_0 = _RAND_13[15:0];
  _RAND_14 = {1{`RANDOM}};
  features_bits_1 = _RAND_14[15:0];
  _RAND_15 = {1{`RANDOM}};
  features_bits_2 = _RAND_15[15:0];
  _RAND_16 = {1{`RANDOM}};
  features_bits_3 = _RAND_16[15:0];
  _RAND_17 = {1{`RANDOM}};
  io_sample_out_bits_offset_REG_1 = _RAND_17[7:0];
  _RAND_18 = {1{`RANDOM}};
  scores_bits_0 = _RAND_18[15:0];
  _RAND_19 = {1{`RANDOM}};
  scores_bits_1 = _RAND_19[15:0];
  _RAND_20 = {1{`RANDOM}};
  scores_bits_2 = _RAND_20[15:0];
  _RAND_21 = {1{`RANDOM}};
  scores_bits_3 = _RAND_21[15:0];
  _RAND_22 = {1{`RANDOM}};
  weights_bits_0 = _RAND_22[15:0];
  _RAND_23 = {1{`RANDOM}};
  weights_bits_1 = _RAND_23[15:0];
  _RAND_24 = {1{`RANDOM}};
  REG_4_0 = _RAND_24[15:0];
  _RAND_25 = {1{`RANDOM}};
  REG_4_1 = _RAND_25[15:0];
  _RAND_26 = {1{`RANDOM}};
  REG_4_2 = _RAND_26[15:0];
  _RAND_27 = {1{`RANDOM}};
  REG_4_3 = _RAND_27[15:0];
  _RAND_28 = {1{`RANDOM}};
  REG_5 = _RAND_28[7:0];
  _RAND_29 = {1{`RANDOM}};
  io_sample_out_bits_last_REG = _RAND_29[0:0];
  _RAND_30 = {1{`RANDOM}};
  io_sample_out_valid_REG = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  queue_io_deq_ready_REG = _RAND_31[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module TreePEwithBRAM_1(
  input         clock,
  input         reset,
  output        pe_io_sample_in_ready,
  input         pe_io_sample_in_valid,
  input  [15:0] pe_io_sample_in_bits_features_0,
  input  [15:0] pe_io_sample_in_bits_features_1,
  input  [15:0] pe_io_sample_in_bits_features_2,
  input  [15:0] pe_io_sample_in_bits_features_3,
  input  [9:0]  pe_io_sample_in_bits_offset,
  input         pe_io_sample_in_bits_search_for_root,
  input  [7:0]  pe_io_sample_in_bits_tree_to_exec,
  input  [15:0] pe_io_sample_in_bits_scores_0,
  input  [15:0] pe_io_sample_in_bits_scores_1,
  input  [15:0] pe_io_sample_in_bits_scores_2,
  input  [15:0] pe_io_sample_in_bits_scores_3,
  input  [15:0] pe_io_sample_in_bits_weights_0,
  input  [15:0] pe_io_sample_in_bits_weights_1,
  input         pe_io_sample_in_bits_last,
  output [9:0]  pe_io_mem_addr_1,
  input  [63:0] pe_io_mem_dataOut_1,
  input         pe_io_sample_out_ready,
  output        pe_io_sample_out_valid,
  output [15:0] pe_io_sample_out_bits_features_0,
  output [15:0] pe_io_sample_out_bits_features_1,
  output [15:0] pe_io_sample_out_bits_features_2,
  output [15:0] pe_io_sample_out_bits_features_3,
  output [9:0]  pe_io_sample_out_bits_offset,
  output        pe_io_sample_out_bits_search_for_root,
  output [7:0]  pe_io_sample_out_bits_tree_to_exec,
  output [15:0] pe_io_sample_out_bits_scores_0,
  output [15:0] pe_io_sample_out_bits_scores_1,
  output [15:0] pe_io_sample_out_bits_scores_2,
  output [15:0] pe_io_sample_out_bits_scores_3,
  output [15:0] pe_io_sample_out_bits_weights_0,
  output [15:0] pe_io_sample_out_bits_weights_1,
  output        pe_io_sample_out_bits_dest,
  output        pe_io_sample_out_bits_last
);
  wire  pe__clock; // @[TreePE.scala 148:18]
  wire  pe__reset; // @[TreePE.scala 148:18]
  wire  pe__io_sample_in_ready; // @[TreePE.scala 148:18]
  wire  pe__io_sample_in_valid; // @[TreePE.scala 148:18]
  wire [15:0] pe__io_sample_in_bits_features_0; // @[TreePE.scala 148:18]
  wire [15:0] pe__io_sample_in_bits_features_1; // @[TreePE.scala 148:18]
  wire [15:0] pe__io_sample_in_bits_features_2; // @[TreePE.scala 148:18]
  wire [15:0] pe__io_sample_in_bits_features_3; // @[TreePE.scala 148:18]
  wire [9:0] pe__io_sample_in_bits_offset; // @[TreePE.scala 148:18]
  wire  pe__io_sample_in_bits_search_for_root; // @[TreePE.scala 148:18]
  wire [7:0] pe__io_sample_in_bits_tree_to_exec; // @[TreePE.scala 148:18]
  wire [15:0] pe__io_sample_in_bits_scores_0; // @[TreePE.scala 148:18]
  wire [15:0] pe__io_sample_in_bits_scores_1; // @[TreePE.scala 148:18]
  wire [15:0] pe__io_sample_in_bits_scores_2; // @[TreePE.scala 148:18]
  wire [15:0] pe__io_sample_in_bits_scores_3; // @[TreePE.scala 148:18]
  wire [15:0] pe__io_sample_in_bits_weights_0; // @[TreePE.scala 148:18]
  wire [15:0] pe__io_sample_in_bits_weights_1; // @[TreePE.scala 148:18]
  wire  pe__io_sample_in_bits_last; // @[TreePE.scala 148:18]
  wire [9:0] pe__io_mem_addr_1; // @[TreePE.scala 148:18]
  wire [63:0] pe__io_mem_dataOut_1; // @[TreePE.scala 148:18]
  wire  pe__io_sample_out_ready; // @[TreePE.scala 148:18]
  wire  pe__io_sample_out_valid; // @[TreePE.scala 148:18]
  wire [15:0] pe__io_sample_out_bits_features_0; // @[TreePE.scala 148:18]
  wire [15:0] pe__io_sample_out_bits_features_1; // @[TreePE.scala 148:18]
  wire [15:0] pe__io_sample_out_bits_features_2; // @[TreePE.scala 148:18]
  wire [15:0] pe__io_sample_out_bits_features_3; // @[TreePE.scala 148:18]
  wire [9:0] pe__io_sample_out_bits_offset; // @[TreePE.scala 148:18]
  wire  pe__io_sample_out_bits_search_for_root; // @[TreePE.scala 148:18]
  wire [7:0] pe__io_sample_out_bits_tree_to_exec; // @[TreePE.scala 148:18]
  wire [15:0] pe__io_sample_out_bits_scores_0; // @[TreePE.scala 148:18]
  wire [15:0] pe__io_sample_out_bits_scores_1; // @[TreePE.scala 148:18]
  wire [15:0] pe__io_sample_out_bits_scores_2; // @[TreePE.scala 148:18]
  wire [15:0] pe__io_sample_out_bits_scores_3; // @[TreePE.scala 148:18]
  wire [15:0] pe__io_sample_out_bits_weights_0; // @[TreePE.scala 148:18]
  wire [15:0] pe__io_sample_out_bits_weights_1; // @[TreePE.scala 148:18]
  wire  pe__io_sample_out_bits_dest; // @[TreePE.scala 148:18]
  wire  pe__io_sample_out_bits_last; // @[TreePE.scala 148:18]
  TreePE_1 pe_ ( // @[TreePE.scala 148:18]
    .clock(pe__clock),
    .reset(pe__reset),
    .io_sample_in_ready(pe__io_sample_in_ready),
    .io_sample_in_valid(pe__io_sample_in_valid),
    .io_sample_in_bits_features_0(pe__io_sample_in_bits_features_0),
    .io_sample_in_bits_features_1(pe__io_sample_in_bits_features_1),
    .io_sample_in_bits_features_2(pe__io_sample_in_bits_features_2),
    .io_sample_in_bits_features_3(pe__io_sample_in_bits_features_3),
    .io_sample_in_bits_offset(pe__io_sample_in_bits_offset),
    .io_sample_in_bits_search_for_root(pe__io_sample_in_bits_search_for_root),
    .io_sample_in_bits_tree_to_exec(pe__io_sample_in_bits_tree_to_exec),
    .io_sample_in_bits_scores_0(pe__io_sample_in_bits_scores_0),
    .io_sample_in_bits_scores_1(pe__io_sample_in_bits_scores_1),
    .io_sample_in_bits_scores_2(pe__io_sample_in_bits_scores_2),
    .io_sample_in_bits_scores_3(pe__io_sample_in_bits_scores_3),
    .io_sample_in_bits_weights_0(pe__io_sample_in_bits_weights_0),
    .io_sample_in_bits_weights_1(pe__io_sample_in_bits_weights_1),
    .io_sample_in_bits_last(pe__io_sample_in_bits_last),
    .io_mem_addr_1(pe__io_mem_addr_1),
    .io_mem_dataOut_1(pe__io_mem_dataOut_1),
    .io_sample_out_ready(pe__io_sample_out_ready),
    .io_sample_out_valid(pe__io_sample_out_valid),
    .io_sample_out_bits_features_0(pe__io_sample_out_bits_features_0),
    .io_sample_out_bits_features_1(pe__io_sample_out_bits_features_1),
    .io_sample_out_bits_features_2(pe__io_sample_out_bits_features_2),
    .io_sample_out_bits_features_3(pe__io_sample_out_bits_features_3),
    .io_sample_out_bits_offset(pe__io_sample_out_bits_offset),
    .io_sample_out_bits_search_for_root(pe__io_sample_out_bits_search_for_root),
    .io_sample_out_bits_tree_to_exec(pe__io_sample_out_bits_tree_to_exec),
    .io_sample_out_bits_scores_0(pe__io_sample_out_bits_scores_0),
    .io_sample_out_bits_scores_1(pe__io_sample_out_bits_scores_1),
    .io_sample_out_bits_scores_2(pe__io_sample_out_bits_scores_2),
    .io_sample_out_bits_scores_3(pe__io_sample_out_bits_scores_3),
    .io_sample_out_bits_weights_0(pe__io_sample_out_bits_weights_0),
    .io_sample_out_bits_weights_1(pe__io_sample_out_bits_weights_1),
    .io_sample_out_bits_dest(pe__io_sample_out_bits_dest),
    .io_sample_out_bits_last(pe__io_sample_out_bits_last)
  );
  assign pe_io_sample_in_ready = pe__io_sample_in_ready; // @[TreePE.scala 150:9]
  assign pe_io_mem_addr_1 = pe__io_mem_addr_1; // @[TreePE.scala 150:9]
  assign pe_io_sample_out_valid = pe__io_sample_out_valid; // @[TreePE.scala 150:9]
  assign pe_io_sample_out_bits_features_0 = pe__io_sample_out_bits_features_0; // @[TreePE.scala 150:9]
  assign pe_io_sample_out_bits_features_1 = pe__io_sample_out_bits_features_1; // @[TreePE.scala 150:9]
  assign pe_io_sample_out_bits_features_2 = pe__io_sample_out_bits_features_2; // @[TreePE.scala 150:9]
  assign pe_io_sample_out_bits_features_3 = pe__io_sample_out_bits_features_3; // @[TreePE.scala 150:9]
  assign pe_io_sample_out_bits_offset = pe__io_sample_out_bits_offset; // @[TreePE.scala 150:9]
  assign pe_io_sample_out_bits_search_for_root = pe__io_sample_out_bits_search_for_root; // @[TreePE.scala 150:9]
  assign pe_io_sample_out_bits_tree_to_exec = pe__io_sample_out_bits_tree_to_exec; // @[TreePE.scala 150:9]
  assign pe_io_sample_out_bits_scores_0 = pe__io_sample_out_bits_scores_0; // @[TreePE.scala 150:9]
  assign pe_io_sample_out_bits_scores_1 = pe__io_sample_out_bits_scores_1; // @[TreePE.scala 150:9]
  assign pe_io_sample_out_bits_scores_2 = pe__io_sample_out_bits_scores_2; // @[TreePE.scala 150:9]
  assign pe_io_sample_out_bits_scores_3 = pe__io_sample_out_bits_scores_3; // @[TreePE.scala 150:9]
  assign pe_io_sample_out_bits_weights_0 = pe__io_sample_out_bits_weights_0; // @[TreePE.scala 150:9]
  assign pe_io_sample_out_bits_weights_1 = pe__io_sample_out_bits_weights_1; // @[TreePE.scala 150:9]
  assign pe_io_sample_out_bits_dest = pe__io_sample_out_bits_dest; // @[TreePE.scala 150:9]
  assign pe_io_sample_out_bits_last = pe__io_sample_out_bits_last; // @[TreePE.scala 150:9]
  assign pe__clock = clock;
  assign pe__reset = reset;
  assign pe__io_sample_in_valid = pe_io_sample_in_valid; // @[TreePE.scala 150:9]
  assign pe__io_sample_in_bits_features_0 = pe_io_sample_in_bits_features_0; // @[TreePE.scala 150:9]
  assign pe__io_sample_in_bits_features_1 = pe_io_sample_in_bits_features_1; // @[TreePE.scala 150:9]
  assign pe__io_sample_in_bits_features_2 = pe_io_sample_in_bits_features_2; // @[TreePE.scala 150:9]
  assign pe__io_sample_in_bits_features_3 = pe_io_sample_in_bits_features_3; // @[TreePE.scala 150:9]
  assign pe__io_sample_in_bits_offset = pe_io_sample_in_bits_offset; // @[TreePE.scala 150:9]
  assign pe__io_sample_in_bits_search_for_root = pe_io_sample_in_bits_search_for_root; // @[TreePE.scala 150:9]
  assign pe__io_sample_in_bits_tree_to_exec = pe_io_sample_in_bits_tree_to_exec; // @[TreePE.scala 150:9]
  assign pe__io_sample_in_bits_scores_0 = pe_io_sample_in_bits_scores_0; // @[TreePE.scala 150:9]
  assign pe__io_sample_in_bits_scores_1 = pe_io_sample_in_bits_scores_1; // @[TreePE.scala 150:9]
  assign pe__io_sample_in_bits_scores_2 = pe_io_sample_in_bits_scores_2; // @[TreePE.scala 150:9]
  assign pe__io_sample_in_bits_scores_3 = pe_io_sample_in_bits_scores_3; // @[TreePE.scala 150:9]
  assign pe__io_sample_in_bits_weights_0 = pe_io_sample_in_bits_weights_0; // @[TreePE.scala 150:9]
  assign pe__io_sample_in_bits_weights_1 = pe_io_sample_in_bits_weights_1; // @[TreePE.scala 150:9]
  assign pe__io_sample_in_bits_last = pe_io_sample_in_bits_last; // @[TreePE.scala 150:9]
  assign pe__io_mem_dataOut_1 = pe_io_mem_dataOut_1; // @[TreePE.scala 150:9]
  assign pe__io_sample_out_ready = pe_io_sample_out_ready; // @[TreePE.scala 150:9]
endmodule
module BRAMLikeMem1(
  input         clock,
  input  [9:0]  io_addr_1,
  output [63:0] io_dataOut_1,
  input         io_enable_2,
  input         io_write_2,
  input  [9:0]  io_addr_2,
  input  [63:0] io_dataIn_2,
  output [63:0] io_dataOut_2
);
`ifdef RANDOMIZE_MEM_INIT
  reg [63:0] _RAND_0;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
`endif // RANDOMIZE_REG_INIT
  reg [63:0] mem [0:1023]; // @[ME.scala 48:24]
  wire  mem_io_dataOut_1_MPORT_en; // @[ME.scala 48:24]
  wire [9:0] mem_io_dataOut_1_MPORT_addr; // @[ME.scala 48:24]
  wire [63:0] mem_io_dataOut_1_MPORT_data; // @[ME.scala 48:24]
  wire  mem_io_dataOut_2_MPORT_en; // @[ME.scala 48:24]
  wire [9:0] mem_io_dataOut_2_MPORT_addr; // @[ME.scala 48:24]
  wire [63:0] mem_io_dataOut_2_MPORT_data; // @[ME.scala 48:24]
  wire [63:0] mem_MPORT_data; // @[ME.scala 48:24]
  wire [9:0] mem_MPORT_addr; // @[ME.scala 48:24]
  wire  mem_MPORT_mask; // @[ME.scala 48:24]
  wire  mem_MPORT_en; // @[ME.scala 48:24]
  wire [63:0] mem_MPORT_1_data; // @[ME.scala 48:24]
  wire [9:0] mem_MPORT_1_addr; // @[ME.scala 48:24]
  wire  mem_MPORT_1_mask; // @[ME.scala 48:24]
  wire  mem_MPORT_1_en; // @[ME.scala 48:24]
  reg  mem_io_dataOut_1_MPORT_en_pipe_0;
  reg [9:0] mem_io_dataOut_1_MPORT_addr_pipe_0;
  reg  mem_io_dataOut_2_MPORT_en_pipe_0;
  reg [9:0] mem_io_dataOut_2_MPORT_addr_pipe_0;
  assign mem_io_dataOut_1_MPORT_en = mem_io_dataOut_1_MPORT_en_pipe_0;
  assign mem_io_dataOut_1_MPORT_addr = mem_io_dataOut_1_MPORT_addr_pipe_0;
  assign mem_io_dataOut_1_MPORT_data = mem[mem_io_dataOut_1_MPORT_addr]; // @[ME.scala 48:24]
  assign mem_io_dataOut_2_MPORT_en = mem_io_dataOut_2_MPORT_en_pipe_0;
  assign mem_io_dataOut_2_MPORT_addr = mem_io_dataOut_2_MPORT_addr_pipe_0;
  assign mem_io_dataOut_2_MPORT_data = mem[mem_io_dataOut_2_MPORT_addr]; // @[ME.scala 48:24]
  assign mem_MPORT_data = 64'h0;
  assign mem_MPORT_addr = io_addr_1;
  assign mem_MPORT_mask = 1'h1;
  assign mem_MPORT_en = 1'h0;
  assign mem_MPORT_1_data = io_dataIn_2;
  assign mem_MPORT_1_addr = io_addr_2;
  assign mem_MPORT_1_mask = 1'h1;
  assign mem_MPORT_1_en = io_write_2;
  assign io_dataOut_1 = mem_io_dataOut_1_MPORT_data; // @[ME.scala 51:16]
  assign io_dataOut_2 = mem_io_dataOut_2_MPORT_data; // @[ME.scala 54:16]
  always @(posedge clock) begin
    if (mem_MPORT_en & mem_MPORT_mask) begin
      mem[mem_MPORT_addr] <= mem_MPORT_data; // @[ME.scala 48:24]
    end
    if (mem_MPORT_1_en & mem_MPORT_1_mask) begin
      mem[mem_MPORT_1_addr] <= mem_MPORT_1_data; // @[ME.scala 48:24]
    end
    mem_io_dataOut_1_MPORT_en_pipe_0 <= 1'h1;
    if (1'h1) begin
      mem_io_dataOut_1_MPORT_addr_pipe_0 <= io_addr_1;
    end
    mem_io_dataOut_2_MPORT_en_pipe_0 <= io_enable_2;
    if (io_enable_2) begin
      mem_io_dataOut_2_MPORT_addr_pipe_0 <= io_addr_2;
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
  _RAND_0 = {2{`RANDOM}};
  for (initvar = 0; initvar < 1024; initvar = initvar+1)
    mem[initvar] = _RAND_0[63:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  mem_io_dataOut_1_MPORT_en_pipe_0 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  mem_io_dataOut_1_MPORT_addr_pipe_0 = _RAND_2[9:0];
  _RAND_3 = {1{`RANDOM}};
  mem_io_dataOut_2_MPORT_en_pipe_0 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  mem_io_dataOut_2_MPORT_addr_pipe_0 = _RAND_4[9:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module FirstInterconnectPE(
  input         clock,
  input         reset,
  output        io_sample_entering_ready,
  input         io_sample_entering_valid,
  input  [15:0] io_sample_entering_bits_features_0,
  input  [15:0] io_sample_entering_bits_features_1,
  input  [15:0] io_sample_entering_bits_features_2,
  input  [15:0] io_sample_entering_bits_features_3,
  input  [9:0]  io_sample_entering_bits_offset,
  input         io_sample_entering_bits_shift,
  input         io_sample_entering_bits_search_for_root,
  input  [7:0]  io_sample_entering_bits_tree_to_exec,
  input  [15:0] io_sample_entering_bits_scores_0,
  input  [15:0] io_sample_entering_bits_scores_1,
  input  [15:0] io_sample_entering_bits_scores_2,
  input  [15:0] io_sample_entering_bits_scores_3,
  input  [15:0] io_sample_entering_bits_weights_0,
  input  [15:0] io_sample_entering_bits_weights_1,
  input         io_sample_entering_bits_last,
  output        io_sample_looping_ready,
  input         io_sample_looping_valid,
  input  [15:0] io_sample_looping_bits_features_0,
  input  [15:0] io_sample_looping_bits_features_1,
  input  [15:0] io_sample_looping_bits_features_2,
  input  [15:0] io_sample_looping_bits_features_3,
  input  [9:0]  io_sample_looping_bits_offset,
  input         io_sample_looping_bits_shift,
  input         io_sample_looping_bits_search_for_root,
  input  [7:0]  io_sample_looping_bits_tree_to_exec,
  input  [15:0] io_sample_looping_bits_scores_0,
  input  [15:0] io_sample_looping_bits_scores_1,
  input  [15:0] io_sample_looping_bits_scores_2,
  input  [15:0] io_sample_looping_bits_scores_3,
  input  [15:0] io_sample_looping_bits_weights_0,
  input  [15:0] io_sample_looping_bits_weights_1,
  input         io_sample_looping_bits_last,
  input         io_sample_out_ready,
  output        io_sample_out_valid,
  output [15:0] io_sample_out_bits_features_0,
  output [15:0] io_sample_out_bits_features_1,
  output [15:0] io_sample_out_bits_features_2,
  output [15:0] io_sample_out_bits_features_3,
  output [9:0]  io_sample_out_bits_offset,
  output        io_sample_out_bits_shift,
  output        io_sample_out_bits_search_for_root,
  output [7:0]  io_sample_out_bits_tree_to_exec,
  output [15:0] io_sample_out_bits_scores_0,
  output [15:0] io_sample_out_bits_scores_1,
  output [15:0] io_sample_out_bits_scores_2,
  output [15:0] io_sample_out_bits_scores_3,
  output [15:0] io_sample_out_bits_weights_0,
  output [15:0] io_sample_out_bits_weights_1,
  output        io_sample_out_bits_last
);
  wire  queue_entering_clock; // @[Decoupled.scala 377:21]
  wire  queue_entering_reset; // @[Decoupled.scala 377:21]
  wire  queue_entering_io_enq_ready; // @[Decoupled.scala 377:21]
  wire  queue_entering_io_enq_valid; // @[Decoupled.scala 377:21]
  wire [15:0] queue_entering_io_enq_bits_features_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_entering_io_enq_bits_features_1; // @[Decoupled.scala 377:21]
  wire [15:0] queue_entering_io_enq_bits_features_2; // @[Decoupled.scala 377:21]
  wire [15:0] queue_entering_io_enq_bits_features_3; // @[Decoupled.scala 377:21]
  wire [9:0] queue_entering_io_enq_bits_offset; // @[Decoupled.scala 377:21]
  wire  queue_entering_io_enq_bits_shift; // @[Decoupled.scala 377:21]
  wire  queue_entering_io_enq_bits_search_for_root; // @[Decoupled.scala 377:21]
  wire [7:0] queue_entering_io_enq_bits_tree_to_exec; // @[Decoupled.scala 377:21]
  wire [15:0] queue_entering_io_enq_bits_scores_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_entering_io_enq_bits_scores_1; // @[Decoupled.scala 377:21]
  wire [15:0] queue_entering_io_enq_bits_scores_2; // @[Decoupled.scala 377:21]
  wire [15:0] queue_entering_io_enq_bits_scores_3; // @[Decoupled.scala 377:21]
  wire [15:0] queue_entering_io_enq_bits_weights_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_entering_io_enq_bits_weights_1; // @[Decoupled.scala 377:21]
  wire  queue_entering_io_enq_bits_last; // @[Decoupled.scala 377:21]
  wire  queue_entering_io_deq_ready; // @[Decoupled.scala 377:21]
  wire  queue_entering_io_deq_valid; // @[Decoupled.scala 377:21]
  wire [15:0] queue_entering_io_deq_bits_features_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_entering_io_deq_bits_features_1; // @[Decoupled.scala 377:21]
  wire [15:0] queue_entering_io_deq_bits_features_2; // @[Decoupled.scala 377:21]
  wire [15:0] queue_entering_io_deq_bits_features_3; // @[Decoupled.scala 377:21]
  wire [9:0] queue_entering_io_deq_bits_offset; // @[Decoupled.scala 377:21]
  wire  queue_entering_io_deq_bits_shift; // @[Decoupled.scala 377:21]
  wire  queue_entering_io_deq_bits_search_for_root; // @[Decoupled.scala 377:21]
  wire [7:0] queue_entering_io_deq_bits_tree_to_exec; // @[Decoupled.scala 377:21]
  wire [15:0] queue_entering_io_deq_bits_scores_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_entering_io_deq_bits_scores_1; // @[Decoupled.scala 377:21]
  wire [15:0] queue_entering_io_deq_bits_scores_2; // @[Decoupled.scala 377:21]
  wire [15:0] queue_entering_io_deq_bits_scores_3; // @[Decoupled.scala 377:21]
  wire [15:0] queue_entering_io_deq_bits_weights_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_entering_io_deq_bits_weights_1; // @[Decoupled.scala 377:21]
  wire  queue_entering_io_deq_bits_last; // @[Decoupled.scala 377:21]
  wire  queue_looping_clock; // @[Decoupled.scala 377:21]
  wire  queue_looping_reset; // @[Decoupled.scala 377:21]
  wire  queue_looping_io_enq_ready; // @[Decoupled.scala 377:21]
  wire  queue_looping_io_enq_valid; // @[Decoupled.scala 377:21]
  wire [15:0] queue_looping_io_enq_bits_features_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_looping_io_enq_bits_features_1; // @[Decoupled.scala 377:21]
  wire [15:0] queue_looping_io_enq_bits_features_2; // @[Decoupled.scala 377:21]
  wire [15:0] queue_looping_io_enq_bits_features_3; // @[Decoupled.scala 377:21]
  wire [9:0] queue_looping_io_enq_bits_offset; // @[Decoupled.scala 377:21]
  wire  queue_looping_io_enq_bits_shift; // @[Decoupled.scala 377:21]
  wire  queue_looping_io_enq_bits_search_for_root; // @[Decoupled.scala 377:21]
  wire [7:0] queue_looping_io_enq_bits_tree_to_exec; // @[Decoupled.scala 377:21]
  wire [15:0] queue_looping_io_enq_bits_scores_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_looping_io_enq_bits_scores_1; // @[Decoupled.scala 377:21]
  wire [15:0] queue_looping_io_enq_bits_scores_2; // @[Decoupled.scala 377:21]
  wire [15:0] queue_looping_io_enq_bits_scores_3; // @[Decoupled.scala 377:21]
  wire [15:0] queue_looping_io_enq_bits_weights_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_looping_io_enq_bits_weights_1; // @[Decoupled.scala 377:21]
  wire  queue_looping_io_enq_bits_last; // @[Decoupled.scala 377:21]
  wire  queue_looping_io_deq_ready; // @[Decoupled.scala 377:21]
  wire  queue_looping_io_deq_valid; // @[Decoupled.scala 377:21]
  wire [15:0] queue_looping_io_deq_bits_features_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_looping_io_deq_bits_features_1; // @[Decoupled.scala 377:21]
  wire [15:0] queue_looping_io_deq_bits_features_2; // @[Decoupled.scala 377:21]
  wire [15:0] queue_looping_io_deq_bits_features_3; // @[Decoupled.scala 377:21]
  wire [9:0] queue_looping_io_deq_bits_offset; // @[Decoupled.scala 377:21]
  wire  queue_looping_io_deq_bits_shift; // @[Decoupled.scala 377:21]
  wire  queue_looping_io_deq_bits_search_for_root; // @[Decoupled.scala 377:21]
  wire [7:0] queue_looping_io_deq_bits_tree_to_exec; // @[Decoupled.scala 377:21]
  wire [15:0] queue_looping_io_deq_bits_scores_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_looping_io_deq_bits_scores_1; // @[Decoupled.scala 377:21]
  wire [15:0] queue_looping_io_deq_bits_scores_2; // @[Decoupled.scala 377:21]
  wire [15:0] queue_looping_io_deq_bits_scores_3; // @[Decoupled.scala 377:21]
  wire [15:0] queue_looping_io_deq_bits_weights_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_looping_io_deq_bits_weights_1; // @[Decoupled.scala 377:21]
  wire  queue_looping_io_deq_bits_last; // @[Decoupled.scala 377:21]
  wire [15:0] _GEN_0 = queue_entering_io_deq_bits_features_0; // @[Interconnect.scala 70:37 71:28 76:28]
  wire [15:0] _GEN_1 = queue_entering_io_deq_bits_features_1; // @[Interconnect.scala 70:37 71:28 76:28]
  wire [15:0] _GEN_2 = queue_entering_io_deq_bits_features_2; // @[Interconnect.scala 70:37 71:28 76:28]
  wire [15:0] _GEN_3 = queue_entering_io_deq_bits_features_3; // @[Interconnect.scala 70:37 71:28 76:28]
  wire [9:0] _GEN_4 = queue_entering_io_deq_bits_offset; // @[Interconnect.scala 70:37 71:28 76:28]
  wire  _GEN_5 = queue_entering_io_deq_bits_shift; // @[Interconnect.scala 70:37 71:28 76:28]
  wire  _GEN_6 = queue_entering_io_deq_bits_search_for_root; // @[Interconnect.scala 70:37 71:28 76:28]
  wire [7:0] _GEN_7 = queue_entering_io_deq_bits_tree_to_exec; // @[Interconnect.scala 70:37 71:28 76:28]
  wire [15:0] _GEN_8 = queue_entering_io_deq_bits_scores_0; // @[Interconnect.scala 70:37 71:28 76:28]
  wire [15:0] _GEN_9 = queue_entering_io_deq_bits_scores_1; // @[Interconnect.scala 70:37 71:28 76:28]
  wire [15:0] _GEN_10 = queue_entering_io_deq_bits_scores_2; // @[Interconnect.scala 70:37 71:28 76:28]
  wire [15:0] _GEN_11 = queue_entering_io_deq_bits_scores_3; // @[Interconnect.scala 70:37 71:28 76:28]
  wire [15:0] _GEN_12 = queue_entering_io_deq_bits_weights_0; // @[Interconnect.scala 70:37 71:28 76:28]
  wire [15:0] _GEN_13 = queue_entering_io_deq_bits_weights_1; // @[Interconnect.scala 70:37 71:28 76:28]
  wire  _GEN_15 = queue_entering_io_deq_bits_last; // @[Interconnect.scala 70:37 71:28 76:28]
  wire  _GEN_16 = queue_entering_io_deq_valid; // @[Interconnect.scala 70:37 72:29 77:29]
  wire  _GEN_17 = queue_entering_io_deq_valid ? io_sample_out_ready : 1'h1; // @[Interconnect.scala 70:37 73:30 79:30]
  Queue_1 queue_entering ( // @[Decoupled.scala 377:21]
    .clock(queue_entering_clock),
    .reset(queue_entering_reset),
    .io_enq_ready(queue_entering_io_enq_ready),
    .io_enq_valid(queue_entering_io_enq_valid),
    .io_enq_bits_features_0(queue_entering_io_enq_bits_features_0),
    .io_enq_bits_features_1(queue_entering_io_enq_bits_features_1),
    .io_enq_bits_features_2(queue_entering_io_enq_bits_features_2),
    .io_enq_bits_features_3(queue_entering_io_enq_bits_features_3),
    .io_enq_bits_offset(queue_entering_io_enq_bits_offset),
    .io_enq_bits_shift(queue_entering_io_enq_bits_shift),
    .io_enq_bits_search_for_root(queue_entering_io_enq_bits_search_for_root),
    .io_enq_bits_tree_to_exec(queue_entering_io_enq_bits_tree_to_exec),
    .io_enq_bits_scores_0(queue_entering_io_enq_bits_scores_0),
    .io_enq_bits_scores_1(queue_entering_io_enq_bits_scores_1),
    .io_enq_bits_scores_2(queue_entering_io_enq_bits_scores_2),
    .io_enq_bits_scores_3(queue_entering_io_enq_bits_scores_3),
    .io_enq_bits_weights_0(queue_entering_io_enq_bits_weights_0),
    .io_enq_bits_weights_1(queue_entering_io_enq_bits_weights_1),
    .io_enq_bits_last(queue_entering_io_enq_bits_last),
    .io_deq_ready(queue_entering_io_deq_ready),
    .io_deq_valid(queue_entering_io_deq_valid),
    .io_deq_bits_features_0(queue_entering_io_deq_bits_features_0),
    .io_deq_bits_features_1(queue_entering_io_deq_bits_features_1),
    .io_deq_bits_features_2(queue_entering_io_deq_bits_features_2),
    .io_deq_bits_features_3(queue_entering_io_deq_bits_features_3),
    .io_deq_bits_offset(queue_entering_io_deq_bits_offset),
    .io_deq_bits_shift(queue_entering_io_deq_bits_shift),
    .io_deq_bits_search_for_root(queue_entering_io_deq_bits_search_for_root),
    .io_deq_bits_tree_to_exec(queue_entering_io_deq_bits_tree_to_exec),
    .io_deq_bits_scores_0(queue_entering_io_deq_bits_scores_0),
    .io_deq_bits_scores_1(queue_entering_io_deq_bits_scores_1),
    .io_deq_bits_scores_2(queue_entering_io_deq_bits_scores_2),
    .io_deq_bits_scores_3(queue_entering_io_deq_bits_scores_3),
    .io_deq_bits_weights_0(queue_entering_io_deq_bits_weights_0),
    .io_deq_bits_weights_1(queue_entering_io_deq_bits_weights_1),
    .io_deq_bits_last(queue_entering_io_deq_bits_last)
  );
  Queue_1 queue_looping ( // @[Decoupled.scala 377:21]
    .clock(queue_looping_clock),
    .reset(queue_looping_reset),
    .io_enq_ready(queue_looping_io_enq_ready),
    .io_enq_valid(queue_looping_io_enq_valid),
    .io_enq_bits_features_0(queue_looping_io_enq_bits_features_0),
    .io_enq_bits_features_1(queue_looping_io_enq_bits_features_1),
    .io_enq_bits_features_2(queue_looping_io_enq_bits_features_2),
    .io_enq_bits_features_3(queue_looping_io_enq_bits_features_3),
    .io_enq_bits_offset(queue_looping_io_enq_bits_offset),
    .io_enq_bits_shift(queue_looping_io_enq_bits_shift),
    .io_enq_bits_search_for_root(queue_looping_io_enq_bits_search_for_root),
    .io_enq_bits_tree_to_exec(queue_looping_io_enq_bits_tree_to_exec),
    .io_enq_bits_scores_0(queue_looping_io_enq_bits_scores_0),
    .io_enq_bits_scores_1(queue_looping_io_enq_bits_scores_1),
    .io_enq_bits_scores_2(queue_looping_io_enq_bits_scores_2),
    .io_enq_bits_scores_3(queue_looping_io_enq_bits_scores_3),
    .io_enq_bits_weights_0(queue_looping_io_enq_bits_weights_0),
    .io_enq_bits_weights_1(queue_looping_io_enq_bits_weights_1),
    .io_enq_bits_last(queue_looping_io_enq_bits_last),
    .io_deq_ready(queue_looping_io_deq_ready),
    .io_deq_valid(queue_looping_io_deq_valid),
    .io_deq_bits_features_0(queue_looping_io_deq_bits_features_0),
    .io_deq_bits_features_1(queue_looping_io_deq_bits_features_1),
    .io_deq_bits_features_2(queue_looping_io_deq_bits_features_2),
    .io_deq_bits_features_3(queue_looping_io_deq_bits_features_3),
    .io_deq_bits_offset(queue_looping_io_deq_bits_offset),
    .io_deq_bits_shift(queue_looping_io_deq_bits_shift),
    .io_deq_bits_search_for_root(queue_looping_io_deq_bits_search_for_root),
    .io_deq_bits_tree_to_exec(queue_looping_io_deq_bits_tree_to_exec),
    .io_deq_bits_scores_0(queue_looping_io_deq_bits_scores_0),
    .io_deq_bits_scores_1(queue_looping_io_deq_bits_scores_1),
    .io_deq_bits_scores_2(queue_looping_io_deq_bits_scores_2),
    .io_deq_bits_scores_3(queue_looping_io_deq_bits_scores_3),
    .io_deq_bits_weights_0(queue_looping_io_deq_bits_weights_0),
    .io_deq_bits_weights_1(queue_looping_io_deq_bits_weights_1),
    .io_deq_bits_last(queue_looping_io_deq_bits_last)
  );
  assign io_sample_entering_ready = queue_entering_io_enq_ready; // @[Decoupled.scala 381:17]
  assign io_sample_looping_ready = queue_looping_io_enq_ready; // @[Decoupled.scala 381:17]
  assign io_sample_out_valid = queue_looping_io_deq_valid | _GEN_16; // @[Interconnect.scala 65:30 67:29]
  assign io_sample_out_bits_features_0 = queue_looping_io_deq_valid ? $signed(queue_looping_io_deq_bits_features_0) :
    $signed(_GEN_0); // @[Interconnect.scala 65:30 66:28]
  assign io_sample_out_bits_features_1 = queue_looping_io_deq_valid ? $signed(queue_looping_io_deq_bits_features_1) :
    $signed(_GEN_1); // @[Interconnect.scala 65:30 66:28]
  assign io_sample_out_bits_features_2 = queue_looping_io_deq_valid ? $signed(queue_looping_io_deq_bits_features_2) :
    $signed(_GEN_2); // @[Interconnect.scala 65:30 66:28]
  assign io_sample_out_bits_features_3 = queue_looping_io_deq_valid ? $signed(queue_looping_io_deq_bits_features_3) :
    $signed(_GEN_3); // @[Interconnect.scala 65:30 66:28]
  assign io_sample_out_bits_offset = queue_looping_io_deq_valid ? queue_looping_io_deq_bits_offset : _GEN_4; // @[Interconnect.scala 65:30 66:28]
  assign io_sample_out_bits_shift = queue_looping_io_deq_valid ? queue_looping_io_deq_bits_shift : _GEN_5; // @[Interconnect.scala 65:30 66:28]
  assign io_sample_out_bits_search_for_root = queue_looping_io_deq_valid ? queue_looping_io_deq_bits_search_for_root :
    _GEN_6; // @[Interconnect.scala 65:30 66:28]
  assign io_sample_out_bits_tree_to_exec = queue_looping_io_deq_valid ? queue_looping_io_deq_bits_tree_to_exec : _GEN_7; // @[Interconnect.scala 65:30 66:28]
  assign io_sample_out_bits_scores_0 = queue_looping_io_deq_valid ? $signed(queue_looping_io_deq_bits_scores_0) :
    $signed(_GEN_8); // @[Interconnect.scala 65:30 66:28]
  assign io_sample_out_bits_scores_1 = queue_looping_io_deq_valid ? $signed(queue_looping_io_deq_bits_scores_1) :
    $signed(_GEN_9); // @[Interconnect.scala 65:30 66:28]
  assign io_sample_out_bits_scores_2 = queue_looping_io_deq_valid ? $signed(queue_looping_io_deq_bits_scores_2) :
    $signed(_GEN_10); // @[Interconnect.scala 65:30 66:28]
  assign io_sample_out_bits_scores_3 = queue_looping_io_deq_valid ? $signed(queue_looping_io_deq_bits_scores_3) :
    $signed(_GEN_11); // @[Interconnect.scala 65:30 66:28]
  assign io_sample_out_bits_weights_0 = queue_looping_io_deq_valid ? $signed(queue_looping_io_deq_bits_weights_0) :
    $signed(_GEN_12); // @[Interconnect.scala 65:30 66:28]
  assign io_sample_out_bits_weights_1 = queue_looping_io_deq_valid ? $signed(queue_looping_io_deq_bits_weights_1) :
    $signed(_GEN_13); // @[Interconnect.scala 65:30 66:28]
  assign io_sample_out_bits_last = queue_looping_io_deq_valid ? queue_looping_io_deq_bits_last : _GEN_15; // @[Interconnect.scala 65:30 66:28]
  assign queue_entering_clock = clock;
  assign queue_entering_reset = reset;
  assign queue_entering_io_enq_valid = io_sample_entering_valid; // @[Decoupled.scala 379:22]
  assign queue_entering_io_enq_bits_features_0 = io_sample_entering_bits_features_0; // @[Decoupled.scala 380:21]
  assign queue_entering_io_enq_bits_features_1 = io_sample_entering_bits_features_1; // @[Decoupled.scala 380:21]
  assign queue_entering_io_enq_bits_features_2 = io_sample_entering_bits_features_2; // @[Decoupled.scala 380:21]
  assign queue_entering_io_enq_bits_features_3 = io_sample_entering_bits_features_3; // @[Decoupled.scala 380:21]
  assign queue_entering_io_enq_bits_offset = io_sample_entering_bits_offset; // @[Decoupled.scala 380:21]
  assign queue_entering_io_enq_bits_shift = io_sample_entering_bits_shift; // @[Decoupled.scala 380:21]
  assign queue_entering_io_enq_bits_search_for_root = io_sample_entering_bits_search_for_root; // @[Decoupled.scala 380:21]
  assign queue_entering_io_enq_bits_tree_to_exec = io_sample_entering_bits_tree_to_exec; // @[Decoupled.scala 380:21]
  assign queue_entering_io_enq_bits_scores_0 = io_sample_entering_bits_scores_0; // @[Decoupled.scala 380:21]
  assign queue_entering_io_enq_bits_scores_1 = io_sample_entering_bits_scores_1; // @[Decoupled.scala 380:21]
  assign queue_entering_io_enq_bits_scores_2 = io_sample_entering_bits_scores_2; // @[Decoupled.scala 380:21]
  assign queue_entering_io_enq_bits_scores_3 = io_sample_entering_bits_scores_3; // @[Decoupled.scala 380:21]
  assign queue_entering_io_enq_bits_weights_0 = io_sample_entering_bits_weights_0; // @[Decoupled.scala 380:21]
  assign queue_entering_io_enq_bits_weights_1 = io_sample_entering_bits_weights_1; // @[Decoupled.scala 380:21]
  assign queue_entering_io_enq_bits_last = io_sample_entering_bits_last; // @[Decoupled.scala 380:21]
  assign queue_entering_io_deq_ready = queue_looping_io_deq_valid ? 1'h0 : _GEN_17; // @[Interconnect.scala 65:30 69:30]
  assign queue_looping_clock = clock;
  assign queue_looping_reset = reset;
  assign queue_looping_io_enq_valid = io_sample_looping_valid; // @[Decoupled.scala 379:22]
  assign queue_looping_io_enq_bits_features_0 = io_sample_looping_bits_features_0; // @[Decoupled.scala 380:21]
  assign queue_looping_io_enq_bits_features_1 = io_sample_looping_bits_features_1; // @[Decoupled.scala 380:21]
  assign queue_looping_io_enq_bits_features_2 = io_sample_looping_bits_features_2; // @[Decoupled.scala 380:21]
  assign queue_looping_io_enq_bits_features_3 = io_sample_looping_bits_features_3; // @[Decoupled.scala 380:21]
  assign queue_looping_io_enq_bits_offset = io_sample_looping_bits_offset; // @[Decoupled.scala 380:21]
  assign queue_looping_io_enq_bits_shift = io_sample_looping_bits_shift; // @[Decoupled.scala 380:21]
  assign queue_looping_io_enq_bits_search_for_root = io_sample_looping_bits_search_for_root; // @[Decoupled.scala 380:21]
  assign queue_looping_io_enq_bits_tree_to_exec = io_sample_looping_bits_tree_to_exec; // @[Decoupled.scala 380:21]
  assign queue_looping_io_enq_bits_scores_0 = io_sample_looping_bits_scores_0; // @[Decoupled.scala 380:21]
  assign queue_looping_io_enq_bits_scores_1 = io_sample_looping_bits_scores_1; // @[Decoupled.scala 380:21]
  assign queue_looping_io_enq_bits_scores_2 = io_sample_looping_bits_scores_2; // @[Decoupled.scala 380:21]
  assign queue_looping_io_enq_bits_scores_3 = io_sample_looping_bits_scores_3; // @[Decoupled.scala 380:21]
  assign queue_looping_io_enq_bits_weights_0 = io_sample_looping_bits_weights_0; // @[Decoupled.scala 380:21]
  assign queue_looping_io_enq_bits_weights_1 = io_sample_looping_bits_weights_1; // @[Decoupled.scala 380:21]
  assign queue_looping_io_enq_bits_last = io_sample_looping_bits_last; // @[Decoupled.scala 380:21]
  assign queue_looping_io_deq_ready = queue_looping_io_deq_valid ? io_sample_out_ready : 1'h1; // @[Interconnect.scala 65:30 68:29]
endmodule
module LastInterconnectPE(
  input         clock,
  input         reset,
  output        io_sample_in_ready,
  input         io_sample_in_valid,
  input  [15:0] io_sample_in_bits_features_0,
  input  [15:0] io_sample_in_bits_features_1,
  input  [15:0] io_sample_in_bits_features_2,
  input  [15:0] io_sample_in_bits_features_3,
  input  [9:0]  io_sample_in_bits_offset,
  input         io_sample_in_bits_search_for_root,
  input  [7:0]  io_sample_in_bits_tree_to_exec,
  input  [15:0] io_sample_in_bits_scores_0,
  input  [15:0] io_sample_in_bits_scores_1,
  input  [15:0] io_sample_in_bits_scores_2,
  input  [15:0] io_sample_in_bits_scores_3,
  input  [15:0] io_sample_in_bits_weights_0,
  input  [15:0] io_sample_in_bits_weights_1,
  input         io_sample_in_bits_dest,
  input         io_sample_in_bits_last,
  input         io_sample_looping_ready,
  output        io_sample_looping_valid,
  output [15:0] io_sample_looping_bits_features_0,
  output [15:0] io_sample_looping_bits_features_1,
  output [15:0] io_sample_looping_bits_features_2,
  output [15:0] io_sample_looping_bits_features_3,
  output [9:0]  io_sample_looping_bits_offset,
  output        io_sample_looping_bits_shift,
  output        io_sample_looping_bits_search_for_root,
  output [7:0]  io_sample_looping_bits_tree_to_exec,
  output [15:0] io_sample_looping_bits_scores_0,
  output [15:0] io_sample_looping_bits_scores_1,
  output [15:0] io_sample_looping_bits_scores_2,
  output [15:0] io_sample_looping_bits_scores_3,
  output [15:0] io_sample_looping_bits_weights_0,
  output [15:0] io_sample_looping_bits_weights_1,
  output        io_sample_looping_bits_last,
  input         io_sample_leaving_ready,
  output        io_sample_leaving_valid,
  output [15:0] io_sample_leaving_bits_features_0,
  output [15:0] io_sample_leaving_bits_features_1,
  output [15:0] io_sample_leaving_bits_features_2,
  output [15:0] io_sample_leaving_bits_features_3,
  output [9:0]  io_sample_leaving_bits_offset,
  output        io_sample_leaving_bits_shift,
  output        io_sample_leaving_bits_search_for_root,
  output [7:0]  io_sample_leaving_bits_tree_to_exec,
  output [15:0] io_sample_leaving_bits_scores_0,
  output [15:0] io_sample_leaving_bits_scores_1,
  output [15:0] io_sample_leaving_bits_scores_2,
  output [15:0] io_sample_leaving_bits_scores_3,
  output [15:0] io_sample_leaving_bits_weights_0,
  output [15:0] io_sample_leaving_bits_weights_1,
  output        io_sample_leaving_bits_last
);
  wire  queue_clock; // @[Decoupled.scala 377:21]
  wire  queue_reset; // @[Decoupled.scala 377:21]
  wire  queue_io_enq_ready; // @[Decoupled.scala 377:21]
  wire  queue_io_enq_valid; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_features_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_features_1; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_features_2; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_features_3; // @[Decoupled.scala 377:21]
  wire [9:0] queue_io_enq_bits_offset; // @[Decoupled.scala 377:21]
  wire  queue_io_enq_bits_shift; // @[Decoupled.scala 377:21]
  wire  queue_io_enq_bits_search_for_root; // @[Decoupled.scala 377:21]
  wire [7:0] queue_io_enq_bits_tree_to_exec; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_scores_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_scores_1; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_scores_2; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_scores_3; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_weights_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_weights_1; // @[Decoupled.scala 377:21]
  wire  queue_io_enq_bits_dest; // @[Decoupled.scala 377:21]
  wire  queue_io_enq_bits_last; // @[Decoupled.scala 377:21]
  wire  queue_io_deq_ready; // @[Decoupled.scala 377:21]
  wire  queue_io_deq_valid; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_features_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_features_1; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_features_2; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_features_3; // @[Decoupled.scala 377:21]
  wire [9:0] queue_io_deq_bits_offset; // @[Decoupled.scala 377:21]
  wire  queue_io_deq_bits_shift; // @[Decoupled.scala 377:21]
  wire  queue_io_deq_bits_search_for_root; // @[Decoupled.scala 377:21]
  wire [7:0] queue_io_deq_bits_tree_to_exec; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_scores_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_scores_1; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_scores_2; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_scores_3; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_weights_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_weights_1; // @[Decoupled.scala 377:21]
  wire  queue_io_deq_bits_dest; // @[Decoupled.scala 377:21]
  wire  queue_io_deq_bits_last; // @[Decoupled.scala 377:21]
  wire  _GEN_0 = queue_io_deq_bits_dest ? 1'h0 : 1'h1; // @[Interconnect.scala 20:30 21:37 24:37]
  wire  _GEN_1 = queue_io_deq_bits_dest; // @[Interconnect.scala 20:30 22:37 25:37]
  Queue queue ( // @[Decoupled.scala 377:21]
    .clock(queue_clock),
    .reset(queue_reset),
    .io_enq_ready(queue_io_enq_ready),
    .io_enq_valid(queue_io_enq_valid),
    .io_enq_bits_features_0(queue_io_enq_bits_features_0),
    .io_enq_bits_features_1(queue_io_enq_bits_features_1),
    .io_enq_bits_features_2(queue_io_enq_bits_features_2),
    .io_enq_bits_features_3(queue_io_enq_bits_features_3),
    .io_enq_bits_offset(queue_io_enq_bits_offset),
    .io_enq_bits_shift(queue_io_enq_bits_shift),
    .io_enq_bits_search_for_root(queue_io_enq_bits_search_for_root),
    .io_enq_bits_tree_to_exec(queue_io_enq_bits_tree_to_exec),
    .io_enq_bits_scores_0(queue_io_enq_bits_scores_0),
    .io_enq_bits_scores_1(queue_io_enq_bits_scores_1),
    .io_enq_bits_scores_2(queue_io_enq_bits_scores_2),
    .io_enq_bits_scores_3(queue_io_enq_bits_scores_3),
    .io_enq_bits_weights_0(queue_io_enq_bits_weights_0),
    .io_enq_bits_weights_1(queue_io_enq_bits_weights_1),
    .io_enq_bits_dest(queue_io_enq_bits_dest),
    .io_enq_bits_last(queue_io_enq_bits_last),
    .io_deq_ready(queue_io_deq_ready),
    .io_deq_valid(queue_io_deq_valid),
    .io_deq_bits_features_0(queue_io_deq_bits_features_0),
    .io_deq_bits_features_1(queue_io_deq_bits_features_1),
    .io_deq_bits_features_2(queue_io_deq_bits_features_2),
    .io_deq_bits_features_3(queue_io_deq_bits_features_3),
    .io_deq_bits_offset(queue_io_deq_bits_offset),
    .io_deq_bits_shift(queue_io_deq_bits_shift),
    .io_deq_bits_search_for_root(queue_io_deq_bits_search_for_root),
    .io_deq_bits_tree_to_exec(queue_io_deq_bits_tree_to_exec),
    .io_deq_bits_scores_0(queue_io_deq_bits_scores_0),
    .io_deq_bits_scores_1(queue_io_deq_bits_scores_1),
    .io_deq_bits_scores_2(queue_io_deq_bits_scores_2),
    .io_deq_bits_scores_3(queue_io_deq_bits_scores_3),
    .io_deq_bits_weights_0(queue_io_deq_bits_weights_0),
    .io_deq_bits_weights_1(queue_io_deq_bits_weights_1),
    .io_deq_bits_dest(queue_io_deq_bits_dest),
    .io_deq_bits_last(queue_io_deq_bits_last)
  );
  assign io_sample_in_ready = queue_io_enq_ready; // @[Decoupled.scala 381:17]
  assign io_sample_looping_valid = queue_io_deq_valid & _GEN_0; // @[Interconnect.scala 19:22 28:33]
  assign io_sample_looping_bits_features_0 = queue_io_deq_bits_features_0; // @[Interconnect.scala 16:28]
  assign io_sample_looping_bits_features_1 = queue_io_deq_bits_features_1; // @[Interconnect.scala 16:28]
  assign io_sample_looping_bits_features_2 = queue_io_deq_bits_features_2; // @[Interconnect.scala 16:28]
  assign io_sample_looping_bits_features_3 = queue_io_deq_bits_features_3; // @[Interconnect.scala 16:28]
  assign io_sample_looping_bits_offset = queue_io_deq_bits_offset; // @[Interconnect.scala 16:28]
  assign io_sample_looping_bits_shift = queue_io_deq_bits_shift; // @[Interconnect.scala 16:28]
  assign io_sample_looping_bits_search_for_root = queue_io_deq_bits_search_for_root; // @[Interconnect.scala 16:28]
  assign io_sample_looping_bits_tree_to_exec = queue_io_deq_bits_tree_to_exec; // @[Interconnect.scala 16:28]
  assign io_sample_looping_bits_scores_0 = queue_io_deq_bits_scores_0; // @[Interconnect.scala 16:28]
  assign io_sample_looping_bits_scores_1 = queue_io_deq_bits_scores_1; // @[Interconnect.scala 16:28]
  assign io_sample_looping_bits_scores_2 = queue_io_deq_bits_scores_2; // @[Interconnect.scala 16:28]
  assign io_sample_looping_bits_scores_3 = queue_io_deq_bits_scores_3; // @[Interconnect.scala 16:28]
  assign io_sample_looping_bits_weights_0 = queue_io_deq_bits_weights_0; // @[Interconnect.scala 16:28]
  assign io_sample_looping_bits_weights_1 = queue_io_deq_bits_weights_1; // @[Interconnect.scala 16:28]
  assign io_sample_looping_bits_last = queue_io_deq_bits_last; // @[Interconnect.scala 16:28]
  assign io_sample_leaving_valid = queue_io_deq_valid & _GEN_1; // @[Interconnect.scala 19:22 29:33]
  assign io_sample_leaving_bits_features_0 = queue_io_deq_bits_features_0; // @[Interconnect.scala 17:28]
  assign io_sample_leaving_bits_features_1 = queue_io_deq_bits_features_1; // @[Interconnect.scala 17:28]
  assign io_sample_leaving_bits_features_2 = queue_io_deq_bits_features_2; // @[Interconnect.scala 17:28]
  assign io_sample_leaving_bits_features_3 = queue_io_deq_bits_features_3; // @[Interconnect.scala 17:28]
  assign io_sample_leaving_bits_offset = queue_io_deq_bits_offset; // @[Interconnect.scala 17:28]
  assign io_sample_leaving_bits_shift = queue_io_deq_bits_shift; // @[Interconnect.scala 17:28]
  assign io_sample_leaving_bits_search_for_root = queue_io_deq_bits_search_for_root; // @[Interconnect.scala 17:28]
  assign io_sample_leaving_bits_tree_to_exec = queue_io_deq_bits_tree_to_exec; // @[Interconnect.scala 17:28]
  assign io_sample_leaving_bits_scores_0 = queue_io_deq_bits_scores_0; // @[Interconnect.scala 17:28]
  assign io_sample_leaving_bits_scores_1 = queue_io_deq_bits_scores_1; // @[Interconnect.scala 17:28]
  assign io_sample_leaving_bits_scores_2 = queue_io_deq_bits_scores_2; // @[Interconnect.scala 17:28]
  assign io_sample_leaving_bits_scores_3 = queue_io_deq_bits_scores_3; // @[Interconnect.scala 17:28]
  assign io_sample_leaving_bits_weights_0 = queue_io_deq_bits_weights_0; // @[Interconnect.scala 17:28]
  assign io_sample_leaving_bits_weights_1 = queue_io_deq_bits_weights_1; // @[Interconnect.scala 17:28]
  assign io_sample_leaving_bits_last = queue_io_deq_bits_last; // @[Interconnect.scala 17:28]
  assign queue_clock = clock;
  assign queue_reset = reset;
  assign queue_io_enq_valid = io_sample_in_valid; // @[Decoupled.scala 379:22]
  assign queue_io_enq_bits_features_0 = io_sample_in_bits_features_0; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_features_1 = io_sample_in_bits_features_1; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_features_2 = io_sample_in_bits_features_2; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_features_3 = io_sample_in_bits_features_3; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_offset = io_sample_in_bits_offset; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_shift = 1'h0; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_search_for_root = io_sample_in_bits_search_for_root; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_tree_to_exec = io_sample_in_bits_tree_to_exec; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_scores_0 = io_sample_in_bits_scores_0; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_scores_1 = io_sample_in_bits_scores_1; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_scores_2 = io_sample_in_bits_scores_2; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_scores_3 = io_sample_in_bits_scores_3; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_weights_0 = io_sample_in_bits_weights_0; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_weights_1 = io_sample_in_bits_weights_1; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_dest = io_sample_in_bits_dest; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_last = io_sample_in_bits_last; // @[Decoupled.scala 380:21]
  assign queue_io_deq_ready = io_sample_leaving_ready & io_sample_looping_ready; // @[Interconnect.scala 31:44]
endmodule
module IncrementTreePE(
  input         clock,
  input         reset,
  output        io_sample_in_ready,
  input         io_sample_in_valid,
  input  [15:0] io_sample_in_bits_features_0,
  input  [15:0] io_sample_in_bits_features_1,
  input  [15:0] io_sample_in_bits_features_2,
  input  [15:0] io_sample_in_bits_features_3,
  input  [9:0]  io_sample_in_bits_offset,
  input         io_sample_in_bits_shift,
  input         io_sample_in_bits_search_for_root,
  input  [7:0]  io_sample_in_bits_tree_to_exec,
  input  [15:0] io_sample_in_bits_scores_0,
  input  [15:0] io_sample_in_bits_scores_1,
  input  [15:0] io_sample_in_bits_scores_2,
  input  [15:0] io_sample_in_bits_scores_3,
  input  [15:0] io_sample_in_bits_weights_0,
  input  [15:0] io_sample_in_bits_weights_1,
  input         io_sample_in_bits_last,
  input         io_sample_out_ready,
  output        io_sample_out_valid,
  output [15:0] io_sample_out_bits_features_0,
  output [15:0] io_sample_out_bits_features_1,
  output [15:0] io_sample_out_bits_features_2,
  output [15:0] io_sample_out_bits_features_3,
  output [9:0]  io_sample_out_bits_offset,
  output        io_sample_out_bits_shift,
  output        io_sample_out_bits_search_for_root,
  output [7:0]  io_sample_out_bits_tree_to_exec,
  output [15:0] io_sample_out_bits_scores_0,
  output [15:0] io_sample_out_bits_scores_1,
  output [15:0] io_sample_out_bits_scores_2,
  output [15:0] io_sample_out_bits_scores_3,
  output [15:0] io_sample_out_bits_weights_0,
  output [15:0] io_sample_out_bits_weights_1,
  output        io_sample_out_bits_last
);
  wire  queue_clock; // @[Decoupled.scala 377:21]
  wire  queue_reset; // @[Decoupled.scala 377:21]
  wire  queue_io_enq_ready; // @[Decoupled.scala 377:21]
  wire  queue_io_enq_valid; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_features_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_features_1; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_features_2; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_features_3; // @[Decoupled.scala 377:21]
  wire [9:0] queue_io_enq_bits_offset; // @[Decoupled.scala 377:21]
  wire  queue_io_enq_bits_shift; // @[Decoupled.scala 377:21]
  wire  queue_io_enq_bits_search_for_root; // @[Decoupled.scala 377:21]
  wire [7:0] queue_io_enq_bits_tree_to_exec; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_scores_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_scores_1; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_scores_2; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_scores_3; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_weights_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_weights_1; // @[Decoupled.scala 377:21]
  wire  queue_io_enq_bits_last; // @[Decoupled.scala 377:21]
  wire  queue_io_deq_ready; // @[Decoupled.scala 377:21]
  wire  queue_io_deq_valid; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_features_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_features_1; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_features_2; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_features_3; // @[Decoupled.scala 377:21]
  wire [9:0] queue_io_deq_bits_offset; // @[Decoupled.scala 377:21]
  wire  queue_io_deq_bits_shift; // @[Decoupled.scala 377:21]
  wire  queue_io_deq_bits_search_for_root; // @[Decoupled.scala 377:21]
  wire [7:0] queue_io_deq_bits_tree_to_exec; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_scores_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_scores_1; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_scores_2; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_scores_3; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_weights_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_weights_1; // @[Decoupled.scala 377:21]
  wire  queue_io_deq_bits_last; // @[Decoupled.scala 377:21]
  wire [7:0] _io_sample_out_bits_tree_to_exec_T_1 = queue_io_deq_bits_tree_to_exec + 8'h1; // @[IncrementTreePE.scala 17:64]
  Queue_3 queue ( // @[Decoupled.scala 377:21]
    .clock(queue_clock),
    .reset(queue_reset),
    .io_enq_ready(queue_io_enq_ready),
    .io_enq_valid(queue_io_enq_valid),
    .io_enq_bits_features_0(queue_io_enq_bits_features_0),
    .io_enq_bits_features_1(queue_io_enq_bits_features_1),
    .io_enq_bits_features_2(queue_io_enq_bits_features_2),
    .io_enq_bits_features_3(queue_io_enq_bits_features_3),
    .io_enq_bits_offset(queue_io_enq_bits_offset),
    .io_enq_bits_shift(queue_io_enq_bits_shift),
    .io_enq_bits_search_for_root(queue_io_enq_bits_search_for_root),
    .io_enq_bits_tree_to_exec(queue_io_enq_bits_tree_to_exec),
    .io_enq_bits_scores_0(queue_io_enq_bits_scores_0),
    .io_enq_bits_scores_1(queue_io_enq_bits_scores_1),
    .io_enq_bits_scores_2(queue_io_enq_bits_scores_2),
    .io_enq_bits_scores_3(queue_io_enq_bits_scores_3),
    .io_enq_bits_weights_0(queue_io_enq_bits_weights_0),
    .io_enq_bits_weights_1(queue_io_enq_bits_weights_1),
    .io_enq_bits_last(queue_io_enq_bits_last),
    .io_deq_ready(queue_io_deq_ready),
    .io_deq_valid(queue_io_deq_valid),
    .io_deq_bits_features_0(queue_io_deq_bits_features_0),
    .io_deq_bits_features_1(queue_io_deq_bits_features_1),
    .io_deq_bits_features_2(queue_io_deq_bits_features_2),
    .io_deq_bits_features_3(queue_io_deq_bits_features_3),
    .io_deq_bits_offset(queue_io_deq_bits_offset),
    .io_deq_bits_shift(queue_io_deq_bits_shift),
    .io_deq_bits_search_for_root(queue_io_deq_bits_search_for_root),
    .io_deq_bits_tree_to_exec(queue_io_deq_bits_tree_to_exec),
    .io_deq_bits_scores_0(queue_io_deq_bits_scores_0),
    .io_deq_bits_scores_1(queue_io_deq_bits_scores_1),
    .io_deq_bits_scores_2(queue_io_deq_bits_scores_2),
    .io_deq_bits_scores_3(queue_io_deq_bits_scores_3),
    .io_deq_bits_weights_0(queue_io_deq_bits_weights_0),
    .io_deq_bits_weights_1(queue_io_deq_bits_weights_1),
    .io_deq_bits_last(queue_io_deq_bits_last)
  );
  assign io_sample_in_ready = queue_io_enq_ready; // @[Decoupled.scala 381:17]
  assign io_sample_out_valid = queue_io_deq_valid; // @[IncrementTreePE.scala 25:25]
  assign io_sample_out_bits_features_0 = queue_io_deq_bits_features_0; // @[IncrementTreePE.scala 15:33]
  assign io_sample_out_bits_features_1 = queue_io_deq_bits_features_1; // @[IncrementTreePE.scala 15:33]
  assign io_sample_out_bits_features_2 = queue_io_deq_bits_features_2; // @[IncrementTreePE.scala 15:33]
  assign io_sample_out_bits_features_3 = queue_io_deq_bits_features_3; // @[IncrementTreePE.scala 15:33]
  assign io_sample_out_bits_offset = {{2'd0}, _io_sample_out_bits_tree_to_exec_T_1}; // @[IncrementTreePE.scala 19:31]
  assign io_sample_out_bits_shift = queue_io_deq_bits_shift; // @[IncrementTreePE.scala 18:30]
  assign io_sample_out_bits_search_for_root = queue_io_deq_bits_search_for_root; // @[IncrementTreePE.scala 21:40]
  assign io_sample_out_bits_tree_to_exec = queue_io_deq_bits_tree_to_exec + 8'h1; // @[IncrementTreePE.scala 17:64]
  assign io_sample_out_bits_scores_0 = queue_io_deq_bits_scores_0; // @[IncrementTreePE.scala 20:31]
  assign io_sample_out_bits_scores_1 = queue_io_deq_bits_scores_1; // @[IncrementTreePE.scala 20:31]
  assign io_sample_out_bits_scores_2 = queue_io_deq_bits_scores_2; // @[IncrementTreePE.scala 20:31]
  assign io_sample_out_bits_scores_3 = queue_io_deq_bits_scores_3; // @[IncrementTreePE.scala 20:31]
  assign io_sample_out_bits_weights_0 = queue_io_deq_bits_weights_0; // @[IncrementTreePE.scala 16:32]
  assign io_sample_out_bits_weights_1 = queue_io_deq_bits_weights_1; // @[IncrementTreePE.scala 16:32]
  assign io_sample_out_bits_last = queue_io_deq_bits_last; // @[IncrementTreePE.scala 23:29]
  assign queue_clock = clock;
  assign queue_reset = reset;
  assign queue_io_enq_valid = io_sample_in_valid; // @[Decoupled.scala 379:22]
  assign queue_io_enq_bits_features_0 = io_sample_in_bits_features_0; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_features_1 = io_sample_in_bits_features_1; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_features_2 = io_sample_in_bits_features_2; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_features_3 = io_sample_in_bits_features_3; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_offset = io_sample_in_bits_offset; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_shift = io_sample_in_bits_shift; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_search_for_root = io_sample_in_bits_search_for_root; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_tree_to_exec = io_sample_in_bits_tree_to_exec; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_scores_0 = io_sample_in_bits_scores_0; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_scores_1 = io_sample_in_bits_scores_1; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_scores_2 = io_sample_in_bits_scores_2; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_scores_3 = io_sample_in_bits_scores_3; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_weights_0 = io_sample_in_bits_weights_0; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_weights_1 = io_sample_in_bits_weights_1; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_last = io_sample_in_bits_last; // @[Decoupled.scala 380:21]
  assign queue_io_deq_ready = io_sample_out_ready; // @[IncrementTreePE.scala 27:17]
endmodule
module TreePEsWrapper(
  input          clock,
  input          reset,
  input  [239:0] wrapper_io_sample_in_TDATA,
  input  [29:0]  wrapper_io_sample_in_TKEEP,
  input          wrapper_io_sample_in_TLAST,
  output         wrapper_io_sample_in_TREADY,
  input          wrapper_io_sample_in_TVALID,
  output [239:0] wrapper_io_sample_out_TDATA,
  output [29:0]  wrapper_io_sample_out_TKEEP,
  output         wrapper_io_sample_out_TLAST,
  input          wrapper_io_sample_out_TREADY,
  output         wrapper_io_sample_out_TVALID,
  input          brams_io_0_enable_1,
  input          brams_io_0_write_1,
  input  [9:0]   brams_io_0_addr_1,
  input  [63:0]  brams_io_0_dataIn_1,
  output [63:0]  brams_io_0_dataOut_1,
  input          brams_io_0_enable_2,
  input          brams_io_0_write_2,
  input  [9:0]   brams_io_0_addr_2,
  input  [63:0]  brams_io_0_dataIn_2,
  output [63:0]  brams_io_0_dataOut_2,
  input          brams_io_1_enable_1,
  input          brams_io_1_write_1,
  input  [9:0]   brams_io_1_addr_1,
  input  [63:0]  brams_io_1_dataIn_1,
  output [63:0]  brams_io_1_dataOut_1,
  input          brams_io_1_enable_2,
  input          brams_io_1_write_2,
  input  [9:0]   brams_io_1_addr_2,
  input  [63:0]  brams_io_1_dataIn_2,
  output [63:0]  brams_io_1_dataOut_2,
  input          brams_io_2_enable_1,
  input          brams_io_2_write_1,
  input  [9:0]   brams_io_2_addr_1,
  input  [63:0]  brams_io_2_dataIn_1,
  output [63:0]  brams_io_2_dataOut_1,
  input          brams_io_2_enable_2,
  input          brams_io_2_write_2,
  input  [9:0]   brams_io_2_addr_2,
  input  [63:0]  brams_io_2_dataIn_2,
  output [63:0]  brams_io_2_dataOut_2,
  input          brams_io_3_enable_1,
  input          brams_io_3_write_1,
  input  [9:0]   brams_io_3_addr_1,
  input  [63:0]  brams_io_3_dataIn_1,
  output [63:0]  brams_io_3_dataOut_1,
  input          brams_io_3_enable_2,
  input          brams_io_3_write_2,
  input  [9:0]   brams_io_3_addr_2,
  input  [63:0]  brams_io_3_dataIn_2,
  output [63:0]  brams_io_3_dataOut_2
);
  wire [239:0] forward_converter_io_sample_in_TDATA; // @[TreePEsWrapper.scala 61:35]
  wire  forward_converter_io_sample_in_TLAST; // @[TreePEsWrapper.scala 61:35]
  wire  forward_converter_io_sample_in_TREADY; // @[TreePEsWrapper.scala 61:35]
  wire  forward_converter_io_sample_in_TVALID; // @[TreePEsWrapper.scala 61:35]
  wire  forward_converter_io_sample_out_ready; // @[TreePEsWrapper.scala 61:35]
  wire  forward_converter_io_sample_out_valid; // @[TreePEsWrapper.scala 61:35]
  wire [15:0] forward_converter_io_sample_out_bits_features_0; // @[TreePEsWrapper.scala 61:35]
  wire [15:0] forward_converter_io_sample_out_bits_features_1; // @[TreePEsWrapper.scala 61:35]
  wire [15:0] forward_converter_io_sample_out_bits_features_2; // @[TreePEsWrapper.scala 61:35]
  wire [15:0] forward_converter_io_sample_out_bits_features_3; // @[TreePEsWrapper.scala 61:35]
  wire [9:0] forward_converter_io_sample_out_bits_offset; // @[TreePEsWrapper.scala 61:35]
  wire  forward_converter_io_sample_out_bits_shift; // @[TreePEsWrapper.scala 61:35]
  wire  forward_converter_io_sample_out_bits_search_for_root; // @[TreePEsWrapper.scala 61:35]
  wire [7:0] forward_converter_io_sample_out_bits_tree_to_exec; // @[TreePEsWrapper.scala 61:35]
  wire [15:0] forward_converter_io_sample_out_bits_scores_0; // @[TreePEsWrapper.scala 61:35]
  wire [15:0] forward_converter_io_sample_out_bits_scores_1; // @[TreePEsWrapper.scala 61:35]
  wire [15:0] forward_converter_io_sample_out_bits_scores_2; // @[TreePEsWrapper.scala 61:35]
  wire [15:0] forward_converter_io_sample_out_bits_scores_3; // @[TreePEsWrapper.scala 61:35]
  wire [15:0] forward_converter_io_sample_out_bits_weights_0; // @[TreePEsWrapper.scala 61:35]
  wire [15:0] forward_converter_io_sample_out_bits_weights_1; // @[TreePEsWrapper.scala 61:35]
  wire  forward_converter_io_sample_out_bits_last; // @[TreePEsWrapper.scala 61:35]
  wire  dispatcher_clock; // @[TreePEsWrapper.scala 62:28]
  wire  dispatcher_reset; // @[TreePEsWrapper.scala 62:28]
  wire  dispatcher_io_sample_in_ready; // @[TreePEsWrapper.scala 62:28]
  wire  dispatcher_io_sample_in_valid; // @[TreePEsWrapper.scala 62:28]
  wire [15:0] dispatcher_io_sample_in_bits_features_0; // @[TreePEsWrapper.scala 62:28]
  wire [15:0] dispatcher_io_sample_in_bits_features_1; // @[TreePEsWrapper.scala 62:28]
  wire [15:0] dispatcher_io_sample_in_bits_features_2; // @[TreePEsWrapper.scala 62:28]
  wire [15:0] dispatcher_io_sample_in_bits_features_3; // @[TreePEsWrapper.scala 62:28]
  wire [9:0] dispatcher_io_sample_in_bits_offset; // @[TreePEsWrapper.scala 62:28]
  wire  dispatcher_io_sample_in_bits_shift; // @[TreePEsWrapper.scala 62:28]
  wire  dispatcher_io_sample_in_bits_search_for_root; // @[TreePEsWrapper.scala 62:28]
  wire [7:0] dispatcher_io_sample_in_bits_tree_to_exec; // @[TreePEsWrapper.scala 62:28]
  wire [15:0] dispatcher_io_sample_in_bits_scores_0; // @[TreePEsWrapper.scala 62:28]
  wire [15:0] dispatcher_io_sample_in_bits_scores_1; // @[TreePEsWrapper.scala 62:28]
  wire [15:0] dispatcher_io_sample_in_bits_scores_2; // @[TreePEsWrapper.scala 62:28]
  wire [15:0] dispatcher_io_sample_in_bits_scores_3; // @[TreePEsWrapper.scala 62:28]
  wire [15:0] dispatcher_io_sample_in_bits_weights_0; // @[TreePEsWrapper.scala 62:28]
  wire [15:0] dispatcher_io_sample_in_bits_weights_1; // @[TreePEsWrapper.scala 62:28]
  wire  dispatcher_io_sample_in_bits_last; // @[TreePEsWrapper.scala 62:28]
  wire  dispatcher_io_samples_out_0_ready; // @[TreePEsWrapper.scala 62:28]
  wire  dispatcher_io_samples_out_0_valid; // @[TreePEsWrapper.scala 62:28]
  wire [15:0] dispatcher_io_samples_out_0_bits_features_0; // @[TreePEsWrapper.scala 62:28]
  wire [15:0] dispatcher_io_samples_out_0_bits_features_1; // @[TreePEsWrapper.scala 62:28]
  wire [15:0] dispatcher_io_samples_out_0_bits_features_2; // @[TreePEsWrapper.scala 62:28]
  wire [15:0] dispatcher_io_samples_out_0_bits_features_3; // @[TreePEsWrapper.scala 62:28]
  wire [9:0] dispatcher_io_samples_out_0_bits_offset; // @[TreePEsWrapper.scala 62:28]
  wire  dispatcher_io_samples_out_0_bits_shift; // @[TreePEsWrapper.scala 62:28]
  wire  dispatcher_io_samples_out_0_bits_search_for_root; // @[TreePEsWrapper.scala 62:28]
  wire [7:0] dispatcher_io_samples_out_0_bits_tree_to_exec; // @[TreePEsWrapper.scala 62:28]
  wire [15:0] dispatcher_io_samples_out_0_bits_scores_0; // @[TreePEsWrapper.scala 62:28]
  wire [15:0] dispatcher_io_samples_out_0_bits_scores_1; // @[TreePEsWrapper.scala 62:28]
  wire [15:0] dispatcher_io_samples_out_0_bits_scores_2; // @[TreePEsWrapper.scala 62:28]
  wire [15:0] dispatcher_io_samples_out_0_bits_scores_3; // @[TreePEsWrapper.scala 62:28]
  wire [15:0] dispatcher_io_samples_out_0_bits_weights_0; // @[TreePEsWrapper.scala 62:28]
  wire [15:0] dispatcher_io_samples_out_0_bits_weights_1; // @[TreePEsWrapper.scala 62:28]
  wire  dispatcher_io_samples_out_0_bits_last; // @[TreePEsWrapper.scala 62:28]
  wire  dispatcher_io_samples_out_1_valid; // @[TreePEsWrapper.scala 62:28]
  wire [15:0] dispatcher_io_samples_out_1_bits_features_0; // @[TreePEsWrapper.scala 62:28]
  wire [15:0] dispatcher_io_samples_out_1_bits_features_1; // @[TreePEsWrapper.scala 62:28]
  wire [15:0] dispatcher_io_samples_out_1_bits_features_2; // @[TreePEsWrapper.scala 62:28]
  wire [15:0] dispatcher_io_samples_out_1_bits_features_3; // @[TreePEsWrapper.scala 62:28]
  wire [9:0] dispatcher_io_samples_out_1_bits_offset; // @[TreePEsWrapper.scala 62:28]
  wire  dispatcher_io_samples_out_1_bits_shift; // @[TreePEsWrapper.scala 62:28]
  wire  dispatcher_io_samples_out_1_bits_search_for_root; // @[TreePEsWrapper.scala 62:28]
  wire [7:0] dispatcher_io_samples_out_1_bits_tree_to_exec; // @[TreePEsWrapper.scala 62:28]
  wire [15:0] dispatcher_io_samples_out_1_bits_scores_0; // @[TreePEsWrapper.scala 62:28]
  wire [15:0] dispatcher_io_samples_out_1_bits_scores_1; // @[TreePEsWrapper.scala 62:28]
  wire [15:0] dispatcher_io_samples_out_1_bits_scores_2; // @[TreePEsWrapper.scala 62:28]
  wire [15:0] dispatcher_io_samples_out_1_bits_scores_3; // @[TreePEsWrapper.scala 62:28]
  wire [15:0] dispatcher_io_samples_out_1_bits_weights_0; // @[TreePEsWrapper.scala 62:28]
  wire [15:0] dispatcher_io_samples_out_1_bits_weights_1; // @[TreePEsWrapper.scala 62:28]
  wire  dispatcher_io_samples_out_1_bits_last; // @[TreePEsWrapper.scala 62:28]
  wire  voter_clock; // @[TreePEsWrapper.scala 63:23]
  wire  voter_reset; // @[TreePEsWrapper.scala 63:23]
  wire  voter_io_samples_in_0_ready; // @[TreePEsWrapper.scala 63:23]
  wire  voter_io_samples_in_0_valid; // @[TreePEsWrapper.scala 63:23]
  wire [15:0] voter_io_samples_in_0_bits_features_0; // @[TreePEsWrapper.scala 63:23]
  wire [15:0] voter_io_samples_in_0_bits_features_1; // @[TreePEsWrapper.scala 63:23]
  wire [15:0] voter_io_samples_in_0_bits_features_2; // @[TreePEsWrapper.scala 63:23]
  wire [15:0] voter_io_samples_in_0_bits_features_3; // @[TreePEsWrapper.scala 63:23]
  wire [9:0] voter_io_samples_in_0_bits_offset; // @[TreePEsWrapper.scala 63:23]
  wire  voter_io_samples_in_0_bits_shift; // @[TreePEsWrapper.scala 63:23]
  wire  voter_io_samples_in_0_bits_search_for_root; // @[TreePEsWrapper.scala 63:23]
  wire [7:0] voter_io_samples_in_0_bits_tree_to_exec; // @[TreePEsWrapper.scala 63:23]
  wire [15:0] voter_io_samples_in_0_bits_scores_0; // @[TreePEsWrapper.scala 63:23]
  wire [15:0] voter_io_samples_in_0_bits_scores_1; // @[TreePEsWrapper.scala 63:23]
  wire [15:0] voter_io_samples_in_0_bits_scores_2; // @[TreePEsWrapper.scala 63:23]
  wire [15:0] voter_io_samples_in_0_bits_scores_3; // @[TreePEsWrapper.scala 63:23]
  wire [15:0] voter_io_samples_in_0_bits_weights_0; // @[TreePEsWrapper.scala 63:23]
  wire [15:0] voter_io_samples_in_0_bits_weights_1; // @[TreePEsWrapper.scala 63:23]
  wire  voter_io_samples_in_0_bits_last; // @[TreePEsWrapper.scala 63:23]
  wire  voter_io_samples_in_1_ready; // @[TreePEsWrapper.scala 63:23]
  wire  voter_io_samples_in_1_valid; // @[TreePEsWrapper.scala 63:23]
  wire [15:0] voter_io_samples_in_1_bits_features_0; // @[TreePEsWrapper.scala 63:23]
  wire [15:0] voter_io_samples_in_1_bits_features_1; // @[TreePEsWrapper.scala 63:23]
  wire [15:0] voter_io_samples_in_1_bits_features_2; // @[TreePEsWrapper.scala 63:23]
  wire [15:0] voter_io_samples_in_1_bits_features_3; // @[TreePEsWrapper.scala 63:23]
  wire [9:0] voter_io_samples_in_1_bits_offset; // @[TreePEsWrapper.scala 63:23]
  wire  voter_io_samples_in_1_bits_shift; // @[TreePEsWrapper.scala 63:23]
  wire  voter_io_samples_in_1_bits_search_for_root; // @[TreePEsWrapper.scala 63:23]
  wire [7:0] voter_io_samples_in_1_bits_tree_to_exec; // @[TreePEsWrapper.scala 63:23]
  wire [15:0] voter_io_samples_in_1_bits_scores_0; // @[TreePEsWrapper.scala 63:23]
  wire [15:0] voter_io_samples_in_1_bits_scores_1; // @[TreePEsWrapper.scala 63:23]
  wire [15:0] voter_io_samples_in_1_bits_scores_2; // @[TreePEsWrapper.scala 63:23]
  wire [15:0] voter_io_samples_in_1_bits_scores_3; // @[TreePEsWrapper.scala 63:23]
  wire [15:0] voter_io_samples_in_1_bits_weights_0; // @[TreePEsWrapper.scala 63:23]
  wire [15:0] voter_io_samples_in_1_bits_weights_1; // @[TreePEsWrapper.scala 63:23]
  wire  voter_io_samples_in_1_bits_last; // @[TreePEsWrapper.scala 63:23]
  wire  voter_io_sample_out_ready; // @[TreePEsWrapper.scala 63:23]
  wire  voter_io_sample_out_valid; // @[TreePEsWrapper.scala 63:23]
  wire [15:0] voter_io_sample_out_bits_features_0; // @[TreePEsWrapper.scala 63:23]
  wire [15:0] voter_io_sample_out_bits_features_1; // @[TreePEsWrapper.scala 63:23]
  wire [15:0] voter_io_sample_out_bits_features_2; // @[TreePEsWrapper.scala 63:23]
  wire [15:0] voter_io_sample_out_bits_features_3; // @[TreePEsWrapper.scala 63:23]
  wire [9:0] voter_io_sample_out_bits_offset; // @[TreePEsWrapper.scala 63:23]
  wire  voter_io_sample_out_bits_shift; // @[TreePEsWrapper.scala 63:23]
  wire  voter_io_sample_out_bits_search_for_root; // @[TreePEsWrapper.scala 63:23]
  wire [7:0] voter_io_sample_out_bits_tree_to_exec; // @[TreePEsWrapper.scala 63:23]
  wire [15:0] voter_io_sample_out_bits_scores_0; // @[TreePEsWrapper.scala 63:23]
  wire [15:0] voter_io_sample_out_bits_scores_1; // @[TreePEsWrapper.scala 63:23]
  wire [15:0] voter_io_sample_out_bits_scores_2; // @[TreePEsWrapper.scala 63:23]
  wire [15:0] voter_io_sample_out_bits_scores_3; // @[TreePEsWrapper.scala 63:23]
  wire [15:0] voter_io_sample_out_bits_weights_0; // @[TreePEsWrapper.scala 63:23]
  wire [15:0] voter_io_sample_out_bits_weights_1; // @[TreePEsWrapper.scala 63:23]
  wire  voter_io_sample_out_bits_last; // @[TreePEsWrapper.scala 63:23]
  wire  backward_converter_clock; // @[TreePEsWrapper.scala 64:36]
  wire  backward_converter_reset; // @[TreePEsWrapper.scala 64:36]
  wire  backward_converter_io_sample_in_ready; // @[TreePEsWrapper.scala 64:36]
  wire  backward_converter_io_sample_in_valid; // @[TreePEsWrapper.scala 64:36]
  wire [15:0] backward_converter_io_sample_in_bits_features_0; // @[TreePEsWrapper.scala 64:36]
  wire [15:0] backward_converter_io_sample_in_bits_features_1; // @[TreePEsWrapper.scala 64:36]
  wire [15:0] backward_converter_io_sample_in_bits_features_2; // @[TreePEsWrapper.scala 64:36]
  wire [15:0] backward_converter_io_sample_in_bits_features_3; // @[TreePEsWrapper.scala 64:36]
  wire [9:0] backward_converter_io_sample_in_bits_offset; // @[TreePEsWrapper.scala 64:36]
  wire  backward_converter_io_sample_in_bits_shift; // @[TreePEsWrapper.scala 64:36]
  wire  backward_converter_io_sample_in_bits_search_for_root; // @[TreePEsWrapper.scala 64:36]
  wire [7:0] backward_converter_io_sample_in_bits_tree_to_exec; // @[TreePEsWrapper.scala 64:36]
  wire [15:0] backward_converter_io_sample_in_bits_scores_0; // @[TreePEsWrapper.scala 64:36]
  wire [15:0] backward_converter_io_sample_in_bits_scores_1; // @[TreePEsWrapper.scala 64:36]
  wire [15:0] backward_converter_io_sample_in_bits_scores_2; // @[TreePEsWrapper.scala 64:36]
  wire [15:0] backward_converter_io_sample_in_bits_scores_3; // @[TreePEsWrapper.scala 64:36]
  wire [15:0] backward_converter_io_sample_in_bits_weights_0; // @[TreePEsWrapper.scala 64:36]
  wire [15:0] backward_converter_io_sample_in_bits_weights_1; // @[TreePEsWrapper.scala 64:36]
  wire  backward_converter_io_sample_in_bits_last; // @[TreePEsWrapper.scala 64:36]
  wire [239:0] backward_converter_io_sample_out_TDATA; // @[TreePEsWrapper.scala 64:36]
  wire  backward_converter_io_sample_out_TLAST; // @[TreePEsWrapper.scala 64:36]
  wire  backward_converter_io_sample_out_TREADY; // @[TreePEsWrapper.scala 64:36]
  wire  backward_converter_io_sample_out_TVALID; // @[TreePEsWrapper.scala 64:36]
  wire  pes_0_clock; // @[TreePEsWrapper.scala 70:65]
  wire  pes_0_reset; // @[TreePEsWrapper.scala 70:65]
  wire  pes_0_pe_io_sample_in_ready; // @[TreePEsWrapper.scala 70:65]
  wire  pes_0_pe_io_sample_in_valid; // @[TreePEsWrapper.scala 70:65]
  wire [15:0] pes_0_pe_io_sample_in_bits_features_0; // @[TreePEsWrapper.scala 70:65]
  wire [15:0] pes_0_pe_io_sample_in_bits_features_1; // @[TreePEsWrapper.scala 70:65]
  wire [15:0] pes_0_pe_io_sample_in_bits_features_2; // @[TreePEsWrapper.scala 70:65]
  wire [15:0] pes_0_pe_io_sample_in_bits_features_3; // @[TreePEsWrapper.scala 70:65]
  wire [9:0] pes_0_pe_io_sample_in_bits_offset; // @[TreePEsWrapper.scala 70:65]
  wire  pes_0_pe_io_sample_in_bits_shift; // @[TreePEsWrapper.scala 70:65]
  wire  pes_0_pe_io_sample_in_bits_search_for_root; // @[TreePEsWrapper.scala 70:65]
  wire [7:0] pes_0_pe_io_sample_in_bits_tree_to_exec; // @[TreePEsWrapper.scala 70:65]
  wire [15:0] pes_0_pe_io_sample_in_bits_scores_0; // @[TreePEsWrapper.scala 70:65]
  wire [15:0] pes_0_pe_io_sample_in_bits_scores_1; // @[TreePEsWrapper.scala 70:65]
  wire [15:0] pes_0_pe_io_sample_in_bits_scores_2; // @[TreePEsWrapper.scala 70:65]
  wire [15:0] pes_0_pe_io_sample_in_bits_scores_3; // @[TreePEsWrapper.scala 70:65]
  wire [15:0] pes_0_pe_io_sample_in_bits_weights_0; // @[TreePEsWrapper.scala 70:65]
  wire [15:0] pes_0_pe_io_sample_in_bits_weights_1; // @[TreePEsWrapper.scala 70:65]
  wire  pes_0_pe_io_sample_in_bits_last; // @[TreePEsWrapper.scala 70:65]
  wire [9:0] pes_0_pe_io_mem_addr_1; // @[TreePEsWrapper.scala 70:65]
  wire [63:0] pes_0_pe_io_mem_dataOut_1; // @[TreePEsWrapper.scala 70:65]
  wire  pes_0_pe_io_sample_out_ready; // @[TreePEsWrapper.scala 70:65]
  wire  pes_0_pe_io_sample_out_valid; // @[TreePEsWrapper.scala 70:65]
  wire [15:0] pes_0_pe_io_sample_out_bits_features_0; // @[TreePEsWrapper.scala 70:65]
  wire [15:0] pes_0_pe_io_sample_out_bits_features_1; // @[TreePEsWrapper.scala 70:65]
  wire [15:0] pes_0_pe_io_sample_out_bits_features_2; // @[TreePEsWrapper.scala 70:65]
  wire [15:0] pes_0_pe_io_sample_out_bits_features_3; // @[TreePEsWrapper.scala 70:65]
  wire [9:0] pes_0_pe_io_sample_out_bits_offset; // @[TreePEsWrapper.scala 70:65]
  wire  pes_0_pe_io_sample_out_bits_search_for_root; // @[TreePEsWrapper.scala 70:65]
  wire [7:0] pes_0_pe_io_sample_out_bits_tree_to_exec; // @[TreePEsWrapper.scala 70:65]
  wire [15:0] pes_0_pe_io_sample_out_bits_scores_0; // @[TreePEsWrapper.scala 70:65]
  wire [15:0] pes_0_pe_io_sample_out_bits_scores_1; // @[TreePEsWrapper.scala 70:65]
  wire [15:0] pes_0_pe_io_sample_out_bits_scores_2; // @[TreePEsWrapper.scala 70:65]
  wire [15:0] pes_0_pe_io_sample_out_bits_scores_3; // @[TreePEsWrapper.scala 70:65]
  wire [15:0] pes_0_pe_io_sample_out_bits_weights_0; // @[TreePEsWrapper.scala 70:65]
  wire [15:0] pes_0_pe_io_sample_out_bits_weights_1; // @[TreePEsWrapper.scala 70:65]
  wire  pes_0_pe_io_sample_out_bits_last; // @[TreePEsWrapper.scala 70:65]
  wire  pes_1_clock; // @[TreePEsWrapper.scala 70:65]
  wire  pes_1_reset; // @[TreePEsWrapper.scala 70:65]
  wire  pes_1_pe_io_sample_in_ready; // @[TreePEsWrapper.scala 70:65]
  wire  pes_1_pe_io_sample_in_valid; // @[TreePEsWrapper.scala 70:65]
  wire [15:0] pes_1_pe_io_sample_in_bits_features_0; // @[TreePEsWrapper.scala 70:65]
  wire [15:0] pes_1_pe_io_sample_in_bits_features_1; // @[TreePEsWrapper.scala 70:65]
  wire [15:0] pes_1_pe_io_sample_in_bits_features_2; // @[TreePEsWrapper.scala 70:65]
  wire [15:0] pes_1_pe_io_sample_in_bits_features_3; // @[TreePEsWrapper.scala 70:65]
  wire [9:0] pes_1_pe_io_sample_in_bits_offset; // @[TreePEsWrapper.scala 70:65]
  wire  pes_1_pe_io_sample_in_bits_search_for_root; // @[TreePEsWrapper.scala 70:65]
  wire [7:0] pes_1_pe_io_sample_in_bits_tree_to_exec; // @[TreePEsWrapper.scala 70:65]
  wire [15:0] pes_1_pe_io_sample_in_bits_scores_0; // @[TreePEsWrapper.scala 70:65]
  wire [15:0] pes_1_pe_io_sample_in_bits_scores_1; // @[TreePEsWrapper.scala 70:65]
  wire [15:0] pes_1_pe_io_sample_in_bits_scores_2; // @[TreePEsWrapper.scala 70:65]
  wire [15:0] pes_1_pe_io_sample_in_bits_scores_3; // @[TreePEsWrapper.scala 70:65]
  wire [15:0] pes_1_pe_io_sample_in_bits_weights_0; // @[TreePEsWrapper.scala 70:65]
  wire [15:0] pes_1_pe_io_sample_in_bits_weights_1; // @[TreePEsWrapper.scala 70:65]
  wire  pes_1_pe_io_sample_in_bits_last; // @[TreePEsWrapper.scala 70:65]
  wire [9:0] pes_1_pe_io_mem_addr_1; // @[TreePEsWrapper.scala 70:65]
  wire [63:0] pes_1_pe_io_mem_dataOut_1; // @[TreePEsWrapper.scala 70:65]
  wire  pes_1_pe_io_sample_out_ready; // @[TreePEsWrapper.scala 70:65]
  wire  pes_1_pe_io_sample_out_valid; // @[TreePEsWrapper.scala 70:65]
  wire [15:0] pes_1_pe_io_sample_out_bits_features_0; // @[TreePEsWrapper.scala 70:65]
  wire [15:0] pes_1_pe_io_sample_out_bits_features_1; // @[TreePEsWrapper.scala 70:65]
  wire [15:0] pes_1_pe_io_sample_out_bits_features_2; // @[TreePEsWrapper.scala 70:65]
  wire [15:0] pes_1_pe_io_sample_out_bits_features_3; // @[TreePEsWrapper.scala 70:65]
  wire [9:0] pes_1_pe_io_sample_out_bits_offset; // @[TreePEsWrapper.scala 70:65]
  wire  pes_1_pe_io_sample_out_bits_search_for_root; // @[TreePEsWrapper.scala 70:65]
  wire [7:0] pes_1_pe_io_sample_out_bits_tree_to_exec; // @[TreePEsWrapper.scala 70:65]
  wire [15:0] pes_1_pe_io_sample_out_bits_scores_0; // @[TreePEsWrapper.scala 70:65]
  wire [15:0] pes_1_pe_io_sample_out_bits_scores_1; // @[TreePEsWrapper.scala 70:65]
  wire [15:0] pes_1_pe_io_sample_out_bits_scores_2; // @[TreePEsWrapper.scala 70:65]
  wire [15:0] pes_1_pe_io_sample_out_bits_scores_3; // @[TreePEsWrapper.scala 70:65]
  wire [15:0] pes_1_pe_io_sample_out_bits_weights_0; // @[TreePEsWrapper.scala 70:65]
  wire [15:0] pes_1_pe_io_sample_out_bits_weights_1; // @[TreePEsWrapper.scala 70:65]
  wire  pes_1_pe_io_sample_out_bits_dest; // @[TreePEsWrapper.scala 70:65]
  wire  pes_1_pe_io_sample_out_bits_last; // @[TreePEsWrapper.scala 70:65]
  wire  brams_0_clock; // @[TreePEsWrapper.scala 71:67]
  wire [9:0] brams_0_io_addr_1; // @[TreePEsWrapper.scala 71:67]
  wire [63:0] brams_0_io_dataOut_1; // @[TreePEsWrapper.scala 71:67]
  wire  brams_0_io_enable_2; // @[TreePEsWrapper.scala 71:67]
  wire  brams_0_io_write_2; // @[TreePEsWrapper.scala 71:67]
  wire [9:0] brams_0_io_addr_2; // @[TreePEsWrapper.scala 71:67]
  wire [63:0] brams_0_io_dataIn_2; // @[TreePEsWrapper.scala 71:67]
  wire [63:0] brams_0_io_dataOut_2; // @[TreePEsWrapper.scala 71:67]
  wire  brams_1_clock; // @[TreePEsWrapper.scala 71:67]
  wire [9:0] brams_1_io_addr_1; // @[TreePEsWrapper.scala 71:67]
  wire [63:0] brams_1_io_dataOut_1; // @[TreePEsWrapper.scala 71:67]
  wire  brams_1_io_enable_2; // @[TreePEsWrapper.scala 71:67]
  wire  brams_1_io_write_2; // @[TreePEsWrapper.scala 71:67]
  wire [9:0] brams_1_io_addr_2; // @[TreePEsWrapper.scala 71:67]
  wire [63:0] brams_1_io_dataIn_2; // @[TreePEsWrapper.scala 71:67]
  wire [63:0] brams_1_io_dataOut_2; // @[TreePEsWrapper.scala 71:67]
  wire  first_interconnects_0_clock; // @[TreePEsWrapper.scala 72:40]
  wire  first_interconnects_0_reset; // @[TreePEsWrapper.scala 72:40]
  wire  first_interconnects_0_io_sample_entering_ready; // @[TreePEsWrapper.scala 72:40]
  wire  first_interconnects_0_io_sample_entering_valid; // @[TreePEsWrapper.scala 72:40]
  wire [15:0] first_interconnects_0_io_sample_entering_bits_features_0; // @[TreePEsWrapper.scala 72:40]
  wire [15:0] first_interconnects_0_io_sample_entering_bits_features_1; // @[TreePEsWrapper.scala 72:40]
  wire [15:0] first_interconnects_0_io_sample_entering_bits_features_2; // @[TreePEsWrapper.scala 72:40]
  wire [15:0] first_interconnects_0_io_sample_entering_bits_features_3; // @[TreePEsWrapper.scala 72:40]
  wire [9:0] first_interconnects_0_io_sample_entering_bits_offset; // @[TreePEsWrapper.scala 72:40]
  wire  first_interconnects_0_io_sample_entering_bits_shift; // @[TreePEsWrapper.scala 72:40]
  wire  first_interconnects_0_io_sample_entering_bits_search_for_root; // @[TreePEsWrapper.scala 72:40]
  wire [7:0] first_interconnects_0_io_sample_entering_bits_tree_to_exec; // @[TreePEsWrapper.scala 72:40]
  wire [15:0] first_interconnects_0_io_sample_entering_bits_scores_0; // @[TreePEsWrapper.scala 72:40]
  wire [15:0] first_interconnects_0_io_sample_entering_bits_scores_1; // @[TreePEsWrapper.scala 72:40]
  wire [15:0] first_interconnects_0_io_sample_entering_bits_scores_2; // @[TreePEsWrapper.scala 72:40]
  wire [15:0] first_interconnects_0_io_sample_entering_bits_scores_3; // @[TreePEsWrapper.scala 72:40]
  wire [15:0] first_interconnects_0_io_sample_entering_bits_weights_0; // @[TreePEsWrapper.scala 72:40]
  wire [15:0] first_interconnects_0_io_sample_entering_bits_weights_1; // @[TreePEsWrapper.scala 72:40]
  wire  first_interconnects_0_io_sample_entering_bits_last; // @[TreePEsWrapper.scala 72:40]
  wire  first_interconnects_0_io_sample_looping_ready; // @[TreePEsWrapper.scala 72:40]
  wire  first_interconnects_0_io_sample_looping_valid; // @[TreePEsWrapper.scala 72:40]
  wire [15:0] first_interconnects_0_io_sample_looping_bits_features_0; // @[TreePEsWrapper.scala 72:40]
  wire [15:0] first_interconnects_0_io_sample_looping_bits_features_1; // @[TreePEsWrapper.scala 72:40]
  wire [15:0] first_interconnects_0_io_sample_looping_bits_features_2; // @[TreePEsWrapper.scala 72:40]
  wire [15:0] first_interconnects_0_io_sample_looping_bits_features_3; // @[TreePEsWrapper.scala 72:40]
  wire [9:0] first_interconnects_0_io_sample_looping_bits_offset; // @[TreePEsWrapper.scala 72:40]
  wire  first_interconnects_0_io_sample_looping_bits_shift; // @[TreePEsWrapper.scala 72:40]
  wire  first_interconnects_0_io_sample_looping_bits_search_for_root; // @[TreePEsWrapper.scala 72:40]
  wire [7:0] first_interconnects_0_io_sample_looping_bits_tree_to_exec; // @[TreePEsWrapper.scala 72:40]
  wire [15:0] first_interconnects_0_io_sample_looping_bits_scores_0; // @[TreePEsWrapper.scala 72:40]
  wire [15:0] first_interconnects_0_io_sample_looping_bits_scores_1; // @[TreePEsWrapper.scala 72:40]
  wire [15:0] first_interconnects_0_io_sample_looping_bits_scores_2; // @[TreePEsWrapper.scala 72:40]
  wire [15:0] first_interconnects_0_io_sample_looping_bits_scores_3; // @[TreePEsWrapper.scala 72:40]
  wire [15:0] first_interconnects_0_io_sample_looping_bits_weights_0; // @[TreePEsWrapper.scala 72:40]
  wire [15:0] first_interconnects_0_io_sample_looping_bits_weights_1; // @[TreePEsWrapper.scala 72:40]
  wire  first_interconnects_0_io_sample_looping_bits_last; // @[TreePEsWrapper.scala 72:40]
  wire  first_interconnects_0_io_sample_out_ready; // @[TreePEsWrapper.scala 72:40]
  wire  first_interconnects_0_io_sample_out_valid; // @[TreePEsWrapper.scala 72:40]
  wire [15:0] first_interconnects_0_io_sample_out_bits_features_0; // @[TreePEsWrapper.scala 72:40]
  wire [15:0] first_interconnects_0_io_sample_out_bits_features_1; // @[TreePEsWrapper.scala 72:40]
  wire [15:0] first_interconnects_0_io_sample_out_bits_features_2; // @[TreePEsWrapper.scala 72:40]
  wire [15:0] first_interconnects_0_io_sample_out_bits_features_3; // @[TreePEsWrapper.scala 72:40]
  wire [9:0] first_interconnects_0_io_sample_out_bits_offset; // @[TreePEsWrapper.scala 72:40]
  wire  first_interconnects_0_io_sample_out_bits_shift; // @[TreePEsWrapper.scala 72:40]
  wire  first_interconnects_0_io_sample_out_bits_search_for_root; // @[TreePEsWrapper.scala 72:40]
  wire [7:0] first_interconnects_0_io_sample_out_bits_tree_to_exec; // @[TreePEsWrapper.scala 72:40]
  wire [15:0] first_interconnects_0_io_sample_out_bits_scores_0; // @[TreePEsWrapper.scala 72:40]
  wire [15:0] first_interconnects_0_io_sample_out_bits_scores_1; // @[TreePEsWrapper.scala 72:40]
  wire [15:0] first_interconnects_0_io_sample_out_bits_scores_2; // @[TreePEsWrapper.scala 72:40]
  wire [15:0] first_interconnects_0_io_sample_out_bits_scores_3; // @[TreePEsWrapper.scala 72:40]
  wire [15:0] first_interconnects_0_io_sample_out_bits_weights_0; // @[TreePEsWrapper.scala 72:40]
  wire [15:0] first_interconnects_0_io_sample_out_bits_weights_1; // @[TreePEsWrapper.scala 72:40]
  wire  first_interconnects_0_io_sample_out_bits_last; // @[TreePEsWrapper.scala 72:40]
  wire  last_interconnect_clock; // @[TreePEsWrapper.scala 73:39]
  wire  last_interconnect_reset; // @[TreePEsWrapper.scala 73:39]
  wire  last_interconnect_io_sample_in_ready; // @[TreePEsWrapper.scala 73:39]
  wire  last_interconnect_io_sample_in_valid; // @[TreePEsWrapper.scala 73:39]
  wire [15:0] last_interconnect_io_sample_in_bits_features_0; // @[TreePEsWrapper.scala 73:39]
  wire [15:0] last_interconnect_io_sample_in_bits_features_1; // @[TreePEsWrapper.scala 73:39]
  wire [15:0] last_interconnect_io_sample_in_bits_features_2; // @[TreePEsWrapper.scala 73:39]
  wire [15:0] last_interconnect_io_sample_in_bits_features_3; // @[TreePEsWrapper.scala 73:39]
  wire [9:0] last_interconnect_io_sample_in_bits_offset; // @[TreePEsWrapper.scala 73:39]
  wire  last_interconnect_io_sample_in_bits_search_for_root; // @[TreePEsWrapper.scala 73:39]
  wire [7:0] last_interconnect_io_sample_in_bits_tree_to_exec; // @[TreePEsWrapper.scala 73:39]
  wire [15:0] last_interconnect_io_sample_in_bits_scores_0; // @[TreePEsWrapper.scala 73:39]
  wire [15:0] last_interconnect_io_sample_in_bits_scores_1; // @[TreePEsWrapper.scala 73:39]
  wire [15:0] last_interconnect_io_sample_in_bits_scores_2; // @[TreePEsWrapper.scala 73:39]
  wire [15:0] last_interconnect_io_sample_in_bits_scores_3; // @[TreePEsWrapper.scala 73:39]
  wire [15:0] last_interconnect_io_sample_in_bits_weights_0; // @[TreePEsWrapper.scala 73:39]
  wire [15:0] last_interconnect_io_sample_in_bits_weights_1; // @[TreePEsWrapper.scala 73:39]
  wire  last_interconnect_io_sample_in_bits_dest; // @[TreePEsWrapper.scala 73:39]
  wire  last_interconnect_io_sample_in_bits_last; // @[TreePEsWrapper.scala 73:39]
  wire  last_interconnect_io_sample_looping_ready; // @[TreePEsWrapper.scala 73:39]
  wire  last_interconnect_io_sample_looping_valid; // @[TreePEsWrapper.scala 73:39]
  wire [15:0] last_interconnect_io_sample_looping_bits_features_0; // @[TreePEsWrapper.scala 73:39]
  wire [15:0] last_interconnect_io_sample_looping_bits_features_1; // @[TreePEsWrapper.scala 73:39]
  wire [15:0] last_interconnect_io_sample_looping_bits_features_2; // @[TreePEsWrapper.scala 73:39]
  wire [15:0] last_interconnect_io_sample_looping_bits_features_3; // @[TreePEsWrapper.scala 73:39]
  wire [9:0] last_interconnect_io_sample_looping_bits_offset; // @[TreePEsWrapper.scala 73:39]
  wire  last_interconnect_io_sample_looping_bits_shift; // @[TreePEsWrapper.scala 73:39]
  wire  last_interconnect_io_sample_looping_bits_search_for_root; // @[TreePEsWrapper.scala 73:39]
  wire [7:0] last_interconnect_io_sample_looping_bits_tree_to_exec; // @[TreePEsWrapper.scala 73:39]
  wire [15:0] last_interconnect_io_sample_looping_bits_scores_0; // @[TreePEsWrapper.scala 73:39]
  wire [15:0] last_interconnect_io_sample_looping_bits_scores_1; // @[TreePEsWrapper.scala 73:39]
  wire [15:0] last_interconnect_io_sample_looping_bits_scores_2; // @[TreePEsWrapper.scala 73:39]
  wire [15:0] last_interconnect_io_sample_looping_bits_scores_3; // @[TreePEsWrapper.scala 73:39]
  wire [15:0] last_interconnect_io_sample_looping_bits_weights_0; // @[TreePEsWrapper.scala 73:39]
  wire [15:0] last_interconnect_io_sample_looping_bits_weights_1; // @[TreePEsWrapper.scala 73:39]
  wire  last_interconnect_io_sample_looping_bits_last; // @[TreePEsWrapper.scala 73:39]
  wire  last_interconnect_io_sample_leaving_ready; // @[TreePEsWrapper.scala 73:39]
  wire  last_interconnect_io_sample_leaving_valid; // @[TreePEsWrapper.scala 73:39]
  wire [15:0] last_interconnect_io_sample_leaving_bits_features_0; // @[TreePEsWrapper.scala 73:39]
  wire [15:0] last_interconnect_io_sample_leaving_bits_features_1; // @[TreePEsWrapper.scala 73:39]
  wire [15:0] last_interconnect_io_sample_leaving_bits_features_2; // @[TreePEsWrapper.scala 73:39]
  wire [15:0] last_interconnect_io_sample_leaving_bits_features_3; // @[TreePEsWrapper.scala 73:39]
  wire [9:0] last_interconnect_io_sample_leaving_bits_offset; // @[TreePEsWrapper.scala 73:39]
  wire  last_interconnect_io_sample_leaving_bits_shift; // @[TreePEsWrapper.scala 73:39]
  wire  last_interconnect_io_sample_leaving_bits_search_for_root; // @[TreePEsWrapper.scala 73:39]
  wire [7:0] last_interconnect_io_sample_leaving_bits_tree_to_exec; // @[TreePEsWrapper.scala 73:39]
  wire [15:0] last_interconnect_io_sample_leaving_bits_scores_0; // @[TreePEsWrapper.scala 73:39]
  wire [15:0] last_interconnect_io_sample_leaving_bits_scores_1; // @[TreePEsWrapper.scala 73:39]
  wire [15:0] last_interconnect_io_sample_leaving_bits_scores_2; // @[TreePEsWrapper.scala 73:39]
  wire [15:0] last_interconnect_io_sample_leaving_bits_scores_3; // @[TreePEsWrapper.scala 73:39]
  wire [15:0] last_interconnect_io_sample_leaving_bits_weights_0; // @[TreePEsWrapper.scala 73:39]
  wire [15:0] last_interconnect_io_sample_leaving_bits_weights_1; // @[TreePEsWrapper.scala 73:39]
  wire  last_interconnect_io_sample_leaving_bits_last; // @[TreePEsWrapper.scala 73:39]
  wire  increment_clock; // @[TreePEsWrapper.scala 74:31]
  wire  increment_reset; // @[TreePEsWrapper.scala 74:31]
  wire  increment_io_sample_in_ready; // @[TreePEsWrapper.scala 74:31]
  wire  increment_io_sample_in_valid; // @[TreePEsWrapper.scala 74:31]
  wire [15:0] increment_io_sample_in_bits_features_0; // @[TreePEsWrapper.scala 74:31]
  wire [15:0] increment_io_sample_in_bits_features_1; // @[TreePEsWrapper.scala 74:31]
  wire [15:0] increment_io_sample_in_bits_features_2; // @[TreePEsWrapper.scala 74:31]
  wire [15:0] increment_io_sample_in_bits_features_3; // @[TreePEsWrapper.scala 74:31]
  wire [9:0] increment_io_sample_in_bits_offset; // @[TreePEsWrapper.scala 74:31]
  wire  increment_io_sample_in_bits_shift; // @[TreePEsWrapper.scala 74:31]
  wire  increment_io_sample_in_bits_search_for_root; // @[TreePEsWrapper.scala 74:31]
  wire [7:0] increment_io_sample_in_bits_tree_to_exec; // @[TreePEsWrapper.scala 74:31]
  wire [15:0] increment_io_sample_in_bits_scores_0; // @[TreePEsWrapper.scala 74:31]
  wire [15:0] increment_io_sample_in_bits_scores_1; // @[TreePEsWrapper.scala 74:31]
  wire [15:0] increment_io_sample_in_bits_scores_2; // @[TreePEsWrapper.scala 74:31]
  wire [15:0] increment_io_sample_in_bits_scores_3; // @[TreePEsWrapper.scala 74:31]
  wire [15:0] increment_io_sample_in_bits_weights_0; // @[TreePEsWrapper.scala 74:31]
  wire [15:0] increment_io_sample_in_bits_weights_1; // @[TreePEsWrapper.scala 74:31]
  wire  increment_io_sample_in_bits_last; // @[TreePEsWrapper.scala 74:31]
  wire  increment_io_sample_out_ready; // @[TreePEsWrapper.scala 74:31]
  wire  increment_io_sample_out_valid; // @[TreePEsWrapper.scala 74:31]
  wire [15:0] increment_io_sample_out_bits_features_0; // @[TreePEsWrapper.scala 74:31]
  wire [15:0] increment_io_sample_out_bits_features_1; // @[TreePEsWrapper.scala 74:31]
  wire [15:0] increment_io_sample_out_bits_features_2; // @[TreePEsWrapper.scala 74:31]
  wire [15:0] increment_io_sample_out_bits_features_3; // @[TreePEsWrapper.scala 74:31]
  wire [9:0] increment_io_sample_out_bits_offset; // @[TreePEsWrapper.scala 74:31]
  wire  increment_io_sample_out_bits_shift; // @[TreePEsWrapper.scala 74:31]
  wire  increment_io_sample_out_bits_search_for_root; // @[TreePEsWrapper.scala 74:31]
  wire [7:0] increment_io_sample_out_bits_tree_to_exec; // @[TreePEsWrapper.scala 74:31]
  wire [15:0] increment_io_sample_out_bits_scores_0; // @[TreePEsWrapper.scala 74:31]
  wire [15:0] increment_io_sample_out_bits_scores_1; // @[TreePEsWrapper.scala 74:31]
  wire [15:0] increment_io_sample_out_bits_scores_2; // @[TreePEsWrapper.scala 74:31]
  wire [15:0] increment_io_sample_out_bits_scores_3; // @[TreePEsWrapper.scala 74:31]
  wire [15:0] increment_io_sample_out_bits_weights_0; // @[TreePEsWrapper.scala 74:31]
  wire [15:0] increment_io_sample_out_bits_weights_1; // @[TreePEsWrapper.scala 74:31]
  wire  increment_io_sample_out_bits_last; // @[TreePEsWrapper.scala 74:31]
  wire  pes_0_1_clock; // @[TreePEsWrapper.scala 70:65]
  wire  pes_0_1_reset; // @[TreePEsWrapper.scala 70:65]
  wire  pes_0_1_pe_io_sample_in_ready; // @[TreePEsWrapper.scala 70:65]
  wire  pes_0_1_pe_io_sample_in_valid; // @[TreePEsWrapper.scala 70:65]
  wire [15:0] pes_0_1_pe_io_sample_in_bits_features_0; // @[TreePEsWrapper.scala 70:65]
  wire [15:0] pes_0_1_pe_io_sample_in_bits_features_1; // @[TreePEsWrapper.scala 70:65]
  wire [15:0] pes_0_1_pe_io_sample_in_bits_features_2; // @[TreePEsWrapper.scala 70:65]
  wire [15:0] pes_0_1_pe_io_sample_in_bits_features_3; // @[TreePEsWrapper.scala 70:65]
  wire [9:0] pes_0_1_pe_io_sample_in_bits_offset; // @[TreePEsWrapper.scala 70:65]
  wire  pes_0_1_pe_io_sample_in_bits_shift; // @[TreePEsWrapper.scala 70:65]
  wire  pes_0_1_pe_io_sample_in_bits_search_for_root; // @[TreePEsWrapper.scala 70:65]
  wire [7:0] pes_0_1_pe_io_sample_in_bits_tree_to_exec; // @[TreePEsWrapper.scala 70:65]
  wire [15:0] pes_0_1_pe_io_sample_in_bits_scores_0; // @[TreePEsWrapper.scala 70:65]
  wire [15:0] pes_0_1_pe_io_sample_in_bits_scores_1; // @[TreePEsWrapper.scala 70:65]
  wire [15:0] pes_0_1_pe_io_sample_in_bits_scores_2; // @[TreePEsWrapper.scala 70:65]
  wire [15:0] pes_0_1_pe_io_sample_in_bits_scores_3; // @[TreePEsWrapper.scala 70:65]
  wire [15:0] pes_0_1_pe_io_sample_in_bits_weights_0; // @[TreePEsWrapper.scala 70:65]
  wire [15:0] pes_0_1_pe_io_sample_in_bits_weights_1; // @[TreePEsWrapper.scala 70:65]
  wire  pes_0_1_pe_io_sample_in_bits_last; // @[TreePEsWrapper.scala 70:65]
  wire [9:0] pes_0_1_pe_io_mem_addr_1; // @[TreePEsWrapper.scala 70:65]
  wire [63:0] pes_0_1_pe_io_mem_dataOut_1; // @[TreePEsWrapper.scala 70:65]
  wire  pes_0_1_pe_io_sample_out_ready; // @[TreePEsWrapper.scala 70:65]
  wire  pes_0_1_pe_io_sample_out_valid; // @[TreePEsWrapper.scala 70:65]
  wire [15:0] pes_0_1_pe_io_sample_out_bits_features_0; // @[TreePEsWrapper.scala 70:65]
  wire [15:0] pes_0_1_pe_io_sample_out_bits_features_1; // @[TreePEsWrapper.scala 70:65]
  wire [15:0] pes_0_1_pe_io_sample_out_bits_features_2; // @[TreePEsWrapper.scala 70:65]
  wire [15:0] pes_0_1_pe_io_sample_out_bits_features_3; // @[TreePEsWrapper.scala 70:65]
  wire [9:0] pes_0_1_pe_io_sample_out_bits_offset; // @[TreePEsWrapper.scala 70:65]
  wire  pes_0_1_pe_io_sample_out_bits_search_for_root; // @[TreePEsWrapper.scala 70:65]
  wire [7:0] pes_0_1_pe_io_sample_out_bits_tree_to_exec; // @[TreePEsWrapper.scala 70:65]
  wire [15:0] pes_0_1_pe_io_sample_out_bits_scores_0; // @[TreePEsWrapper.scala 70:65]
  wire [15:0] pes_0_1_pe_io_sample_out_bits_scores_1; // @[TreePEsWrapper.scala 70:65]
  wire [15:0] pes_0_1_pe_io_sample_out_bits_scores_2; // @[TreePEsWrapper.scala 70:65]
  wire [15:0] pes_0_1_pe_io_sample_out_bits_scores_3; // @[TreePEsWrapper.scala 70:65]
  wire [15:0] pes_0_1_pe_io_sample_out_bits_weights_0; // @[TreePEsWrapper.scala 70:65]
  wire [15:0] pes_0_1_pe_io_sample_out_bits_weights_1; // @[TreePEsWrapper.scala 70:65]
  wire  pes_0_1_pe_io_sample_out_bits_last; // @[TreePEsWrapper.scala 70:65]
  wire  pes_1_1_clock; // @[TreePEsWrapper.scala 70:65]
  wire  pes_1_1_reset; // @[TreePEsWrapper.scala 70:65]
  wire  pes_1_1_pe_io_sample_in_ready; // @[TreePEsWrapper.scala 70:65]
  wire  pes_1_1_pe_io_sample_in_valid; // @[TreePEsWrapper.scala 70:65]
  wire [15:0] pes_1_1_pe_io_sample_in_bits_features_0; // @[TreePEsWrapper.scala 70:65]
  wire [15:0] pes_1_1_pe_io_sample_in_bits_features_1; // @[TreePEsWrapper.scala 70:65]
  wire [15:0] pes_1_1_pe_io_sample_in_bits_features_2; // @[TreePEsWrapper.scala 70:65]
  wire [15:0] pes_1_1_pe_io_sample_in_bits_features_3; // @[TreePEsWrapper.scala 70:65]
  wire [9:0] pes_1_1_pe_io_sample_in_bits_offset; // @[TreePEsWrapper.scala 70:65]
  wire  pes_1_1_pe_io_sample_in_bits_search_for_root; // @[TreePEsWrapper.scala 70:65]
  wire [7:0] pes_1_1_pe_io_sample_in_bits_tree_to_exec; // @[TreePEsWrapper.scala 70:65]
  wire [15:0] pes_1_1_pe_io_sample_in_bits_scores_0; // @[TreePEsWrapper.scala 70:65]
  wire [15:0] pes_1_1_pe_io_sample_in_bits_scores_1; // @[TreePEsWrapper.scala 70:65]
  wire [15:0] pes_1_1_pe_io_sample_in_bits_scores_2; // @[TreePEsWrapper.scala 70:65]
  wire [15:0] pes_1_1_pe_io_sample_in_bits_scores_3; // @[TreePEsWrapper.scala 70:65]
  wire [15:0] pes_1_1_pe_io_sample_in_bits_weights_0; // @[TreePEsWrapper.scala 70:65]
  wire [15:0] pes_1_1_pe_io_sample_in_bits_weights_1; // @[TreePEsWrapper.scala 70:65]
  wire  pes_1_1_pe_io_sample_in_bits_last; // @[TreePEsWrapper.scala 70:65]
  wire [9:0] pes_1_1_pe_io_mem_addr_1; // @[TreePEsWrapper.scala 70:65]
  wire [63:0] pes_1_1_pe_io_mem_dataOut_1; // @[TreePEsWrapper.scala 70:65]
  wire  pes_1_1_pe_io_sample_out_ready; // @[TreePEsWrapper.scala 70:65]
  wire  pes_1_1_pe_io_sample_out_valid; // @[TreePEsWrapper.scala 70:65]
  wire [15:0] pes_1_1_pe_io_sample_out_bits_features_0; // @[TreePEsWrapper.scala 70:65]
  wire [15:0] pes_1_1_pe_io_sample_out_bits_features_1; // @[TreePEsWrapper.scala 70:65]
  wire [15:0] pes_1_1_pe_io_sample_out_bits_features_2; // @[TreePEsWrapper.scala 70:65]
  wire [15:0] pes_1_1_pe_io_sample_out_bits_features_3; // @[TreePEsWrapper.scala 70:65]
  wire [9:0] pes_1_1_pe_io_sample_out_bits_offset; // @[TreePEsWrapper.scala 70:65]
  wire  pes_1_1_pe_io_sample_out_bits_search_for_root; // @[TreePEsWrapper.scala 70:65]
  wire [7:0] pes_1_1_pe_io_sample_out_bits_tree_to_exec; // @[TreePEsWrapper.scala 70:65]
  wire [15:0] pes_1_1_pe_io_sample_out_bits_scores_0; // @[TreePEsWrapper.scala 70:65]
  wire [15:0] pes_1_1_pe_io_sample_out_bits_scores_1; // @[TreePEsWrapper.scala 70:65]
  wire [15:0] pes_1_1_pe_io_sample_out_bits_scores_2; // @[TreePEsWrapper.scala 70:65]
  wire [15:0] pes_1_1_pe_io_sample_out_bits_scores_3; // @[TreePEsWrapper.scala 70:65]
  wire [15:0] pes_1_1_pe_io_sample_out_bits_weights_0; // @[TreePEsWrapper.scala 70:65]
  wire [15:0] pes_1_1_pe_io_sample_out_bits_weights_1; // @[TreePEsWrapper.scala 70:65]
  wire  pes_1_1_pe_io_sample_out_bits_dest; // @[TreePEsWrapper.scala 70:65]
  wire  pes_1_1_pe_io_sample_out_bits_last; // @[TreePEsWrapper.scala 70:65]
  wire  brams_0_1_clock; // @[TreePEsWrapper.scala 71:67]
  wire [9:0] brams_0_1_io_addr_1; // @[TreePEsWrapper.scala 71:67]
  wire [63:0] brams_0_1_io_dataOut_1; // @[TreePEsWrapper.scala 71:67]
  wire  brams_0_1_io_enable_2; // @[TreePEsWrapper.scala 71:67]
  wire  brams_0_1_io_write_2; // @[TreePEsWrapper.scala 71:67]
  wire [9:0] brams_0_1_io_addr_2; // @[TreePEsWrapper.scala 71:67]
  wire [63:0] brams_0_1_io_dataIn_2; // @[TreePEsWrapper.scala 71:67]
  wire [63:0] brams_0_1_io_dataOut_2; // @[TreePEsWrapper.scala 71:67]
  wire  brams_1_1_clock; // @[TreePEsWrapper.scala 71:67]
  wire [9:0] brams_1_1_io_addr_1; // @[TreePEsWrapper.scala 71:67]
  wire [63:0] brams_1_1_io_dataOut_1; // @[TreePEsWrapper.scala 71:67]
  wire  brams_1_1_io_enable_2; // @[TreePEsWrapper.scala 71:67]
  wire  brams_1_1_io_write_2; // @[TreePEsWrapper.scala 71:67]
  wire [9:0] brams_1_1_io_addr_2; // @[TreePEsWrapper.scala 71:67]
  wire [63:0] brams_1_1_io_dataIn_2; // @[TreePEsWrapper.scala 71:67]
  wire [63:0] brams_1_1_io_dataOut_2; // @[TreePEsWrapper.scala 71:67]
  wire  first_interconnects_1_clock; // @[TreePEsWrapper.scala 72:40]
  wire  first_interconnects_1_reset; // @[TreePEsWrapper.scala 72:40]
  wire  first_interconnects_1_io_sample_entering_ready; // @[TreePEsWrapper.scala 72:40]
  wire  first_interconnects_1_io_sample_entering_valid; // @[TreePEsWrapper.scala 72:40]
  wire [15:0] first_interconnects_1_io_sample_entering_bits_features_0; // @[TreePEsWrapper.scala 72:40]
  wire [15:0] first_interconnects_1_io_sample_entering_bits_features_1; // @[TreePEsWrapper.scala 72:40]
  wire [15:0] first_interconnects_1_io_sample_entering_bits_features_2; // @[TreePEsWrapper.scala 72:40]
  wire [15:0] first_interconnects_1_io_sample_entering_bits_features_3; // @[TreePEsWrapper.scala 72:40]
  wire [9:0] first_interconnects_1_io_sample_entering_bits_offset; // @[TreePEsWrapper.scala 72:40]
  wire  first_interconnects_1_io_sample_entering_bits_shift; // @[TreePEsWrapper.scala 72:40]
  wire  first_interconnects_1_io_sample_entering_bits_search_for_root; // @[TreePEsWrapper.scala 72:40]
  wire [7:0] first_interconnects_1_io_sample_entering_bits_tree_to_exec; // @[TreePEsWrapper.scala 72:40]
  wire [15:0] first_interconnects_1_io_sample_entering_bits_scores_0; // @[TreePEsWrapper.scala 72:40]
  wire [15:0] first_interconnects_1_io_sample_entering_bits_scores_1; // @[TreePEsWrapper.scala 72:40]
  wire [15:0] first_interconnects_1_io_sample_entering_bits_scores_2; // @[TreePEsWrapper.scala 72:40]
  wire [15:0] first_interconnects_1_io_sample_entering_bits_scores_3; // @[TreePEsWrapper.scala 72:40]
  wire [15:0] first_interconnects_1_io_sample_entering_bits_weights_0; // @[TreePEsWrapper.scala 72:40]
  wire [15:0] first_interconnects_1_io_sample_entering_bits_weights_1; // @[TreePEsWrapper.scala 72:40]
  wire  first_interconnects_1_io_sample_entering_bits_last; // @[TreePEsWrapper.scala 72:40]
  wire  first_interconnects_1_io_sample_looping_ready; // @[TreePEsWrapper.scala 72:40]
  wire  first_interconnects_1_io_sample_looping_valid; // @[TreePEsWrapper.scala 72:40]
  wire [15:0] first_interconnects_1_io_sample_looping_bits_features_0; // @[TreePEsWrapper.scala 72:40]
  wire [15:0] first_interconnects_1_io_sample_looping_bits_features_1; // @[TreePEsWrapper.scala 72:40]
  wire [15:0] first_interconnects_1_io_sample_looping_bits_features_2; // @[TreePEsWrapper.scala 72:40]
  wire [15:0] first_interconnects_1_io_sample_looping_bits_features_3; // @[TreePEsWrapper.scala 72:40]
  wire [9:0] first_interconnects_1_io_sample_looping_bits_offset; // @[TreePEsWrapper.scala 72:40]
  wire  first_interconnects_1_io_sample_looping_bits_shift; // @[TreePEsWrapper.scala 72:40]
  wire  first_interconnects_1_io_sample_looping_bits_search_for_root; // @[TreePEsWrapper.scala 72:40]
  wire [7:0] first_interconnects_1_io_sample_looping_bits_tree_to_exec; // @[TreePEsWrapper.scala 72:40]
  wire [15:0] first_interconnects_1_io_sample_looping_bits_scores_0; // @[TreePEsWrapper.scala 72:40]
  wire [15:0] first_interconnects_1_io_sample_looping_bits_scores_1; // @[TreePEsWrapper.scala 72:40]
  wire [15:0] first_interconnects_1_io_sample_looping_bits_scores_2; // @[TreePEsWrapper.scala 72:40]
  wire [15:0] first_interconnects_1_io_sample_looping_bits_scores_3; // @[TreePEsWrapper.scala 72:40]
  wire [15:0] first_interconnects_1_io_sample_looping_bits_weights_0; // @[TreePEsWrapper.scala 72:40]
  wire [15:0] first_interconnects_1_io_sample_looping_bits_weights_1; // @[TreePEsWrapper.scala 72:40]
  wire  first_interconnects_1_io_sample_looping_bits_last; // @[TreePEsWrapper.scala 72:40]
  wire  first_interconnects_1_io_sample_out_ready; // @[TreePEsWrapper.scala 72:40]
  wire  first_interconnects_1_io_sample_out_valid; // @[TreePEsWrapper.scala 72:40]
  wire [15:0] first_interconnects_1_io_sample_out_bits_features_0; // @[TreePEsWrapper.scala 72:40]
  wire [15:0] first_interconnects_1_io_sample_out_bits_features_1; // @[TreePEsWrapper.scala 72:40]
  wire [15:0] first_interconnects_1_io_sample_out_bits_features_2; // @[TreePEsWrapper.scala 72:40]
  wire [15:0] first_interconnects_1_io_sample_out_bits_features_3; // @[TreePEsWrapper.scala 72:40]
  wire [9:0] first_interconnects_1_io_sample_out_bits_offset; // @[TreePEsWrapper.scala 72:40]
  wire  first_interconnects_1_io_sample_out_bits_shift; // @[TreePEsWrapper.scala 72:40]
  wire  first_interconnects_1_io_sample_out_bits_search_for_root; // @[TreePEsWrapper.scala 72:40]
  wire [7:0] first_interconnects_1_io_sample_out_bits_tree_to_exec; // @[TreePEsWrapper.scala 72:40]
  wire [15:0] first_interconnects_1_io_sample_out_bits_scores_0; // @[TreePEsWrapper.scala 72:40]
  wire [15:0] first_interconnects_1_io_sample_out_bits_scores_1; // @[TreePEsWrapper.scala 72:40]
  wire [15:0] first_interconnects_1_io_sample_out_bits_scores_2; // @[TreePEsWrapper.scala 72:40]
  wire [15:0] first_interconnects_1_io_sample_out_bits_scores_3; // @[TreePEsWrapper.scala 72:40]
  wire [15:0] first_interconnects_1_io_sample_out_bits_weights_0; // @[TreePEsWrapper.scala 72:40]
  wire [15:0] first_interconnects_1_io_sample_out_bits_weights_1; // @[TreePEsWrapper.scala 72:40]
  wire  first_interconnects_1_io_sample_out_bits_last; // @[TreePEsWrapper.scala 72:40]
  wire  last_interconnect_1_clock; // @[TreePEsWrapper.scala 73:39]
  wire  last_interconnect_1_reset; // @[TreePEsWrapper.scala 73:39]
  wire  last_interconnect_1_io_sample_in_ready; // @[TreePEsWrapper.scala 73:39]
  wire  last_interconnect_1_io_sample_in_valid; // @[TreePEsWrapper.scala 73:39]
  wire [15:0] last_interconnect_1_io_sample_in_bits_features_0; // @[TreePEsWrapper.scala 73:39]
  wire [15:0] last_interconnect_1_io_sample_in_bits_features_1; // @[TreePEsWrapper.scala 73:39]
  wire [15:0] last_interconnect_1_io_sample_in_bits_features_2; // @[TreePEsWrapper.scala 73:39]
  wire [15:0] last_interconnect_1_io_sample_in_bits_features_3; // @[TreePEsWrapper.scala 73:39]
  wire [9:0] last_interconnect_1_io_sample_in_bits_offset; // @[TreePEsWrapper.scala 73:39]
  wire  last_interconnect_1_io_sample_in_bits_search_for_root; // @[TreePEsWrapper.scala 73:39]
  wire [7:0] last_interconnect_1_io_sample_in_bits_tree_to_exec; // @[TreePEsWrapper.scala 73:39]
  wire [15:0] last_interconnect_1_io_sample_in_bits_scores_0; // @[TreePEsWrapper.scala 73:39]
  wire [15:0] last_interconnect_1_io_sample_in_bits_scores_1; // @[TreePEsWrapper.scala 73:39]
  wire [15:0] last_interconnect_1_io_sample_in_bits_scores_2; // @[TreePEsWrapper.scala 73:39]
  wire [15:0] last_interconnect_1_io_sample_in_bits_scores_3; // @[TreePEsWrapper.scala 73:39]
  wire [15:0] last_interconnect_1_io_sample_in_bits_weights_0; // @[TreePEsWrapper.scala 73:39]
  wire [15:0] last_interconnect_1_io_sample_in_bits_weights_1; // @[TreePEsWrapper.scala 73:39]
  wire  last_interconnect_1_io_sample_in_bits_dest; // @[TreePEsWrapper.scala 73:39]
  wire  last_interconnect_1_io_sample_in_bits_last; // @[TreePEsWrapper.scala 73:39]
  wire  last_interconnect_1_io_sample_looping_ready; // @[TreePEsWrapper.scala 73:39]
  wire  last_interconnect_1_io_sample_looping_valid; // @[TreePEsWrapper.scala 73:39]
  wire [15:0] last_interconnect_1_io_sample_looping_bits_features_0; // @[TreePEsWrapper.scala 73:39]
  wire [15:0] last_interconnect_1_io_sample_looping_bits_features_1; // @[TreePEsWrapper.scala 73:39]
  wire [15:0] last_interconnect_1_io_sample_looping_bits_features_2; // @[TreePEsWrapper.scala 73:39]
  wire [15:0] last_interconnect_1_io_sample_looping_bits_features_3; // @[TreePEsWrapper.scala 73:39]
  wire [9:0] last_interconnect_1_io_sample_looping_bits_offset; // @[TreePEsWrapper.scala 73:39]
  wire  last_interconnect_1_io_sample_looping_bits_shift; // @[TreePEsWrapper.scala 73:39]
  wire  last_interconnect_1_io_sample_looping_bits_search_for_root; // @[TreePEsWrapper.scala 73:39]
  wire [7:0] last_interconnect_1_io_sample_looping_bits_tree_to_exec; // @[TreePEsWrapper.scala 73:39]
  wire [15:0] last_interconnect_1_io_sample_looping_bits_scores_0; // @[TreePEsWrapper.scala 73:39]
  wire [15:0] last_interconnect_1_io_sample_looping_bits_scores_1; // @[TreePEsWrapper.scala 73:39]
  wire [15:0] last_interconnect_1_io_sample_looping_bits_scores_2; // @[TreePEsWrapper.scala 73:39]
  wire [15:0] last_interconnect_1_io_sample_looping_bits_scores_3; // @[TreePEsWrapper.scala 73:39]
  wire [15:0] last_interconnect_1_io_sample_looping_bits_weights_0; // @[TreePEsWrapper.scala 73:39]
  wire [15:0] last_interconnect_1_io_sample_looping_bits_weights_1; // @[TreePEsWrapper.scala 73:39]
  wire  last_interconnect_1_io_sample_looping_bits_last; // @[TreePEsWrapper.scala 73:39]
  wire  last_interconnect_1_io_sample_leaving_ready; // @[TreePEsWrapper.scala 73:39]
  wire  last_interconnect_1_io_sample_leaving_valid; // @[TreePEsWrapper.scala 73:39]
  wire [15:0] last_interconnect_1_io_sample_leaving_bits_features_0; // @[TreePEsWrapper.scala 73:39]
  wire [15:0] last_interconnect_1_io_sample_leaving_bits_features_1; // @[TreePEsWrapper.scala 73:39]
  wire [15:0] last_interconnect_1_io_sample_leaving_bits_features_2; // @[TreePEsWrapper.scala 73:39]
  wire [15:0] last_interconnect_1_io_sample_leaving_bits_features_3; // @[TreePEsWrapper.scala 73:39]
  wire [9:0] last_interconnect_1_io_sample_leaving_bits_offset; // @[TreePEsWrapper.scala 73:39]
  wire  last_interconnect_1_io_sample_leaving_bits_shift; // @[TreePEsWrapper.scala 73:39]
  wire  last_interconnect_1_io_sample_leaving_bits_search_for_root; // @[TreePEsWrapper.scala 73:39]
  wire [7:0] last_interconnect_1_io_sample_leaving_bits_tree_to_exec; // @[TreePEsWrapper.scala 73:39]
  wire [15:0] last_interconnect_1_io_sample_leaving_bits_scores_0; // @[TreePEsWrapper.scala 73:39]
  wire [15:0] last_interconnect_1_io_sample_leaving_bits_scores_1; // @[TreePEsWrapper.scala 73:39]
  wire [15:0] last_interconnect_1_io_sample_leaving_bits_scores_2; // @[TreePEsWrapper.scala 73:39]
  wire [15:0] last_interconnect_1_io_sample_leaving_bits_scores_3; // @[TreePEsWrapper.scala 73:39]
  wire [15:0] last_interconnect_1_io_sample_leaving_bits_weights_0; // @[TreePEsWrapper.scala 73:39]
  wire [15:0] last_interconnect_1_io_sample_leaving_bits_weights_1; // @[TreePEsWrapper.scala 73:39]
  wire  last_interconnect_1_io_sample_leaving_bits_last; // @[TreePEsWrapper.scala 73:39]
  wire  increment_1_clock; // @[TreePEsWrapper.scala 74:31]
  wire  increment_1_reset; // @[TreePEsWrapper.scala 74:31]
  wire  increment_1_io_sample_in_ready; // @[TreePEsWrapper.scala 74:31]
  wire  increment_1_io_sample_in_valid; // @[TreePEsWrapper.scala 74:31]
  wire [15:0] increment_1_io_sample_in_bits_features_0; // @[TreePEsWrapper.scala 74:31]
  wire [15:0] increment_1_io_sample_in_bits_features_1; // @[TreePEsWrapper.scala 74:31]
  wire [15:0] increment_1_io_sample_in_bits_features_2; // @[TreePEsWrapper.scala 74:31]
  wire [15:0] increment_1_io_sample_in_bits_features_3; // @[TreePEsWrapper.scala 74:31]
  wire [9:0] increment_1_io_sample_in_bits_offset; // @[TreePEsWrapper.scala 74:31]
  wire  increment_1_io_sample_in_bits_shift; // @[TreePEsWrapper.scala 74:31]
  wire  increment_1_io_sample_in_bits_search_for_root; // @[TreePEsWrapper.scala 74:31]
  wire [7:0] increment_1_io_sample_in_bits_tree_to_exec; // @[TreePEsWrapper.scala 74:31]
  wire [15:0] increment_1_io_sample_in_bits_scores_0; // @[TreePEsWrapper.scala 74:31]
  wire [15:0] increment_1_io_sample_in_bits_scores_1; // @[TreePEsWrapper.scala 74:31]
  wire [15:0] increment_1_io_sample_in_bits_scores_2; // @[TreePEsWrapper.scala 74:31]
  wire [15:0] increment_1_io_sample_in_bits_scores_3; // @[TreePEsWrapper.scala 74:31]
  wire [15:0] increment_1_io_sample_in_bits_weights_0; // @[TreePEsWrapper.scala 74:31]
  wire [15:0] increment_1_io_sample_in_bits_weights_1; // @[TreePEsWrapper.scala 74:31]
  wire  increment_1_io_sample_in_bits_last; // @[TreePEsWrapper.scala 74:31]
  wire  increment_1_io_sample_out_ready; // @[TreePEsWrapper.scala 74:31]
  wire  increment_1_io_sample_out_valid; // @[TreePEsWrapper.scala 74:31]
  wire [15:0] increment_1_io_sample_out_bits_features_0; // @[TreePEsWrapper.scala 74:31]
  wire [15:0] increment_1_io_sample_out_bits_features_1; // @[TreePEsWrapper.scala 74:31]
  wire [15:0] increment_1_io_sample_out_bits_features_2; // @[TreePEsWrapper.scala 74:31]
  wire [15:0] increment_1_io_sample_out_bits_features_3; // @[TreePEsWrapper.scala 74:31]
  wire [9:0] increment_1_io_sample_out_bits_offset; // @[TreePEsWrapper.scala 74:31]
  wire  increment_1_io_sample_out_bits_shift; // @[TreePEsWrapper.scala 74:31]
  wire  increment_1_io_sample_out_bits_search_for_root; // @[TreePEsWrapper.scala 74:31]
  wire [7:0] increment_1_io_sample_out_bits_tree_to_exec; // @[TreePEsWrapper.scala 74:31]
  wire [15:0] increment_1_io_sample_out_bits_scores_0; // @[TreePEsWrapper.scala 74:31]
  wire [15:0] increment_1_io_sample_out_bits_scores_1; // @[TreePEsWrapper.scala 74:31]
  wire [15:0] increment_1_io_sample_out_bits_scores_2; // @[TreePEsWrapper.scala 74:31]
  wire [15:0] increment_1_io_sample_out_bits_scores_3; // @[TreePEsWrapper.scala 74:31]
  wire [15:0] increment_1_io_sample_out_bits_weights_0; // @[TreePEsWrapper.scala 74:31]
  wire [15:0] increment_1_io_sample_out_bits_weights_1; // @[TreePEsWrapper.scala 74:31]
  wire  increment_1_io_sample_out_bits_last; // @[TreePEsWrapper.scala 74:31]
  ForwardConverter forward_converter ( // @[TreePEsWrapper.scala 61:35]
    .io_sample_in_TDATA(forward_converter_io_sample_in_TDATA),
    .io_sample_in_TLAST(forward_converter_io_sample_in_TLAST),
    .io_sample_in_TREADY(forward_converter_io_sample_in_TREADY),
    .io_sample_in_TVALID(forward_converter_io_sample_in_TVALID),
    .io_sample_out_ready(forward_converter_io_sample_out_ready),
    .io_sample_out_valid(forward_converter_io_sample_out_valid),
    .io_sample_out_bits_features_0(forward_converter_io_sample_out_bits_features_0),
    .io_sample_out_bits_features_1(forward_converter_io_sample_out_bits_features_1),
    .io_sample_out_bits_features_2(forward_converter_io_sample_out_bits_features_2),
    .io_sample_out_bits_features_3(forward_converter_io_sample_out_bits_features_3),
    .io_sample_out_bits_offset(forward_converter_io_sample_out_bits_offset),
    .io_sample_out_bits_shift(forward_converter_io_sample_out_bits_shift),
    .io_sample_out_bits_search_for_root(forward_converter_io_sample_out_bits_search_for_root),
    .io_sample_out_bits_tree_to_exec(forward_converter_io_sample_out_bits_tree_to_exec),
    .io_sample_out_bits_scores_0(forward_converter_io_sample_out_bits_scores_0),
    .io_sample_out_bits_scores_1(forward_converter_io_sample_out_bits_scores_1),
    .io_sample_out_bits_scores_2(forward_converter_io_sample_out_bits_scores_2),
    .io_sample_out_bits_scores_3(forward_converter_io_sample_out_bits_scores_3),
    .io_sample_out_bits_weights_0(forward_converter_io_sample_out_bits_weights_0),
    .io_sample_out_bits_weights_1(forward_converter_io_sample_out_bits_weights_1),
    .io_sample_out_bits_last(forward_converter_io_sample_out_bits_last)
  );
  DispatcherPE dispatcher ( // @[TreePEsWrapper.scala 62:28]
    .clock(dispatcher_clock),
    .reset(dispatcher_reset),
    .io_sample_in_ready(dispatcher_io_sample_in_ready),
    .io_sample_in_valid(dispatcher_io_sample_in_valid),
    .io_sample_in_bits_features_0(dispatcher_io_sample_in_bits_features_0),
    .io_sample_in_bits_features_1(dispatcher_io_sample_in_bits_features_1),
    .io_sample_in_bits_features_2(dispatcher_io_sample_in_bits_features_2),
    .io_sample_in_bits_features_3(dispatcher_io_sample_in_bits_features_3),
    .io_sample_in_bits_offset(dispatcher_io_sample_in_bits_offset),
    .io_sample_in_bits_shift(dispatcher_io_sample_in_bits_shift),
    .io_sample_in_bits_search_for_root(dispatcher_io_sample_in_bits_search_for_root),
    .io_sample_in_bits_tree_to_exec(dispatcher_io_sample_in_bits_tree_to_exec),
    .io_sample_in_bits_scores_0(dispatcher_io_sample_in_bits_scores_0),
    .io_sample_in_bits_scores_1(dispatcher_io_sample_in_bits_scores_1),
    .io_sample_in_bits_scores_2(dispatcher_io_sample_in_bits_scores_2),
    .io_sample_in_bits_scores_3(dispatcher_io_sample_in_bits_scores_3),
    .io_sample_in_bits_weights_0(dispatcher_io_sample_in_bits_weights_0),
    .io_sample_in_bits_weights_1(dispatcher_io_sample_in_bits_weights_1),
    .io_sample_in_bits_last(dispatcher_io_sample_in_bits_last),
    .io_samples_out_0_ready(dispatcher_io_samples_out_0_ready),
    .io_samples_out_0_valid(dispatcher_io_samples_out_0_valid),
    .io_samples_out_0_bits_features_0(dispatcher_io_samples_out_0_bits_features_0),
    .io_samples_out_0_bits_features_1(dispatcher_io_samples_out_0_bits_features_1),
    .io_samples_out_0_bits_features_2(dispatcher_io_samples_out_0_bits_features_2),
    .io_samples_out_0_bits_features_3(dispatcher_io_samples_out_0_bits_features_3),
    .io_samples_out_0_bits_offset(dispatcher_io_samples_out_0_bits_offset),
    .io_samples_out_0_bits_shift(dispatcher_io_samples_out_0_bits_shift),
    .io_samples_out_0_bits_search_for_root(dispatcher_io_samples_out_0_bits_search_for_root),
    .io_samples_out_0_bits_tree_to_exec(dispatcher_io_samples_out_0_bits_tree_to_exec),
    .io_samples_out_0_bits_scores_0(dispatcher_io_samples_out_0_bits_scores_0),
    .io_samples_out_0_bits_scores_1(dispatcher_io_samples_out_0_bits_scores_1),
    .io_samples_out_0_bits_scores_2(dispatcher_io_samples_out_0_bits_scores_2),
    .io_samples_out_0_bits_scores_3(dispatcher_io_samples_out_0_bits_scores_3),
    .io_samples_out_0_bits_weights_0(dispatcher_io_samples_out_0_bits_weights_0),
    .io_samples_out_0_bits_weights_1(dispatcher_io_samples_out_0_bits_weights_1),
    .io_samples_out_0_bits_last(dispatcher_io_samples_out_0_bits_last),
    .io_samples_out_1_valid(dispatcher_io_samples_out_1_valid),
    .io_samples_out_1_bits_features_0(dispatcher_io_samples_out_1_bits_features_0),
    .io_samples_out_1_bits_features_1(dispatcher_io_samples_out_1_bits_features_1),
    .io_samples_out_1_bits_features_2(dispatcher_io_samples_out_1_bits_features_2),
    .io_samples_out_1_bits_features_3(dispatcher_io_samples_out_1_bits_features_3),
    .io_samples_out_1_bits_offset(dispatcher_io_samples_out_1_bits_offset),
    .io_samples_out_1_bits_shift(dispatcher_io_samples_out_1_bits_shift),
    .io_samples_out_1_bits_search_for_root(dispatcher_io_samples_out_1_bits_search_for_root),
    .io_samples_out_1_bits_tree_to_exec(dispatcher_io_samples_out_1_bits_tree_to_exec),
    .io_samples_out_1_bits_scores_0(dispatcher_io_samples_out_1_bits_scores_0),
    .io_samples_out_1_bits_scores_1(dispatcher_io_samples_out_1_bits_scores_1),
    .io_samples_out_1_bits_scores_2(dispatcher_io_samples_out_1_bits_scores_2),
    .io_samples_out_1_bits_scores_3(dispatcher_io_samples_out_1_bits_scores_3),
    .io_samples_out_1_bits_weights_0(dispatcher_io_samples_out_1_bits_weights_0),
    .io_samples_out_1_bits_weights_1(dispatcher_io_samples_out_1_bits_weights_1),
    .io_samples_out_1_bits_last(dispatcher_io_samples_out_1_bits_last)
  );
  VoterPE voter ( // @[TreePEsWrapper.scala 63:23]
    .clock(voter_clock),
    .reset(voter_reset),
    .io_samples_in_0_ready(voter_io_samples_in_0_ready),
    .io_samples_in_0_valid(voter_io_samples_in_0_valid),
    .io_samples_in_0_bits_features_0(voter_io_samples_in_0_bits_features_0),
    .io_samples_in_0_bits_features_1(voter_io_samples_in_0_bits_features_1),
    .io_samples_in_0_bits_features_2(voter_io_samples_in_0_bits_features_2),
    .io_samples_in_0_bits_features_3(voter_io_samples_in_0_bits_features_3),
    .io_samples_in_0_bits_offset(voter_io_samples_in_0_bits_offset),
    .io_samples_in_0_bits_shift(voter_io_samples_in_0_bits_shift),
    .io_samples_in_0_bits_search_for_root(voter_io_samples_in_0_bits_search_for_root),
    .io_samples_in_0_bits_tree_to_exec(voter_io_samples_in_0_bits_tree_to_exec),
    .io_samples_in_0_bits_scores_0(voter_io_samples_in_0_bits_scores_0),
    .io_samples_in_0_bits_scores_1(voter_io_samples_in_0_bits_scores_1),
    .io_samples_in_0_bits_scores_2(voter_io_samples_in_0_bits_scores_2),
    .io_samples_in_0_bits_scores_3(voter_io_samples_in_0_bits_scores_3),
    .io_samples_in_0_bits_weights_0(voter_io_samples_in_0_bits_weights_0),
    .io_samples_in_0_bits_weights_1(voter_io_samples_in_0_bits_weights_1),
    .io_samples_in_0_bits_last(voter_io_samples_in_0_bits_last),
    .io_samples_in_1_ready(voter_io_samples_in_1_ready),
    .io_samples_in_1_valid(voter_io_samples_in_1_valid),
    .io_samples_in_1_bits_features_0(voter_io_samples_in_1_bits_features_0),
    .io_samples_in_1_bits_features_1(voter_io_samples_in_1_bits_features_1),
    .io_samples_in_1_bits_features_2(voter_io_samples_in_1_bits_features_2),
    .io_samples_in_1_bits_features_3(voter_io_samples_in_1_bits_features_3),
    .io_samples_in_1_bits_offset(voter_io_samples_in_1_bits_offset),
    .io_samples_in_1_bits_shift(voter_io_samples_in_1_bits_shift),
    .io_samples_in_1_bits_search_for_root(voter_io_samples_in_1_bits_search_for_root),
    .io_samples_in_1_bits_tree_to_exec(voter_io_samples_in_1_bits_tree_to_exec),
    .io_samples_in_1_bits_scores_0(voter_io_samples_in_1_bits_scores_0),
    .io_samples_in_1_bits_scores_1(voter_io_samples_in_1_bits_scores_1),
    .io_samples_in_1_bits_scores_2(voter_io_samples_in_1_bits_scores_2),
    .io_samples_in_1_bits_scores_3(voter_io_samples_in_1_bits_scores_3),
    .io_samples_in_1_bits_weights_0(voter_io_samples_in_1_bits_weights_0),
    .io_samples_in_1_bits_weights_1(voter_io_samples_in_1_bits_weights_1),
    .io_samples_in_1_bits_last(voter_io_samples_in_1_bits_last),
    .io_sample_out_ready(voter_io_sample_out_ready),
    .io_sample_out_valid(voter_io_sample_out_valid),
    .io_sample_out_bits_features_0(voter_io_sample_out_bits_features_0),
    .io_sample_out_bits_features_1(voter_io_sample_out_bits_features_1),
    .io_sample_out_bits_features_2(voter_io_sample_out_bits_features_2),
    .io_sample_out_bits_features_3(voter_io_sample_out_bits_features_3),
    .io_sample_out_bits_offset(voter_io_sample_out_bits_offset),
    .io_sample_out_bits_shift(voter_io_sample_out_bits_shift),
    .io_sample_out_bits_search_for_root(voter_io_sample_out_bits_search_for_root),
    .io_sample_out_bits_tree_to_exec(voter_io_sample_out_bits_tree_to_exec),
    .io_sample_out_bits_scores_0(voter_io_sample_out_bits_scores_0),
    .io_sample_out_bits_scores_1(voter_io_sample_out_bits_scores_1),
    .io_sample_out_bits_scores_2(voter_io_sample_out_bits_scores_2),
    .io_sample_out_bits_scores_3(voter_io_sample_out_bits_scores_3),
    .io_sample_out_bits_weights_0(voter_io_sample_out_bits_weights_0),
    .io_sample_out_bits_weights_1(voter_io_sample_out_bits_weights_1),
    .io_sample_out_bits_last(voter_io_sample_out_bits_last)
  );
  BackwardConverter backward_converter ( // @[TreePEsWrapper.scala 64:36]
    .clock(backward_converter_clock),
    .reset(backward_converter_reset),
    .io_sample_in_ready(backward_converter_io_sample_in_ready),
    .io_sample_in_valid(backward_converter_io_sample_in_valid),
    .io_sample_in_bits_features_0(backward_converter_io_sample_in_bits_features_0),
    .io_sample_in_bits_features_1(backward_converter_io_sample_in_bits_features_1),
    .io_sample_in_bits_features_2(backward_converter_io_sample_in_bits_features_2),
    .io_sample_in_bits_features_3(backward_converter_io_sample_in_bits_features_3),
    .io_sample_in_bits_offset(backward_converter_io_sample_in_bits_offset),
    .io_sample_in_bits_shift(backward_converter_io_sample_in_bits_shift),
    .io_sample_in_bits_search_for_root(backward_converter_io_sample_in_bits_search_for_root),
    .io_sample_in_bits_tree_to_exec(backward_converter_io_sample_in_bits_tree_to_exec),
    .io_sample_in_bits_scores_0(backward_converter_io_sample_in_bits_scores_0),
    .io_sample_in_bits_scores_1(backward_converter_io_sample_in_bits_scores_1),
    .io_sample_in_bits_scores_2(backward_converter_io_sample_in_bits_scores_2),
    .io_sample_in_bits_scores_3(backward_converter_io_sample_in_bits_scores_3),
    .io_sample_in_bits_weights_0(backward_converter_io_sample_in_bits_weights_0),
    .io_sample_in_bits_weights_1(backward_converter_io_sample_in_bits_weights_1),
    .io_sample_in_bits_last(backward_converter_io_sample_in_bits_last),
    .io_sample_out_TDATA(backward_converter_io_sample_out_TDATA),
    .io_sample_out_TLAST(backward_converter_io_sample_out_TLAST),
    .io_sample_out_TREADY(backward_converter_io_sample_out_TREADY),
    .io_sample_out_TVALID(backward_converter_io_sample_out_TVALID)
  );
  TreePEwithBRAM pes_0 ( // @[TreePEsWrapper.scala 70:65]
    .clock(pes_0_clock),
    .reset(pes_0_reset),
    .pe_io_sample_in_ready(pes_0_pe_io_sample_in_ready),
    .pe_io_sample_in_valid(pes_0_pe_io_sample_in_valid),
    .pe_io_sample_in_bits_features_0(pes_0_pe_io_sample_in_bits_features_0),
    .pe_io_sample_in_bits_features_1(pes_0_pe_io_sample_in_bits_features_1),
    .pe_io_sample_in_bits_features_2(pes_0_pe_io_sample_in_bits_features_2),
    .pe_io_sample_in_bits_features_3(pes_0_pe_io_sample_in_bits_features_3),
    .pe_io_sample_in_bits_offset(pes_0_pe_io_sample_in_bits_offset),
    .pe_io_sample_in_bits_shift(pes_0_pe_io_sample_in_bits_shift),
    .pe_io_sample_in_bits_search_for_root(pes_0_pe_io_sample_in_bits_search_for_root),
    .pe_io_sample_in_bits_tree_to_exec(pes_0_pe_io_sample_in_bits_tree_to_exec),
    .pe_io_sample_in_bits_scores_0(pes_0_pe_io_sample_in_bits_scores_0),
    .pe_io_sample_in_bits_scores_1(pes_0_pe_io_sample_in_bits_scores_1),
    .pe_io_sample_in_bits_scores_2(pes_0_pe_io_sample_in_bits_scores_2),
    .pe_io_sample_in_bits_scores_3(pes_0_pe_io_sample_in_bits_scores_3),
    .pe_io_sample_in_bits_weights_0(pes_0_pe_io_sample_in_bits_weights_0),
    .pe_io_sample_in_bits_weights_1(pes_0_pe_io_sample_in_bits_weights_1),
    .pe_io_sample_in_bits_last(pes_0_pe_io_sample_in_bits_last),
    .pe_io_mem_addr_1(pes_0_pe_io_mem_addr_1),
    .pe_io_mem_dataOut_1(pes_0_pe_io_mem_dataOut_1),
    .pe_io_sample_out_ready(pes_0_pe_io_sample_out_ready),
    .pe_io_sample_out_valid(pes_0_pe_io_sample_out_valid),
    .pe_io_sample_out_bits_features_0(pes_0_pe_io_sample_out_bits_features_0),
    .pe_io_sample_out_bits_features_1(pes_0_pe_io_sample_out_bits_features_1),
    .pe_io_sample_out_bits_features_2(pes_0_pe_io_sample_out_bits_features_2),
    .pe_io_sample_out_bits_features_3(pes_0_pe_io_sample_out_bits_features_3),
    .pe_io_sample_out_bits_offset(pes_0_pe_io_sample_out_bits_offset),
    .pe_io_sample_out_bits_search_for_root(pes_0_pe_io_sample_out_bits_search_for_root),
    .pe_io_sample_out_bits_tree_to_exec(pes_0_pe_io_sample_out_bits_tree_to_exec),
    .pe_io_sample_out_bits_scores_0(pes_0_pe_io_sample_out_bits_scores_0),
    .pe_io_sample_out_bits_scores_1(pes_0_pe_io_sample_out_bits_scores_1),
    .pe_io_sample_out_bits_scores_2(pes_0_pe_io_sample_out_bits_scores_2),
    .pe_io_sample_out_bits_scores_3(pes_0_pe_io_sample_out_bits_scores_3),
    .pe_io_sample_out_bits_weights_0(pes_0_pe_io_sample_out_bits_weights_0),
    .pe_io_sample_out_bits_weights_1(pes_0_pe_io_sample_out_bits_weights_1),
    .pe_io_sample_out_bits_last(pes_0_pe_io_sample_out_bits_last)
  );
  TreePEwithBRAM_1 pes_1 ( // @[TreePEsWrapper.scala 70:65]
    .clock(pes_1_clock),
    .reset(pes_1_reset),
    .pe_io_sample_in_ready(pes_1_pe_io_sample_in_ready),
    .pe_io_sample_in_valid(pes_1_pe_io_sample_in_valid),
    .pe_io_sample_in_bits_features_0(pes_1_pe_io_sample_in_bits_features_0),
    .pe_io_sample_in_bits_features_1(pes_1_pe_io_sample_in_bits_features_1),
    .pe_io_sample_in_bits_features_2(pes_1_pe_io_sample_in_bits_features_2),
    .pe_io_sample_in_bits_features_3(pes_1_pe_io_sample_in_bits_features_3),
    .pe_io_sample_in_bits_offset(pes_1_pe_io_sample_in_bits_offset),
    .pe_io_sample_in_bits_search_for_root(pes_1_pe_io_sample_in_bits_search_for_root),
    .pe_io_sample_in_bits_tree_to_exec(pes_1_pe_io_sample_in_bits_tree_to_exec),
    .pe_io_sample_in_bits_scores_0(pes_1_pe_io_sample_in_bits_scores_0),
    .pe_io_sample_in_bits_scores_1(pes_1_pe_io_sample_in_bits_scores_1),
    .pe_io_sample_in_bits_scores_2(pes_1_pe_io_sample_in_bits_scores_2),
    .pe_io_sample_in_bits_scores_3(pes_1_pe_io_sample_in_bits_scores_3),
    .pe_io_sample_in_bits_weights_0(pes_1_pe_io_sample_in_bits_weights_0),
    .pe_io_sample_in_bits_weights_1(pes_1_pe_io_sample_in_bits_weights_1),
    .pe_io_sample_in_bits_last(pes_1_pe_io_sample_in_bits_last),
    .pe_io_mem_addr_1(pes_1_pe_io_mem_addr_1),
    .pe_io_mem_dataOut_1(pes_1_pe_io_mem_dataOut_1),
    .pe_io_sample_out_ready(pes_1_pe_io_sample_out_ready),
    .pe_io_sample_out_valid(pes_1_pe_io_sample_out_valid),
    .pe_io_sample_out_bits_features_0(pes_1_pe_io_sample_out_bits_features_0),
    .pe_io_sample_out_bits_features_1(pes_1_pe_io_sample_out_bits_features_1),
    .pe_io_sample_out_bits_features_2(pes_1_pe_io_sample_out_bits_features_2),
    .pe_io_sample_out_bits_features_3(pes_1_pe_io_sample_out_bits_features_3),
    .pe_io_sample_out_bits_offset(pes_1_pe_io_sample_out_bits_offset),
    .pe_io_sample_out_bits_search_for_root(pes_1_pe_io_sample_out_bits_search_for_root),
    .pe_io_sample_out_bits_tree_to_exec(pes_1_pe_io_sample_out_bits_tree_to_exec),
    .pe_io_sample_out_bits_scores_0(pes_1_pe_io_sample_out_bits_scores_0),
    .pe_io_sample_out_bits_scores_1(pes_1_pe_io_sample_out_bits_scores_1),
    .pe_io_sample_out_bits_scores_2(pes_1_pe_io_sample_out_bits_scores_2),
    .pe_io_sample_out_bits_scores_3(pes_1_pe_io_sample_out_bits_scores_3),
    .pe_io_sample_out_bits_weights_0(pes_1_pe_io_sample_out_bits_weights_0),
    .pe_io_sample_out_bits_weights_1(pes_1_pe_io_sample_out_bits_weights_1),
    .pe_io_sample_out_bits_dest(pes_1_pe_io_sample_out_bits_dest),
    .pe_io_sample_out_bits_last(pes_1_pe_io_sample_out_bits_last)
  );
  BRAMLikeMem1 brams_0 ( // @[TreePEsWrapper.scala 71:67]
    .clock(brams_0_clock),
    .io_addr_1(brams_0_io_addr_1),
    .io_dataOut_1(brams_0_io_dataOut_1),
    .io_enable_2(brams_0_io_enable_2),
    .io_write_2(brams_0_io_write_2),
    .io_addr_2(brams_0_io_addr_2),
    .io_dataIn_2(brams_0_io_dataIn_2),
    .io_dataOut_2(brams_0_io_dataOut_2)
  );
  BRAMLikeMem1 brams_1 ( // @[TreePEsWrapper.scala 71:67]
    .clock(brams_1_clock),
    .io_addr_1(brams_1_io_addr_1),
    .io_dataOut_1(brams_1_io_dataOut_1),
    .io_enable_2(brams_1_io_enable_2),
    .io_write_2(brams_1_io_write_2),
    .io_addr_2(brams_1_io_addr_2),
    .io_dataIn_2(brams_1_io_dataIn_2),
    .io_dataOut_2(brams_1_io_dataOut_2)
  );
  FirstInterconnectPE first_interconnects_0 ( // @[TreePEsWrapper.scala 72:40]
    .clock(first_interconnects_0_clock),
    .reset(first_interconnects_0_reset),
    .io_sample_entering_ready(first_interconnects_0_io_sample_entering_ready),
    .io_sample_entering_valid(first_interconnects_0_io_sample_entering_valid),
    .io_sample_entering_bits_features_0(first_interconnects_0_io_sample_entering_bits_features_0),
    .io_sample_entering_bits_features_1(first_interconnects_0_io_sample_entering_bits_features_1),
    .io_sample_entering_bits_features_2(first_interconnects_0_io_sample_entering_bits_features_2),
    .io_sample_entering_bits_features_3(first_interconnects_0_io_sample_entering_bits_features_3),
    .io_sample_entering_bits_offset(first_interconnects_0_io_sample_entering_bits_offset),
    .io_sample_entering_bits_shift(first_interconnects_0_io_sample_entering_bits_shift),
    .io_sample_entering_bits_search_for_root(first_interconnects_0_io_sample_entering_bits_search_for_root),
    .io_sample_entering_bits_tree_to_exec(first_interconnects_0_io_sample_entering_bits_tree_to_exec),
    .io_sample_entering_bits_scores_0(first_interconnects_0_io_sample_entering_bits_scores_0),
    .io_sample_entering_bits_scores_1(first_interconnects_0_io_sample_entering_bits_scores_1),
    .io_sample_entering_bits_scores_2(first_interconnects_0_io_sample_entering_bits_scores_2),
    .io_sample_entering_bits_scores_3(first_interconnects_0_io_sample_entering_bits_scores_3),
    .io_sample_entering_bits_weights_0(first_interconnects_0_io_sample_entering_bits_weights_0),
    .io_sample_entering_bits_weights_1(first_interconnects_0_io_sample_entering_bits_weights_1),
    .io_sample_entering_bits_last(first_interconnects_0_io_sample_entering_bits_last),
    .io_sample_looping_ready(first_interconnects_0_io_sample_looping_ready),
    .io_sample_looping_valid(first_interconnects_0_io_sample_looping_valid),
    .io_sample_looping_bits_features_0(first_interconnects_0_io_sample_looping_bits_features_0),
    .io_sample_looping_bits_features_1(first_interconnects_0_io_sample_looping_bits_features_1),
    .io_sample_looping_bits_features_2(first_interconnects_0_io_sample_looping_bits_features_2),
    .io_sample_looping_bits_features_3(first_interconnects_0_io_sample_looping_bits_features_3),
    .io_sample_looping_bits_offset(first_interconnects_0_io_sample_looping_bits_offset),
    .io_sample_looping_bits_shift(first_interconnects_0_io_sample_looping_bits_shift),
    .io_sample_looping_bits_search_for_root(first_interconnects_0_io_sample_looping_bits_search_for_root),
    .io_sample_looping_bits_tree_to_exec(first_interconnects_0_io_sample_looping_bits_tree_to_exec),
    .io_sample_looping_bits_scores_0(first_interconnects_0_io_sample_looping_bits_scores_0),
    .io_sample_looping_bits_scores_1(first_interconnects_0_io_sample_looping_bits_scores_1),
    .io_sample_looping_bits_scores_2(first_interconnects_0_io_sample_looping_bits_scores_2),
    .io_sample_looping_bits_scores_3(first_interconnects_0_io_sample_looping_bits_scores_3),
    .io_sample_looping_bits_weights_0(first_interconnects_0_io_sample_looping_bits_weights_0),
    .io_sample_looping_bits_weights_1(first_interconnects_0_io_sample_looping_bits_weights_1),
    .io_sample_looping_bits_last(first_interconnects_0_io_sample_looping_bits_last),
    .io_sample_out_ready(first_interconnects_0_io_sample_out_ready),
    .io_sample_out_valid(first_interconnects_0_io_sample_out_valid),
    .io_sample_out_bits_features_0(first_interconnects_0_io_sample_out_bits_features_0),
    .io_sample_out_bits_features_1(first_interconnects_0_io_sample_out_bits_features_1),
    .io_sample_out_bits_features_2(first_interconnects_0_io_sample_out_bits_features_2),
    .io_sample_out_bits_features_3(first_interconnects_0_io_sample_out_bits_features_3),
    .io_sample_out_bits_offset(first_interconnects_0_io_sample_out_bits_offset),
    .io_sample_out_bits_shift(first_interconnects_0_io_sample_out_bits_shift),
    .io_sample_out_bits_search_for_root(first_interconnects_0_io_sample_out_bits_search_for_root),
    .io_sample_out_bits_tree_to_exec(first_interconnects_0_io_sample_out_bits_tree_to_exec),
    .io_sample_out_bits_scores_0(first_interconnects_0_io_sample_out_bits_scores_0),
    .io_sample_out_bits_scores_1(first_interconnects_0_io_sample_out_bits_scores_1),
    .io_sample_out_bits_scores_2(first_interconnects_0_io_sample_out_bits_scores_2),
    .io_sample_out_bits_scores_3(first_interconnects_0_io_sample_out_bits_scores_3),
    .io_sample_out_bits_weights_0(first_interconnects_0_io_sample_out_bits_weights_0),
    .io_sample_out_bits_weights_1(first_interconnects_0_io_sample_out_bits_weights_1),
    .io_sample_out_bits_last(first_interconnects_0_io_sample_out_bits_last)
  );
  LastInterconnectPE last_interconnect ( // @[TreePEsWrapper.scala 73:39]
    .clock(last_interconnect_clock),
    .reset(last_interconnect_reset),
    .io_sample_in_ready(last_interconnect_io_sample_in_ready),
    .io_sample_in_valid(last_interconnect_io_sample_in_valid),
    .io_sample_in_bits_features_0(last_interconnect_io_sample_in_bits_features_0),
    .io_sample_in_bits_features_1(last_interconnect_io_sample_in_bits_features_1),
    .io_sample_in_bits_features_2(last_interconnect_io_sample_in_bits_features_2),
    .io_sample_in_bits_features_3(last_interconnect_io_sample_in_bits_features_3),
    .io_sample_in_bits_offset(last_interconnect_io_sample_in_bits_offset),
    .io_sample_in_bits_search_for_root(last_interconnect_io_sample_in_bits_search_for_root),
    .io_sample_in_bits_tree_to_exec(last_interconnect_io_sample_in_bits_tree_to_exec),
    .io_sample_in_bits_scores_0(last_interconnect_io_sample_in_bits_scores_0),
    .io_sample_in_bits_scores_1(last_interconnect_io_sample_in_bits_scores_1),
    .io_sample_in_bits_scores_2(last_interconnect_io_sample_in_bits_scores_2),
    .io_sample_in_bits_scores_3(last_interconnect_io_sample_in_bits_scores_3),
    .io_sample_in_bits_weights_0(last_interconnect_io_sample_in_bits_weights_0),
    .io_sample_in_bits_weights_1(last_interconnect_io_sample_in_bits_weights_1),
    .io_sample_in_bits_dest(last_interconnect_io_sample_in_bits_dest),
    .io_sample_in_bits_last(last_interconnect_io_sample_in_bits_last),
    .io_sample_looping_ready(last_interconnect_io_sample_looping_ready),
    .io_sample_looping_valid(last_interconnect_io_sample_looping_valid),
    .io_sample_looping_bits_features_0(last_interconnect_io_sample_looping_bits_features_0),
    .io_sample_looping_bits_features_1(last_interconnect_io_sample_looping_bits_features_1),
    .io_sample_looping_bits_features_2(last_interconnect_io_sample_looping_bits_features_2),
    .io_sample_looping_bits_features_3(last_interconnect_io_sample_looping_bits_features_3),
    .io_sample_looping_bits_offset(last_interconnect_io_sample_looping_bits_offset),
    .io_sample_looping_bits_shift(last_interconnect_io_sample_looping_bits_shift),
    .io_sample_looping_bits_search_for_root(last_interconnect_io_sample_looping_bits_search_for_root),
    .io_sample_looping_bits_tree_to_exec(last_interconnect_io_sample_looping_bits_tree_to_exec),
    .io_sample_looping_bits_scores_0(last_interconnect_io_sample_looping_bits_scores_0),
    .io_sample_looping_bits_scores_1(last_interconnect_io_sample_looping_bits_scores_1),
    .io_sample_looping_bits_scores_2(last_interconnect_io_sample_looping_bits_scores_2),
    .io_sample_looping_bits_scores_3(last_interconnect_io_sample_looping_bits_scores_3),
    .io_sample_looping_bits_weights_0(last_interconnect_io_sample_looping_bits_weights_0),
    .io_sample_looping_bits_weights_1(last_interconnect_io_sample_looping_bits_weights_1),
    .io_sample_looping_bits_last(last_interconnect_io_sample_looping_bits_last),
    .io_sample_leaving_ready(last_interconnect_io_sample_leaving_ready),
    .io_sample_leaving_valid(last_interconnect_io_sample_leaving_valid),
    .io_sample_leaving_bits_features_0(last_interconnect_io_sample_leaving_bits_features_0),
    .io_sample_leaving_bits_features_1(last_interconnect_io_sample_leaving_bits_features_1),
    .io_sample_leaving_bits_features_2(last_interconnect_io_sample_leaving_bits_features_2),
    .io_sample_leaving_bits_features_3(last_interconnect_io_sample_leaving_bits_features_3),
    .io_sample_leaving_bits_offset(last_interconnect_io_sample_leaving_bits_offset),
    .io_sample_leaving_bits_shift(last_interconnect_io_sample_leaving_bits_shift),
    .io_sample_leaving_bits_search_for_root(last_interconnect_io_sample_leaving_bits_search_for_root),
    .io_sample_leaving_bits_tree_to_exec(last_interconnect_io_sample_leaving_bits_tree_to_exec),
    .io_sample_leaving_bits_scores_0(last_interconnect_io_sample_leaving_bits_scores_0),
    .io_sample_leaving_bits_scores_1(last_interconnect_io_sample_leaving_bits_scores_1),
    .io_sample_leaving_bits_scores_2(last_interconnect_io_sample_leaving_bits_scores_2),
    .io_sample_leaving_bits_scores_3(last_interconnect_io_sample_leaving_bits_scores_3),
    .io_sample_leaving_bits_weights_0(last_interconnect_io_sample_leaving_bits_weights_0),
    .io_sample_leaving_bits_weights_1(last_interconnect_io_sample_leaving_bits_weights_1),
    .io_sample_leaving_bits_last(last_interconnect_io_sample_leaving_bits_last)
  );
  IncrementTreePE increment ( // @[TreePEsWrapper.scala 74:31]
    .clock(increment_clock),
    .reset(increment_reset),
    .io_sample_in_ready(increment_io_sample_in_ready),
    .io_sample_in_valid(increment_io_sample_in_valid),
    .io_sample_in_bits_features_0(increment_io_sample_in_bits_features_0),
    .io_sample_in_bits_features_1(increment_io_sample_in_bits_features_1),
    .io_sample_in_bits_features_2(increment_io_sample_in_bits_features_2),
    .io_sample_in_bits_features_3(increment_io_sample_in_bits_features_3),
    .io_sample_in_bits_offset(increment_io_sample_in_bits_offset),
    .io_sample_in_bits_shift(increment_io_sample_in_bits_shift),
    .io_sample_in_bits_search_for_root(increment_io_sample_in_bits_search_for_root),
    .io_sample_in_bits_tree_to_exec(increment_io_sample_in_bits_tree_to_exec),
    .io_sample_in_bits_scores_0(increment_io_sample_in_bits_scores_0),
    .io_sample_in_bits_scores_1(increment_io_sample_in_bits_scores_1),
    .io_sample_in_bits_scores_2(increment_io_sample_in_bits_scores_2),
    .io_sample_in_bits_scores_3(increment_io_sample_in_bits_scores_3),
    .io_sample_in_bits_weights_0(increment_io_sample_in_bits_weights_0),
    .io_sample_in_bits_weights_1(increment_io_sample_in_bits_weights_1),
    .io_sample_in_bits_last(increment_io_sample_in_bits_last),
    .io_sample_out_ready(increment_io_sample_out_ready),
    .io_sample_out_valid(increment_io_sample_out_valid),
    .io_sample_out_bits_features_0(increment_io_sample_out_bits_features_0),
    .io_sample_out_bits_features_1(increment_io_sample_out_bits_features_1),
    .io_sample_out_bits_features_2(increment_io_sample_out_bits_features_2),
    .io_sample_out_bits_features_3(increment_io_sample_out_bits_features_3),
    .io_sample_out_bits_offset(increment_io_sample_out_bits_offset),
    .io_sample_out_bits_shift(increment_io_sample_out_bits_shift),
    .io_sample_out_bits_search_for_root(increment_io_sample_out_bits_search_for_root),
    .io_sample_out_bits_tree_to_exec(increment_io_sample_out_bits_tree_to_exec),
    .io_sample_out_bits_scores_0(increment_io_sample_out_bits_scores_0),
    .io_sample_out_bits_scores_1(increment_io_sample_out_bits_scores_1),
    .io_sample_out_bits_scores_2(increment_io_sample_out_bits_scores_2),
    .io_sample_out_bits_scores_3(increment_io_sample_out_bits_scores_3),
    .io_sample_out_bits_weights_0(increment_io_sample_out_bits_weights_0),
    .io_sample_out_bits_weights_1(increment_io_sample_out_bits_weights_1),
    .io_sample_out_bits_last(increment_io_sample_out_bits_last)
  );
  TreePEwithBRAM pes_0_1 ( // @[TreePEsWrapper.scala 70:65]
    .clock(pes_0_1_clock),
    .reset(pes_0_1_reset),
    .pe_io_sample_in_ready(pes_0_1_pe_io_sample_in_ready),
    .pe_io_sample_in_valid(pes_0_1_pe_io_sample_in_valid),
    .pe_io_sample_in_bits_features_0(pes_0_1_pe_io_sample_in_bits_features_0),
    .pe_io_sample_in_bits_features_1(pes_0_1_pe_io_sample_in_bits_features_1),
    .pe_io_sample_in_bits_features_2(pes_0_1_pe_io_sample_in_bits_features_2),
    .pe_io_sample_in_bits_features_3(pes_0_1_pe_io_sample_in_bits_features_3),
    .pe_io_sample_in_bits_offset(pes_0_1_pe_io_sample_in_bits_offset),
    .pe_io_sample_in_bits_shift(pes_0_1_pe_io_sample_in_bits_shift),
    .pe_io_sample_in_bits_search_for_root(pes_0_1_pe_io_sample_in_bits_search_for_root),
    .pe_io_sample_in_bits_tree_to_exec(pes_0_1_pe_io_sample_in_bits_tree_to_exec),
    .pe_io_sample_in_bits_scores_0(pes_0_1_pe_io_sample_in_bits_scores_0),
    .pe_io_sample_in_bits_scores_1(pes_0_1_pe_io_sample_in_bits_scores_1),
    .pe_io_sample_in_bits_scores_2(pes_0_1_pe_io_sample_in_bits_scores_2),
    .pe_io_sample_in_bits_scores_3(pes_0_1_pe_io_sample_in_bits_scores_3),
    .pe_io_sample_in_bits_weights_0(pes_0_1_pe_io_sample_in_bits_weights_0),
    .pe_io_sample_in_bits_weights_1(pes_0_1_pe_io_sample_in_bits_weights_1),
    .pe_io_sample_in_bits_last(pes_0_1_pe_io_sample_in_bits_last),
    .pe_io_mem_addr_1(pes_0_1_pe_io_mem_addr_1),
    .pe_io_mem_dataOut_1(pes_0_1_pe_io_mem_dataOut_1),
    .pe_io_sample_out_ready(pes_0_1_pe_io_sample_out_ready),
    .pe_io_sample_out_valid(pes_0_1_pe_io_sample_out_valid),
    .pe_io_sample_out_bits_features_0(pes_0_1_pe_io_sample_out_bits_features_0),
    .pe_io_sample_out_bits_features_1(pes_0_1_pe_io_sample_out_bits_features_1),
    .pe_io_sample_out_bits_features_2(pes_0_1_pe_io_sample_out_bits_features_2),
    .pe_io_sample_out_bits_features_3(pes_0_1_pe_io_sample_out_bits_features_3),
    .pe_io_sample_out_bits_offset(pes_0_1_pe_io_sample_out_bits_offset),
    .pe_io_sample_out_bits_search_for_root(pes_0_1_pe_io_sample_out_bits_search_for_root),
    .pe_io_sample_out_bits_tree_to_exec(pes_0_1_pe_io_sample_out_bits_tree_to_exec),
    .pe_io_sample_out_bits_scores_0(pes_0_1_pe_io_sample_out_bits_scores_0),
    .pe_io_sample_out_bits_scores_1(pes_0_1_pe_io_sample_out_bits_scores_1),
    .pe_io_sample_out_bits_scores_2(pes_0_1_pe_io_sample_out_bits_scores_2),
    .pe_io_sample_out_bits_scores_3(pes_0_1_pe_io_sample_out_bits_scores_3),
    .pe_io_sample_out_bits_weights_0(pes_0_1_pe_io_sample_out_bits_weights_0),
    .pe_io_sample_out_bits_weights_1(pes_0_1_pe_io_sample_out_bits_weights_1),
    .pe_io_sample_out_bits_last(pes_0_1_pe_io_sample_out_bits_last)
  );
  TreePEwithBRAM_1 pes_1_1 ( // @[TreePEsWrapper.scala 70:65]
    .clock(pes_1_1_clock),
    .reset(pes_1_1_reset),
    .pe_io_sample_in_ready(pes_1_1_pe_io_sample_in_ready),
    .pe_io_sample_in_valid(pes_1_1_pe_io_sample_in_valid),
    .pe_io_sample_in_bits_features_0(pes_1_1_pe_io_sample_in_bits_features_0),
    .pe_io_sample_in_bits_features_1(pes_1_1_pe_io_sample_in_bits_features_1),
    .pe_io_sample_in_bits_features_2(pes_1_1_pe_io_sample_in_bits_features_2),
    .pe_io_sample_in_bits_features_3(pes_1_1_pe_io_sample_in_bits_features_3),
    .pe_io_sample_in_bits_offset(pes_1_1_pe_io_sample_in_bits_offset),
    .pe_io_sample_in_bits_search_for_root(pes_1_1_pe_io_sample_in_bits_search_for_root),
    .pe_io_sample_in_bits_tree_to_exec(pes_1_1_pe_io_sample_in_bits_tree_to_exec),
    .pe_io_sample_in_bits_scores_0(pes_1_1_pe_io_sample_in_bits_scores_0),
    .pe_io_sample_in_bits_scores_1(pes_1_1_pe_io_sample_in_bits_scores_1),
    .pe_io_sample_in_bits_scores_2(pes_1_1_pe_io_sample_in_bits_scores_2),
    .pe_io_sample_in_bits_scores_3(pes_1_1_pe_io_sample_in_bits_scores_3),
    .pe_io_sample_in_bits_weights_0(pes_1_1_pe_io_sample_in_bits_weights_0),
    .pe_io_sample_in_bits_weights_1(pes_1_1_pe_io_sample_in_bits_weights_1),
    .pe_io_sample_in_bits_last(pes_1_1_pe_io_sample_in_bits_last),
    .pe_io_mem_addr_1(pes_1_1_pe_io_mem_addr_1),
    .pe_io_mem_dataOut_1(pes_1_1_pe_io_mem_dataOut_1),
    .pe_io_sample_out_ready(pes_1_1_pe_io_sample_out_ready),
    .pe_io_sample_out_valid(pes_1_1_pe_io_sample_out_valid),
    .pe_io_sample_out_bits_features_0(pes_1_1_pe_io_sample_out_bits_features_0),
    .pe_io_sample_out_bits_features_1(pes_1_1_pe_io_sample_out_bits_features_1),
    .pe_io_sample_out_bits_features_2(pes_1_1_pe_io_sample_out_bits_features_2),
    .pe_io_sample_out_bits_features_3(pes_1_1_pe_io_sample_out_bits_features_3),
    .pe_io_sample_out_bits_offset(pes_1_1_pe_io_sample_out_bits_offset),
    .pe_io_sample_out_bits_search_for_root(pes_1_1_pe_io_sample_out_bits_search_for_root),
    .pe_io_sample_out_bits_tree_to_exec(pes_1_1_pe_io_sample_out_bits_tree_to_exec),
    .pe_io_sample_out_bits_scores_0(pes_1_1_pe_io_sample_out_bits_scores_0),
    .pe_io_sample_out_bits_scores_1(pes_1_1_pe_io_sample_out_bits_scores_1),
    .pe_io_sample_out_bits_scores_2(pes_1_1_pe_io_sample_out_bits_scores_2),
    .pe_io_sample_out_bits_scores_3(pes_1_1_pe_io_sample_out_bits_scores_3),
    .pe_io_sample_out_bits_weights_0(pes_1_1_pe_io_sample_out_bits_weights_0),
    .pe_io_sample_out_bits_weights_1(pes_1_1_pe_io_sample_out_bits_weights_1),
    .pe_io_sample_out_bits_dest(pes_1_1_pe_io_sample_out_bits_dest),
    .pe_io_sample_out_bits_last(pes_1_1_pe_io_sample_out_bits_last)
  );
  BRAMLikeMem1 brams_0_1 ( // @[TreePEsWrapper.scala 71:67]
    .clock(brams_0_1_clock),
    .io_addr_1(brams_0_1_io_addr_1),
    .io_dataOut_1(brams_0_1_io_dataOut_1),
    .io_enable_2(brams_0_1_io_enable_2),
    .io_write_2(brams_0_1_io_write_2),
    .io_addr_2(brams_0_1_io_addr_2),
    .io_dataIn_2(brams_0_1_io_dataIn_2),
    .io_dataOut_2(brams_0_1_io_dataOut_2)
  );
  BRAMLikeMem1 brams_1_1 ( // @[TreePEsWrapper.scala 71:67]
    .clock(brams_1_1_clock),
    .io_addr_1(brams_1_1_io_addr_1),
    .io_dataOut_1(brams_1_1_io_dataOut_1),
    .io_enable_2(brams_1_1_io_enable_2),
    .io_write_2(brams_1_1_io_write_2),
    .io_addr_2(brams_1_1_io_addr_2),
    .io_dataIn_2(brams_1_1_io_dataIn_2),
    .io_dataOut_2(brams_1_1_io_dataOut_2)
  );
  FirstInterconnectPE first_interconnects_1 ( // @[TreePEsWrapper.scala 72:40]
    .clock(first_interconnects_1_clock),
    .reset(first_interconnects_1_reset),
    .io_sample_entering_ready(first_interconnects_1_io_sample_entering_ready),
    .io_sample_entering_valid(first_interconnects_1_io_sample_entering_valid),
    .io_sample_entering_bits_features_0(first_interconnects_1_io_sample_entering_bits_features_0),
    .io_sample_entering_bits_features_1(first_interconnects_1_io_sample_entering_bits_features_1),
    .io_sample_entering_bits_features_2(first_interconnects_1_io_sample_entering_bits_features_2),
    .io_sample_entering_bits_features_3(first_interconnects_1_io_sample_entering_bits_features_3),
    .io_sample_entering_bits_offset(first_interconnects_1_io_sample_entering_bits_offset),
    .io_sample_entering_bits_shift(first_interconnects_1_io_sample_entering_bits_shift),
    .io_sample_entering_bits_search_for_root(first_interconnects_1_io_sample_entering_bits_search_for_root),
    .io_sample_entering_bits_tree_to_exec(first_interconnects_1_io_sample_entering_bits_tree_to_exec),
    .io_sample_entering_bits_scores_0(first_interconnects_1_io_sample_entering_bits_scores_0),
    .io_sample_entering_bits_scores_1(first_interconnects_1_io_sample_entering_bits_scores_1),
    .io_sample_entering_bits_scores_2(first_interconnects_1_io_sample_entering_bits_scores_2),
    .io_sample_entering_bits_scores_3(first_interconnects_1_io_sample_entering_bits_scores_3),
    .io_sample_entering_bits_weights_0(first_interconnects_1_io_sample_entering_bits_weights_0),
    .io_sample_entering_bits_weights_1(first_interconnects_1_io_sample_entering_bits_weights_1),
    .io_sample_entering_bits_last(first_interconnects_1_io_sample_entering_bits_last),
    .io_sample_looping_ready(first_interconnects_1_io_sample_looping_ready),
    .io_sample_looping_valid(first_interconnects_1_io_sample_looping_valid),
    .io_sample_looping_bits_features_0(first_interconnects_1_io_sample_looping_bits_features_0),
    .io_sample_looping_bits_features_1(first_interconnects_1_io_sample_looping_bits_features_1),
    .io_sample_looping_bits_features_2(first_interconnects_1_io_sample_looping_bits_features_2),
    .io_sample_looping_bits_features_3(first_interconnects_1_io_sample_looping_bits_features_3),
    .io_sample_looping_bits_offset(first_interconnects_1_io_sample_looping_bits_offset),
    .io_sample_looping_bits_shift(first_interconnects_1_io_sample_looping_bits_shift),
    .io_sample_looping_bits_search_for_root(first_interconnects_1_io_sample_looping_bits_search_for_root),
    .io_sample_looping_bits_tree_to_exec(first_interconnects_1_io_sample_looping_bits_tree_to_exec),
    .io_sample_looping_bits_scores_0(first_interconnects_1_io_sample_looping_bits_scores_0),
    .io_sample_looping_bits_scores_1(first_interconnects_1_io_sample_looping_bits_scores_1),
    .io_sample_looping_bits_scores_2(first_interconnects_1_io_sample_looping_bits_scores_2),
    .io_sample_looping_bits_scores_3(first_interconnects_1_io_sample_looping_bits_scores_3),
    .io_sample_looping_bits_weights_0(first_interconnects_1_io_sample_looping_bits_weights_0),
    .io_sample_looping_bits_weights_1(first_interconnects_1_io_sample_looping_bits_weights_1),
    .io_sample_looping_bits_last(first_interconnects_1_io_sample_looping_bits_last),
    .io_sample_out_ready(first_interconnects_1_io_sample_out_ready),
    .io_sample_out_valid(first_interconnects_1_io_sample_out_valid),
    .io_sample_out_bits_features_0(first_interconnects_1_io_sample_out_bits_features_0),
    .io_sample_out_bits_features_1(first_interconnects_1_io_sample_out_bits_features_1),
    .io_sample_out_bits_features_2(first_interconnects_1_io_sample_out_bits_features_2),
    .io_sample_out_bits_features_3(first_interconnects_1_io_sample_out_bits_features_3),
    .io_sample_out_bits_offset(first_interconnects_1_io_sample_out_bits_offset),
    .io_sample_out_bits_shift(first_interconnects_1_io_sample_out_bits_shift),
    .io_sample_out_bits_search_for_root(first_interconnects_1_io_sample_out_bits_search_for_root),
    .io_sample_out_bits_tree_to_exec(first_interconnects_1_io_sample_out_bits_tree_to_exec),
    .io_sample_out_bits_scores_0(first_interconnects_1_io_sample_out_bits_scores_0),
    .io_sample_out_bits_scores_1(first_interconnects_1_io_sample_out_bits_scores_1),
    .io_sample_out_bits_scores_2(first_interconnects_1_io_sample_out_bits_scores_2),
    .io_sample_out_bits_scores_3(first_interconnects_1_io_sample_out_bits_scores_3),
    .io_sample_out_bits_weights_0(first_interconnects_1_io_sample_out_bits_weights_0),
    .io_sample_out_bits_weights_1(first_interconnects_1_io_sample_out_bits_weights_1),
    .io_sample_out_bits_last(first_interconnects_1_io_sample_out_bits_last)
  );
  LastInterconnectPE last_interconnect_1 ( // @[TreePEsWrapper.scala 73:39]
    .clock(last_interconnect_1_clock),
    .reset(last_interconnect_1_reset),
    .io_sample_in_ready(last_interconnect_1_io_sample_in_ready),
    .io_sample_in_valid(last_interconnect_1_io_sample_in_valid),
    .io_sample_in_bits_features_0(last_interconnect_1_io_sample_in_bits_features_0),
    .io_sample_in_bits_features_1(last_interconnect_1_io_sample_in_bits_features_1),
    .io_sample_in_bits_features_2(last_interconnect_1_io_sample_in_bits_features_2),
    .io_sample_in_bits_features_3(last_interconnect_1_io_sample_in_bits_features_3),
    .io_sample_in_bits_offset(last_interconnect_1_io_sample_in_bits_offset),
    .io_sample_in_bits_search_for_root(last_interconnect_1_io_sample_in_bits_search_for_root),
    .io_sample_in_bits_tree_to_exec(last_interconnect_1_io_sample_in_bits_tree_to_exec),
    .io_sample_in_bits_scores_0(last_interconnect_1_io_sample_in_bits_scores_0),
    .io_sample_in_bits_scores_1(last_interconnect_1_io_sample_in_bits_scores_1),
    .io_sample_in_bits_scores_2(last_interconnect_1_io_sample_in_bits_scores_2),
    .io_sample_in_bits_scores_3(last_interconnect_1_io_sample_in_bits_scores_3),
    .io_sample_in_bits_weights_0(last_interconnect_1_io_sample_in_bits_weights_0),
    .io_sample_in_bits_weights_1(last_interconnect_1_io_sample_in_bits_weights_1),
    .io_sample_in_bits_dest(last_interconnect_1_io_sample_in_bits_dest),
    .io_sample_in_bits_last(last_interconnect_1_io_sample_in_bits_last),
    .io_sample_looping_ready(last_interconnect_1_io_sample_looping_ready),
    .io_sample_looping_valid(last_interconnect_1_io_sample_looping_valid),
    .io_sample_looping_bits_features_0(last_interconnect_1_io_sample_looping_bits_features_0),
    .io_sample_looping_bits_features_1(last_interconnect_1_io_sample_looping_bits_features_1),
    .io_sample_looping_bits_features_2(last_interconnect_1_io_sample_looping_bits_features_2),
    .io_sample_looping_bits_features_3(last_interconnect_1_io_sample_looping_bits_features_3),
    .io_sample_looping_bits_offset(last_interconnect_1_io_sample_looping_bits_offset),
    .io_sample_looping_bits_shift(last_interconnect_1_io_sample_looping_bits_shift),
    .io_sample_looping_bits_search_for_root(last_interconnect_1_io_sample_looping_bits_search_for_root),
    .io_sample_looping_bits_tree_to_exec(last_interconnect_1_io_sample_looping_bits_tree_to_exec),
    .io_sample_looping_bits_scores_0(last_interconnect_1_io_sample_looping_bits_scores_0),
    .io_sample_looping_bits_scores_1(last_interconnect_1_io_sample_looping_bits_scores_1),
    .io_sample_looping_bits_scores_2(last_interconnect_1_io_sample_looping_bits_scores_2),
    .io_sample_looping_bits_scores_3(last_interconnect_1_io_sample_looping_bits_scores_3),
    .io_sample_looping_bits_weights_0(last_interconnect_1_io_sample_looping_bits_weights_0),
    .io_sample_looping_bits_weights_1(last_interconnect_1_io_sample_looping_bits_weights_1),
    .io_sample_looping_bits_last(last_interconnect_1_io_sample_looping_bits_last),
    .io_sample_leaving_ready(last_interconnect_1_io_sample_leaving_ready),
    .io_sample_leaving_valid(last_interconnect_1_io_sample_leaving_valid),
    .io_sample_leaving_bits_features_0(last_interconnect_1_io_sample_leaving_bits_features_0),
    .io_sample_leaving_bits_features_1(last_interconnect_1_io_sample_leaving_bits_features_1),
    .io_sample_leaving_bits_features_2(last_interconnect_1_io_sample_leaving_bits_features_2),
    .io_sample_leaving_bits_features_3(last_interconnect_1_io_sample_leaving_bits_features_3),
    .io_sample_leaving_bits_offset(last_interconnect_1_io_sample_leaving_bits_offset),
    .io_sample_leaving_bits_shift(last_interconnect_1_io_sample_leaving_bits_shift),
    .io_sample_leaving_bits_search_for_root(last_interconnect_1_io_sample_leaving_bits_search_for_root),
    .io_sample_leaving_bits_tree_to_exec(last_interconnect_1_io_sample_leaving_bits_tree_to_exec),
    .io_sample_leaving_bits_scores_0(last_interconnect_1_io_sample_leaving_bits_scores_0),
    .io_sample_leaving_bits_scores_1(last_interconnect_1_io_sample_leaving_bits_scores_1),
    .io_sample_leaving_bits_scores_2(last_interconnect_1_io_sample_leaving_bits_scores_2),
    .io_sample_leaving_bits_scores_3(last_interconnect_1_io_sample_leaving_bits_scores_3),
    .io_sample_leaving_bits_weights_0(last_interconnect_1_io_sample_leaving_bits_weights_0),
    .io_sample_leaving_bits_weights_1(last_interconnect_1_io_sample_leaving_bits_weights_1),
    .io_sample_leaving_bits_last(last_interconnect_1_io_sample_leaving_bits_last)
  );
  IncrementTreePE increment_1 ( // @[TreePEsWrapper.scala 74:31]
    .clock(increment_1_clock),
    .reset(increment_1_reset),
    .io_sample_in_ready(increment_1_io_sample_in_ready),
    .io_sample_in_valid(increment_1_io_sample_in_valid),
    .io_sample_in_bits_features_0(increment_1_io_sample_in_bits_features_0),
    .io_sample_in_bits_features_1(increment_1_io_sample_in_bits_features_1),
    .io_sample_in_bits_features_2(increment_1_io_sample_in_bits_features_2),
    .io_sample_in_bits_features_3(increment_1_io_sample_in_bits_features_3),
    .io_sample_in_bits_offset(increment_1_io_sample_in_bits_offset),
    .io_sample_in_bits_shift(increment_1_io_sample_in_bits_shift),
    .io_sample_in_bits_search_for_root(increment_1_io_sample_in_bits_search_for_root),
    .io_sample_in_bits_tree_to_exec(increment_1_io_sample_in_bits_tree_to_exec),
    .io_sample_in_bits_scores_0(increment_1_io_sample_in_bits_scores_0),
    .io_sample_in_bits_scores_1(increment_1_io_sample_in_bits_scores_1),
    .io_sample_in_bits_scores_2(increment_1_io_sample_in_bits_scores_2),
    .io_sample_in_bits_scores_3(increment_1_io_sample_in_bits_scores_3),
    .io_sample_in_bits_weights_0(increment_1_io_sample_in_bits_weights_0),
    .io_sample_in_bits_weights_1(increment_1_io_sample_in_bits_weights_1),
    .io_sample_in_bits_last(increment_1_io_sample_in_bits_last),
    .io_sample_out_ready(increment_1_io_sample_out_ready),
    .io_sample_out_valid(increment_1_io_sample_out_valid),
    .io_sample_out_bits_features_0(increment_1_io_sample_out_bits_features_0),
    .io_sample_out_bits_features_1(increment_1_io_sample_out_bits_features_1),
    .io_sample_out_bits_features_2(increment_1_io_sample_out_bits_features_2),
    .io_sample_out_bits_features_3(increment_1_io_sample_out_bits_features_3),
    .io_sample_out_bits_offset(increment_1_io_sample_out_bits_offset),
    .io_sample_out_bits_shift(increment_1_io_sample_out_bits_shift),
    .io_sample_out_bits_search_for_root(increment_1_io_sample_out_bits_search_for_root),
    .io_sample_out_bits_tree_to_exec(increment_1_io_sample_out_bits_tree_to_exec),
    .io_sample_out_bits_scores_0(increment_1_io_sample_out_bits_scores_0),
    .io_sample_out_bits_scores_1(increment_1_io_sample_out_bits_scores_1),
    .io_sample_out_bits_scores_2(increment_1_io_sample_out_bits_scores_2),
    .io_sample_out_bits_scores_3(increment_1_io_sample_out_bits_scores_3),
    .io_sample_out_bits_weights_0(increment_1_io_sample_out_bits_weights_0),
    .io_sample_out_bits_weights_1(increment_1_io_sample_out_bits_weights_1),
    .io_sample_out_bits_last(increment_1_io_sample_out_bits_last)
  );
  assign wrapper_io_sample_in_TREADY = forward_converter_io_sample_in_TREADY; // @[TreePEsWrapper.scala 134:26]
  assign wrapper_io_sample_out_TDATA = backward_converter_io_sample_out_TDATA; // @[TreePEsWrapper.scala 137:27]
  assign wrapper_io_sample_out_TKEEP = 30'h0; // @[TreePEsWrapper.scala 137:27]
  assign wrapper_io_sample_out_TLAST = backward_converter_io_sample_out_TLAST; // @[TreePEsWrapper.scala 137:27]
  assign wrapper_io_sample_out_TVALID = backward_converter_io_sample_out_TVALID; // @[TreePEsWrapper.scala 137:27]
  assign brams_io_0_dataOut_1 = 64'h0; // @[TreePEsWrapper.scala 93:41]
  assign brams_io_0_dataOut_2 = brams_0_io_dataOut_2; // @[TreePEsWrapper.scala 89:41]
  assign brams_io_1_dataOut_1 = 64'h0; // @[TreePEsWrapper.scala 93:41]
  assign brams_io_1_dataOut_2 = brams_1_io_dataOut_2; // @[TreePEsWrapper.scala 89:41]
  assign brams_io_2_dataOut_1 = 64'h0; // @[TreePEsWrapper.scala 93:41]
  assign brams_io_2_dataOut_2 = brams_0_1_io_dataOut_2; // @[TreePEsWrapper.scala 89:41]
  assign brams_io_3_dataOut_1 = 64'h0; // @[TreePEsWrapper.scala 93:41]
  assign brams_io_3_dataOut_2 = brams_1_1_io_dataOut_2; // @[TreePEsWrapper.scala 89:41]
  assign forward_converter_io_sample_in_TDATA = wrapper_io_sample_in_TDATA; // @[TreePEsWrapper.scala 134:26]
  assign forward_converter_io_sample_in_TLAST = wrapper_io_sample_in_TLAST; // @[TreePEsWrapper.scala 134:26]
  assign forward_converter_io_sample_in_TVALID = wrapper_io_sample_in_TVALID; // @[TreePEsWrapper.scala 134:26]
  assign forward_converter_io_sample_out_ready = dispatcher_io_sample_in_ready; // @[TreePEsWrapper.scala 135:37]
  assign dispatcher_clock = clock;
  assign dispatcher_reset = reset;
  assign dispatcher_io_sample_in_valid = forward_converter_io_sample_out_valid; // @[TreePEsWrapper.scala 135:37]
  assign dispatcher_io_sample_in_bits_features_0 = forward_converter_io_sample_out_bits_features_0; // @[TreePEsWrapper.scala 135:37]
  assign dispatcher_io_sample_in_bits_features_1 = forward_converter_io_sample_out_bits_features_1; // @[TreePEsWrapper.scala 135:37]
  assign dispatcher_io_sample_in_bits_features_2 = forward_converter_io_sample_out_bits_features_2; // @[TreePEsWrapper.scala 135:37]
  assign dispatcher_io_sample_in_bits_features_3 = forward_converter_io_sample_out_bits_features_3; // @[TreePEsWrapper.scala 135:37]
  assign dispatcher_io_sample_in_bits_offset = forward_converter_io_sample_out_bits_offset; // @[TreePEsWrapper.scala 135:37]
  assign dispatcher_io_sample_in_bits_shift = forward_converter_io_sample_out_bits_shift; // @[TreePEsWrapper.scala 135:37]
  assign dispatcher_io_sample_in_bits_search_for_root = forward_converter_io_sample_out_bits_search_for_root; // @[TreePEsWrapper.scala 135:37]
  assign dispatcher_io_sample_in_bits_tree_to_exec = forward_converter_io_sample_out_bits_tree_to_exec; // @[TreePEsWrapper.scala 135:37]
  assign dispatcher_io_sample_in_bits_scores_0 = forward_converter_io_sample_out_bits_scores_0; // @[TreePEsWrapper.scala 135:37]
  assign dispatcher_io_sample_in_bits_scores_1 = forward_converter_io_sample_out_bits_scores_1; // @[TreePEsWrapper.scala 135:37]
  assign dispatcher_io_sample_in_bits_scores_2 = forward_converter_io_sample_out_bits_scores_2; // @[TreePEsWrapper.scala 135:37]
  assign dispatcher_io_sample_in_bits_scores_3 = forward_converter_io_sample_out_bits_scores_3; // @[TreePEsWrapper.scala 135:37]
  assign dispatcher_io_sample_in_bits_weights_0 = forward_converter_io_sample_out_bits_weights_0; // @[TreePEsWrapper.scala 135:37]
  assign dispatcher_io_sample_in_bits_weights_1 = forward_converter_io_sample_out_bits_weights_1; // @[TreePEsWrapper.scala 135:37]
  assign dispatcher_io_sample_in_bits_last = forward_converter_io_sample_out_bits_last; // @[TreePEsWrapper.scala 135:37]
  assign dispatcher_io_samples_out_0_ready = first_interconnects_0_io_sample_entering_ready; // @[DispatcherPE.scala 23:27]
  assign voter_clock = clock;
  assign voter_reset = reset;
  assign voter_io_samples_in_0_valid = last_interconnect_io_sample_leaving_valid; // @[Interconnect.scala 50:27]
  assign voter_io_samples_in_0_bits_features_0 = last_interconnect_io_sample_leaving_bits_features_0; // @[Interconnect.scala 50:27]
  assign voter_io_samples_in_0_bits_features_1 = last_interconnect_io_sample_leaving_bits_features_1; // @[Interconnect.scala 50:27]
  assign voter_io_samples_in_0_bits_features_2 = last_interconnect_io_sample_leaving_bits_features_2; // @[Interconnect.scala 50:27]
  assign voter_io_samples_in_0_bits_features_3 = last_interconnect_io_sample_leaving_bits_features_3; // @[Interconnect.scala 50:27]
  assign voter_io_samples_in_0_bits_offset = last_interconnect_io_sample_leaving_bits_offset; // @[Interconnect.scala 50:27]
  assign voter_io_samples_in_0_bits_shift = last_interconnect_io_sample_leaving_bits_shift; // @[Interconnect.scala 50:27]
  assign voter_io_samples_in_0_bits_search_for_root = last_interconnect_io_sample_leaving_bits_search_for_root; // @[Interconnect.scala 50:27]
  assign voter_io_samples_in_0_bits_tree_to_exec = last_interconnect_io_sample_leaving_bits_tree_to_exec; // @[Interconnect.scala 50:27]
  assign voter_io_samples_in_0_bits_scores_0 = last_interconnect_io_sample_leaving_bits_scores_0; // @[Interconnect.scala 50:27]
  assign voter_io_samples_in_0_bits_scores_1 = last_interconnect_io_sample_leaving_bits_scores_1; // @[Interconnect.scala 50:27]
  assign voter_io_samples_in_0_bits_scores_2 = last_interconnect_io_sample_leaving_bits_scores_2; // @[Interconnect.scala 50:27]
  assign voter_io_samples_in_0_bits_scores_3 = last_interconnect_io_sample_leaving_bits_scores_3; // @[Interconnect.scala 50:27]
  assign voter_io_samples_in_0_bits_weights_0 = last_interconnect_io_sample_leaving_bits_weights_0; // @[Interconnect.scala 50:27]
  assign voter_io_samples_in_0_bits_weights_1 = last_interconnect_io_sample_leaving_bits_weights_1; // @[Interconnect.scala 50:27]
  assign voter_io_samples_in_0_bits_last = last_interconnect_io_sample_leaving_bits_last; // @[Interconnect.scala 50:27]
  assign voter_io_samples_in_1_valid = last_interconnect_1_io_sample_leaving_valid; // @[Interconnect.scala 50:27]
  assign voter_io_samples_in_1_bits_features_0 = last_interconnect_1_io_sample_leaving_bits_features_0; // @[Interconnect.scala 50:27]
  assign voter_io_samples_in_1_bits_features_1 = last_interconnect_1_io_sample_leaving_bits_features_1; // @[Interconnect.scala 50:27]
  assign voter_io_samples_in_1_bits_features_2 = last_interconnect_1_io_sample_leaving_bits_features_2; // @[Interconnect.scala 50:27]
  assign voter_io_samples_in_1_bits_features_3 = last_interconnect_1_io_sample_leaving_bits_features_3; // @[Interconnect.scala 50:27]
  assign voter_io_samples_in_1_bits_offset = last_interconnect_1_io_sample_leaving_bits_offset; // @[Interconnect.scala 50:27]
  assign voter_io_samples_in_1_bits_shift = last_interconnect_1_io_sample_leaving_bits_shift; // @[Interconnect.scala 50:27]
  assign voter_io_samples_in_1_bits_search_for_root = last_interconnect_1_io_sample_leaving_bits_search_for_root; // @[Interconnect.scala 50:27]
  assign voter_io_samples_in_1_bits_tree_to_exec = last_interconnect_1_io_sample_leaving_bits_tree_to_exec; // @[Interconnect.scala 50:27]
  assign voter_io_samples_in_1_bits_scores_0 = last_interconnect_1_io_sample_leaving_bits_scores_0; // @[Interconnect.scala 50:27]
  assign voter_io_samples_in_1_bits_scores_1 = last_interconnect_1_io_sample_leaving_bits_scores_1; // @[Interconnect.scala 50:27]
  assign voter_io_samples_in_1_bits_scores_2 = last_interconnect_1_io_sample_leaving_bits_scores_2; // @[Interconnect.scala 50:27]
  assign voter_io_samples_in_1_bits_scores_3 = last_interconnect_1_io_sample_leaving_bits_scores_3; // @[Interconnect.scala 50:27]
  assign voter_io_samples_in_1_bits_weights_0 = last_interconnect_1_io_sample_leaving_bits_weights_0; // @[Interconnect.scala 50:27]
  assign voter_io_samples_in_1_bits_weights_1 = last_interconnect_1_io_sample_leaving_bits_weights_1; // @[Interconnect.scala 50:27]
  assign voter_io_samples_in_1_bits_last = last_interconnect_1_io_sample_leaving_bits_last; // @[Interconnect.scala 50:27]
  assign voter_io_sample_out_ready = backward_converter_io_sample_in_ready; // @[TreePEsWrapper.scala 136:25]
  assign backward_converter_clock = clock;
  assign backward_converter_reset = reset;
  assign backward_converter_io_sample_in_valid = voter_io_sample_out_valid; // @[TreePEsWrapper.scala 136:25]
  assign backward_converter_io_sample_in_bits_features_0 = voter_io_sample_out_bits_features_0; // @[TreePEsWrapper.scala 136:25]
  assign backward_converter_io_sample_in_bits_features_1 = voter_io_sample_out_bits_features_1; // @[TreePEsWrapper.scala 136:25]
  assign backward_converter_io_sample_in_bits_features_2 = voter_io_sample_out_bits_features_2; // @[TreePEsWrapper.scala 136:25]
  assign backward_converter_io_sample_in_bits_features_3 = voter_io_sample_out_bits_features_3; // @[TreePEsWrapper.scala 136:25]
  assign backward_converter_io_sample_in_bits_offset = voter_io_sample_out_bits_offset; // @[TreePEsWrapper.scala 136:25]
  assign backward_converter_io_sample_in_bits_shift = voter_io_sample_out_bits_shift; // @[TreePEsWrapper.scala 136:25]
  assign backward_converter_io_sample_in_bits_search_for_root = voter_io_sample_out_bits_search_for_root; // @[TreePEsWrapper.scala 136:25]
  assign backward_converter_io_sample_in_bits_tree_to_exec = voter_io_sample_out_bits_tree_to_exec; // @[TreePEsWrapper.scala 136:25]
  assign backward_converter_io_sample_in_bits_scores_0 = voter_io_sample_out_bits_scores_0; // @[TreePEsWrapper.scala 136:25]
  assign backward_converter_io_sample_in_bits_scores_1 = voter_io_sample_out_bits_scores_1; // @[TreePEsWrapper.scala 136:25]
  assign backward_converter_io_sample_in_bits_scores_2 = voter_io_sample_out_bits_scores_2; // @[TreePEsWrapper.scala 136:25]
  assign backward_converter_io_sample_in_bits_scores_3 = voter_io_sample_out_bits_scores_3; // @[TreePEsWrapper.scala 136:25]
  assign backward_converter_io_sample_in_bits_weights_0 = voter_io_sample_out_bits_weights_0; // @[TreePEsWrapper.scala 136:25]
  assign backward_converter_io_sample_in_bits_weights_1 = voter_io_sample_out_bits_weights_1; // @[TreePEsWrapper.scala 136:25]
  assign backward_converter_io_sample_in_bits_last = voter_io_sample_out_bits_last; // @[TreePEsWrapper.scala 136:25]
  assign backward_converter_io_sample_out_TREADY = wrapper_io_sample_out_TREADY; // @[TreePEsWrapper.scala 137:27]
  assign pes_0_clock = clock;
  assign pes_0_reset = reset;
  assign pes_0_pe_io_sample_in_valid = first_interconnects_0_io_sample_out_valid; // @[Interconnect.scala 83:23]
  assign pes_0_pe_io_sample_in_bits_features_0 = first_interconnects_0_io_sample_out_bits_features_0; // @[Interconnect.scala 83:23]
  assign pes_0_pe_io_sample_in_bits_features_1 = first_interconnects_0_io_sample_out_bits_features_1; // @[Interconnect.scala 83:23]
  assign pes_0_pe_io_sample_in_bits_features_2 = first_interconnects_0_io_sample_out_bits_features_2; // @[Interconnect.scala 83:23]
  assign pes_0_pe_io_sample_in_bits_features_3 = first_interconnects_0_io_sample_out_bits_features_3; // @[Interconnect.scala 83:23]
  assign pes_0_pe_io_sample_in_bits_offset = first_interconnects_0_io_sample_out_bits_offset; // @[Interconnect.scala 83:23]
  assign pes_0_pe_io_sample_in_bits_shift = first_interconnects_0_io_sample_out_bits_shift; // @[Interconnect.scala 83:23]
  assign pes_0_pe_io_sample_in_bits_search_for_root = first_interconnects_0_io_sample_out_bits_search_for_root; // @[Interconnect.scala 83:23]
  assign pes_0_pe_io_sample_in_bits_tree_to_exec = first_interconnects_0_io_sample_out_bits_tree_to_exec; // @[Interconnect.scala 83:23]
  assign pes_0_pe_io_sample_in_bits_scores_0 = first_interconnects_0_io_sample_out_bits_scores_0; // @[Interconnect.scala 83:23]
  assign pes_0_pe_io_sample_in_bits_scores_1 = first_interconnects_0_io_sample_out_bits_scores_1; // @[Interconnect.scala 83:23]
  assign pes_0_pe_io_sample_in_bits_scores_2 = first_interconnects_0_io_sample_out_bits_scores_2; // @[Interconnect.scala 83:23]
  assign pes_0_pe_io_sample_in_bits_scores_3 = first_interconnects_0_io_sample_out_bits_scores_3; // @[Interconnect.scala 83:23]
  assign pes_0_pe_io_sample_in_bits_weights_0 = first_interconnects_0_io_sample_out_bits_weights_0; // @[Interconnect.scala 83:23]
  assign pes_0_pe_io_sample_in_bits_weights_1 = first_interconnects_0_io_sample_out_bits_weights_1; // @[Interconnect.scala 83:23]
  assign pes_0_pe_io_sample_in_bits_last = first_interconnects_0_io_sample_out_bits_last; // @[Interconnect.scala 83:23]
  assign pes_0_pe_io_mem_dataOut_1 = brams_0_io_dataOut_1; // @[TreePEsWrapper.scala 83:40]
  assign pes_0_pe_io_sample_out_ready = pes_1_pe_io_sample_in_ready; // @[TreePE.scala 157:22]
  assign pes_1_clock = clock;
  assign pes_1_reset = reset;
  assign pes_1_pe_io_sample_in_valid = pes_0_pe_io_sample_out_valid; // @[TreePE.scala 157:22]
  assign pes_1_pe_io_sample_in_bits_features_0 = pes_0_pe_io_sample_out_bits_features_0; // @[TreePE.scala 157:22]
  assign pes_1_pe_io_sample_in_bits_features_1 = pes_0_pe_io_sample_out_bits_features_1; // @[TreePE.scala 157:22]
  assign pes_1_pe_io_sample_in_bits_features_2 = pes_0_pe_io_sample_out_bits_features_2; // @[TreePE.scala 157:22]
  assign pes_1_pe_io_sample_in_bits_features_3 = pes_0_pe_io_sample_out_bits_features_3; // @[TreePE.scala 157:22]
  assign pes_1_pe_io_sample_in_bits_offset = pes_0_pe_io_sample_out_bits_offset; // @[TreePE.scala 157:22]
  assign pes_1_pe_io_sample_in_bits_search_for_root = pes_0_pe_io_sample_out_bits_search_for_root; // @[TreePE.scala 157:22]
  assign pes_1_pe_io_sample_in_bits_tree_to_exec = pes_0_pe_io_sample_out_bits_tree_to_exec; // @[TreePE.scala 157:22]
  assign pes_1_pe_io_sample_in_bits_scores_0 = pes_0_pe_io_sample_out_bits_scores_0; // @[TreePE.scala 157:22]
  assign pes_1_pe_io_sample_in_bits_scores_1 = pes_0_pe_io_sample_out_bits_scores_1; // @[TreePE.scala 157:22]
  assign pes_1_pe_io_sample_in_bits_scores_2 = pes_0_pe_io_sample_out_bits_scores_2; // @[TreePE.scala 157:22]
  assign pes_1_pe_io_sample_in_bits_scores_3 = pes_0_pe_io_sample_out_bits_scores_3; // @[TreePE.scala 157:22]
  assign pes_1_pe_io_sample_in_bits_weights_0 = pes_0_pe_io_sample_out_bits_weights_0; // @[TreePE.scala 157:22]
  assign pes_1_pe_io_sample_in_bits_weights_1 = pes_0_pe_io_sample_out_bits_weights_1; // @[TreePE.scala 157:22]
  assign pes_1_pe_io_sample_in_bits_last = pes_0_pe_io_sample_out_bits_last; // @[TreePE.scala 157:22]
  assign pes_1_pe_io_mem_dataOut_1 = brams_1_io_dataOut_1; // @[TreePEsWrapper.scala 83:40]
  assign pes_1_pe_io_sample_out_ready = last_interconnect_io_sample_in_ready; // @[TreePE.scala 153:22]
  assign brams_0_clock = clock;
  assign brams_0_io_addr_1 = pes_0_pe_io_mem_addr_1; // @[TreePEsWrapper.scala 81:32]
  assign brams_0_io_enable_2 = brams_io_0_enable_2; // @[TreePEsWrapper.scala 85:34]
  assign brams_0_io_write_2 = brams_io_0_write_2; // @[TreePEsWrapper.scala 86:33]
  assign brams_0_io_addr_2 = brams_io_0_addr_2; // @[TreePEsWrapper.scala 87:32]
  assign brams_0_io_dataIn_2 = brams_io_0_dataIn_2; // @[TreePEsWrapper.scala 88:34]
  assign brams_1_clock = clock;
  assign brams_1_io_addr_1 = pes_1_pe_io_mem_addr_1; // @[TreePEsWrapper.scala 81:32]
  assign brams_1_io_enable_2 = brams_io_1_enable_2; // @[TreePEsWrapper.scala 85:34]
  assign brams_1_io_write_2 = brams_io_1_write_2; // @[TreePEsWrapper.scala 86:33]
  assign brams_1_io_addr_2 = brams_io_1_addr_2; // @[TreePEsWrapper.scala 87:32]
  assign brams_1_io_dataIn_2 = brams_io_1_dataIn_2; // @[TreePEsWrapper.scala 88:34]
  assign first_interconnects_0_clock = clock;
  assign first_interconnects_0_reset = reset;
  assign first_interconnects_0_io_sample_entering_valid = dispatcher_io_samples_out_0_valid; // @[DispatcherPE.scala 23:27]
  assign first_interconnects_0_io_sample_entering_bits_features_0 = dispatcher_io_samples_out_0_bits_features_0; // @[DispatcherPE.scala 23:27]
  assign first_interconnects_0_io_sample_entering_bits_features_1 = dispatcher_io_samples_out_0_bits_features_1; // @[DispatcherPE.scala 23:27]
  assign first_interconnects_0_io_sample_entering_bits_features_2 = dispatcher_io_samples_out_0_bits_features_2; // @[DispatcherPE.scala 23:27]
  assign first_interconnects_0_io_sample_entering_bits_features_3 = dispatcher_io_samples_out_0_bits_features_3; // @[DispatcherPE.scala 23:27]
  assign first_interconnects_0_io_sample_entering_bits_offset = dispatcher_io_samples_out_0_bits_offset; // @[DispatcherPE.scala 23:27]
  assign first_interconnects_0_io_sample_entering_bits_shift = dispatcher_io_samples_out_0_bits_shift; // @[DispatcherPE.scala 23:27]
  assign first_interconnects_0_io_sample_entering_bits_search_for_root =
    dispatcher_io_samples_out_0_bits_search_for_root; // @[DispatcherPE.scala 23:27]
  assign first_interconnects_0_io_sample_entering_bits_tree_to_exec = dispatcher_io_samples_out_0_bits_tree_to_exec; // @[DispatcherPE.scala 23:27]
  assign first_interconnects_0_io_sample_entering_bits_scores_0 = dispatcher_io_samples_out_0_bits_scores_0; // @[DispatcherPE.scala 23:27]
  assign first_interconnects_0_io_sample_entering_bits_scores_1 = dispatcher_io_samples_out_0_bits_scores_1; // @[DispatcherPE.scala 23:27]
  assign first_interconnects_0_io_sample_entering_bits_scores_2 = dispatcher_io_samples_out_0_bits_scores_2; // @[DispatcherPE.scala 23:27]
  assign first_interconnects_0_io_sample_entering_bits_scores_3 = dispatcher_io_samples_out_0_bits_scores_3; // @[DispatcherPE.scala 23:27]
  assign first_interconnects_0_io_sample_entering_bits_weights_0 = dispatcher_io_samples_out_0_bits_weights_0; // @[DispatcherPE.scala 23:27]
  assign first_interconnects_0_io_sample_entering_bits_weights_1 = dispatcher_io_samples_out_0_bits_weights_1; // @[DispatcherPE.scala 23:27]
  assign first_interconnects_0_io_sample_entering_bits_last = dispatcher_io_samples_out_0_bits_last; // @[DispatcherPE.scala 23:27]
  assign first_interconnects_0_io_sample_looping_valid = increment_io_sample_out_valid; // @[IncrementTreePE.scala 30:23]
  assign first_interconnects_0_io_sample_looping_bits_features_0 = increment_io_sample_out_bits_features_0; // @[IncrementTreePE.scala 30:23]
  assign first_interconnects_0_io_sample_looping_bits_features_1 = increment_io_sample_out_bits_features_1; // @[IncrementTreePE.scala 30:23]
  assign first_interconnects_0_io_sample_looping_bits_features_2 = increment_io_sample_out_bits_features_2; // @[IncrementTreePE.scala 30:23]
  assign first_interconnects_0_io_sample_looping_bits_features_3 = increment_io_sample_out_bits_features_3; // @[IncrementTreePE.scala 30:23]
  assign first_interconnects_0_io_sample_looping_bits_offset = increment_io_sample_out_bits_offset; // @[IncrementTreePE.scala 30:23]
  assign first_interconnects_0_io_sample_looping_bits_shift = increment_io_sample_out_bits_shift; // @[IncrementTreePE.scala 30:23]
  assign first_interconnects_0_io_sample_looping_bits_search_for_root = increment_io_sample_out_bits_search_for_root; // @[IncrementTreePE.scala 30:23]
  assign first_interconnects_0_io_sample_looping_bits_tree_to_exec = increment_io_sample_out_bits_tree_to_exec; // @[IncrementTreePE.scala 30:23]
  assign first_interconnects_0_io_sample_looping_bits_scores_0 = increment_io_sample_out_bits_scores_0; // @[IncrementTreePE.scala 30:23]
  assign first_interconnects_0_io_sample_looping_bits_scores_1 = increment_io_sample_out_bits_scores_1; // @[IncrementTreePE.scala 30:23]
  assign first_interconnects_0_io_sample_looping_bits_scores_2 = increment_io_sample_out_bits_scores_2; // @[IncrementTreePE.scala 30:23]
  assign first_interconnects_0_io_sample_looping_bits_scores_3 = increment_io_sample_out_bits_scores_3; // @[IncrementTreePE.scala 30:23]
  assign first_interconnects_0_io_sample_looping_bits_weights_0 = increment_io_sample_out_bits_weights_0; // @[IncrementTreePE.scala 30:23]
  assign first_interconnects_0_io_sample_looping_bits_weights_1 = increment_io_sample_out_bits_weights_1; // @[IncrementTreePE.scala 30:23]
  assign first_interconnects_0_io_sample_looping_bits_last = increment_io_sample_out_bits_last; // @[IncrementTreePE.scala 30:23]
  assign first_interconnects_0_io_sample_out_ready = pes_0_pe_io_sample_in_ready; // @[Interconnect.scala 83:23]
  assign last_interconnect_clock = clock;
  assign last_interconnect_reset = reset;
  assign last_interconnect_io_sample_in_valid = pes_1_pe_io_sample_out_valid; // @[TreePE.scala 153:22]
  assign last_interconnect_io_sample_in_bits_features_0 = pes_1_pe_io_sample_out_bits_features_0; // @[TreePE.scala 153:22]
  assign last_interconnect_io_sample_in_bits_features_1 = pes_1_pe_io_sample_out_bits_features_1; // @[TreePE.scala 153:22]
  assign last_interconnect_io_sample_in_bits_features_2 = pes_1_pe_io_sample_out_bits_features_2; // @[TreePE.scala 153:22]
  assign last_interconnect_io_sample_in_bits_features_3 = pes_1_pe_io_sample_out_bits_features_3; // @[TreePE.scala 153:22]
  assign last_interconnect_io_sample_in_bits_offset = pes_1_pe_io_sample_out_bits_offset; // @[TreePE.scala 153:22]
  assign last_interconnect_io_sample_in_bits_search_for_root = pes_1_pe_io_sample_out_bits_search_for_root; // @[TreePE.scala 153:22]
  assign last_interconnect_io_sample_in_bits_tree_to_exec = pes_1_pe_io_sample_out_bits_tree_to_exec; // @[TreePE.scala 153:22]
  assign last_interconnect_io_sample_in_bits_scores_0 = pes_1_pe_io_sample_out_bits_scores_0; // @[TreePE.scala 153:22]
  assign last_interconnect_io_sample_in_bits_scores_1 = pes_1_pe_io_sample_out_bits_scores_1; // @[TreePE.scala 153:22]
  assign last_interconnect_io_sample_in_bits_scores_2 = pes_1_pe_io_sample_out_bits_scores_2; // @[TreePE.scala 153:22]
  assign last_interconnect_io_sample_in_bits_scores_3 = pes_1_pe_io_sample_out_bits_scores_3; // @[TreePE.scala 153:22]
  assign last_interconnect_io_sample_in_bits_weights_0 = pes_1_pe_io_sample_out_bits_weights_0; // @[TreePE.scala 153:22]
  assign last_interconnect_io_sample_in_bits_weights_1 = pes_1_pe_io_sample_out_bits_weights_1; // @[TreePE.scala 153:22]
  assign last_interconnect_io_sample_in_bits_dest = pes_1_pe_io_sample_out_bits_dest; // @[TreePE.scala 153:22]
  assign last_interconnect_io_sample_in_bits_last = pes_1_pe_io_sample_out_bits_last; // @[TreePE.scala 153:22]
  assign last_interconnect_io_sample_looping_ready = increment_io_sample_in_ready; // @[Interconnect.scala 34:27]
  assign last_interconnect_io_sample_leaving_ready = voter_io_samples_in_0_ready; // @[Interconnect.scala 50:27]
  assign increment_clock = clock;
  assign increment_reset = reset;
  assign increment_io_sample_in_valid = last_interconnect_io_sample_looping_valid; // @[Interconnect.scala 34:27]
  assign increment_io_sample_in_bits_features_0 = last_interconnect_io_sample_looping_bits_features_0; // @[Interconnect.scala 34:27]
  assign increment_io_sample_in_bits_features_1 = last_interconnect_io_sample_looping_bits_features_1; // @[Interconnect.scala 34:27]
  assign increment_io_sample_in_bits_features_2 = last_interconnect_io_sample_looping_bits_features_2; // @[Interconnect.scala 34:27]
  assign increment_io_sample_in_bits_features_3 = last_interconnect_io_sample_looping_bits_features_3; // @[Interconnect.scala 34:27]
  assign increment_io_sample_in_bits_offset = last_interconnect_io_sample_looping_bits_offset; // @[Interconnect.scala 34:27]
  assign increment_io_sample_in_bits_shift = last_interconnect_io_sample_looping_bits_shift; // @[Interconnect.scala 34:27]
  assign increment_io_sample_in_bits_search_for_root = last_interconnect_io_sample_looping_bits_search_for_root; // @[Interconnect.scala 34:27]
  assign increment_io_sample_in_bits_tree_to_exec = last_interconnect_io_sample_looping_bits_tree_to_exec; // @[Interconnect.scala 34:27]
  assign increment_io_sample_in_bits_scores_0 = last_interconnect_io_sample_looping_bits_scores_0; // @[Interconnect.scala 34:27]
  assign increment_io_sample_in_bits_scores_1 = last_interconnect_io_sample_looping_bits_scores_1; // @[Interconnect.scala 34:27]
  assign increment_io_sample_in_bits_scores_2 = last_interconnect_io_sample_looping_bits_scores_2; // @[Interconnect.scala 34:27]
  assign increment_io_sample_in_bits_scores_3 = last_interconnect_io_sample_looping_bits_scores_3; // @[Interconnect.scala 34:27]
  assign increment_io_sample_in_bits_weights_0 = last_interconnect_io_sample_looping_bits_weights_0; // @[Interconnect.scala 34:27]
  assign increment_io_sample_in_bits_weights_1 = last_interconnect_io_sample_looping_bits_weights_1; // @[Interconnect.scala 34:27]
  assign increment_io_sample_in_bits_last = last_interconnect_io_sample_looping_bits_last; // @[Interconnect.scala 34:27]
  assign increment_io_sample_out_ready = first_interconnects_0_io_sample_looping_ready; // @[IncrementTreePE.scala 30:23]
  assign pes_0_1_clock = clock;
  assign pes_0_1_reset = reset;
  assign pes_0_1_pe_io_sample_in_valid = first_interconnects_1_io_sample_out_valid; // @[Interconnect.scala 83:23]
  assign pes_0_1_pe_io_sample_in_bits_features_0 = first_interconnects_1_io_sample_out_bits_features_0; // @[Interconnect.scala 83:23]
  assign pes_0_1_pe_io_sample_in_bits_features_1 = first_interconnects_1_io_sample_out_bits_features_1; // @[Interconnect.scala 83:23]
  assign pes_0_1_pe_io_sample_in_bits_features_2 = first_interconnects_1_io_sample_out_bits_features_2; // @[Interconnect.scala 83:23]
  assign pes_0_1_pe_io_sample_in_bits_features_3 = first_interconnects_1_io_sample_out_bits_features_3; // @[Interconnect.scala 83:23]
  assign pes_0_1_pe_io_sample_in_bits_offset = first_interconnects_1_io_sample_out_bits_offset; // @[Interconnect.scala 83:23]
  assign pes_0_1_pe_io_sample_in_bits_shift = first_interconnects_1_io_sample_out_bits_shift; // @[Interconnect.scala 83:23]
  assign pes_0_1_pe_io_sample_in_bits_search_for_root = first_interconnects_1_io_sample_out_bits_search_for_root; // @[Interconnect.scala 83:23]
  assign pes_0_1_pe_io_sample_in_bits_tree_to_exec = first_interconnects_1_io_sample_out_bits_tree_to_exec; // @[Interconnect.scala 83:23]
  assign pes_0_1_pe_io_sample_in_bits_scores_0 = first_interconnects_1_io_sample_out_bits_scores_0; // @[Interconnect.scala 83:23]
  assign pes_0_1_pe_io_sample_in_bits_scores_1 = first_interconnects_1_io_sample_out_bits_scores_1; // @[Interconnect.scala 83:23]
  assign pes_0_1_pe_io_sample_in_bits_scores_2 = first_interconnects_1_io_sample_out_bits_scores_2; // @[Interconnect.scala 83:23]
  assign pes_0_1_pe_io_sample_in_bits_scores_3 = first_interconnects_1_io_sample_out_bits_scores_3; // @[Interconnect.scala 83:23]
  assign pes_0_1_pe_io_sample_in_bits_weights_0 = first_interconnects_1_io_sample_out_bits_weights_0; // @[Interconnect.scala 83:23]
  assign pes_0_1_pe_io_sample_in_bits_weights_1 = first_interconnects_1_io_sample_out_bits_weights_1; // @[Interconnect.scala 83:23]
  assign pes_0_1_pe_io_sample_in_bits_last = first_interconnects_1_io_sample_out_bits_last; // @[Interconnect.scala 83:23]
  assign pes_0_1_pe_io_mem_dataOut_1 = brams_0_1_io_dataOut_1; // @[TreePEsWrapper.scala 83:40]
  assign pes_0_1_pe_io_sample_out_ready = pes_1_1_pe_io_sample_in_ready; // @[TreePE.scala 157:22]
  assign pes_1_1_clock = clock;
  assign pes_1_1_reset = reset;
  assign pes_1_1_pe_io_sample_in_valid = pes_0_1_pe_io_sample_out_valid; // @[TreePE.scala 157:22]
  assign pes_1_1_pe_io_sample_in_bits_features_0 = pes_0_1_pe_io_sample_out_bits_features_0; // @[TreePE.scala 157:22]
  assign pes_1_1_pe_io_sample_in_bits_features_1 = pes_0_1_pe_io_sample_out_bits_features_1; // @[TreePE.scala 157:22]
  assign pes_1_1_pe_io_sample_in_bits_features_2 = pes_0_1_pe_io_sample_out_bits_features_2; // @[TreePE.scala 157:22]
  assign pes_1_1_pe_io_sample_in_bits_features_3 = pes_0_1_pe_io_sample_out_bits_features_3; // @[TreePE.scala 157:22]
  assign pes_1_1_pe_io_sample_in_bits_offset = pes_0_1_pe_io_sample_out_bits_offset; // @[TreePE.scala 157:22]
  assign pes_1_1_pe_io_sample_in_bits_search_for_root = pes_0_1_pe_io_sample_out_bits_search_for_root; // @[TreePE.scala 157:22]
  assign pes_1_1_pe_io_sample_in_bits_tree_to_exec = pes_0_1_pe_io_sample_out_bits_tree_to_exec; // @[TreePE.scala 157:22]
  assign pes_1_1_pe_io_sample_in_bits_scores_0 = pes_0_1_pe_io_sample_out_bits_scores_0; // @[TreePE.scala 157:22]
  assign pes_1_1_pe_io_sample_in_bits_scores_1 = pes_0_1_pe_io_sample_out_bits_scores_1; // @[TreePE.scala 157:22]
  assign pes_1_1_pe_io_sample_in_bits_scores_2 = pes_0_1_pe_io_sample_out_bits_scores_2; // @[TreePE.scala 157:22]
  assign pes_1_1_pe_io_sample_in_bits_scores_3 = pes_0_1_pe_io_sample_out_bits_scores_3; // @[TreePE.scala 157:22]
  assign pes_1_1_pe_io_sample_in_bits_weights_0 = pes_0_1_pe_io_sample_out_bits_weights_0; // @[TreePE.scala 157:22]
  assign pes_1_1_pe_io_sample_in_bits_weights_1 = pes_0_1_pe_io_sample_out_bits_weights_1; // @[TreePE.scala 157:22]
  assign pes_1_1_pe_io_sample_in_bits_last = pes_0_1_pe_io_sample_out_bits_last; // @[TreePE.scala 157:22]
  assign pes_1_1_pe_io_mem_dataOut_1 = brams_1_1_io_dataOut_1; // @[TreePEsWrapper.scala 83:40]
  assign pes_1_1_pe_io_sample_out_ready = last_interconnect_1_io_sample_in_ready; // @[TreePE.scala 153:22]
  assign brams_0_1_clock = clock;
  assign brams_0_1_io_addr_1 = pes_0_1_pe_io_mem_addr_1; // @[TreePEsWrapper.scala 81:32]
  assign brams_0_1_io_enable_2 = brams_io_2_enable_2; // @[TreePEsWrapper.scala 85:34]
  assign brams_0_1_io_write_2 = brams_io_2_write_2; // @[TreePEsWrapper.scala 86:33]
  assign brams_0_1_io_addr_2 = brams_io_2_addr_2; // @[TreePEsWrapper.scala 87:32]
  assign brams_0_1_io_dataIn_2 = brams_io_2_dataIn_2; // @[TreePEsWrapper.scala 88:34]
  assign brams_1_1_clock = clock;
  assign brams_1_1_io_addr_1 = pes_1_1_pe_io_mem_addr_1; // @[TreePEsWrapper.scala 81:32]
  assign brams_1_1_io_enable_2 = brams_io_3_enable_2; // @[TreePEsWrapper.scala 85:34]
  assign brams_1_1_io_write_2 = brams_io_3_write_2; // @[TreePEsWrapper.scala 86:33]
  assign brams_1_1_io_addr_2 = brams_io_3_addr_2; // @[TreePEsWrapper.scala 87:32]
  assign brams_1_1_io_dataIn_2 = brams_io_3_dataIn_2; // @[TreePEsWrapper.scala 88:34]
  assign first_interconnects_1_clock = clock;
  assign first_interconnects_1_reset = reset;
  assign first_interconnects_1_io_sample_entering_valid = dispatcher_io_samples_out_1_valid; // @[DispatcherPE.scala 23:27]
  assign first_interconnects_1_io_sample_entering_bits_features_0 = dispatcher_io_samples_out_1_bits_features_0; // @[DispatcherPE.scala 23:27]
  assign first_interconnects_1_io_sample_entering_bits_features_1 = dispatcher_io_samples_out_1_bits_features_1; // @[DispatcherPE.scala 23:27]
  assign first_interconnects_1_io_sample_entering_bits_features_2 = dispatcher_io_samples_out_1_bits_features_2; // @[DispatcherPE.scala 23:27]
  assign first_interconnects_1_io_sample_entering_bits_features_3 = dispatcher_io_samples_out_1_bits_features_3; // @[DispatcherPE.scala 23:27]
  assign first_interconnects_1_io_sample_entering_bits_offset = dispatcher_io_samples_out_1_bits_offset; // @[DispatcherPE.scala 23:27]
  assign first_interconnects_1_io_sample_entering_bits_shift = dispatcher_io_samples_out_1_bits_shift; // @[DispatcherPE.scala 23:27]
  assign first_interconnects_1_io_sample_entering_bits_search_for_root =
    dispatcher_io_samples_out_1_bits_search_for_root; // @[DispatcherPE.scala 23:27]
  assign first_interconnects_1_io_sample_entering_bits_tree_to_exec = dispatcher_io_samples_out_1_bits_tree_to_exec; // @[DispatcherPE.scala 23:27]
  assign first_interconnects_1_io_sample_entering_bits_scores_0 = dispatcher_io_samples_out_1_bits_scores_0; // @[DispatcherPE.scala 23:27]
  assign first_interconnects_1_io_sample_entering_bits_scores_1 = dispatcher_io_samples_out_1_bits_scores_1; // @[DispatcherPE.scala 23:27]
  assign first_interconnects_1_io_sample_entering_bits_scores_2 = dispatcher_io_samples_out_1_bits_scores_2; // @[DispatcherPE.scala 23:27]
  assign first_interconnects_1_io_sample_entering_bits_scores_3 = dispatcher_io_samples_out_1_bits_scores_3; // @[DispatcherPE.scala 23:27]
  assign first_interconnects_1_io_sample_entering_bits_weights_0 = dispatcher_io_samples_out_1_bits_weights_0; // @[DispatcherPE.scala 23:27]
  assign first_interconnects_1_io_sample_entering_bits_weights_1 = dispatcher_io_samples_out_1_bits_weights_1; // @[DispatcherPE.scala 23:27]
  assign first_interconnects_1_io_sample_entering_bits_last = dispatcher_io_samples_out_1_bits_last; // @[DispatcherPE.scala 23:27]
  assign first_interconnects_1_io_sample_looping_valid = increment_1_io_sample_out_valid; // @[IncrementTreePE.scala 30:23]
  assign first_interconnects_1_io_sample_looping_bits_features_0 = increment_1_io_sample_out_bits_features_0; // @[IncrementTreePE.scala 30:23]
  assign first_interconnects_1_io_sample_looping_bits_features_1 = increment_1_io_sample_out_bits_features_1; // @[IncrementTreePE.scala 30:23]
  assign first_interconnects_1_io_sample_looping_bits_features_2 = increment_1_io_sample_out_bits_features_2; // @[IncrementTreePE.scala 30:23]
  assign first_interconnects_1_io_sample_looping_bits_features_3 = increment_1_io_sample_out_bits_features_3; // @[IncrementTreePE.scala 30:23]
  assign first_interconnects_1_io_sample_looping_bits_offset = increment_1_io_sample_out_bits_offset; // @[IncrementTreePE.scala 30:23]
  assign first_interconnects_1_io_sample_looping_bits_shift = increment_1_io_sample_out_bits_shift; // @[IncrementTreePE.scala 30:23]
  assign first_interconnects_1_io_sample_looping_bits_search_for_root = increment_1_io_sample_out_bits_search_for_root; // @[IncrementTreePE.scala 30:23]
  assign first_interconnects_1_io_sample_looping_bits_tree_to_exec = increment_1_io_sample_out_bits_tree_to_exec; // @[IncrementTreePE.scala 30:23]
  assign first_interconnects_1_io_sample_looping_bits_scores_0 = increment_1_io_sample_out_bits_scores_0; // @[IncrementTreePE.scala 30:23]
  assign first_interconnects_1_io_sample_looping_bits_scores_1 = increment_1_io_sample_out_bits_scores_1; // @[IncrementTreePE.scala 30:23]
  assign first_interconnects_1_io_sample_looping_bits_scores_2 = increment_1_io_sample_out_bits_scores_2; // @[IncrementTreePE.scala 30:23]
  assign first_interconnects_1_io_sample_looping_bits_scores_3 = increment_1_io_sample_out_bits_scores_3; // @[IncrementTreePE.scala 30:23]
  assign first_interconnects_1_io_sample_looping_bits_weights_0 = increment_1_io_sample_out_bits_weights_0; // @[IncrementTreePE.scala 30:23]
  assign first_interconnects_1_io_sample_looping_bits_weights_1 = increment_1_io_sample_out_bits_weights_1; // @[IncrementTreePE.scala 30:23]
  assign first_interconnects_1_io_sample_looping_bits_last = increment_1_io_sample_out_bits_last; // @[IncrementTreePE.scala 30:23]
  assign first_interconnects_1_io_sample_out_ready = pes_0_1_pe_io_sample_in_ready; // @[Interconnect.scala 83:23]
  assign last_interconnect_1_clock = clock;
  assign last_interconnect_1_reset = reset;
  assign last_interconnect_1_io_sample_in_valid = pes_1_1_pe_io_sample_out_valid; // @[TreePE.scala 153:22]
  assign last_interconnect_1_io_sample_in_bits_features_0 = pes_1_1_pe_io_sample_out_bits_features_0; // @[TreePE.scala 153:22]
  assign last_interconnect_1_io_sample_in_bits_features_1 = pes_1_1_pe_io_sample_out_bits_features_1; // @[TreePE.scala 153:22]
  assign last_interconnect_1_io_sample_in_bits_features_2 = pes_1_1_pe_io_sample_out_bits_features_2; // @[TreePE.scala 153:22]
  assign last_interconnect_1_io_sample_in_bits_features_3 = pes_1_1_pe_io_sample_out_bits_features_3; // @[TreePE.scala 153:22]
  assign last_interconnect_1_io_sample_in_bits_offset = pes_1_1_pe_io_sample_out_bits_offset; // @[TreePE.scala 153:22]
  assign last_interconnect_1_io_sample_in_bits_search_for_root = pes_1_1_pe_io_sample_out_bits_search_for_root; // @[TreePE.scala 153:22]
  assign last_interconnect_1_io_sample_in_bits_tree_to_exec = pes_1_1_pe_io_sample_out_bits_tree_to_exec; // @[TreePE.scala 153:22]
  assign last_interconnect_1_io_sample_in_bits_scores_0 = pes_1_1_pe_io_sample_out_bits_scores_0; // @[TreePE.scala 153:22]
  assign last_interconnect_1_io_sample_in_bits_scores_1 = pes_1_1_pe_io_sample_out_bits_scores_1; // @[TreePE.scala 153:22]
  assign last_interconnect_1_io_sample_in_bits_scores_2 = pes_1_1_pe_io_sample_out_bits_scores_2; // @[TreePE.scala 153:22]
  assign last_interconnect_1_io_sample_in_bits_scores_3 = pes_1_1_pe_io_sample_out_bits_scores_3; // @[TreePE.scala 153:22]
  assign last_interconnect_1_io_sample_in_bits_weights_0 = pes_1_1_pe_io_sample_out_bits_weights_0; // @[TreePE.scala 153:22]
  assign last_interconnect_1_io_sample_in_bits_weights_1 = pes_1_1_pe_io_sample_out_bits_weights_1; // @[TreePE.scala 153:22]
  assign last_interconnect_1_io_sample_in_bits_dest = pes_1_1_pe_io_sample_out_bits_dest; // @[TreePE.scala 153:22]
  assign last_interconnect_1_io_sample_in_bits_last = pes_1_1_pe_io_sample_out_bits_last; // @[TreePE.scala 153:22]
  assign last_interconnect_1_io_sample_looping_ready = increment_1_io_sample_in_ready; // @[Interconnect.scala 34:27]
  assign last_interconnect_1_io_sample_leaving_ready = voter_io_samples_in_1_ready; // @[Interconnect.scala 50:27]
  assign increment_1_clock = clock;
  assign increment_1_reset = reset;
  assign increment_1_io_sample_in_valid = last_interconnect_1_io_sample_looping_valid; // @[Interconnect.scala 34:27]
  assign increment_1_io_sample_in_bits_features_0 = last_interconnect_1_io_sample_looping_bits_features_0; // @[Interconnect.scala 34:27]
  assign increment_1_io_sample_in_bits_features_1 = last_interconnect_1_io_sample_looping_bits_features_1; // @[Interconnect.scala 34:27]
  assign increment_1_io_sample_in_bits_features_2 = last_interconnect_1_io_sample_looping_bits_features_2; // @[Interconnect.scala 34:27]
  assign increment_1_io_sample_in_bits_features_3 = last_interconnect_1_io_sample_looping_bits_features_3; // @[Interconnect.scala 34:27]
  assign increment_1_io_sample_in_bits_offset = last_interconnect_1_io_sample_looping_bits_offset; // @[Interconnect.scala 34:27]
  assign increment_1_io_sample_in_bits_shift = last_interconnect_1_io_sample_looping_bits_shift; // @[Interconnect.scala 34:27]
  assign increment_1_io_sample_in_bits_search_for_root = last_interconnect_1_io_sample_looping_bits_search_for_root; // @[Interconnect.scala 34:27]
  assign increment_1_io_sample_in_bits_tree_to_exec = last_interconnect_1_io_sample_looping_bits_tree_to_exec; // @[Interconnect.scala 34:27]
  assign increment_1_io_sample_in_bits_scores_0 = last_interconnect_1_io_sample_looping_bits_scores_0; // @[Interconnect.scala 34:27]
  assign increment_1_io_sample_in_bits_scores_1 = last_interconnect_1_io_sample_looping_bits_scores_1; // @[Interconnect.scala 34:27]
  assign increment_1_io_sample_in_bits_scores_2 = last_interconnect_1_io_sample_looping_bits_scores_2; // @[Interconnect.scala 34:27]
  assign increment_1_io_sample_in_bits_scores_3 = last_interconnect_1_io_sample_looping_bits_scores_3; // @[Interconnect.scala 34:27]
  assign increment_1_io_sample_in_bits_weights_0 = last_interconnect_1_io_sample_looping_bits_weights_0; // @[Interconnect.scala 34:27]
  assign increment_1_io_sample_in_bits_weights_1 = last_interconnect_1_io_sample_looping_bits_weights_1; // @[Interconnect.scala 34:27]
  assign increment_1_io_sample_in_bits_last = last_interconnect_1_io_sample_looping_bits_last; // @[Interconnect.scala 34:27]
  assign increment_1_io_sample_out_ready = first_interconnects_1_io_sample_looping_ready; // @[IncrementTreePE.scala 30:23]
endmodule
