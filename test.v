module ForwardConverter(
  input  [255:0] io_sample_in_TDATA,
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
  output         io_sample_out_bits_search_for_root,
  output [7:0]   io_sample_out_bits_tree_to_exec,
  output [15:0]  io_sample_out_bits_scores_0,
  output [15:0]  io_sample_out_bits_scores_1,
  output [15:0]  io_sample_out_bits_scores_2,
  output [15:0]  io_sample_out_bits_scores_3,
  output [15:0]  io_sample_out_bits_weights_0,
  output [15:0]  io_sample_out_bits_weights_1,
  output [15:0]  io_sample_out_bits_weights_2,
  output [15:0]  io_sample_out_bits_weights_3,
  output [15:0]  io_sample_out_bits_weights_4,
  output         io_sample_out_bits_last
);
  assign io_sample_in_TREADY = io_sample_out_ready; // @[Converter.scala 29:25]
  assign io_sample_out_valid = io_sample_in_TVALID; // @[Converter.scala 26:25]
  assign io_sample_out_bits_features_0 = io_sample_in_TDATA[15:0]; // @[Converter.scala 14:91]
  assign io_sample_out_bits_features_1 = io_sample_in_TDATA[31:16]; // @[Converter.scala 14:91]
  assign io_sample_out_bits_features_2 = io_sample_in_TDATA[47:32]; // @[Converter.scala 14:91]
  assign io_sample_out_bits_features_3 = io_sample_in_TDATA[63:48]; // @[Converter.scala 14:91]
  assign io_sample_out_bits_offset = io_sample_in_TDATA[73:64]; // @[Converter.scala 16:31]
  assign io_sample_out_bits_search_for_root = io_sample_in_TDATA[88]; // @[Converter.scala 18:40]
  assign io_sample_out_bits_tree_to_exec = io_sample_in_TDATA[103:96]; // @[Converter.scala 19:58]
  assign io_sample_out_bits_scores_0 = io_sample_in_TDATA[127:112]; // @[Converter.scala 21:115]
  assign io_sample_out_bits_scores_1 = io_sample_in_TDATA[143:128]; // @[Converter.scala 21:115]
  assign io_sample_out_bits_scores_2 = io_sample_in_TDATA[159:144]; // @[Converter.scala 21:115]
  assign io_sample_out_bits_scores_3 = io_sample_in_TDATA[175:160]; // @[Converter.scala 21:115]
  assign io_sample_out_bits_weights_0 = io_sample_in_TDATA[191:176]; // @[Converter.scala 24:142]
  assign io_sample_out_bits_weights_1 = io_sample_in_TDATA[207:192]; // @[Converter.scala 24:142]
  assign io_sample_out_bits_weights_2 = io_sample_in_TDATA[223:208]; // @[Converter.scala 24:142]
  assign io_sample_out_bits_weights_3 = io_sample_in_TDATA[239:224]; // @[Converter.scala 24:142]
  assign io_sample_out_bits_weights_4 = io_sample_in_TDATA[255:240]; // @[Converter.scala 24:142]
  assign io_sample_out_bits_last = io_sample_in_TLAST; // @[Converter.scala 28:29]
endmodule
module BackwardConverter(
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
  input  [15:0]  io_sample_in_bits_weights_2,
  input  [15:0]  io_sample_in_bits_weights_3,
  input  [15:0]  io_sample_in_bits_weights_4,
  input          io_sample_in_bits_last,
  output [255:0] io_sample_out_TDATA,
  output         io_sample_out_TLAST,
  input          io_sample_out_TREADY,
  output         io_sample_out_TVALID
);
  wire [87:0] io_sample_out_TDATA_lo_3 = {7'h0,io_sample_in_bits_shift,6'h0,io_sample_in_bits_offset,
    io_sample_in_bits_features_3,io_sample_in_bits_features_2,io_sample_in_bits_features_1,io_sample_in_bits_features_0}
    ; // @[Cat.scala 33:92]
  wire [23:0] io_sample_out_TDATA_hi_lo_3 = {8'h0,io_sample_in_bits_tree_to_exec,7'h0,io_sample_in_bits_search_for_root}
    ; // @[Cat.scala 33:92]
  wire [167:0] io_sample_out_TDATA_hi_3 = {io_sample_in_bits_weights_4,io_sample_in_bits_weights_3,
    io_sample_in_bits_weights_2,io_sample_in_bits_weights_1,io_sample_in_bits_weights_0,io_sample_in_bits_scores_3,
    io_sample_in_bits_scores_2,io_sample_in_bits_scores_1,io_sample_in_bits_scores_0,io_sample_out_TDATA_hi_lo_3}; // @[Cat.scala 33:92]
  assign io_sample_in_ready = io_sample_out_TREADY; // @[Converter.scala 38:24]
  assign io_sample_out_TDATA = {io_sample_out_TDATA_hi_3,io_sample_out_TDATA_lo_3}; // @[Cat.scala 33:92]
  assign io_sample_out_TLAST = io_sample_in_bits_last; // @[Converter.scala 41:25]
  assign io_sample_out_TVALID = io_sample_in_valid; // @[Converter.scala 42:26]
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
  input         io_enq_bits_search_for_root,
  input  [7:0]  io_enq_bits_tree_to_exec,
  input  [15:0] io_enq_bits_scores_0,
  input  [15:0] io_enq_bits_scores_1,
  input  [15:0] io_enq_bits_scores_2,
  input  [15:0] io_enq_bits_scores_3,
  input  [15:0] io_enq_bits_weights_0,
  input  [15:0] io_enq_bits_weights_1,
  input  [15:0] io_enq_bits_weights_2,
  input  [15:0] io_enq_bits_weights_3,
  input  [15:0] io_enq_bits_weights_4,
  input         io_enq_bits_last,
  input         io_deq_ready,
  output        io_deq_valid,
  output [15:0] io_deq_bits_features_0,
  output [15:0] io_deq_bits_features_1,
  output [15:0] io_deq_bits_features_2,
  output [15:0] io_deq_bits_features_3,
  output [9:0]  io_deq_bits_offset,
  output        io_deq_bits_search_for_root,
  output [7:0]  io_deq_bits_tree_to_exec,
  output [15:0] io_deq_bits_scores_0,
  output [15:0] io_deq_bits_scores_1,
  output [15:0] io_deq_bits_scores_2,
  output [15:0] io_deq_bits_scores_3,
  output [15:0] io_deq_bits_weights_0,
  output [15:0] io_deq_bits_weights_1,
  output [15:0] io_deq_bits_weights_2,
  output [15:0] io_deq_bits_weights_3,
  output [15:0] io_deq_bits_weights_4,
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
  reg [31:0] _RAND_33;
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
  reg [31:0] _RAND_32;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_34;
  reg [31:0] _RAND_35;
  reg [31:0] _RAND_36;
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
  reg [15:0] ram_weights_2 [0:2]; // @[Decoupled.scala 275:95]
  wire  ram_weights_2_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [1:0] ram_weights_2_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire [15:0] ram_weights_2_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire [15:0] ram_weights_2_MPORT_data; // @[Decoupled.scala 275:95]
  wire [1:0] ram_weights_2_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_weights_2_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_weights_2_MPORT_en; // @[Decoupled.scala 275:95]
  reg [15:0] ram_weights_3 [0:2]; // @[Decoupled.scala 275:95]
  wire  ram_weights_3_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [1:0] ram_weights_3_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire [15:0] ram_weights_3_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire [15:0] ram_weights_3_MPORT_data; // @[Decoupled.scala 275:95]
  wire [1:0] ram_weights_3_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_weights_3_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_weights_3_MPORT_en; // @[Decoupled.scala 275:95]
  reg [15:0] ram_weights_4 [0:2]; // @[Decoupled.scala 275:95]
  wire  ram_weights_4_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [1:0] ram_weights_4_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire [15:0] ram_weights_4_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire [15:0] ram_weights_4_MPORT_data; // @[Decoupled.scala 275:95]
  wire [1:0] ram_weights_4_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_weights_4_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_weights_4_MPORT_en; // @[Decoupled.scala 275:95]
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
  assign ram_search_for_root_io_deq_bits_MPORT_en = 1'h1;
  assign ram_search_for_root_io_deq_bits_MPORT_addr = deq_ptr_value;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign ram_search_for_root_io_deq_bits_MPORT_data = ram_search_for_root[ram_search_for_root_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `else
  assign ram_search_for_root_io_deq_bits_MPORT_data = ram_search_for_root_io_deq_bits_MPORT_addr >= 2'h3 ? _RAND_11[0:0]
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
  assign ram_tree_to_exec_io_deq_bits_MPORT_data = ram_tree_to_exec_io_deq_bits_MPORT_addr >= 2'h3 ? _RAND_13[7:0] :
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
  assign ram_scores_0_io_deq_bits_MPORT_data = ram_scores_0_io_deq_bits_MPORT_addr >= 2'h3 ? _RAND_15[15:0] :
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
  assign ram_scores_1_io_deq_bits_MPORT_data = ram_scores_1_io_deq_bits_MPORT_addr >= 2'h3 ? _RAND_17[15:0] :
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
  assign ram_scores_2_io_deq_bits_MPORT_data = ram_scores_2_io_deq_bits_MPORT_addr >= 2'h3 ? _RAND_19[15:0] :
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
  assign ram_scores_3_io_deq_bits_MPORT_data = ram_scores_3_io_deq_bits_MPORT_addr >= 2'h3 ? _RAND_21[15:0] :
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
  assign ram_weights_0_io_deq_bits_MPORT_data = ram_weights_0_io_deq_bits_MPORT_addr >= 2'h3 ? _RAND_23[15:0] :
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
  assign ram_weights_1_io_deq_bits_MPORT_data = ram_weights_1_io_deq_bits_MPORT_addr >= 2'h3 ? _RAND_25[15:0] :
    ram_weights_1[ram_weights_1_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign ram_weights_1_MPORT_data = io_enq_bits_weights_1;
  assign ram_weights_1_MPORT_addr = enq_ptr_value;
  assign ram_weights_1_MPORT_mask = 1'h1;
  assign ram_weights_1_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_weights_2_io_deq_bits_MPORT_en = 1'h1;
  assign ram_weights_2_io_deq_bits_MPORT_addr = deq_ptr_value;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign ram_weights_2_io_deq_bits_MPORT_data = ram_weights_2[ram_weights_2_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `else
  assign ram_weights_2_io_deq_bits_MPORT_data = ram_weights_2_io_deq_bits_MPORT_addr >= 2'h3 ? _RAND_27[15:0] :
    ram_weights_2[ram_weights_2_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign ram_weights_2_MPORT_data = io_enq_bits_weights_2;
  assign ram_weights_2_MPORT_addr = enq_ptr_value;
  assign ram_weights_2_MPORT_mask = 1'h1;
  assign ram_weights_2_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_weights_3_io_deq_bits_MPORT_en = 1'h1;
  assign ram_weights_3_io_deq_bits_MPORT_addr = deq_ptr_value;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign ram_weights_3_io_deq_bits_MPORT_data = ram_weights_3[ram_weights_3_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `else
  assign ram_weights_3_io_deq_bits_MPORT_data = ram_weights_3_io_deq_bits_MPORT_addr >= 2'h3 ? _RAND_29[15:0] :
    ram_weights_3[ram_weights_3_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign ram_weights_3_MPORT_data = io_enq_bits_weights_3;
  assign ram_weights_3_MPORT_addr = enq_ptr_value;
  assign ram_weights_3_MPORT_mask = 1'h1;
  assign ram_weights_3_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_weights_4_io_deq_bits_MPORT_en = 1'h1;
  assign ram_weights_4_io_deq_bits_MPORT_addr = deq_ptr_value;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign ram_weights_4_io_deq_bits_MPORT_data = ram_weights_4[ram_weights_4_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `else
  assign ram_weights_4_io_deq_bits_MPORT_data = ram_weights_4_io_deq_bits_MPORT_addr >= 2'h3 ? _RAND_31[15:0] :
    ram_weights_4[ram_weights_4_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign ram_weights_4_MPORT_data = io_enq_bits_weights_4;
  assign ram_weights_4_MPORT_addr = enq_ptr_value;
  assign ram_weights_4_MPORT_mask = 1'h1;
  assign ram_weights_4_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_last_io_deq_bits_MPORT_en = 1'h1;
  assign ram_last_io_deq_bits_MPORT_addr = deq_ptr_value;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign ram_last_io_deq_bits_MPORT_data = ram_last[ram_last_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `else
  assign ram_last_io_deq_bits_MPORT_data = ram_last_io_deq_bits_MPORT_addr >= 2'h3 ? _RAND_33[0:0] :
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
  assign io_deq_bits_search_for_root = ram_search_for_root_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_tree_to_exec = ram_tree_to_exec_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_scores_0 = ram_scores_0_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_scores_1 = ram_scores_1_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_scores_2 = ram_scores_2_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_scores_3 = ram_scores_3_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_weights_0 = ram_weights_0_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_weights_1 = ram_weights_1_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_weights_2 = ram_weights_2_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_weights_3 = ram_weights_3_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_weights_4 = ram_weights_4_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
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
    if (ram_weights_2_MPORT_en & ram_weights_2_MPORT_mask) begin
      ram_weights_2[ram_weights_2_MPORT_addr] <= ram_weights_2_MPORT_data; // @[Decoupled.scala 275:95]
    end
    if (ram_weights_3_MPORT_en & ram_weights_3_MPORT_mask) begin
      ram_weights_3[ram_weights_3_MPORT_addr] <= ram_weights_3_MPORT_data; // @[Decoupled.scala 275:95]
    end
    if (ram_weights_4_MPORT_en & ram_weights_4_MPORT_mask) begin
      ram_weights_4[ram_weights_4_MPORT_addr] <= ram_weights_4_MPORT_data; // @[Decoupled.scala 275:95]
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
  _RAND_33 = {1{`RANDOM}};
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
    ram_search_for_root[initvar] = _RAND_10[0:0];
  _RAND_12 = {1{`RANDOM}};
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    ram_tree_to_exec[initvar] = _RAND_12[7:0];
  _RAND_14 = {1{`RANDOM}};
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    ram_scores_0[initvar] = _RAND_14[15:0];
  _RAND_16 = {1{`RANDOM}};
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    ram_scores_1[initvar] = _RAND_16[15:0];
  _RAND_18 = {1{`RANDOM}};
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    ram_scores_2[initvar] = _RAND_18[15:0];
  _RAND_20 = {1{`RANDOM}};
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    ram_scores_3[initvar] = _RAND_20[15:0];
  _RAND_22 = {1{`RANDOM}};
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    ram_weights_0[initvar] = _RAND_22[15:0];
  _RAND_24 = {1{`RANDOM}};
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    ram_weights_1[initvar] = _RAND_24[15:0];
  _RAND_26 = {1{`RANDOM}};
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    ram_weights_2[initvar] = _RAND_26[15:0];
  _RAND_28 = {1{`RANDOM}};
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    ram_weights_3[initvar] = _RAND_28[15:0];
  _RAND_30 = {1{`RANDOM}};
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    ram_weights_4[initvar] = _RAND_30[15:0];
  _RAND_32 = {1{`RANDOM}};
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    ram_last[initvar] = _RAND_32[0:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_34 = {1{`RANDOM}};
  enq_ptr_value = _RAND_34[1:0];
  _RAND_35 = {1{`RANDOM}};
  deq_ptr_value = _RAND_35[1:0];
  _RAND_36 = {1{`RANDOM}};
  maybe_full = _RAND_36[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
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
  input         io_sample_in_bits_search_for_root,
  input  [7:0]  io_sample_in_bits_tree_to_exec,
  input  [15:0] io_sample_in_bits_scores_0,
  input  [15:0] io_sample_in_bits_scores_1,
  input  [15:0] io_sample_in_bits_scores_2,
  input  [15:0] io_sample_in_bits_scores_3,
  input  [15:0] io_sample_in_bits_weights_0,
  input  [15:0] io_sample_in_bits_weights_1,
  input  [15:0] io_sample_in_bits_weights_2,
  input  [15:0] io_sample_in_bits_weights_3,
  input  [15:0] io_sample_in_bits_weights_4,
  input         io_sample_in_bits_last,
  output        io_mem_enable_1,
  output [12:0] io_mem_addr_1,
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
  output [15:0] io_sample_out_bits_weights_2,
  output [15:0] io_sample_out_bits_weights_3,
  output [15:0] io_sample_out_bits_weights_4,
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
  wire  queue_io_enq_bits_search_for_root; // @[Decoupled.scala 377:21]
  wire [7:0] queue_io_enq_bits_tree_to_exec; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_scores_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_scores_1; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_scores_2; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_scores_3; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_weights_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_weights_1; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_weights_2; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_weights_3; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_weights_4; // @[Decoupled.scala 377:21]
  wire  queue_io_enq_bits_last; // @[Decoupled.scala 377:21]
  wire  queue_io_deq_ready; // @[Decoupled.scala 377:21]
  wire  queue_io_deq_valid; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_features_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_features_1; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_features_2; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_features_3; // @[Decoupled.scala 377:21]
  wire [9:0] queue_io_deq_bits_offset; // @[Decoupled.scala 377:21]
  wire  queue_io_deq_bits_search_for_root; // @[Decoupled.scala 377:21]
  wire [7:0] queue_io_deq_bits_tree_to_exec; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_scores_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_scores_1; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_scores_2; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_scores_3; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_weights_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_weights_1; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_weights_2; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_weights_3; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_weights_4; // @[Decoupled.scala 377:21]
  wire  queue_io_deq_bits_last; // @[Decoupled.scala 377:21]
  wire [9:0] _GEN_1 = queue_io_deq_bits_offset; // @[TreePE.scala 18:22 20:21]
  reg  REG; // @[TreePE.scala 37:17]
  wire [1:0] attr_id = io_mem_dataOut_1[33:32]; // @[TreePE.scala 39:37]
  wire [9:0] leftChildInfo = io_mem_dataOut_1[43:34]; // @[TreePE.scala 42:43]
  wire [9:0] rightChildInfo = io_mem_dataOut_1[53:44]; // @[TreePE.scala 43:44]
  wire  leftChildType = io_mem_dataOut_1[54]; // @[TreePE.scala 44:43]
  wire  rightChildType = io_mem_dataOut_1[55]; // @[TreePE.scala 45:44]
  wire  is_valid = io_mem_dataOut_1[56]; // @[TreePE.scala 46:38]
  wire [2:0] depth_indicator = io_mem_dataOut_1[59:57]; // @[TreePE.scala 47:45]
  reg [15:0] REG_1_0; // @[TreePE.scala 49:45]
  reg [15:0] REG_1_1; // @[TreePE.scala 49:45]
  reg [15:0] REG_1_2; // @[TreePE.scala 49:45]
  reg [15:0] REG_1_3; // @[TreePE.scala 49:45]
  reg [15:0] REG_2_0; // @[TreePE.scala 50:44]
  reg [15:0] REG_2_1; // @[TreePE.scala 50:44]
  reg [15:0] REG_2_2; // @[TreePE.scala 50:44]
  reg [15:0] REG_2_3; // @[TreePE.scala 50:44]
  reg [15:0] REG_2_4; // @[TreePE.scala 50:44]
  reg [7:0] io_sample_out_bits_tree_to_exec_REG; // @[TreePE.scala 51:49]
  reg [15:0] features_bits_0; // @[TreePE.scala 58:36]
  reg [15:0] features_bits_1; // @[TreePE.scala 58:36]
  reg [15:0] features_bits_2; // @[TreePE.scala 58:36]
  reg [15:0] features_bits_3; // @[TreePE.scala 58:36]
  reg [15:0] scores_bits_0; // @[TreePE.scala 59:34]
  reg [15:0] scores_bits_1; // @[TreePE.scala 59:34]
  reg [15:0] scores_bits_2; // @[TreePE.scala 59:34]
  reg [15:0] scores_bits_3; // @[TreePE.scala 59:34]
  reg [15:0] weights_bits_0; // @[TreePE.scala 60:35]
  reg [15:0] weights_bits_1; // @[TreePE.scala 60:35]
  reg [15:0] weights_bits_2; // @[TreePE.scala 60:35]
  reg [15:0] weights_bits_3; // @[TreePE.scala 60:35]
  reg [15:0] weights_bits_4; // @[TreePE.scala 60:35]
  wire [15:0] _shift_T = io_mem_dataOut_1[15:0]; // @[TreePE.scala 61:69]
  wire [15:0] _GEN_5 = 2'h1 == attr_id ? $signed(features_bits_1) : $signed(features_bits_0); // @[TreePE.scala 61:{45,45}]
  wire [15:0] _GEN_6 = 2'h2 == attr_id ? $signed(features_bits_2) : $signed(_GEN_5); // @[TreePE.scala 61:{45,45}]
  wire [15:0] _GEN_7 = 2'h3 == attr_id ? $signed(features_bits_3) : $signed(_GEN_6); // @[TreePE.scala 61:{45,45}]
  wire  _shift_T_1 = $signed(_GEN_7) < $signed(_shift_T); // @[TreePE.scala 61:45]
  wire  shift = $signed(_GEN_7) < $signed(_shift_T) ? leftChildType : rightChildType; // @[TreePE.scala 61:21]
  wire [9:0] offset = _shift_T_1 ? leftChildInfo : rightChildInfo; // @[TreePE.scala 62:22]
  wire  _io_sample_out_bits_offset_T = ~shift; // @[TreePE.scala 63:48]
  reg [7:0] io_sample_out_bits_offset_REG; // @[TreePE.scala 63:67]
  wire [15:0] _GEN_9 = 3'h1 == depth_indicator ? $signed(weights_bits_1) : $signed(weights_bits_0); // @[TreePE.scala 67:{97,97}]
  wire [15:0] _GEN_10 = 3'h2 == depth_indicator ? $signed(weights_bits_2) : $signed(_GEN_9); // @[TreePE.scala 67:{97,97}]
  wire [15:0] _GEN_11 = 3'h3 == depth_indicator ? $signed(weights_bits_3) : $signed(_GEN_10); // @[TreePE.scala 67:{97,97}]
  wire [15:0] _io_sample_out_bits_scores_0_T = 3'h4 == depth_indicator ? $signed(weights_bits_4) : $signed(_GEN_11); // @[TreePE.scala 67:97]
  wire [15:0] _io_sample_out_bits_scores_0_T_5 = _io_sample_out_bits_offset_T & is_valid & 10'h0 == offset ? 16'hffff : 16'h0
    ; // @[TreePE.scala 67:105]
  wire [15:0] _io_sample_out_bits_scores_0_T_7 = _io_sample_out_bits_scores_0_T & _io_sample_out_bits_scores_0_T_5; // @[TreePE.scala 67:197]
  wire [15:0] _io_sample_out_bits_scores_1_T_5 = _io_sample_out_bits_offset_T & is_valid & 10'h1 == offset ? 16'hffff : 16'h0
    ; // @[TreePE.scala 67:105]
  wire [15:0] _io_sample_out_bits_scores_1_T_7 = _io_sample_out_bits_scores_0_T & _io_sample_out_bits_scores_1_T_5; // @[TreePE.scala 67:197]
  wire [15:0] _io_sample_out_bits_scores_2_T_5 = _io_sample_out_bits_offset_T & is_valid & 10'h2 == offset ? 16'hffff : 16'h0
    ; // @[TreePE.scala 67:105]
  wire [15:0] _io_sample_out_bits_scores_2_T_7 = _io_sample_out_bits_scores_0_T & _io_sample_out_bits_scores_2_T_5; // @[TreePE.scala 67:197]
  wire [15:0] _io_sample_out_bits_scores_3_T_5 = _io_sample_out_bits_offset_T & is_valid & 10'h3 == offset ? 16'hffff : 16'h0
    ; // @[TreePE.scala 67:105]
  wire [15:0] _io_sample_out_bits_scores_3_T_7 = _io_sample_out_bits_scores_0_T & _io_sample_out_bits_scores_3_T_5; // @[TreePE.scala 67:197]
  reg  io_sample_out_bits_last_REG; // @[TreePE.scala 70:43]
  reg  queue_io_deq_ready_REG; // @[TreePE.scala 93:27]
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
    .io_enq_bits_search_for_root(queue_io_enq_bits_search_for_root),
    .io_enq_bits_tree_to_exec(queue_io_enq_bits_tree_to_exec),
    .io_enq_bits_scores_0(queue_io_enq_bits_scores_0),
    .io_enq_bits_scores_1(queue_io_enq_bits_scores_1),
    .io_enq_bits_scores_2(queue_io_enq_bits_scores_2),
    .io_enq_bits_scores_3(queue_io_enq_bits_scores_3),
    .io_enq_bits_weights_0(queue_io_enq_bits_weights_0),
    .io_enq_bits_weights_1(queue_io_enq_bits_weights_1),
    .io_enq_bits_weights_2(queue_io_enq_bits_weights_2),
    .io_enq_bits_weights_3(queue_io_enq_bits_weights_3),
    .io_enq_bits_weights_4(queue_io_enq_bits_weights_4),
    .io_enq_bits_last(queue_io_enq_bits_last),
    .io_deq_ready(queue_io_deq_ready),
    .io_deq_valid(queue_io_deq_valid),
    .io_deq_bits_features_0(queue_io_deq_bits_features_0),
    .io_deq_bits_features_1(queue_io_deq_bits_features_1),
    .io_deq_bits_features_2(queue_io_deq_bits_features_2),
    .io_deq_bits_features_3(queue_io_deq_bits_features_3),
    .io_deq_bits_offset(queue_io_deq_bits_offset),
    .io_deq_bits_search_for_root(queue_io_deq_bits_search_for_root),
    .io_deq_bits_tree_to_exec(queue_io_deq_bits_tree_to_exec),
    .io_deq_bits_scores_0(queue_io_deq_bits_scores_0),
    .io_deq_bits_scores_1(queue_io_deq_bits_scores_1),
    .io_deq_bits_scores_2(queue_io_deq_bits_scores_2),
    .io_deq_bits_scores_3(queue_io_deq_bits_scores_3),
    .io_deq_bits_weights_0(queue_io_deq_bits_weights_0),
    .io_deq_bits_weights_1(queue_io_deq_bits_weights_1),
    .io_deq_bits_weights_2(queue_io_deq_bits_weights_2),
    .io_deq_bits_weights_3(queue_io_deq_bits_weights_3),
    .io_deq_bits_weights_4(queue_io_deq_bits_weights_4),
    .io_deq_bits_last(queue_io_deq_bits_last)
  );
  assign io_sample_in_ready = queue_io_enq_ready; // @[Decoupled.scala 381:17]
  assign io_mem_enable_1 = queue_io_deq_valid; // @[TreePE.scala 18:22 19:23 24:23]
  assign io_mem_addr_1 = {{3'd0}, _GEN_1};
  assign io_sample_out_valid = REG; // @[TreePE.scala 37:31 53:27 90:27]
  assign io_sample_out_bits_features_0 = REG_1_0; // @[TreePE.scala 37:31 49:35]
  assign io_sample_out_bits_features_1 = REG_1_1; // @[TreePE.scala 37:31 49:35]
  assign io_sample_out_bits_features_2 = REG_1_2; // @[TreePE.scala 37:31 49:35]
  assign io_sample_out_bits_features_3 = REG_1_3; // @[TreePE.scala 37:31 49:35]
  assign io_sample_out_bits_offset = ~shift ? {{2'd0}, io_sample_out_bits_offset_REG} : offset; // @[TreePE.scala 63:41]
  assign io_sample_out_bits_search_for_root = ~shift; // @[TreePE.scala 65:47]
  assign io_sample_out_bits_tree_to_exec = io_sample_out_bits_tree_to_exec_REG; // @[TreePE.scala 37:31 51:39]
  assign io_sample_out_bits_scores_0 = $signed(scores_bits_0) + $signed(_io_sample_out_bits_scores_0_T_7); // @[TreePE.scala 67:58]
  assign io_sample_out_bits_scores_1 = $signed(scores_bits_1) + $signed(_io_sample_out_bits_scores_1_T_7); // @[TreePE.scala 67:58]
  assign io_sample_out_bits_scores_2 = $signed(scores_bits_2) + $signed(_io_sample_out_bits_scores_2_T_7); // @[TreePE.scala 67:58]
  assign io_sample_out_bits_scores_3 = $signed(scores_bits_3) + $signed(_io_sample_out_bits_scores_3_T_7); // @[TreePE.scala 67:58]
  assign io_sample_out_bits_weights_0 = REG_2_0; // @[TreePE.scala 37:31 50:34]
  assign io_sample_out_bits_weights_1 = REG_2_1; // @[TreePE.scala 37:31 50:34]
  assign io_sample_out_bits_weights_2 = REG_2_2; // @[TreePE.scala 37:31 50:34]
  assign io_sample_out_bits_weights_3 = REG_2_3; // @[TreePE.scala 37:31 50:34]
  assign io_sample_out_bits_weights_4 = REG_2_4; // @[TreePE.scala 37:31 50:34]
  assign io_sample_out_bits_last = io_sample_out_bits_last_REG; // @[TreePE.scala 37:31 70:33]
  assign queue_clock = clock;
  assign queue_reset = reset;
  assign queue_io_enq_valid = io_sample_in_valid; // @[Decoupled.scala 379:22]
  assign queue_io_enq_bits_features_0 = io_sample_in_bits_features_0; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_features_1 = io_sample_in_bits_features_1; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_features_2 = io_sample_in_bits_features_2; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_features_3 = io_sample_in_bits_features_3; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_offset = io_sample_in_bits_offset; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_search_for_root = io_sample_in_bits_search_for_root; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_tree_to_exec = io_sample_in_bits_tree_to_exec; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_scores_0 = io_sample_in_bits_scores_0; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_scores_1 = io_sample_in_bits_scores_1; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_scores_2 = io_sample_in_bits_scores_2; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_scores_3 = io_sample_in_bits_scores_3; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_weights_0 = io_sample_in_bits_weights_0; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_weights_1 = io_sample_in_bits_weights_1; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_weights_2 = io_sample_in_bits_weights_2; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_weights_3 = io_sample_in_bits_weights_3; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_weights_4 = io_sample_in_bits_weights_4; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_last = io_sample_in_bits_last; // @[Decoupled.scala 380:21]
  assign queue_io_deq_ready = queue_io_deq_ready_REG; // @[TreePE.scala 93:17]
  always @(posedge clock) begin
    REG <= queue_io_deq_valid; // @[TreePE.scala 37:17]
    REG_1_0 <= queue_io_deq_bits_features_0; // @[TreePE.scala 49:45]
    REG_1_1 <= queue_io_deq_bits_features_1; // @[TreePE.scala 49:45]
    REG_1_2 <= queue_io_deq_bits_features_2; // @[TreePE.scala 49:45]
    REG_1_3 <= queue_io_deq_bits_features_3; // @[TreePE.scala 49:45]
    REG_2_0 <= queue_io_deq_bits_weights_0; // @[TreePE.scala 50:44]
    REG_2_1 <= queue_io_deq_bits_weights_1; // @[TreePE.scala 50:44]
    REG_2_2 <= queue_io_deq_bits_weights_2; // @[TreePE.scala 50:44]
    REG_2_3 <= queue_io_deq_bits_weights_3; // @[TreePE.scala 50:44]
    REG_2_4 <= queue_io_deq_bits_weights_4; // @[TreePE.scala 50:44]
    io_sample_out_bits_tree_to_exec_REG <= queue_io_deq_bits_tree_to_exec; // @[TreePE.scala 51:49]
    features_bits_0 <= queue_io_deq_bits_features_0; // @[TreePE.scala 58:36]
    features_bits_1 <= queue_io_deq_bits_features_1; // @[TreePE.scala 58:36]
    features_bits_2 <= queue_io_deq_bits_features_2; // @[TreePE.scala 58:36]
    features_bits_3 <= queue_io_deq_bits_features_3; // @[TreePE.scala 58:36]
    scores_bits_0 <= queue_io_deq_bits_scores_0; // @[TreePE.scala 59:34]
    scores_bits_1 <= queue_io_deq_bits_scores_1; // @[TreePE.scala 59:34]
    scores_bits_2 <= queue_io_deq_bits_scores_2; // @[TreePE.scala 59:34]
    scores_bits_3 <= queue_io_deq_bits_scores_3; // @[TreePE.scala 59:34]
    weights_bits_0 <= queue_io_deq_bits_weights_0; // @[TreePE.scala 60:35]
    weights_bits_1 <= queue_io_deq_bits_weights_1; // @[TreePE.scala 60:35]
    weights_bits_2 <= queue_io_deq_bits_weights_2; // @[TreePE.scala 60:35]
    weights_bits_3 <= queue_io_deq_bits_weights_3; // @[TreePE.scala 60:35]
    weights_bits_4 <= queue_io_deq_bits_weights_4; // @[TreePE.scala 60:35]
    io_sample_out_bits_offset_REG <= queue_io_deq_bits_tree_to_exec; // @[TreePE.scala 63:67]
    io_sample_out_bits_last_REG <= queue_io_deq_bits_last; // @[TreePE.scala 70:43]
    queue_io_deq_ready_REG <= io_sample_out_ready; // @[TreePE.scala 93:27]
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
  REG = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  REG_1_0 = _RAND_1[15:0];
  _RAND_2 = {1{`RANDOM}};
  REG_1_1 = _RAND_2[15:0];
  _RAND_3 = {1{`RANDOM}};
  REG_1_2 = _RAND_3[15:0];
  _RAND_4 = {1{`RANDOM}};
  REG_1_3 = _RAND_4[15:0];
  _RAND_5 = {1{`RANDOM}};
  REG_2_0 = _RAND_5[15:0];
  _RAND_6 = {1{`RANDOM}};
  REG_2_1 = _RAND_6[15:0];
  _RAND_7 = {1{`RANDOM}};
  REG_2_2 = _RAND_7[15:0];
  _RAND_8 = {1{`RANDOM}};
  REG_2_3 = _RAND_8[15:0];
  _RAND_9 = {1{`RANDOM}};
  REG_2_4 = _RAND_9[15:0];
  _RAND_10 = {1{`RANDOM}};
  io_sample_out_bits_tree_to_exec_REG = _RAND_10[7:0];
  _RAND_11 = {1{`RANDOM}};
  features_bits_0 = _RAND_11[15:0];
  _RAND_12 = {1{`RANDOM}};
  features_bits_1 = _RAND_12[15:0];
  _RAND_13 = {1{`RANDOM}};
  features_bits_2 = _RAND_13[15:0];
  _RAND_14 = {1{`RANDOM}};
  features_bits_3 = _RAND_14[15:0];
  _RAND_15 = {1{`RANDOM}};
  scores_bits_0 = _RAND_15[15:0];
  _RAND_16 = {1{`RANDOM}};
  scores_bits_1 = _RAND_16[15:0];
  _RAND_17 = {1{`RANDOM}};
  scores_bits_2 = _RAND_17[15:0];
  _RAND_18 = {1{`RANDOM}};
  scores_bits_3 = _RAND_18[15:0];
  _RAND_19 = {1{`RANDOM}};
  weights_bits_0 = _RAND_19[15:0];
  _RAND_20 = {1{`RANDOM}};
  weights_bits_1 = _RAND_20[15:0];
  _RAND_21 = {1{`RANDOM}};
  weights_bits_2 = _RAND_21[15:0];
  _RAND_22 = {1{`RANDOM}};
  weights_bits_3 = _RAND_22[15:0];
  _RAND_23 = {1{`RANDOM}};
  weights_bits_4 = _RAND_23[15:0];
  _RAND_24 = {1{`RANDOM}};
  io_sample_out_bits_offset_REG = _RAND_24[7:0];
  _RAND_25 = {1{`RANDOM}};
  io_sample_out_bits_last_REG = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  queue_io_deq_ready_REG = _RAND_26[0:0];
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
  input         pe_io_sample_in_bits_search_for_root,
  input  [7:0]  pe_io_sample_in_bits_tree_to_exec,
  input  [15:0] pe_io_sample_in_bits_scores_0,
  input  [15:0] pe_io_sample_in_bits_scores_1,
  input  [15:0] pe_io_sample_in_bits_scores_2,
  input  [15:0] pe_io_sample_in_bits_scores_3,
  input  [15:0] pe_io_sample_in_bits_weights_0,
  input  [15:0] pe_io_sample_in_bits_weights_1,
  input  [15:0] pe_io_sample_in_bits_weights_2,
  input  [15:0] pe_io_sample_in_bits_weights_3,
  input  [15:0] pe_io_sample_in_bits_weights_4,
  input         pe_io_sample_in_bits_last,
  output        pe_io_mem_enable_1,
  output [12:0] pe_io_mem_addr_1,
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
  output [15:0] pe_io_sample_out_bits_weights_2,
  output [15:0] pe_io_sample_out_bits_weights_3,
  output [15:0] pe_io_sample_out_bits_weights_4,
  output        pe_io_sample_out_bits_last
);
  wire  pe__clock; // @[TreePE.scala 124:18]
  wire  pe__reset; // @[TreePE.scala 124:18]
  wire  pe__io_sample_in_ready; // @[TreePE.scala 124:18]
  wire  pe__io_sample_in_valid; // @[TreePE.scala 124:18]
  wire [15:0] pe__io_sample_in_bits_features_0; // @[TreePE.scala 124:18]
  wire [15:0] pe__io_sample_in_bits_features_1; // @[TreePE.scala 124:18]
  wire [15:0] pe__io_sample_in_bits_features_2; // @[TreePE.scala 124:18]
  wire [15:0] pe__io_sample_in_bits_features_3; // @[TreePE.scala 124:18]
  wire [9:0] pe__io_sample_in_bits_offset; // @[TreePE.scala 124:18]
  wire  pe__io_sample_in_bits_search_for_root; // @[TreePE.scala 124:18]
  wire [7:0] pe__io_sample_in_bits_tree_to_exec; // @[TreePE.scala 124:18]
  wire [15:0] pe__io_sample_in_bits_scores_0; // @[TreePE.scala 124:18]
  wire [15:0] pe__io_sample_in_bits_scores_1; // @[TreePE.scala 124:18]
  wire [15:0] pe__io_sample_in_bits_scores_2; // @[TreePE.scala 124:18]
  wire [15:0] pe__io_sample_in_bits_scores_3; // @[TreePE.scala 124:18]
  wire [15:0] pe__io_sample_in_bits_weights_0; // @[TreePE.scala 124:18]
  wire [15:0] pe__io_sample_in_bits_weights_1; // @[TreePE.scala 124:18]
  wire [15:0] pe__io_sample_in_bits_weights_2; // @[TreePE.scala 124:18]
  wire [15:0] pe__io_sample_in_bits_weights_3; // @[TreePE.scala 124:18]
  wire [15:0] pe__io_sample_in_bits_weights_4; // @[TreePE.scala 124:18]
  wire  pe__io_sample_in_bits_last; // @[TreePE.scala 124:18]
  wire  pe__io_mem_enable_1; // @[TreePE.scala 124:18]
  wire [12:0] pe__io_mem_addr_1; // @[TreePE.scala 124:18]
  wire [63:0] pe__io_mem_dataOut_1; // @[TreePE.scala 124:18]
  wire  pe__io_sample_out_ready; // @[TreePE.scala 124:18]
  wire  pe__io_sample_out_valid; // @[TreePE.scala 124:18]
  wire [15:0] pe__io_sample_out_bits_features_0; // @[TreePE.scala 124:18]
  wire [15:0] pe__io_sample_out_bits_features_1; // @[TreePE.scala 124:18]
  wire [15:0] pe__io_sample_out_bits_features_2; // @[TreePE.scala 124:18]
  wire [15:0] pe__io_sample_out_bits_features_3; // @[TreePE.scala 124:18]
  wire [9:0] pe__io_sample_out_bits_offset; // @[TreePE.scala 124:18]
  wire  pe__io_sample_out_bits_search_for_root; // @[TreePE.scala 124:18]
  wire [7:0] pe__io_sample_out_bits_tree_to_exec; // @[TreePE.scala 124:18]
  wire [15:0] pe__io_sample_out_bits_scores_0; // @[TreePE.scala 124:18]
  wire [15:0] pe__io_sample_out_bits_scores_1; // @[TreePE.scala 124:18]
  wire [15:0] pe__io_sample_out_bits_scores_2; // @[TreePE.scala 124:18]
  wire [15:0] pe__io_sample_out_bits_scores_3; // @[TreePE.scala 124:18]
  wire [15:0] pe__io_sample_out_bits_weights_0; // @[TreePE.scala 124:18]
  wire [15:0] pe__io_sample_out_bits_weights_1; // @[TreePE.scala 124:18]
  wire [15:0] pe__io_sample_out_bits_weights_2; // @[TreePE.scala 124:18]
  wire [15:0] pe__io_sample_out_bits_weights_3; // @[TreePE.scala 124:18]
  wire [15:0] pe__io_sample_out_bits_weights_4; // @[TreePE.scala 124:18]
  wire  pe__io_sample_out_bits_last; // @[TreePE.scala 124:18]
  TreePE pe_ ( // @[TreePE.scala 124:18]
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
    .io_sample_in_bits_weights_2(pe__io_sample_in_bits_weights_2),
    .io_sample_in_bits_weights_3(pe__io_sample_in_bits_weights_3),
    .io_sample_in_bits_weights_4(pe__io_sample_in_bits_weights_4),
    .io_sample_in_bits_last(pe__io_sample_in_bits_last),
    .io_mem_enable_1(pe__io_mem_enable_1),
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
    .io_sample_out_bits_weights_2(pe__io_sample_out_bits_weights_2),
    .io_sample_out_bits_weights_3(pe__io_sample_out_bits_weights_3),
    .io_sample_out_bits_weights_4(pe__io_sample_out_bits_weights_4),
    .io_sample_out_bits_last(pe__io_sample_out_bits_last)
  );
  assign pe_io_sample_in_ready = pe__io_sample_in_ready; // @[TreePE.scala 126:9]
  assign pe_io_mem_enable_1 = pe__io_mem_enable_1; // @[TreePE.scala 126:9]
  assign pe_io_mem_addr_1 = pe__io_mem_addr_1; // @[TreePE.scala 126:9]
  assign pe_io_sample_out_valid = pe__io_sample_out_valid; // @[TreePE.scala 126:9]
  assign pe_io_sample_out_bits_features_0 = pe__io_sample_out_bits_features_0; // @[TreePE.scala 126:9]
  assign pe_io_sample_out_bits_features_1 = pe__io_sample_out_bits_features_1; // @[TreePE.scala 126:9]
  assign pe_io_sample_out_bits_features_2 = pe__io_sample_out_bits_features_2; // @[TreePE.scala 126:9]
  assign pe_io_sample_out_bits_features_3 = pe__io_sample_out_bits_features_3; // @[TreePE.scala 126:9]
  assign pe_io_sample_out_bits_offset = pe__io_sample_out_bits_offset; // @[TreePE.scala 126:9]
  assign pe_io_sample_out_bits_search_for_root = pe__io_sample_out_bits_search_for_root; // @[TreePE.scala 126:9]
  assign pe_io_sample_out_bits_tree_to_exec = pe__io_sample_out_bits_tree_to_exec; // @[TreePE.scala 126:9]
  assign pe_io_sample_out_bits_scores_0 = pe__io_sample_out_bits_scores_0; // @[TreePE.scala 126:9]
  assign pe_io_sample_out_bits_scores_1 = pe__io_sample_out_bits_scores_1; // @[TreePE.scala 126:9]
  assign pe_io_sample_out_bits_scores_2 = pe__io_sample_out_bits_scores_2; // @[TreePE.scala 126:9]
  assign pe_io_sample_out_bits_scores_3 = pe__io_sample_out_bits_scores_3; // @[TreePE.scala 126:9]
  assign pe_io_sample_out_bits_weights_0 = pe__io_sample_out_bits_weights_0; // @[TreePE.scala 126:9]
  assign pe_io_sample_out_bits_weights_1 = pe__io_sample_out_bits_weights_1; // @[TreePE.scala 126:9]
  assign pe_io_sample_out_bits_weights_2 = pe__io_sample_out_bits_weights_2; // @[TreePE.scala 126:9]
  assign pe_io_sample_out_bits_weights_3 = pe__io_sample_out_bits_weights_3; // @[TreePE.scala 126:9]
  assign pe_io_sample_out_bits_weights_4 = pe__io_sample_out_bits_weights_4; // @[TreePE.scala 126:9]
  assign pe_io_sample_out_bits_last = pe__io_sample_out_bits_last; // @[TreePE.scala 126:9]
  assign pe__clock = clock;
  assign pe__reset = reset;
  assign pe__io_sample_in_valid = pe_io_sample_in_valid; // @[TreePE.scala 126:9]
  assign pe__io_sample_in_bits_features_0 = pe_io_sample_in_bits_features_0; // @[TreePE.scala 126:9]
  assign pe__io_sample_in_bits_features_1 = pe_io_sample_in_bits_features_1; // @[TreePE.scala 126:9]
  assign pe__io_sample_in_bits_features_2 = pe_io_sample_in_bits_features_2; // @[TreePE.scala 126:9]
  assign pe__io_sample_in_bits_features_3 = pe_io_sample_in_bits_features_3; // @[TreePE.scala 126:9]
  assign pe__io_sample_in_bits_offset = pe_io_sample_in_bits_offset; // @[TreePE.scala 126:9]
  assign pe__io_sample_in_bits_search_for_root = pe_io_sample_in_bits_search_for_root; // @[TreePE.scala 126:9]
  assign pe__io_sample_in_bits_tree_to_exec = pe_io_sample_in_bits_tree_to_exec; // @[TreePE.scala 126:9]
  assign pe__io_sample_in_bits_scores_0 = pe_io_sample_in_bits_scores_0; // @[TreePE.scala 126:9]
  assign pe__io_sample_in_bits_scores_1 = pe_io_sample_in_bits_scores_1; // @[TreePE.scala 126:9]
  assign pe__io_sample_in_bits_scores_2 = pe_io_sample_in_bits_scores_2; // @[TreePE.scala 126:9]
  assign pe__io_sample_in_bits_scores_3 = pe_io_sample_in_bits_scores_3; // @[TreePE.scala 126:9]
  assign pe__io_sample_in_bits_weights_0 = pe_io_sample_in_bits_weights_0; // @[TreePE.scala 126:9]
  assign pe__io_sample_in_bits_weights_1 = pe_io_sample_in_bits_weights_1; // @[TreePE.scala 126:9]
  assign pe__io_sample_in_bits_weights_2 = pe_io_sample_in_bits_weights_2; // @[TreePE.scala 126:9]
  assign pe__io_sample_in_bits_weights_3 = pe_io_sample_in_bits_weights_3; // @[TreePE.scala 126:9]
  assign pe__io_sample_in_bits_weights_4 = pe_io_sample_in_bits_weights_4; // @[TreePE.scala 126:9]
  assign pe__io_sample_in_bits_last = pe_io_sample_in_bits_last; // @[TreePE.scala 126:9]
  assign pe__io_mem_dataOut_1 = pe_io_mem_dataOut_1; // @[TreePE.scala 126:9]
  assign pe__io_sample_out_ready = pe_io_sample_out_ready; // @[TreePE.scala 126:9]
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
  input  [15:0] io_sample_in_bits_weights_2,
  input  [15:0] io_sample_in_bits_weights_3,
  input  [15:0] io_sample_in_bits_weights_4,
  input         io_sample_in_bits_last,
  output        io_mem_enable_1,
  output [12:0] io_mem_addr_1,
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
  output [15:0] io_sample_out_bits_weights_2,
  output [15:0] io_sample_out_bits_weights_3,
  output [15:0] io_sample_out_bits_weights_4,
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
  wire  queue_io_enq_bits_search_for_root; // @[Decoupled.scala 377:21]
  wire [7:0] queue_io_enq_bits_tree_to_exec; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_scores_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_scores_1; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_scores_2; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_scores_3; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_weights_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_weights_1; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_weights_2; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_weights_3; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_weights_4; // @[Decoupled.scala 377:21]
  wire  queue_io_enq_bits_last; // @[Decoupled.scala 377:21]
  wire  queue_io_deq_ready; // @[Decoupled.scala 377:21]
  wire  queue_io_deq_valid; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_features_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_features_1; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_features_2; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_features_3; // @[Decoupled.scala 377:21]
  wire [9:0] queue_io_deq_bits_offset; // @[Decoupled.scala 377:21]
  wire  queue_io_deq_bits_search_for_root; // @[Decoupled.scala 377:21]
  wire [7:0] queue_io_deq_bits_tree_to_exec; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_scores_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_scores_1; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_scores_2; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_scores_3; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_weights_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_weights_1; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_weights_2; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_weights_3; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_weights_4; // @[Decoupled.scala 377:21]
  wire  queue_io_deq_bits_last; // @[Decoupled.scala 377:21]
  wire [9:0] _GEN_1 = queue_io_deq_bits_offset; // @[TreePE.scala 18:22 20:21]
  reg  REG; // @[TreePE.scala 37:17]
  wire [1:0] attr_id = io_mem_dataOut_1[33:32]; // @[TreePE.scala 39:37]
  wire [9:0] leftChildInfo = io_mem_dataOut_1[43:34]; // @[TreePE.scala 42:43]
  wire [9:0] rightChildInfo = io_mem_dataOut_1[53:44]; // @[TreePE.scala 43:44]
  wire  leftChildType = io_mem_dataOut_1[54]; // @[TreePE.scala 44:43]
  wire  rightChildType = io_mem_dataOut_1[55]; // @[TreePE.scala 45:44]
  wire  is_valid = io_mem_dataOut_1[56]; // @[TreePE.scala 46:38]
  wire [2:0] depth_indicator = io_mem_dataOut_1[59:57]; // @[TreePE.scala 47:45]
  reg [15:0] REG_1_0; // @[TreePE.scala 49:45]
  reg [15:0] REG_1_1; // @[TreePE.scala 49:45]
  reg [15:0] REG_1_2; // @[TreePE.scala 49:45]
  reg [15:0] REG_1_3; // @[TreePE.scala 49:45]
  reg [15:0] REG_2_0; // @[TreePE.scala 50:44]
  reg [15:0] REG_2_1; // @[TreePE.scala 50:44]
  reg [15:0] REG_2_2; // @[TreePE.scala 50:44]
  reg [15:0] REG_2_3; // @[TreePE.scala 50:44]
  reg [15:0] REG_2_4; // @[TreePE.scala 50:44]
  reg [7:0] io_sample_out_bits_tree_to_exec_REG; // @[TreePE.scala 51:49]
  reg [15:0] features_bits_0; // @[TreePE.scala 74:36]
  reg [15:0] features_bits_1; // @[TreePE.scala 74:36]
  reg [15:0] features_bits_2; // @[TreePE.scala 74:36]
  reg [15:0] features_bits_3; // @[TreePE.scala 74:36]
  reg [15:0] scores_bits_0; // @[TreePE.scala 75:34]
  reg [15:0] scores_bits_1; // @[TreePE.scala 75:34]
  reg [15:0] scores_bits_2; // @[TreePE.scala 75:34]
  reg [15:0] scores_bits_3; // @[TreePE.scala 75:34]
  reg [15:0] weights_bits_0; // @[TreePE.scala 76:35]
  reg [15:0] weights_bits_1; // @[TreePE.scala 76:35]
  reg [15:0] weights_bits_2; // @[TreePE.scala 76:35]
  reg [15:0] weights_bits_3; // @[TreePE.scala 76:35]
  reg [15:0] weights_bits_4; // @[TreePE.scala 76:35]
  wire [15:0] _shift_T = io_mem_dataOut_1[15:0]; // @[TreePE.scala 77:69]
  wire [15:0] _GEN_5 = 2'h1 == attr_id ? $signed(features_bits_1) : $signed(features_bits_0); // @[TreePE.scala 77:{45,45}]
  wire [15:0] _GEN_6 = 2'h2 == attr_id ? $signed(features_bits_2) : $signed(_GEN_5); // @[TreePE.scala 77:{45,45}]
  wire [15:0] _GEN_7 = 2'h3 == attr_id ? $signed(features_bits_3) : $signed(_GEN_6); // @[TreePE.scala 77:{45,45}]
  wire  _shift_T_1 = $signed(_GEN_7) < $signed(_shift_T); // @[TreePE.scala 77:45]
  wire  shift = $signed(_GEN_7) < $signed(_shift_T) ? leftChildType : rightChildType; // @[TreePE.scala 77:21]
  wire [9:0] offset = _shift_T_1 ? leftChildInfo : rightChildInfo; // @[TreePE.scala 78:22]
  wire  _io_sample_out_bits_offset_T = ~shift; // @[TreePE.scala 79:48]
  reg [7:0] io_sample_out_bits_offset_REG; // @[TreePE.scala 79:97]
  wire [15:0] _GEN_9 = 3'h1 == depth_indicator ? $signed(weights_bits_1) : $signed(weights_bits_0); // @[TreePE.scala 83:{97,97}]
  wire [15:0] _GEN_10 = 3'h2 == depth_indicator ? $signed(weights_bits_2) : $signed(_GEN_9); // @[TreePE.scala 83:{97,97}]
  wire [15:0] _GEN_11 = 3'h3 == depth_indicator ? $signed(weights_bits_3) : $signed(_GEN_10); // @[TreePE.scala 83:{97,97}]
  wire [15:0] _io_sample_out_bits_scores_0_T = 3'h4 == depth_indicator ? $signed(weights_bits_4) : $signed(_GEN_11); // @[TreePE.scala 83:97]
  wire [15:0] _io_sample_out_bits_scores_0_T_7 = ~queue_io_deq_bits_search_for_root & _io_sample_out_bits_offset_T &
    is_valid & 10'h0 == offset ? 16'hffff : 16'h0; // @[TreePE.scala 83:105]
  wire [15:0] _io_sample_out_bits_scores_0_T_9 = _io_sample_out_bits_scores_0_T & _io_sample_out_bits_scores_0_T_7; // @[TreePE.scala 83:228]
  wire [15:0] _io_sample_out_bits_scores_1_T_7 = ~queue_io_deq_bits_search_for_root & _io_sample_out_bits_offset_T &
    is_valid & 10'h1 == offset ? 16'hffff : 16'h0; // @[TreePE.scala 83:105]
  wire [15:0] _io_sample_out_bits_scores_1_T_9 = _io_sample_out_bits_scores_0_T & _io_sample_out_bits_scores_1_T_7; // @[TreePE.scala 83:228]
  wire [15:0] _io_sample_out_bits_scores_2_T_7 = ~queue_io_deq_bits_search_for_root & _io_sample_out_bits_offset_T &
    is_valid & 10'h2 == offset ? 16'hffff : 16'h0; // @[TreePE.scala 83:105]
  wire [15:0] _io_sample_out_bits_scores_2_T_9 = _io_sample_out_bits_scores_0_T & _io_sample_out_bits_scores_2_T_7; // @[TreePE.scala 83:228]
  wire [15:0] _io_sample_out_bits_scores_3_T_7 = ~queue_io_deq_bits_search_for_root & _io_sample_out_bits_offset_T &
    is_valid & 10'h3 == offset ? 16'hffff : 16'h0; // @[TreePE.scala 83:105]
  wire [15:0] _io_sample_out_bits_scores_3_T_9 = _io_sample_out_bits_scores_0_T & _io_sample_out_bits_scores_3_T_7; // @[TreePE.scala 83:228]
  reg [7:0] io_sample_out_bits_dest_REG; // @[TreePE.scala 85:43]
  reg  io_sample_out_bits_last_REG; // @[TreePE.scala 86:43]
  reg  queue_io_deq_ready_REG; // @[TreePE.scala 93:27]
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
    .io_enq_bits_search_for_root(queue_io_enq_bits_search_for_root),
    .io_enq_bits_tree_to_exec(queue_io_enq_bits_tree_to_exec),
    .io_enq_bits_scores_0(queue_io_enq_bits_scores_0),
    .io_enq_bits_scores_1(queue_io_enq_bits_scores_1),
    .io_enq_bits_scores_2(queue_io_enq_bits_scores_2),
    .io_enq_bits_scores_3(queue_io_enq_bits_scores_3),
    .io_enq_bits_weights_0(queue_io_enq_bits_weights_0),
    .io_enq_bits_weights_1(queue_io_enq_bits_weights_1),
    .io_enq_bits_weights_2(queue_io_enq_bits_weights_2),
    .io_enq_bits_weights_3(queue_io_enq_bits_weights_3),
    .io_enq_bits_weights_4(queue_io_enq_bits_weights_4),
    .io_enq_bits_last(queue_io_enq_bits_last),
    .io_deq_ready(queue_io_deq_ready),
    .io_deq_valid(queue_io_deq_valid),
    .io_deq_bits_features_0(queue_io_deq_bits_features_0),
    .io_deq_bits_features_1(queue_io_deq_bits_features_1),
    .io_deq_bits_features_2(queue_io_deq_bits_features_2),
    .io_deq_bits_features_3(queue_io_deq_bits_features_3),
    .io_deq_bits_offset(queue_io_deq_bits_offset),
    .io_deq_bits_search_for_root(queue_io_deq_bits_search_for_root),
    .io_deq_bits_tree_to_exec(queue_io_deq_bits_tree_to_exec),
    .io_deq_bits_scores_0(queue_io_deq_bits_scores_0),
    .io_deq_bits_scores_1(queue_io_deq_bits_scores_1),
    .io_deq_bits_scores_2(queue_io_deq_bits_scores_2),
    .io_deq_bits_scores_3(queue_io_deq_bits_scores_3),
    .io_deq_bits_weights_0(queue_io_deq_bits_weights_0),
    .io_deq_bits_weights_1(queue_io_deq_bits_weights_1),
    .io_deq_bits_weights_2(queue_io_deq_bits_weights_2),
    .io_deq_bits_weights_3(queue_io_deq_bits_weights_3),
    .io_deq_bits_weights_4(queue_io_deq_bits_weights_4),
    .io_deq_bits_last(queue_io_deq_bits_last)
  );
  assign io_sample_in_ready = queue_io_enq_ready; // @[Decoupled.scala 381:17]
  assign io_mem_enable_1 = queue_io_deq_valid; // @[TreePE.scala 18:22 19:23 24:23]
  assign io_mem_addr_1 = {{3'd0}, _GEN_1};
  assign io_sample_out_valid = REG; // @[TreePE.scala 37:31 53:27 90:27]
  assign io_sample_out_bits_features_0 = REG_1_0; // @[TreePE.scala 37:31 49:35]
  assign io_sample_out_bits_features_1 = REG_1_1; // @[TreePE.scala 37:31 49:35]
  assign io_sample_out_bits_features_2 = REG_1_2; // @[TreePE.scala 37:31 49:35]
  assign io_sample_out_bits_features_3 = REG_1_3; // @[TreePE.scala 37:31 49:35]
  assign io_sample_out_bits_offset = ~shift | queue_io_deq_bits_search_for_root ? {{2'd0}, io_sample_out_bits_offset_REG
    } : offset; // @[TreePE.scala 79:41]
  assign io_sample_out_bits_search_for_root = _io_sample_out_bits_offset_T | queue_io_deq_bits_search_for_root; // @[TreePE.scala 81:54]
  assign io_sample_out_bits_tree_to_exec = io_sample_out_bits_tree_to_exec_REG; // @[TreePE.scala 37:31 51:39]
  assign io_sample_out_bits_scores_0 = $signed(scores_bits_0) + $signed(_io_sample_out_bits_scores_0_T_9); // @[TreePE.scala 83:58]
  assign io_sample_out_bits_scores_1 = $signed(scores_bits_1) + $signed(_io_sample_out_bits_scores_1_T_9); // @[TreePE.scala 83:58]
  assign io_sample_out_bits_scores_2 = $signed(scores_bits_2) + $signed(_io_sample_out_bits_scores_2_T_9); // @[TreePE.scala 83:58]
  assign io_sample_out_bits_scores_3 = $signed(scores_bits_3) + $signed(_io_sample_out_bits_scores_3_T_9); // @[TreePE.scala 83:58]
  assign io_sample_out_bits_weights_0 = REG_2_0; // @[TreePE.scala 37:31 50:34]
  assign io_sample_out_bits_weights_1 = REG_2_1; // @[TreePE.scala 37:31 50:34]
  assign io_sample_out_bits_weights_2 = REG_2_2; // @[TreePE.scala 37:31 50:34]
  assign io_sample_out_bits_weights_3 = REG_2_3; // @[TreePE.scala 37:31 50:34]
  assign io_sample_out_bits_weights_4 = REG_2_4; // @[TreePE.scala 37:31 50:34]
  assign io_sample_out_bits_dest = io_sample_out_bits_dest_REG == 8'h9; // @[TreePE.scala 85:69]
  assign io_sample_out_bits_last = io_sample_out_bits_last_REG; // @[TreePE.scala 37:31 86:33]
  assign queue_clock = clock;
  assign queue_reset = reset;
  assign queue_io_enq_valid = io_sample_in_valid; // @[Decoupled.scala 379:22]
  assign queue_io_enq_bits_features_0 = io_sample_in_bits_features_0; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_features_1 = io_sample_in_bits_features_1; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_features_2 = io_sample_in_bits_features_2; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_features_3 = io_sample_in_bits_features_3; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_offset = io_sample_in_bits_offset; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_search_for_root = io_sample_in_bits_search_for_root; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_tree_to_exec = io_sample_in_bits_tree_to_exec; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_scores_0 = io_sample_in_bits_scores_0; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_scores_1 = io_sample_in_bits_scores_1; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_scores_2 = io_sample_in_bits_scores_2; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_scores_3 = io_sample_in_bits_scores_3; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_weights_0 = io_sample_in_bits_weights_0; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_weights_1 = io_sample_in_bits_weights_1; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_weights_2 = io_sample_in_bits_weights_2; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_weights_3 = io_sample_in_bits_weights_3; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_weights_4 = io_sample_in_bits_weights_4; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_last = io_sample_in_bits_last; // @[Decoupled.scala 380:21]
  assign queue_io_deq_ready = queue_io_deq_ready_REG; // @[TreePE.scala 93:17]
  always @(posedge clock) begin
    REG <= queue_io_deq_valid; // @[TreePE.scala 37:17]
    REG_1_0 <= queue_io_deq_bits_features_0; // @[TreePE.scala 49:45]
    REG_1_1 <= queue_io_deq_bits_features_1; // @[TreePE.scala 49:45]
    REG_1_2 <= queue_io_deq_bits_features_2; // @[TreePE.scala 49:45]
    REG_1_3 <= queue_io_deq_bits_features_3; // @[TreePE.scala 49:45]
    REG_2_0 <= queue_io_deq_bits_weights_0; // @[TreePE.scala 50:44]
    REG_2_1 <= queue_io_deq_bits_weights_1; // @[TreePE.scala 50:44]
    REG_2_2 <= queue_io_deq_bits_weights_2; // @[TreePE.scala 50:44]
    REG_2_3 <= queue_io_deq_bits_weights_3; // @[TreePE.scala 50:44]
    REG_2_4 <= queue_io_deq_bits_weights_4; // @[TreePE.scala 50:44]
    io_sample_out_bits_tree_to_exec_REG <= queue_io_deq_bits_tree_to_exec; // @[TreePE.scala 51:49]
    features_bits_0 <= queue_io_deq_bits_features_0; // @[TreePE.scala 74:36]
    features_bits_1 <= queue_io_deq_bits_features_1; // @[TreePE.scala 74:36]
    features_bits_2 <= queue_io_deq_bits_features_2; // @[TreePE.scala 74:36]
    features_bits_3 <= queue_io_deq_bits_features_3; // @[TreePE.scala 74:36]
    scores_bits_0 <= queue_io_deq_bits_scores_0; // @[TreePE.scala 75:34]
    scores_bits_1 <= queue_io_deq_bits_scores_1; // @[TreePE.scala 75:34]
    scores_bits_2 <= queue_io_deq_bits_scores_2; // @[TreePE.scala 75:34]
    scores_bits_3 <= queue_io_deq_bits_scores_3; // @[TreePE.scala 75:34]
    weights_bits_0 <= queue_io_deq_bits_weights_0; // @[TreePE.scala 76:35]
    weights_bits_1 <= queue_io_deq_bits_weights_1; // @[TreePE.scala 76:35]
    weights_bits_2 <= queue_io_deq_bits_weights_2; // @[TreePE.scala 76:35]
    weights_bits_3 <= queue_io_deq_bits_weights_3; // @[TreePE.scala 76:35]
    weights_bits_4 <= queue_io_deq_bits_weights_4; // @[TreePE.scala 76:35]
    io_sample_out_bits_offset_REG <= queue_io_deq_bits_tree_to_exec; // @[TreePE.scala 79:97]
    io_sample_out_bits_dest_REG <= queue_io_deq_bits_tree_to_exec; // @[TreePE.scala 85:43]
    io_sample_out_bits_last_REG <= queue_io_deq_bits_last; // @[TreePE.scala 86:43]
    queue_io_deq_ready_REG <= io_sample_out_ready; // @[TreePE.scala 93:27]
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
  REG = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  REG_1_0 = _RAND_1[15:0];
  _RAND_2 = {1{`RANDOM}};
  REG_1_1 = _RAND_2[15:0];
  _RAND_3 = {1{`RANDOM}};
  REG_1_2 = _RAND_3[15:0];
  _RAND_4 = {1{`RANDOM}};
  REG_1_3 = _RAND_4[15:0];
  _RAND_5 = {1{`RANDOM}};
  REG_2_0 = _RAND_5[15:0];
  _RAND_6 = {1{`RANDOM}};
  REG_2_1 = _RAND_6[15:0];
  _RAND_7 = {1{`RANDOM}};
  REG_2_2 = _RAND_7[15:0];
  _RAND_8 = {1{`RANDOM}};
  REG_2_3 = _RAND_8[15:0];
  _RAND_9 = {1{`RANDOM}};
  REG_2_4 = _RAND_9[15:0];
  _RAND_10 = {1{`RANDOM}};
  io_sample_out_bits_tree_to_exec_REG = _RAND_10[7:0];
  _RAND_11 = {1{`RANDOM}};
  features_bits_0 = _RAND_11[15:0];
  _RAND_12 = {1{`RANDOM}};
  features_bits_1 = _RAND_12[15:0];
  _RAND_13 = {1{`RANDOM}};
  features_bits_2 = _RAND_13[15:0];
  _RAND_14 = {1{`RANDOM}};
  features_bits_3 = _RAND_14[15:0];
  _RAND_15 = {1{`RANDOM}};
  scores_bits_0 = _RAND_15[15:0];
  _RAND_16 = {1{`RANDOM}};
  scores_bits_1 = _RAND_16[15:0];
  _RAND_17 = {1{`RANDOM}};
  scores_bits_2 = _RAND_17[15:0];
  _RAND_18 = {1{`RANDOM}};
  scores_bits_3 = _RAND_18[15:0];
  _RAND_19 = {1{`RANDOM}};
  weights_bits_0 = _RAND_19[15:0];
  _RAND_20 = {1{`RANDOM}};
  weights_bits_1 = _RAND_20[15:0];
  _RAND_21 = {1{`RANDOM}};
  weights_bits_2 = _RAND_21[15:0];
  _RAND_22 = {1{`RANDOM}};
  weights_bits_3 = _RAND_22[15:0];
  _RAND_23 = {1{`RANDOM}};
  weights_bits_4 = _RAND_23[15:0];
  _RAND_24 = {1{`RANDOM}};
  io_sample_out_bits_offset_REG = _RAND_24[7:0];
  _RAND_25 = {1{`RANDOM}};
  io_sample_out_bits_dest_REG = _RAND_25[7:0];
  _RAND_26 = {1{`RANDOM}};
  io_sample_out_bits_last_REG = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  queue_io_deq_ready_REG = _RAND_27[0:0];
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
  input  [15:0] pe_io_sample_in_bits_weights_2,
  input  [15:0] pe_io_sample_in_bits_weights_3,
  input  [15:0] pe_io_sample_in_bits_weights_4,
  input         pe_io_sample_in_bits_last,
  output        pe_io_mem_enable_1,
  output [12:0] pe_io_mem_addr_1,
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
  output [15:0] pe_io_sample_out_bits_weights_2,
  output [15:0] pe_io_sample_out_bits_weights_3,
  output [15:0] pe_io_sample_out_bits_weights_4,
  output        pe_io_sample_out_bits_dest,
  output        pe_io_sample_out_bits_last
);
  wire  pe__clock; // @[TreePE.scala 124:18]
  wire  pe__reset; // @[TreePE.scala 124:18]
  wire  pe__io_sample_in_ready; // @[TreePE.scala 124:18]
  wire  pe__io_sample_in_valid; // @[TreePE.scala 124:18]
  wire [15:0] pe__io_sample_in_bits_features_0; // @[TreePE.scala 124:18]
  wire [15:0] pe__io_sample_in_bits_features_1; // @[TreePE.scala 124:18]
  wire [15:0] pe__io_sample_in_bits_features_2; // @[TreePE.scala 124:18]
  wire [15:0] pe__io_sample_in_bits_features_3; // @[TreePE.scala 124:18]
  wire [9:0] pe__io_sample_in_bits_offset; // @[TreePE.scala 124:18]
  wire  pe__io_sample_in_bits_search_for_root; // @[TreePE.scala 124:18]
  wire [7:0] pe__io_sample_in_bits_tree_to_exec; // @[TreePE.scala 124:18]
  wire [15:0] pe__io_sample_in_bits_scores_0; // @[TreePE.scala 124:18]
  wire [15:0] pe__io_sample_in_bits_scores_1; // @[TreePE.scala 124:18]
  wire [15:0] pe__io_sample_in_bits_scores_2; // @[TreePE.scala 124:18]
  wire [15:0] pe__io_sample_in_bits_scores_3; // @[TreePE.scala 124:18]
  wire [15:0] pe__io_sample_in_bits_weights_0; // @[TreePE.scala 124:18]
  wire [15:0] pe__io_sample_in_bits_weights_1; // @[TreePE.scala 124:18]
  wire [15:0] pe__io_sample_in_bits_weights_2; // @[TreePE.scala 124:18]
  wire [15:0] pe__io_sample_in_bits_weights_3; // @[TreePE.scala 124:18]
  wire [15:0] pe__io_sample_in_bits_weights_4; // @[TreePE.scala 124:18]
  wire  pe__io_sample_in_bits_last; // @[TreePE.scala 124:18]
  wire  pe__io_mem_enable_1; // @[TreePE.scala 124:18]
  wire [12:0] pe__io_mem_addr_1; // @[TreePE.scala 124:18]
  wire [63:0] pe__io_mem_dataOut_1; // @[TreePE.scala 124:18]
  wire  pe__io_sample_out_ready; // @[TreePE.scala 124:18]
  wire  pe__io_sample_out_valid; // @[TreePE.scala 124:18]
  wire [15:0] pe__io_sample_out_bits_features_0; // @[TreePE.scala 124:18]
  wire [15:0] pe__io_sample_out_bits_features_1; // @[TreePE.scala 124:18]
  wire [15:0] pe__io_sample_out_bits_features_2; // @[TreePE.scala 124:18]
  wire [15:0] pe__io_sample_out_bits_features_3; // @[TreePE.scala 124:18]
  wire [9:0] pe__io_sample_out_bits_offset; // @[TreePE.scala 124:18]
  wire  pe__io_sample_out_bits_search_for_root; // @[TreePE.scala 124:18]
  wire [7:0] pe__io_sample_out_bits_tree_to_exec; // @[TreePE.scala 124:18]
  wire [15:0] pe__io_sample_out_bits_scores_0; // @[TreePE.scala 124:18]
  wire [15:0] pe__io_sample_out_bits_scores_1; // @[TreePE.scala 124:18]
  wire [15:0] pe__io_sample_out_bits_scores_2; // @[TreePE.scala 124:18]
  wire [15:0] pe__io_sample_out_bits_scores_3; // @[TreePE.scala 124:18]
  wire [15:0] pe__io_sample_out_bits_weights_0; // @[TreePE.scala 124:18]
  wire [15:0] pe__io_sample_out_bits_weights_1; // @[TreePE.scala 124:18]
  wire [15:0] pe__io_sample_out_bits_weights_2; // @[TreePE.scala 124:18]
  wire [15:0] pe__io_sample_out_bits_weights_3; // @[TreePE.scala 124:18]
  wire [15:0] pe__io_sample_out_bits_weights_4; // @[TreePE.scala 124:18]
  wire  pe__io_sample_out_bits_dest; // @[TreePE.scala 124:18]
  wire  pe__io_sample_out_bits_last; // @[TreePE.scala 124:18]
  TreePE_1 pe_ ( // @[TreePE.scala 124:18]
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
    .io_sample_in_bits_weights_2(pe__io_sample_in_bits_weights_2),
    .io_sample_in_bits_weights_3(pe__io_sample_in_bits_weights_3),
    .io_sample_in_bits_weights_4(pe__io_sample_in_bits_weights_4),
    .io_sample_in_bits_last(pe__io_sample_in_bits_last),
    .io_mem_enable_1(pe__io_mem_enable_1),
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
    .io_sample_out_bits_weights_2(pe__io_sample_out_bits_weights_2),
    .io_sample_out_bits_weights_3(pe__io_sample_out_bits_weights_3),
    .io_sample_out_bits_weights_4(pe__io_sample_out_bits_weights_4),
    .io_sample_out_bits_dest(pe__io_sample_out_bits_dest),
    .io_sample_out_bits_last(pe__io_sample_out_bits_last)
  );
  assign pe_io_sample_in_ready = pe__io_sample_in_ready; // @[TreePE.scala 126:9]
  assign pe_io_mem_enable_1 = pe__io_mem_enable_1; // @[TreePE.scala 126:9]
  assign pe_io_mem_addr_1 = pe__io_mem_addr_1; // @[TreePE.scala 126:9]
  assign pe_io_sample_out_valid = pe__io_sample_out_valid; // @[TreePE.scala 126:9]
  assign pe_io_sample_out_bits_features_0 = pe__io_sample_out_bits_features_0; // @[TreePE.scala 126:9]
  assign pe_io_sample_out_bits_features_1 = pe__io_sample_out_bits_features_1; // @[TreePE.scala 126:9]
  assign pe_io_sample_out_bits_features_2 = pe__io_sample_out_bits_features_2; // @[TreePE.scala 126:9]
  assign pe_io_sample_out_bits_features_3 = pe__io_sample_out_bits_features_3; // @[TreePE.scala 126:9]
  assign pe_io_sample_out_bits_offset = pe__io_sample_out_bits_offset; // @[TreePE.scala 126:9]
  assign pe_io_sample_out_bits_search_for_root = pe__io_sample_out_bits_search_for_root; // @[TreePE.scala 126:9]
  assign pe_io_sample_out_bits_tree_to_exec = pe__io_sample_out_bits_tree_to_exec; // @[TreePE.scala 126:9]
  assign pe_io_sample_out_bits_scores_0 = pe__io_sample_out_bits_scores_0; // @[TreePE.scala 126:9]
  assign pe_io_sample_out_bits_scores_1 = pe__io_sample_out_bits_scores_1; // @[TreePE.scala 126:9]
  assign pe_io_sample_out_bits_scores_2 = pe__io_sample_out_bits_scores_2; // @[TreePE.scala 126:9]
  assign pe_io_sample_out_bits_scores_3 = pe__io_sample_out_bits_scores_3; // @[TreePE.scala 126:9]
  assign pe_io_sample_out_bits_weights_0 = pe__io_sample_out_bits_weights_0; // @[TreePE.scala 126:9]
  assign pe_io_sample_out_bits_weights_1 = pe__io_sample_out_bits_weights_1; // @[TreePE.scala 126:9]
  assign pe_io_sample_out_bits_weights_2 = pe__io_sample_out_bits_weights_2; // @[TreePE.scala 126:9]
  assign pe_io_sample_out_bits_weights_3 = pe__io_sample_out_bits_weights_3; // @[TreePE.scala 126:9]
  assign pe_io_sample_out_bits_weights_4 = pe__io_sample_out_bits_weights_4; // @[TreePE.scala 126:9]
  assign pe_io_sample_out_bits_dest = pe__io_sample_out_bits_dest; // @[TreePE.scala 126:9]
  assign pe_io_sample_out_bits_last = pe__io_sample_out_bits_last; // @[TreePE.scala 126:9]
  assign pe__clock = clock;
  assign pe__reset = reset;
  assign pe__io_sample_in_valid = pe_io_sample_in_valid; // @[TreePE.scala 126:9]
  assign pe__io_sample_in_bits_features_0 = pe_io_sample_in_bits_features_0; // @[TreePE.scala 126:9]
  assign pe__io_sample_in_bits_features_1 = pe_io_sample_in_bits_features_1; // @[TreePE.scala 126:9]
  assign pe__io_sample_in_bits_features_2 = pe_io_sample_in_bits_features_2; // @[TreePE.scala 126:9]
  assign pe__io_sample_in_bits_features_3 = pe_io_sample_in_bits_features_3; // @[TreePE.scala 126:9]
  assign pe__io_sample_in_bits_offset = pe_io_sample_in_bits_offset; // @[TreePE.scala 126:9]
  assign pe__io_sample_in_bits_search_for_root = pe_io_sample_in_bits_search_for_root; // @[TreePE.scala 126:9]
  assign pe__io_sample_in_bits_tree_to_exec = pe_io_sample_in_bits_tree_to_exec; // @[TreePE.scala 126:9]
  assign pe__io_sample_in_bits_scores_0 = pe_io_sample_in_bits_scores_0; // @[TreePE.scala 126:9]
  assign pe__io_sample_in_bits_scores_1 = pe_io_sample_in_bits_scores_1; // @[TreePE.scala 126:9]
  assign pe__io_sample_in_bits_scores_2 = pe_io_sample_in_bits_scores_2; // @[TreePE.scala 126:9]
  assign pe__io_sample_in_bits_scores_3 = pe_io_sample_in_bits_scores_3; // @[TreePE.scala 126:9]
  assign pe__io_sample_in_bits_weights_0 = pe_io_sample_in_bits_weights_0; // @[TreePE.scala 126:9]
  assign pe__io_sample_in_bits_weights_1 = pe_io_sample_in_bits_weights_1; // @[TreePE.scala 126:9]
  assign pe__io_sample_in_bits_weights_2 = pe_io_sample_in_bits_weights_2; // @[TreePE.scala 126:9]
  assign pe__io_sample_in_bits_weights_3 = pe_io_sample_in_bits_weights_3; // @[TreePE.scala 126:9]
  assign pe__io_sample_in_bits_weights_4 = pe_io_sample_in_bits_weights_4; // @[TreePE.scala 126:9]
  assign pe__io_sample_in_bits_last = pe_io_sample_in_bits_last; // @[TreePE.scala 126:9]
  assign pe__io_mem_dataOut_1 = pe_io_mem_dataOut_1; // @[TreePE.scala 126:9]
  assign pe__io_sample_out_ready = pe_io_sample_out_ready; // @[TreePE.scala 126:9]
endmodule
module Queue_5(
  input         clock,
  input         reset,
  output        io_enq_ready,
  input         io_enq_valid,
  input  [15:0] io_enq_bits_features_0,
  input  [15:0] io_enq_bits_features_1,
  input  [15:0] io_enq_bits_features_2,
  input  [15:0] io_enq_bits_features_3,
  input  [9:0]  io_enq_bits_offset,
  input         io_enq_bits_search_for_root,
  input  [7:0]  io_enq_bits_tree_to_exec,
  input  [15:0] io_enq_bits_scores_0,
  input  [15:0] io_enq_bits_scores_1,
  input  [15:0] io_enq_bits_scores_2,
  input  [15:0] io_enq_bits_scores_3,
  input  [15:0] io_enq_bits_weights_0,
  input  [15:0] io_enq_bits_weights_1,
  input  [15:0] io_enq_bits_weights_2,
  input  [15:0] io_enq_bits_weights_3,
  input  [15:0] io_enq_bits_weights_4,
  input         io_enq_bits_last,
  input         io_deq_ready,
  output        io_deq_valid,
  output [15:0] io_deq_bits_features_0,
  output [15:0] io_deq_bits_features_1,
  output [15:0] io_deq_bits_features_2,
  output [15:0] io_deq_bits_features_3,
  output [9:0]  io_deq_bits_offset,
  output        io_deq_bits_search_for_root,
  output [7:0]  io_deq_bits_tree_to_exec,
  output [15:0] io_deq_bits_scores_0,
  output [15:0] io_deq_bits_scores_1,
  output [15:0] io_deq_bits_scores_2,
  output [15:0] io_deq_bits_scores_3,
  output [15:0] io_deq_bits_weights_0,
  output [15:0] io_deq_bits_weights_1,
  output [15:0] io_deq_bits_weights_2,
  output [15:0] io_deq_bits_weights_3,
  output [15:0] io_deq_bits_weights_4,
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
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
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
  reg [15:0] ram_weights_2 [0:127]; // @[Decoupled.scala 275:95]
  wire  ram_weights_2_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [6:0] ram_weights_2_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire [15:0] ram_weights_2_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire [15:0] ram_weights_2_MPORT_data; // @[Decoupled.scala 275:95]
  wire [6:0] ram_weights_2_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_weights_2_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_weights_2_MPORT_en; // @[Decoupled.scala 275:95]
  reg [15:0] ram_weights_3 [0:127]; // @[Decoupled.scala 275:95]
  wire  ram_weights_3_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [6:0] ram_weights_3_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire [15:0] ram_weights_3_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire [15:0] ram_weights_3_MPORT_data; // @[Decoupled.scala 275:95]
  wire [6:0] ram_weights_3_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_weights_3_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_weights_3_MPORT_en; // @[Decoupled.scala 275:95]
  reg [15:0] ram_weights_4 [0:127]; // @[Decoupled.scala 275:95]
  wire  ram_weights_4_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [6:0] ram_weights_4_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire [15:0] ram_weights_4_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire [15:0] ram_weights_4_MPORT_data; // @[Decoupled.scala 275:95]
  wire [6:0] ram_weights_4_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_weights_4_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_weights_4_MPORT_en; // @[Decoupled.scala 275:95]
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
  assign ram_weights_2_io_deq_bits_MPORT_en = 1'h1;
  assign ram_weights_2_io_deq_bits_MPORT_addr = deq_ptr_value;
  assign ram_weights_2_io_deq_bits_MPORT_data = ram_weights_2[ram_weights_2_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  assign ram_weights_2_MPORT_data = io_enq_bits_weights_2;
  assign ram_weights_2_MPORT_addr = enq_ptr_value;
  assign ram_weights_2_MPORT_mask = 1'h1;
  assign ram_weights_2_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_weights_3_io_deq_bits_MPORT_en = 1'h1;
  assign ram_weights_3_io_deq_bits_MPORT_addr = deq_ptr_value;
  assign ram_weights_3_io_deq_bits_MPORT_data = ram_weights_3[ram_weights_3_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  assign ram_weights_3_MPORT_data = io_enq_bits_weights_3;
  assign ram_weights_3_MPORT_addr = enq_ptr_value;
  assign ram_weights_3_MPORT_mask = 1'h1;
  assign ram_weights_3_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_weights_4_io_deq_bits_MPORT_en = 1'h1;
  assign ram_weights_4_io_deq_bits_MPORT_addr = deq_ptr_value;
  assign ram_weights_4_io_deq_bits_MPORT_data = ram_weights_4[ram_weights_4_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  assign ram_weights_4_MPORT_data = io_enq_bits_weights_4;
  assign ram_weights_4_MPORT_addr = enq_ptr_value;
  assign ram_weights_4_MPORT_mask = 1'h1;
  assign ram_weights_4_MPORT_en = io_enq_ready & io_enq_valid;
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
  assign io_deq_bits_search_for_root = ram_search_for_root_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_tree_to_exec = ram_tree_to_exec_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_scores_0 = ram_scores_0_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_scores_1 = ram_scores_1_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_scores_2 = ram_scores_2_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_scores_3 = ram_scores_3_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_weights_0 = ram_weights_0_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_weights_1 = ram_weights_1_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_weights_2 = ram_weights_2_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_weights_3 = ram_weights_3_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_weights_4 = ram_weights_4_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
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
    if (ram_weights_2_MPORT_en & ram_weights_2_MPORT_mask) begin
      ram_weights_2[ram_weights_2_MPORT_addr] <= ram_weights_2_MPORT_data; // @[Decoupled.scala 275:95]
    end
    if (ram_weights_3_MPORT_en & ram_weights_3_MPORT_mask) begin
      ram_weights_3[ram_weights_3_MPORT_addr] <= ram_weights_3_MPORT_data; // @[Decoupled.scala 275:95]
    end
    if (ram_weights_4_MPORT_en & ram_weights_4_MPORT_mask) begin
      ram_weights_4[ram_weights_4_MPORT_addr] <= ram_weights_4_MPORT_data; // @[Decoupled.scala 275:95]
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
    ram_search_for_root[initvar] = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  for (initvar = 0; initvar < 128; initvar = initvar+1)
    ram_tree_to_exec[initvar] = _RAND_6[7:0];
  _RAND_7 = {1{`RANDOM}};
  for (initvar = 0; initvar < 128; initvar = initvar+1)
    ram_scores_0[initvar] = _RAND_7[15:0];
  _RAND_8 = {1{`RANDOM}};
  for (initvar = 0; initvar < 128; initvar = initvar+1)
    ram_scores_1[initvar] = _RAND_8[15:0];
  _RAND_9 = {1{`RANDOM}};
  for (initvar = 0; initvar < 128; initvar = initvar+1)
    ram_scores_2[initvar] = _RAND_9[15:0];
  _RAND_10 = {1{`RANDOM}};
  for (initvar = 0; initvar < 128; initvar = initvar+1)
    ram_scores_3[initvar] = _RAND_10[15:0];
  _RAND_11 = {1{`RANDOM}};
  for (initvar = 0; initvar < 128; initvar = initvar+1)
    ram_weights_0[initvar] = _RAND_11[15:0];
  _RAND_12 = {1{`RANDOM}};
  for (initvar = 0; initvar < 128; initvar = initvar+1)
    ram_weights_1[initvar] = _RAND_12[15:0];
  _RAND_13 = {1{`RANDOM}};
  for (initvar = 0; initvar < 128; initvar = initvar+1)
    ram_weights_2[initvar] = _RAND_13[15:0];
  _RAND_14 = {1{`RANDOM}};
  for (initvar = 0; initvar < 128; initvar = initvar+1)
    ram_weights_3[initvar] = _RAND_14[15:0];
  _RAND_15 = {1{`RANDOM}};
  for (initvar = 0; initvar < 128; initvar = initvar+1)
    ram_weights_4[initvar] = _RAND_15[15:0];
  _RAND_16 = {1{`RANDOM}};
  for (initvar = 0; initvar < 128; initvar = initvar+1)
    ram_last[initvar] = _RAND_16[0:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  enq_ptr_value = _RAND_17[6:0];
  _RAND_18 = {1{`RANDOM}};
  deq_ptr_value = _RAND_18[6:0];
  _RAND_19 = {1{`RANDOM}};
  maybe_full = _RAND_19[0:0];
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
  input         io_sample_entering_bits_search_for_root,
  input  [7:0]  io_sample_entering_bits_tree_to_exec,
  input  [15:0] io_sample_entering_bits_scores_0,
  input  [15:0] io_sample_entering_bits_scores_1,
  input  [15:0] io_sample_entering_bits_scores_2,
  input  [15:0] io_sample_entering_bits_scores_3,
  input  [15:0] io_sample_entering_bits_weights_0,
  input  [15:0] io_sample_entering_bits_weights_1,
  input  [15:0] io_sample_entering_bits_weights_2,
  input  [15:0] io_sample_entering_bits_weights_3,
  input  [15:0] io_sample_entering_bits_weights_4,
  input         io_sample_entering_bits_last,
  output        io_sample_looping_ready,
  input         io_sample_looping_valid,
  input  [15:0] io_sample_looping_bits_features_0,
  input  [15:0] io_sample_looping_bits_features_1,
  input  [15:0] io_sample_looping_bits_features_2,
  input  [15:0] io_sample_looping_bits_features_3,
  input  [9:0]  io_sample_looping_bits_offset,
  input         io_sample_looping_bits_search_for_root,
  input  [7:0]  io_sample_looping_bits_tree_to_exec,
  input  [15:0] io_sample_looping_bits_scores_0,
  input  [15:0] io_sample_looping_bits_scores_1,
  input  [15:0] io_sample_looping_bits_scores_2,
  input  [15:0] io_sample_looping_bits_scores_3,
  input  [15:0] io_sample_looping_bits_weights_0,
  input  [15:0] io_sample_looping_bits_weights_1,
  input  [15:0] io_sample_looping_bits_weights_2,
  input  [15:0] io_sample_looping_bits_weights_3,
  input  [15:0] io_sample_looping_bits_weights_4,
  input         io_sample_looping_bits_last,
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
  output [15:0] io_sample_out_bits_weights_2,
  output [15:0] io_sample_out_bits_weights_3,
  output [15:0] io_sample_out_bits_weights_4,
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
  wire  queue_entering_io_enq_bits_search_for_root; // @[Decoupled.scala 377:21]
  wire [7:0] queue_entering_io_enq_bits_tree_to_exec; // @[Decoupled.scala 377:21]
  wire [15:0] queue_entering_io_enq_bits_scores_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_entering_io_enq_bits_scores_1; // @[Decoupled.scala 377:21]
  wire [15:0] queue_entering_io_enq_bits_scores_2; // @[Decoupled.scala 377:21]
  wire [15:0] queue_entering_io_enq_bits_scores_3; // @[Decoupled.scala 377:21]
  wire [15:0] queue_entering_io_enq_bits_weights_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_entering_io_enq_bits_weights_1; // @[Decoupled.scala 377:21]
  wire [15:0] queue_entering_io_enq_bits_weights_2; // @[Decoupled.scala 377:21]
  wire [15:0] queue_entering_io_enq_bits_weights_3; // @[Decoupled.scala 377:21]
  wire [15:0] queue_entering_io_enq_bits_weights_4; // @[Decoupled.scala 377:21]
  wire  queue_entering_io_enq_bits_last; // @[Decoupled.scala 377:21]
  wire  queue_entering_io_deq_ready; // @[Decoupled.scala 377:21]
  wire  queue_entering_io_deq_valid; // @[Decoupled.scala 377:21]
  wire [15:0] queue_entering_io_deq_bits_features_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_entering_io_deq_bits_features_1; // @[Decoupled.scala 377:21]
  wire [15:0] queue_entering_io_deq_bits_features_2; // @[Decoupled.scala 377:21]
  wire [15:0] queue_entering_io_deq_bits_features_3; // @[Decoupled.scala 377:21]
  wire [9:0] queue_entering_io_deq_bits_offset; // @[Decoupled.scala 377:21]
  wire  queue_entering_io_deq_bits_search_for_root; // @[Decoupled.scala 377:21]
  wire [7:0] queue_entering_io_deq_bits_tree_to_exec; // @[Decoupled.scala 377:21]
  wire [15:0] queue_entering_io_deq_bits_scores_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_entering_io_deq_bits_scores_1; // @[Decoupled.scala 377:21]
  wire [15:0] queue_entering_io_deq_bits_scores_2; // @[Decoupled.scala 377:21]
  wire [15:0] queue_entering_io_deq_bits_scores_3; // @[Decoupled.scala 377:21]
  wire [15:0] queue_entering_io_deq_bits_weights_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_entering_io_deq_bits_weights_1; // @[Decoupled.scala 377:21]
  wire [15:0] queue_entering_io_deq_bits_weights_2; // @[Decoupled.scala 377:21]
  wire [15:0] queue_entering_io_deq_bits_weights_3; // @[Decoupled.scala 377:21]
  wire [15:0] queue_entering_io_deq_bits_weights_4; // @[Decoupled.scala 377:21]
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
  wire  queue_looping_io_enq_bits_search_for_root; // @[Decoupled.scala 377:21]
  wire [7:0] queue_looping_io_enq_bits_tree_to_exec; // @[Decoupled.scala 377:21]
  wire [15:0] queue_looping_io_enq_bits_scores_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_looping_io_enq_bits_scores_1; // @[Decoupled.scala 377:21]
  wire [15:0] queue_looping_io_enq_bits_scores_2; // @[Decoupled.scala 377:21]
  wire [15:0] queue_looping_io_enq_bits_scores_3; // @[Decoupled.scala 377:21]
  wire [15:0] queue_looping_io_enq_bits_weights_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_looping_io_enq_bits_weights_1; // @[Decoupled.scala 377:21]
  wire [15:0] queue_looping_io_enq_bits_weights_2; // @[Decoupled.scala 377:21]
  wire [15:0] queue_looping_io_enq_bits_weights_3; // @[Decoupled.scala 377:21]
  wire [15:0] queue_looping_io_enq_bits_weights_4; // @[Decoupled.scala 377:21]
  wire  queue_looping_io_enq_bits_last; // @[Decoupled.scala 377:21]
  wire  queue_looping_io_deq_ready; // @[Decoupled.scala 377:21]
  wire  queue_looping_io_deq_valid; // @[Decoupled.scala 377:21]
  wire [15:0] queue_looping_io_deq_bits_features_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_looping_io_deq_bits_features_1; // @[Decoupled.scala 377:21]
  wire [15:0] queue_looping_io_deq_bits_features_2; // @[Decoupled.scala 377:21]
  wire [15:0] queue_looping_io_deq_bits_features_3; // @[Decoupled.scala 377:21]
  wire [9:0] queue_looping_io_deq_bits_offset; // @[Decoupled.scala 377:21]
  wire  queue_looping_io_deq_bits_search_for_root; // @[Decoupled.scala 377:21]
  wire [7:0] queue_looping_io_deq_bits_tree_to_exec; // @[Decoupled.scala 377:21]
  wire [15:0] queue_looping_io_deq_bits_scores_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_looping_io_deq_bits_scores_1; // @[Decoupled.scala 377:21]
  wire [15:0] queue_looping_io_deq_bits_scores_2; // @[Decoupled.scala 377:21]
  wire [15:0] queue_looping_io_deq_bits_scores_3; // @[Decoupled.scala 377:21]
  wire [15:0] queue_looping_io_deq_bits_weights_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_looping_io_deq_bits_weights_1; // @[Decoupled.scala 377:21]
  wire [15:0] queue_looping_io_deq_bits_weights_2; // @[Decoupled.scala 377:21]
  wire [15:0] queue_looping_io_deq_bits_weights_3; // @[Decoupled.scala 377:21]
  wire [15:0] queue_looping_io_deq_bits_weights_4; // @[Decoupled.scala 377:21]
  wire  queue_looping_io_deq_bits_last; // @[Decoupled.scala 377:21]
  Queue_5 queue_entering ( // @[Decoupled.scala 377:21]
    .clock(queue_entering_clock),
    .reset(queue_entering_reset),
    .io_enq_ready(queue_entering_io_enq_ready),
    .io_enq_valid(queue_entering_io_enq_valid),
    .io_enq_bits_features_0(queue_entering_io_enq_bits_features_0),
    .io_enq_bits_features_1(queue_entering_io_enq_bits_features_1),
    .io_enq_bits_features_2(queue_entering_io_enq_bits_features_2),
    .io_enq_bits_features_3(queue_entering_io_enq_bits_features_3),
    .io_enq_bits_offset(queue_entering_io_enq_bits_offset),
    .io_enq_bits_search_for_root(queue_entering_io_enq_bits_search_for_root),
    .io_enq_bits_tree_to_exec(queue_entering_io_enq_bits_tree_to_exec),
    .io_enq_bits_scores_0(queue_entering_io_enq_bits_scores_0),
    .io_enq_bits_scores_1(queue_entering_io_enq_bits_scores_1),
    .io_enq_bits_scores_2(queue_entering_io_enq_bits_scores_2),
    .io_enq_bits_scores_3(queue_entering_io_enq_bits_scores_3),
    .io_enq_bits_weights_0(queue_entering_io_enq_bits_weights_0),
    .io_enq_bits_weights_1(queue_entering_io_enq_bits_weights_1),
    .io_enq_bits_weights_2(queue_entering_io_enq_bits_weights_2),
    .io_enq_bits_weights_3(queue_entering_io_enq_bits_weights_3),
    .io_enq_bits_weights_4(queue_entering_io_enq_bits_weights_4),
    .io_enq_bits_last(queue_entering_io_enq_bits_last),
    .io_deq_ready(queue_entering_io_deq_ready),
    .io_deq_valid(queue_entering_io_deq_valid),
    .io_deq_bits_features_0(queue_entering_io_deq_bits_features_0),
    .io_deq_bits_features_1(queue_entering_io_deq_bits_features_1),
    .io_deq_bits_features_2(queue_entering_io_deq_bits_features_2),
    .io_deq_bits_features_3(queue_entering_io_deq_bits_features_3),
    .io_deq_bits_offset(queue_entering_io_deq_bits_offset),
    .io_deq_bits_search_for_root(queue_entering_io_deq_bits_search_for_root),
    .io_deq_bits_tree_to_exec(queue_entering_io_deq_bits_tree_to_exec),
    .io_deq_bits_scores_0(queue_entering_io_deq_bits_scores_0),
    .io_deq_bits_scores_1(queue_entering_io_deq_bits_scores_1),
    .io_deq_bits_scores_2(queue_entering_io_deq_bits_scores_2),
    .io_deq_bits_scores_3(queue_entering_io_deq_bits_scores_3),
    .io_deq_bits_weights_0(queue_entering_io_deq_bits_weights_0),
    .io_deq_bits_weights_1(queue_entering_io_deq_bits_weights_1),
    .io_deq_bits_weights_2(queue_entering_io_deq_bits_weights_2),
    .io_deq_bits_weights_3(queue_entering_io_deq_bits_weights_3),
    .io_deq_bits_weights_4(queue_entering_io_deq_bits_weights_4),
    .io_deq_bits_last(queue_entering_io_deq_bits_last)
  );
  Queue_5 queue_looping ( // @[Decoupled.scala 377:21]
    .clock(queue_looping_clock),
    .reset(queue_looping_reset),
    .io_enq_ready(queue_looping_io_enq_ready),
    .io_enq_valid(queue_looping_io_enq_valid),
    .io_enq_bits_features_0(queue_looping_io_enq_bits_features_0),
    .io_enq_bits_features_1(queue_looping_io_enq_bits_features_1),
    .io_enq_bits_features_2(queue_looping_io_enq_bits_features_2),
    .io_enq_bits_features_3(queue_looping_io_enq_bits_features_3),
    .io_enq_bits_offset(queue_looping_io_enq_bits_offset),
    .io_enq_bits_search_for_root(queue_looping_io_enq_bits_search_for_root),
    .io_enq_bits_tree_to_exec(queue_looping_io_enq_bits_tree_to_exec),
    .io_enq_bits_scores_0(queue_looping_io_enq_bits_scores_0),
    .io_enq_bits_scores_1(queue_looping_io_enq_bits_scores_1),
    .io_enq_bits_scores_2(queue_looping_io_enq_bits_scores_2),
    .io_enq_bits_scores_3(queue_looping_io_enq_bits_scores_3),
    .io_enq_bits_weights_0(queue_looping_io_enq_bits_weights_0),
    .io_enq_bits_weights_1(queue_looping_io_enq_bits_weights_1),
    .io_enq_bits_weights_2(queue_looping_io_enq_bits_weights_2),
    .io_enq_bits_weights_3(queue_looping_io_enq_bits_weights_3),
    .io_enq_bits_weights_4(queue_looping_io_enq_bits_weights_4),
    .io_enq_bits_last(queue_looping_io_enq_bits_last),
    .io_deq_ready(queue_looping_io_deq_ready),
    .io_deq_valid(queue_looping_io_deq_valid),
    .io_deq_bits_features_0(queue_looping_io_deq_bits_features_0),
    .io_deq_bits_features_1(queue_looping_io_deq_bits_features_1),
    .io_deq_bits_features_2(queue_looping_io_deq_bits_features_2),
    .io_deq_bits_features_3(queue_looping_io_deq_bits_features_3),
    .io_deq_bits_offset(queue_looping_io_deq_bits_offset),
    .io_deq_bits_search_for_root(queue_looping_io_deq_bits_search_for_root),
    .io_deq_bits_tree_to_exec(queue_looping_io_deq_bits_tree_to_exec),
    .io_deq_bits_scores_0(queue_looping_io_deq_bits_scores_0),
    .io_deq_bits_scores_1(queue_looping_io_deq_bits_scores_1),
    .io_deq_bits_scores_2(queue_looping_io_deq_bits_scores_2),
    .io_deq_bits_scores_3(queue_looping_io_deq_bits_scores_3),
    .io_deq_bits_weights_0(queue_looping_io_deq_bits_weights_0),
    .io_deq_bits_weights_1(queue_looping_io_deq_bits_weights_1),
    .io_deq_bits_weights_2(queue_looping_io_deq_bits_weights_2),
    .io_deq_bits_weights_3(queue_looping_io_deq_bits_weights_3),
    .io_deq_bits_weights_4(queue_looping_io_deq_bits_weights_4),
    .io_deq_bits_last(queue_looping_io_deq_bits_last)
  );
  assign io_sample_entering_ready = queue_entering_io_enq_ready; // @[Decoupled.scala 381:17]
  assign io_sample_looping_ready = queue_looping_io_enq_ready; // @[Decoupled.scala 381:17]
  assign io_sample_out_valid = queue_looping_io_deq_valid ? queue_looping_io_deq_valid : queue_entering_io_deq_valid; // @[Interconnect.scala 66:31]
  assign io_sample_out_bits_features_0 = queue_looping_io_deq_valid ? $signed(queue_looping_io_deq_bits_features_0) :
    $signed(queue_entering_io_deq_bits_features_0); // @[Interconnect.scala 65:30]
  assign io_sample_out_bits_features_1 = queue_looping_io_deq_valid ? $signed(queue_looping_io_deq_bits_features_1) :
    $signed(queue_entering_io_deq_bits_features_1); // @[Interconnect.scala 65:30]
  assign io_sample_out_bits_features_2 = queue_looping_io_deq_valid ? $signed(queue_looping_io_deq_bits_features_2) :
    $signed(queue_entering_io_deq_bits_features_2); // @[Interconnect.scala 65:30]
  assign io_sample_out_bits_features_3 = queue_looping_io_deq_valid ? $signed(queue_looping_io_deq_bits_features_3) :
    $signed(queue_entering_io_deq_bits_features_3); // @[Interconnect.scala 65:30]
  assign io_sample_out_bits_offset = queue_looping_io_deq_valid ? queue_looping_io_deq_bits_offset :
    queue_entering_io_deq_bits_offset; // @[Interconnect.scala 65:30]
  assign io_sample_out_bits_search_for_root = queue_looping_io_deq_valid ? queue_looping_io_deq_bits_search_for_root :
    queue_entering_io_deq_bits_search_for_root; // @[Interconnect.scala 65:30]
  assign io_sample_out_bits_tree_to_exec = queue_looping_io_deq_valid ? queue_looping_io_deq_bits_tree_to_exec :
    queue_entering_io_deq_bits_tree_to_exec; // @[Interconnect.scala 65:30]
  assign io_sample_out_bits_scores_0 = queue_looping_io_deq_valid ? $signed(queue_looping_io_deq_bits_scores_0) :
    $signed(queue_entering_io_deq_bits_scores_0); // @[Interconnect.scala 65:30]
  assign io_sample_out_bits_scores_1 = queue_looping_io_deq_valid ? $signed(queue_looping_io_deq_bits_scores_1) :
    $signed(queue_entering_io_deq_bits_scores_1); // @[Interconnect.scala 65:30]
  assign io_sample_out_bits_scores_2 = queue_looping_io_deq_valid ? $signed(queue_looping_io_deq_bits_scores_2) :
    $signed(queue_entering_io_deq_bits_scores_2); // @[Interconnect.scala 65:30]
  assign io_sample_out_bits_scores_3 = queue_looping_io_deq_valid ? $signed(queue_looping_io_deq_bits_scores_3) :
    $signed(queue_entering_io_deq_bits_scores_3); // @[Interconnect.scala 65:30]
  assign io_sample_out_bits_weights_0 = queue_looping_io_deq_valid ? $signed(queue_looping_io_deq_bits_weights_0) :
    $signed(queue_entering_io_deq_bits_weights_0); // @[Interconnect.scala 65:30]
  assign io_sample_out_bits_weights_1 = queue_looping_io_deq_valid ? $signed(queue_looping_io_deq_bits_weights_1) :
    $signed(queue_entering_io_deq_bits_weights_1); // @[Interconnect.scala 65:30]
  assign io_sample_out_bits_weights_2 = queue_looping_io_deq_valid ? $signed(queue_looping_io_deq_bits_weights_2) :
    $signed(queue_entering_io_deq_bits_weights_2); // @[Interconnect.scala 65:30]
  assign io_sample_out_bits_weights_3 = queue_looping_io_deq_valid ? $signed(queue_looping_io_deq_bits_weights_3) :
    $signed(queue_entering_io_deq_bits_weights_3); // @[Interconnect.scala 65:30]
  assign io_sample_out_bits_weights_4 = queue_looping_io_deq_valid ? $signed(queue_looping_io_deq_bits_weights_4) :
    $signed(queue_entering_io_deq_bits_weights_4); // @[Interconnect.scala 65:30]
  assign io_sample_out_bits_last = queue_looping_io_deq_valid ? queue_looping_io_deq_bits_last :
    queue_entering_io_deq_bits_last; // @[Interconnect.scala 65:30]
  assign queue_entering_clock = clock;
  assign queue_entering_reset = reset;
  assign queue_entering_io_enq_valid = io_sample_entering_valid; // @[Decoupled.scala 379:22]
  assign queue_entering_io_enq_bits_features_0 = io_sample_entering_bits_features_0; // @[Decoupled.scala 380:21]
  assign queue_entering_io_enq_bits_features_1 = io_sample_entering_bits_features_1; // @[Decoupled.scala 380:21]
  assign queue_entering_io_enq_bits_features_2 = io_sample_entering_bits_features_2; // @[Decoupled.scala 380:21]
  assign queue_entering_io_enq_bits_features_3 = io_sample_entering_bits_features_3; // @[Decoupled.scala 380:21]
  assign queue_entering_io_enq_bits_offset = io_sample_entering_bits_offset; // @[Decoupled.scala 380:21]
  assign queue_entering_io_enq_bits_search_for_root = io_sample_entering_bits_search_for_root; // @[Decoupled.scala 380:21]
  assign queue_entering_io_enq_bits_tree_to_exec = io_sample_entering_bits_tree_to_exec; // @[Decoupled.scala 380:21]
  assign queue_entering_io_enq_bits_scores_0 = io_sample_entering_bits_scores_0; // @[Decoupled.scala 380:21]
  assign queue_entering_io_enq_bits_scores_1 = io_sample_entering_bits_scores_1; // @[Decoupled.scala 380:21]
  assign queue_entering_io_enq_bits_scores_2 = io_sample_entering_bits_scores_2; // @[Decoupled.scala 380:21]
  assign queue_entering_io_enq_bits_scores_3 = io_sample_entering_bits_scores_3; // @[Decoupled.scala 380:21]
  assign queue_entering_io_enq_bits_weights_0 = io_sample_entering_bits_weights_0; // @[Decoupled.scala 380:21]
  assign queue_entering_io_enq_bits_weights_1 = io_sample_entering_bits_weights_1; // @[Decoupled.scala 380:21]
  assign queue_entering_io_enq_bits_weights_2 = io_sample_entering_bits_weights_2; // @[Decoupled.scala 380:21]
  assign queue_entering_io_enq_bits_weights_3 = io_sample_entering_bits_weights_3; // @[Decoupled.scala 380:21]
  assign queue_entering_io_enq_bits_weights_4 = io_sample_entering_bits_weights_4; // @[Decoupled.scala 380:21]
  assign queue_entering_io_enq_bits_last = io_sample_entering_bits_last; // @[Decoupled.scala 380:21]
  assign queue_entering_io_deq_ready = io_sample_out_ready & ~queue_looping_io_deq_valid; // @[Interconnect.scala 68:49]
  assign queue_looping_clock = clock;
  assign queue_looping_reset = reset;
  assign queue_looping_io_enq_valid = io_sample_looping_valid; // @[Decoupled.scala 379:22]
  assign queue_looping_io_enq_bits_features_0 = io_sample_looping_bits_features_0; // @[Decoupled.scala 380:21]
  assign queue_looping_io_enq_bits_features_1 = io_sample_looping_bits_features_1; // @[Decoupled.scala 380:21]
  assign queue_looping_io_enq_bits_features_2 = io_sample_looping_bits_features_2; // @[Decoupled.scala 380:21]
  assign queue_looping_io_enq_bits_features_3 = io_sample_looping_bits_features_3; // @[Decoupled.scala 380:21]
  assign queue_looping_io_enq_bits_offset = io_sample_looping_bits_offset; // @[Decoupled.scala 380:21]
  assign queue_looping_io_enq_bits_search_for_root = io_sample_looping_bits_search_for_root; // @[Decoupled.scala 380:21]
  assign queue_looping_io_enq_bits_tree_to_exec = io_sample_looping_bits_tree_to_exec; // @[Decoupled.scala 380:21]
  assign queue_looping_io_enq_bits_scores_0 = io_sample_looping_bits_scores_0; // @[Decoupled.scala 380:21]
  assign queue_looping_io_enq_bits_scores_1 = io_sample_looping_bits_scores_1; // @[Decoupled.scala 380:21]
  assign queue_looping_io_enq_bits_scores_2 = io_sample_looping_bits_scores_2; // @[Decoupled.scala 380:21]
  assign queue_looping_io_enq_bits_scores_3 = io_sample_looping_bits_scores_3; // @[Decoupled.scala 380:21]
  assign queue_looping_io_enq_bits_weights_0 = io_sample_looping_bits_weights_0; // @[Decoupled.scala 380:21]
  assign queue_looping_io_enq_bits_weights_1 = io_sample_looping_bits_weights_1; // @[Decoupled.scala 380:21]
  assign queue_looping_io_enq_bits_weights_2 = io_sample_looping_bits_weights_2; // @[Decoupled.scala 380:21]
  assign queue_looping_io_enq_bits_weights_3 = io_sample_looping_bits_weights_3; // @[Decoupled.scala 380:21]
  assign queue_looping_io_enq_bits_weights_4 = io_sample_looping_bits_weights_4; // @[Decoupled.scala 380:21]
  assign queue_looping_io_enq_bits_last = io_sample_looping_bits_last; // @[Decoupled.scala 380:21]
  assign queue_looping_io_deq_ready = io_sample_out_ready; // @[Interconnect.scala 67:25]
endmodule
module Queue_7(
  input         clock,
  input         reset,
  output        io_enq_ready,
  input         io_enq_valid,
  input  [15:0] io_enq_bits_features_0,
  input  [15:0] io_enq_bits_features_1,
  input  [15:0] io_enq_bits_features_2,
  input  [15:0] io_enq_bits_features_3,
  input  [9:0]  io_enq_bits_offset,
  input         io_enq_bits_search_for_root,
  input  [7:0]  io_enq_bits_tree_to_exec,
  input  [15:0] io_enq_bits_scores_0,
  input  [15:0] io_enq_bits_scores_1,
  input  [15:0] io_enq_bits_scores_2,
  input  [15:0] io_enq_bits_scores_3,
  input  [15:0] io_enq_bits_weights_0,
  input  [15:0] io_enq_bits_weights_1,
  input  [15:0] io_enq_bits_weights_2,
  input  [15:0] io_enq_bits_weights_3,
  input  [15:0] io_enq_bits_weights_4,
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
  output [15:0] io_deq_bits_weights_2,
  output [15:0] io_deq_bits_weights_3,
  output [15:0] io_deq_bits_weights_4,
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
  reg [31:0] _RAND_33;
  reg [31:0] _RAND_35;
  reg [31:0] _RAND_37;
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
  reg [31:0] _RAND_32;
  reg [31:0] _RAND_34;
  reg [31:0] _RAND_36;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_38;
  reg [31:0] _RAND_39;
  reg [31:0] _RAND_40;
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
  reg [15:0] ram_weights_2 [0:2]; // @[Decoupled.scala 275:95]
  wire  ram_weights_2_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [1:0] ram_weights_2_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire [15:0] ram_weights_2_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire [15:0] ram_weights_2_MPORT_data; // @[Decoupled.scala 275:95]
  wire [1:0] ram_weights_2_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_weights_2_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_weights_2_MPORT_en; // @[Decoupled.scala 275:95]
  reg [15:0] ram_weights_3 [0:2]; // @[Decoupled.scala 275:95]
  wire  ram_weights_3_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [1:0] ram_weights_3_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire [15:0] ram_weights_3_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire [15:0] ram_weights_3_MPORT_data; // @[Decoupled.scala 275:95]
  wire [1:0] ram_weights_3_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_weights_3_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_weights_3_MPORT_en; // @[Decoupled.scala 275:95]
  reg [15:0] ram_weights_4 [0:2]; // @[Decoupled.scala 275:95]
  wire  ram_weights_4_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [1:0] ram_weights_4_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire [15:0] ram_weights_4_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire [15:0] ram_weights_4_MPORT_data; // @[Decoupled.scala 275:95]
  wire [1:0] ram_weights_4_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_weights_4_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_weights_4_MPORT_en; // @[Decoupled.scala 275:95]
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
  assign ram_shift_MPORT_data = 1'h0;
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
  assign ram_weights_2_io_deq_bits_MPORT_en = 1'h1;
  assign ram_weights_2_io_deq_bits_MPORT_addr = deq_ptr_value;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign ram_weights_2_io_deq_bits_MPORT_data = ram_weights_2[ram_weights_2_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `else
  assign ram_weights_2_io_deq_bits_MPORT_data = ram_weights_2_io_deq_bits_MPORT_addr >= 2'h3 ? _RAND_29[15:0] :
    ram_weights_2[ram_weights_2_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign ram_weights_2_MPORT_data = io_enq_bits_weights_2;
  assign ram_weights_2_MPORT_addr = enq_ptr_value;
  assign ram_weights_2_MPORT_mask = 1'h1;
  assign ram_weights_2_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_weights_3_io_deq_bits_MPORT_en = 1'h1;
  assign ram_weights_3_io_deq_bits_MPORT_addr = deq_ptr_value;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign ram_weights_3_io_deq_bits_MPORT_data = ram_weights_3[ram_weights_3_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `else
  assign ram_weights_3_io_deq_bits_MPORT_data = ram_weights_3_io_deq_bits_MPORT_addr >= 2'h3 ? _RAND_31[15:0] :
    ram_weights_3[ram_weights_3_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign ram_weights_3_MPORT_data = io_enq_bits_weights_3;
  assign ram_weights_3_MPORT_addr = enq_ptr_value;
  assign ram_weights_3_MPORT_mask = 1'h1;
  assign ram_weights_3_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_weights_4_io_deq_bits_MPORT_en = 1'h1;
  assign ram_weights_4_io_deq_bits_MPORT_addr = deq_ptr_value;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign ram_weights_4_io_deq_bits_MPORT_data = ram_weights_4[ram_weights_4_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `else
  assign ram_weights_4_io_deq_bits_MPORT_data = ram_weights_4_io_deq_bits_MPORT_addr >= 2'h3 ? _RAND_33[15:0] :
    ram_weights_4[ram_weights_4_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign ram_weights_4_MPORT_data = io_enq_bits_weights_4;
  assign ram_weights_4_MPORT_addr = enq_ptr_value;
  assign ram_weights_4_MPORT_mask = 1'h1;
  assign ram_weights_4_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_dest_io_deq_bits_MPORT_en = 1'h1;
  assign ram_dest_io_deq_bits_MPORT_addr = deq_ptr_value;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign ram_dest_io_deq_bits_MPORT_data = ram_dest[ram_dest_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `else
  assign ram_dest_io_deq_bits_MPORT_data = ram_dest_io_deq_bits_MPORT_addr >= 2'h3 ? _RAND_35[0:0] :
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
  assign ram_last_io_deq_bits_MPORT_data = ram_last_io_deq_bits_MPORT_addr >= 2'h3 ? _RAND_37[0:0] :
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
  assign io_deq_bits_weights_2 = ram_weights_2_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_weights_3 = ram_weights_3_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_weights_4 = ram_weights_4_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
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
    if (ram_weights_2_MPORT_en & ram_weights_2_MPORT_mask) begin
      ram_weights_2[ram_weights_2_MPORT_addr] <= ram_weights_2_MPORT_data; // @[Decoupled.scala 275:95]
    end
    if (ram_weights_3_MPORT_en & ram_weights_3_MPORT_mask) begin
      ram_weights_3[ram_weights_3_MPORT_addr] <= ram_weights_3_MPORT_data; // @[Decoupled.scala 275:95]
    end
    if (ram_weights_4_MPORT_en & ram_weights_4_MPORT_mask) begin
      ram_weights_4[ram_weights_4_MPORT_addr] <= ram_weights_4_MPORT_data; // @[Decoupled.scala 275:95]
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
  _RAND_33 = {1{`RANDOM}};
  _RAND_35 = {1{`RANDOM}};
  _RAND_37 = {1{`RANDOM}};
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
    ram_weights_2[initvar] = _RAND_28[15:0];
  _RAND_30 = {1{`RANDOM}};
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    ram_weights_3[initvar] = _RAND_30[15:0];
  _RAND_32 = {1{`RANDOM}};
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    ram_weights_4[initvar] = _RAND_32[15:0];
  _RAND_34 = {1{`RANDOM}};
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    ram_dest[initvar] = _RAND_34[0:0];
  _RAND_36 = {1{`RANDOM}};
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    ram_last[initvar] = _RAND_36[0:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_38 = {1{`RANDOM}};
  enq_ptr_value = _RAND_38[1:0];
  _RAND_39 = {1{`RANDOM}};
  deq_ptr_value = _RAND_39[1:0];
  _RAND_40 = {1{`RANDOM}};
  maybe_full = _RAND_40[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
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
  input  [15:0] io_sample_in_bits_weights_2,
  input  [15:0] io_sample_in_bits_weights_3,
  input  [15:0] io_sample_in_bits_weights_4,
  input         io_sample_in_bits_dest,
  input         io_sample_in_bits_last,
  input         io_sample_looping_ready,
  output        io_sample_looping_valid,
  output [15:0] io_sample_looping_bits_features_0,
  output [15:0] io_sample_looping_bits_features_1,
  output [15:0] io_sample_looping_bits_features_2,
  output [15:0] io_sample_looping_bits_features_3,
  output [9:0]  io_sample_looping_bits_offset,
  output        io_sample_looping_bits_search_for_root,
  output [7:0]  io_sample_looping_bits_tree_to_exec,
  output [15:0] io_sample_looping_bits_scores_0,
  output [15:0] io_sample_looping_bits_scores_1,
  output [15:0] io_sample_looping_bits_scores_2,
  output [15:0] io_sample_looping_bits_scores_3,
  output [15:0] io_sample_looping_bits_weights_0,
  output [15:0] io_sample_looping_bits_weights_1,
  output [15:0] io_sample_looping_bits_weights_2,
  output [15:0] io_sample_looping_bits_weights_3,
  output [15:0] io_sample_looping_bits_weights_4,
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
  output [15:0] io_sample_leaving_bits_weights_2,
  output [15:0] io_sample_leaving_bits_weights_3,
  output [15:0] io_sample_leaving_bits_weights_4,
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
  wire  queue_io_enq_bits_search_for_root; // @[Decoupled.scala 377:21]
  wire [7:0] queue_io_enq_bits_tree_to_exec; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_scores_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_scores_1; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_scores_2; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_scores_3; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_weights_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_weights_1; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_weights_2; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_weights_3; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_weights_4; // @[Decoupled.scala 377:21]
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
  wire [15:0] queue_io_deq_bits_weights_2; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_weights_3; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_weights_4; // @[Decoupled.scala 377:21]
  wire  queue_io_deq_bits_dest; // @[Decoupled.scala 377:21]
  wire  queue_io_deq_bits_last; // @[Decoupled.scala 377:21]
  wire  _GEN_0 = queue_io_deq_bits_dest ? 1'h0 : 1'h1; // @[Interconnect.scala 20:30 21:37 24:37]
  wire  _GEN_1 = queue_io_deq_bits_dest; // @[Interconnect.scala 20:30 22:37 25:37]
  Queue_7 queue ( // @[Decoupled.scala 377:21]
    .clock(queue_clock),
    .reset(queue_reset),
    .io_enq_ready(queue_io_enq_ready),
    .io_enq_valid(queue_io_enq_valid),
    .io_enq_bits_features_0(queue_io_enq_bits_features_0),
    .io_enq_bits_features_1(queue_io_enq_bits_features_1),
    .io_enq_bits_features_2(queue_io_enq_bits_features_2),
    .io_enq_bits_features_3(queue_io_enq_bits_features_3),
    .io_enq_bits_offset(queue_io_enq_bits_offset),
    .io_enq_bits_search_for_root(queue_io_enq_bits_search_for_root),
    .io_enq_bits_tree_to_exec(queue_io_enq_bits_tree_to_exec),
    .io_enq_bits_scores_0(queue_io_enq_bits_scores_0),
    .io_enq_bits_scores_1(queue_io_enq_bits_scores_1),
    .io_enq_bits_scores_2(queue_io_enq_bits_scores_2),
    .io_enq_bits_scores_3(queue_io_enq_bits_scores_3),
    .io_enq_bits_weights_0(queue_io_enq_bits_weights_0),
    .io_enq_bits_weights_1(queue_io_enq_bits_weights_1),
    .io_enq_bits_weights_2(queue_io_enq_bits_weights_2),
    .io_enq_bits_weights_3(queue_io_enq_bits_weights_3),
    .io_enq_bits_weights_4(queue_io_enq_bits_weights_4),
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
    .io_deq_bits_weights_2(queue_io_deq_bits_weights_2),
    .io_deq_bits_weights_3(queue_io_deq_bits_weights_3),
    .io_deq_bits_weights_4(queue_io_deq_bits_weights_4),
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
  assign io_sample_looping_bits_search_for_root = queue_io_deq_bits_search_for_root; // @[Interconnect.scala 16:28]
  assign io_sample_looping_bits_tree_to_exec = queue_io_deq_bits_tree_to_exec; // @[Interconnect.scala 16:28]
  assign io_sample_looping_bits_scores_0 = queue_io_deq_bits_scores_0; // @[Interconnect.scala 16:28]
  assign io_sample_looping_bits_scores_1 = queue_io_deq_bits_scores_1; // @[Interconnect.scala 16:28]
  assign io_sample_looping_bits_scores_2 = queue_io_deq_bits_scores_2; // @[Interconnect.scala 16:28]
  assign io_sample_looping_bits_scores_3 = queue_io_deq_bits_scores_3; // @[Interconnect.scala 16:28]
  assign io_sample_looping_bits_weights_0 = queue_io_deq_bits_weights_0; // @[Interconnect.scala 16:28]
  assign io_sample_looping_bits_weights_1 = queue_io_deq_bits_weights_1; // @[Interconnect.scala 16:28]
  assign io_sample_looping_bits_weights_2 = queue_io_deq_bits_weights_2; // @[Interconnect.scala 16:28]
  assign io_sample_looping_bits_weights_3 = queue_io_deq_bits_weights_3; // @[Interconnect.scala 16:28]
  assign io_sample_looping_bits_weights_4 = queue_io_deq_bits_weights_4; // @[Interconnect.scala 16:28]
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
  assign io_sample_leaving_bits_weights_2 = queue_io_deq_bits_weights_2; // @[Interconnect.scala 17:28]
  assign io_sample_leaving_bits_weights_3 = queue_io_deq_bits_weights_3; // @[Interconnect.scala 17:28]
  assign io_sample_leaving_bits_weights_4 = queue_io_deq_bits_weights_4; // @[Interconnect.scala 17:28]
  assign io_sample_leaving_bits_last = queue_io_deq_bits_last; // @[Interconnect.scala 17:28]
  assign queue_clock = clock;
  assign queue_reset = reset;
  assign queue_io_enq_valid = io_sample_in_valid; // @[Decoupled.scala 379:22]
  assign queue_io_enq_bits_features_0 = io_sample_in_bits_features_0; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_features_1 = io_sample_in_bits_features_1; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_features_2 = io_sample_in_bits_features_2; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_features_3 = io_sample_in_bits_features_3; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_offset = io_sample_in_bits_offset; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_search_for_root = io_sample_in_bits_search_for_root; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_tree_to_exec = io_sample_in_bits_tree_to_exec; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_scores_0 = io_sample_in_bits_scores_0; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_scores_1 = io_sample_in_bits_scores_1; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_scores_2 = io_sample_in_bits_scores_2; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_scores_3 = io_sample_in_bits_scores_3; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_weights_0 = io_sample_in_bits_weights_0; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_weights_1 = io_sample_in_bits_weights_1; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_weights_2 = io_sample_in_bits_weights_2; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_weights_3 = io_sample_in_bits_weights_3; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_weights_4 = io_sample_in_bits_weights_4; // @[Decoupled.scala 380:21]
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
  input         io_sample_in_bits_search_for_root,
  input  [7:0]  io_sample_in_bits_tree_to_exec,
  input  [15:0] io_sample_in_bits_scores_0,
  input  [15:0] io_sample_in_bits_scores_1,
  input  [15:0] io_sample_in_bits_scores_2,
  input  [15:0] io_sample_in_bits_scores_3,
  input  [15:0] io_sample_in_bits_weights_0,
  input  [15:0] io_sample_in_bits_weights_1,
  input  [15:0] io_sample_in_bits_weights_2,
  input  [15:0] io_sample_in_bits_weights_3,
  input  [15:0] io_sample_in_bits_weights_4,
  input         io_sample_in_bits_last,
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
  output [15:0] io_sample_out_bits_weights_2,
  output [15:0] io_sample_out_bits_weights_3,
  output [15:0] io_sample_out_bits_weights_4,
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
  wire  queue_io_enq_bits_search_for_root; // @[Decoupled.scala 377:21]
  wire [7:0] queue_io_enq_bits_tree_to_exec; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_scores_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_scores_1; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_scores_2; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_scores_3; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_weights_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_weights_1; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_weights_2; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_weights_3; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_weights_4; // @[Decoupled.scala 377:21]
  wire  queue_io_enq_bits_last; // @[Decoupled.scala 377:21]
  wire  queue_io_deq_ready; // @[Decoupled.scala 377:21]
  wire  queue_io_deq_valid; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_features_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_features_1; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_features_2; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_features_3; // @[Decoupled.scala 377:21]
  wire [9:0] queue_io_deq_bits_offset; // @[Decoupled.scala 377:21]
  wire  queue_io_deq_bits_search_for_root; // @[Decoupled.scala 377:21]
  wire [7:0] queue_io_deq_bits_tree_to_exec; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_scores_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_scores_1; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_scores_2; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_scores_3; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_weights_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_weights_1; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_weights_2; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_weights_3; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_weights_4; // @[Decoupled.scala 377:21]
  wire  queue_io_deq_bits_last; // @[Decoupled.scala 377:21]
  wire [7:0] _io_sample_out_bits_tree_to_exec_T_1 = queue_io_deq_bits_tree_to_exec + 8'h1; // @[IncrementTreePE.scala 17:64]
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
    .io_enq_bits_search_for_root(queue_io_enq_bits_search_for_root),
    .io_enq_bits_tree_to_exec(queue_io_enq_bits_tree_to_exec),
    .io_enq_bits_scores_0(queue_io_enq_bits_scores_0),
    .io_enq_bits_scores_1(queue_io_enq_bits_scores_1),
    .io_enq_bits_scores_2(queue_io_enq_bits_scores_2),
    .io_enq_bits_scores_3(queue_io_enq_bits_scores_3),
    .io_enq_bits_weights_0(queue_io_enq_bits_weights_0),
    .io_enq_bits_weights_1(queue_io_enq_bits_weights_1),
    .io_enq_bits_weights_2(queue_io_enq_bits_weights_2),
    .io_enq_bits_weights_3(queue_io_enq_bits_weights_3),
    .io_enq_bits_weights_4(queue_io_enq_bits_weights_4),
    .io_enq_bits_last(queue_io_enq_bits_last),
    .io_deq_ready(queue_io_deq_ready),
    .io_deq_valid(queue_io_deq_valid),
    .io_deq_bits_features_0(queue_io_deq_bits_features_0),
    .io_deq_bits_features_1(queue_io_deq_bits_features_1),
    .io_deq_bits_features_2(queue_io_deq_bits_features_2),
    .io_deq_bits_features_3(queue_io_deq_bits_features_3),
    .io_deq_bits_offset(queue_io_deq_bits_offset),
    .io_deq_bits_search_for_root(queue_io_deq_bits_search_for_root),
    .io_deq_bits_tree_to_exec(queue_io_deq_bits_tree_to_exec),
    .io_deq_bits_scores_0(queue_io_deq_bits_scores_0),
    .io_deq_bits_scores_1(queue_io_deq_bits_scores_1),
    .io_deq_bits_scores_2(queue_io_deq_bits_scores_2),
    .io_deq_bits_scores_3(queue_io_deq_bits_scores_3),
    .io_deq_bits_weights_0(queue_io_deq_bits_weights_0),
    .io_deq_bits_weights_1(queue_io_deq_bits_weights_1),
    .io_deq_bits_weights_2(queue_io_deq_bits_weights_2),
    .io_deq_bits_weights_3(queue_io_deq_bits_weights_3),
    .io_deq_bits_weights_4(queue_io_deq_bits_weights_4),
    .io_deq_bits_last(queue_io_deq_bits_last)
  );
  assign io_sample_in_ready = queue_io_enq_ready; // @[Decoupled.scala 381:17]
  assign io_sample_out_valid = queue_io_deq_valid; // @[IncrementTreePE.scala 25:25]
  assign io_sample_out_bits_features_0 = queue_io_deq_bits_features_0; // @[IncrementTreePE.scala 15:33]
  assign io_sample_out_bits_features_1 = queue_io_deq_bits_features_1; // @[IncrementTreePE.scala 15:33]
  assign io_sample_out_bits_features_2 = queue_io_deq_bits_features_2; // @[IncrementTreePE.scala 15:33]
  assign io_sample_out_bits_features_3 = queue_io_deq_bits_features_3; // @[IncrementTreePE.scala 15:33]
  assign io_sample_out_bits_offset = {{2'd0}, _io_sample_out_bits_tree_to_exec_T_1}; // @[IncrementTreePE.scala 19:31]
  assign io_sample_out_bits_search_for_root = queue_io_deq_bits_search_for_root; // @[IncrementTreePE.scala 21:40]
  assign io_sample_out_bits_tree_to_exec = queue_io_deq_bits_tree_to_exec + 8'h1; // @[IncrementTreePE.scala 17:64]
  assign io_sample_out_bits_scores_0 = queue_io_deq_bits_scores_0; // @[IncrementTreePE.scala 20:31]
  assign io_sample_out_bits_scores_1 = queue_io_deq_bits_scores_1; // @[IncrementTreePE.scala 20:31]
  assign io_sample_out_bits_scores_2 = queue_io_deq_bits_scores_2; // @[IncrementTreePE.scala 20:31]
  assign io_sample_out_bits_scores_3 = queue_io_deq_bits_scores_3; // @[IncrementTreePE.scala 20:31]
  assign io_sample_out_bits_weights_0 = queue_io_deq_bits_weights_0; // @[IncrementTreePE.scala 16:32]
  assign io_sample_out_bits_weights_1 = queue_io_deq_bits_weights_1; // @[IncrementTreePE.scala 16:32]
  assign io_sample_out_bits_weights_2 = queue_io_deq_bits_weights_2; // @[IncrementTreePE.scala 16:32]
  assign io_sample_out_bits_weights_3 = queue_io_deq_bits_weights_3; // @[IncrementTreePE.scala 16:32]
  assign io_sample_out_bits_weights_4 = queue_io_deq_bits_weights_4; // @[IncrementTreePE.scala 16:32]
  assign io_sample_out_bits_last = queue_io_deq_bits_last; // @[IncrementTreePE.scala 23:29]
  assign queue_clock = clock;
  assign queue_reset = reset;
  assign queue_io_enq_valid = io_sample_in_valid; // @[Decoupled.scala 379:22]
  assign queue_io_enq_bits_features_0 = io_sample_in_bits_features_0; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_features_1 = io_sample_in_bits_features_1; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_features_2 = io_sample_in_bits_features_2; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_features_3 = io_sample_in_bits_features_3; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_offset = io_sample_in_bits_offset; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_search_for_root = io_sample_in_bits_search_for_root; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_tree_to_exec = io_sample_in_bits_tree_to_exec; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_scores_0 = io_sample_in_bits_scores_0; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_scores_1 = io_sample_in_bits_scores_1; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_scores_2 = io_sample_in_bits_scores_2; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_scores_3 = io_sample_in_bits_scores_3; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_weights_0 = io_sample_in_bits_weights_0; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_weights_1 = io_sample_in_bits_weights_1; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_weights_2 = io_sample_in_bits_weights_2; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_weights_3 = io_sample_in_bits_weights_3; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_weights_4 = io_sample_in_bits_weights_4; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_last = io_sample_in_bits_last; // @[Decoupled.scala 380:21]
  assign queue_io_deq_ready = io_sample_out_ready; // @[IncrementTreePE.scala 27:17]
endmodule
module TreePEsWrapper(
  input          clock,
  input          reset,
  input  [255:0] wrapper_io_sample_in_TDATA,
  input  [31:0]  wrapper_io_sample_in_TKEEP,
  input          wrapper_io_sample_in_TLAST,
  output         wrapper_io_sample_in_TREADY,
  input          wrapper_io_sample_in_TVALID,
  output [255:0] wrapper_io_sample_out_TDATA,
  output [31:0]  wrapper_io_sample_out_TKEEP,
  output         wrapper_io_sample_out_TLAST,
  input          wrapper_io_sample_out_TREADY,
  output         wrapper_io_sample_out_TVALID,
  input  [12:0]  brams_io_0_bram_addr_a,
  input          brams_io_0_bram_clk_a,
  input  [31:0]  brams_io_0_bram_wrdata_a,
  output [31:0]  brams_io_0_bram_rddata_a,
  input          brams_io_0_bram_en_a,
  input          brams_io_0_bram_rst_a,
  input  [3:0]   brams_io_0_bram_we_a,
  input  [12:0]  brams_io_1_bram_addr_a,
  input          brams_io_1_bram_clk_a,
  input  [31:0]  brams_io_1_bram_wrdata_a,
  output [31:0]  brams_io_1_bram_rddata_a,
  input          brams_io_1_bram_en_a,
  input          brams_io_1_bram_rst_a,
  input  [3:0]   brams_io_1_bram_we_a,
  input  [12:0]  brams_io_2_bram_addr_a,
  input          brams_io_2_bram_clk_a,
  input  [31:0]  brams_io_2_bram_wrdata_a,
  output [31:0]  brams_io_2_bram_rddata_a,
  input          brams_io_2_bram_en_a,
  input          brams_io_2_bram_rst_a,
  input  [3:0]   brams_io_2_bram_we_a,
  input  [12:0]  brams_io_3_bram_addr_a,
  input          brams_io_3_bram_clk_a,
  input  [31:0]  brams_io_3_bram_wrdata_a,
  output [31:0]  brams_io_3_bram_rddata_a,
  input          brams_io_3_bram_en_a,
  input          brams_io_3_bram_rst_a,
  input  [3:0]   brams_io_3_bram_we_a,
  input  [12:0]  brams_io_4_bram_addr_a,
  input          brams_io_4_bram_clk_a,
  input  [31:0]  brams_io_4_bram_wrdata_a,
  output [31:0]  brams_io_4_bram_rddata_a,
  input          brams_io_4_bram_en_a,
  input          brams_io_4_bram_rst_a,
  input  [3:0]   brams_io_4_bram_we_a
);
  wire [255:0] forward_converter_io_sample_in_TDATA; // @[TreePEsWrapper.scala 80:39]
  wire  forward_converter_io_sample_in_TLAST; // @[TreePEsWrapper.scala 80:39]
  wire  forward_converter_io_sample_in_TREADY; // @[TreePEsWrapper.scala 80:39]
  wire  forward_converter_io_sample_in_TVALID; // @[TreePEsWrapper.scala 80:39]
  wire  forward_converter_io_sample_out_ready; // @[TreePEsWrapper.scala 80:39]
  wire  forward_converter_io_sample_out_valid; // @[TreePEsWrapper.scala 80:39]
  wire [15:0] forward_converter_io_sample_out_bits_features_0; // @[TreePEsWrapper.scala 80:39]
  wire [15:0] forward_converter_io_sample_out_bits_features_1; // @[TreePEsWrapper.scala 80:39]
  wire [15:0] forward_converter_io_sample_out_bits_features_2; // @[TreePEsWrapper.scala 80:39]
  wire [15:0] forward_converter_io_sample_out_bits_features_3; // @[TreePEsWrapper.scala 80:39]
  wire [9:0] forward_converter_io_sample_out_bits_offset; // @[TreePEsWrapper.scala 80:39]
  wire  forward_converter_io_sample_out_bits_search_for_root; // @[TreePEsWrapper.scala 80:39]
  wire [7:0] forward_converter_io_sample_out_bits_tree_to_exec; // @[TreePEsWrapper.scala 80:39]
  wire [15:0] forward_converter_io_sample_out_bits_scores_0; // @[TreePEsWrapper.scala 80:39]
  wire [15:0] forward_converter_io_sample_out_bits_scores_1; // @[TreePEsWrapper.scala 80:39]
  wire [15:0] forward_converter_io_sample_out_bits_scores_2; // @[TreePEsWrapper.scala 80:39]
  wire [15:0] forward_converter_io_sample_out_bits_scores_3; // @[TreePEsWrapper.scala 80:39]
  wire [15:0] forward_converter_io_sample_out_bits_weights_0; // @[TreePEsWrapper.scala 80:39]
  wire [15:0] forward_converter_io_sample_out_bits_weights_1; // @[TreePEsWrapper.scala 80:39]
  wire [15:0] forward_converter_io_sample_out_bits_weights_2; // @[TreePEsWrapper.scala 80:39]
  wire [15:0] forward_converter_io_sample_out_bits_weights_3; // @[TreePEsWrapper.scala 80:39]
  wire [15:0] forward_converter_io_sample_out_bits_weights_4; // @[TreePEsWrapper.scala 80:39]
  wire  forward_converter_io_sample_out_bits_last; // @[TreePEsWrapper.scala 80:39]
  wire  backward_converter_io_sample_in_ready; // @[TreePEsWrapper.scala 81:40]
  wire  backward_converter_io_sample_in_valid; // @[TreePEsWrapper.scala 81:40]
  wire [15:0] backward_converter_io_sample_in_bits_features_0; // @[TreePEsWrapper.scala 81:40]
  wire [15:0] backward_converter_io_sample_in_bits_features_1; // @[TreePEsWrapper.scala 81:40]
  wire [15:0] backward_converter_io_sample_in_bits_features_2; // @[TreePEsWrapper.scala 81:40]
  wire [15:0] backward_converter_io_sample_in_bits_features_3; // @[TreePEsWrapper.scala 81:40]
  wire [9:0] backward_converter_io_sample_in_bits_offset; // @[TreePEsWrapper.scala 81:40]
  wire  backward_converter_io_sample_in_bits_shift; // @[TreePEsWrapper.scala 81:40]
  wire  backward_converter_io_sample_in_bits_search_for_root; // @[TreePEsWrapper.scala 81:40]
  wire [7:0] backward_converter_io_sample_in_bits_tree_to_exec; // @[TreePEsWrapper.scala 81:40]
  wire [15:0] backward_converter_io_sample_in_bits_scores_0; // @[TreePEsWrapper.scala 81:40]
  wire [15:0] backward_converter_io_sample_in_bits_scores_1; // @[TreePEsWrapper.scala 81:40]
  wire [15:0] backward_converter_io_sample_in_bits_scores_2; // @[TreePEsWrapper.scala 81:40]
  wire [15:0] backward_converter_io_sample_in_bits_scores_3; // @[TreePEsWrapper.scala 81:40]
  wire [15:0] backward_converter_io_sample_in_bits_weights_0; // @[TreePEsWrapper.scala 81:40]
  wire [15:0] backward_converter_io_sample_in_bits_weights_1; // @[TreePEsWrapper.scala 81:40]
  wire [15:0] backward_converter_io_sample_in_bits_weights_2; // @[TreePEsWrapper.scala 81:40]
  wire [15:0] backward_converter_io_sample_in_bits_weights_3; // @[TreePEsWrapper.scala 81:40]
  wire [15:0] backward_converter_io_sample_in_bits_weights_4; // @[TreePEsWrapper.scala 81:40]
  wire  backward_converter_io_sample_in_bits_last; // @[TreePEsWrapper.scala 81:40]
  wire [255:0] backward_converter_io_sample_out_TDATA; // @[TreePEsWrapper.scala 81:40]
  wire  backward_converter_io_sample_out_TLAST; // @[TreePEsWrapper.scala 81:40]
  wire  backward_converter_io_sample_out_TREADY; // @[TreePEsWrapper.scala 81:40]
  wire  backward_converter_io_sample_out_TVALID; // @[TreePEsWrapper.scala 81:40]
  wire  pes_0_clock; // @[TreePEsWrapper.scala 90:69]
  wire  pes_0_reset; // @[TreePEsWrapper.scala 90:69]
  wire  pes_0_pe_io_sample_in_ready; // @[TreePEsWrapper.scala 90:69]
  wire  pes_0_pe_io_sample_in_valid; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_0_pe_io_sample_in_bits_features_0; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_0_pe_io_sample_in_bits_features_1; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_0_pe_io_sample_in_bits_features_2; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_0_pe_io_sample_in_bits_features_3; // @[TreePEsWrapper.scala 90:69]
  wire [9:0] pes_0_pe_io_sample_in_bits_offset; // @[TreePEsWrapper.scala 90:69]
  wire  pes_0_pe_io_sample_in_bits_search_for_root; // @[TreePEsWrapper.scala 90:69]
  wire [7:0] pes_0_pe_io_sample_in_bits_tree_to_exec; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_0_pe_io_sample_in_bits_scores_0; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_0_pe_io_sample_in_bits_scores_1; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_0_pe_io_sample_in_bits_scores_2; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_0_pe_io_sample_in_bits_scores_3; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_0_pe_io_sample_in_bits_weights_0; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_0_pe_io_sample_in_bits_weights_1; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_0_pe_io_sample_in_bits_weights_2; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_0_pe_io_sample_in_bits_weights_3; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_0_pe_io_sample_in_bits_weights_4; // @[TreePEsWrapper.scala 90:69]
  wire  pes_0_pe_io_sample_in_bits_last; // @[TreePEsWrapper.scala 90:69]
  wire  pes_0_pe_io_mem_enable_1; // @[TreePEsWrapper.scala 90:69]
  wire [12:0] pes_0_pe_io_mem_addr_1; // @[TreePEsWrapper.scala 90:69]
  wire [63:0] pes_0_pe_io_mem_dataOut_1; // @[TreePEsWrapper.scala 90:69]
  wire  pes_0_pe_io_sample_out_ready; // @[TreePEsWrapper.scala 90:69]
  wire  pes_0_pe_io_sample_out_valid; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_0_pe_io_sample_out_bits_features_0; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_0_pe_io_sample_out_bits_features_1; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_0_pe_io_sample_out_bits_features_2; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_0_pe_io_sample_out_bits_features_3; // @[TreePEsWrapper.scala 90:69]
  wire [9:0] pes_0_pe_io_sample_out_bits_offset; // @[TreePEsWrapper.scala 90:69]
  wire  pes_0_pe_io_sample_out_bits_search_for_root; // @[TreePEsWrapper.scala 90:69]
  wire [7:0] pes_0_pe_io_sample_out_bits_tree_to_exec; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_0_pe_io_sample_out_bits_scores_0; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_0_pe_io_sample_out_bits_scores_1; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_0_pe_io_sample_out_bits_scores_2; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_0_pe_io_sample_out_bits_scores_3; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_0_pe_io_sample_out_bits_weights_0; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_0_pe_io_sample_out_bits_weights_1; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_0_pe_io_sample_out_bits_weights_2; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_0_pe_io_sample_out_bits_weights_3; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_0_pe_io_sample_out_bits_weights_4; // @[TreePEsWrapper.scala 90:69]
  wire  pes_0_pe_io_sample_out_bits_last; // @[TreePEsWrapper.scala 90:69]
  wire  pes_1_clock; // @[TreePEsWrapper.scala 90:69]
  wire  pes_1_reset; // @[TreePEsWrapper.scala 90:69]
  wire  pes_1_pe_io_sample_in_ready; // @[TreePEsWrapper.scala 90:69]
  wire  pes_1_pe_io_sample_in_valid; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_1_pe_io_sample_in_bits_features_0; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_1_pe_io_sample_in_bits_features_1; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_1_pe_io_sample_in_bits_features_2; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_1_pe_io_sample_in_bits_features_3; // @[TreePEsWrapper.scala 90:69]
  wire [9:0] pes_1_pe_io_sample_in_bits_offset; // @[TreePEsWrapper.scala 90:69]
  wire  pes_1_pe_io_sample_in_bits_search_for_root; // @[TreePEsWrapper.scala 90:69]
  wire [7:0] pes_1_pe_io_sample_in_bits_tree_to_exec; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_1_pe_io_sample_in_bits_scores_0; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_1_pe_io_sample_in_bits_scores_1; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_1_pe_io_sample_in_bits_scores_2; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_1_pe_io_sample_in_bits_scores_3; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_1_pe_io_sample_in_bits_weights_0; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_1_pe_io_sample_in_bits_weights_1; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_1_pe_io_sample_in_bits_weights_2; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_1_pe_io_sample_in_bits_weights_3; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_1_pe_io_sample_in_bits_weights_4; // @[TreePEsWrapper.scala 90:69]
  wire  pes_1_pe_io_sample_in_bits_last; // @[TreePEsWrapper.scala 90:69]
  wire  pes_1_pe_io_mem_enable_1; // @[TreePEsWrapper.scala 90:69]
  wire [12:0] pes_1_pe_io_mem_addr_1; // @[TreePEsWrapper.scala 90:69]
  wire [63:0] pes_1_pe_io_mem_dataOut_1; // @[TreePEsWrapper.scala 90:69]
  wire  pes_1_pe_io_sample_out_ready; // @[TreePEsWrapper.scala 90:69]
  wire  pes_1_pe_io_sample_out_valid; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_1_pe_io_sample_out_bits_features_0; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_1_pe_io_sample_out_bits_features_1; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_1_pe_io_sample_out_bits_features_2; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_1_pe_io_sample_out_bits_features_3; // @[TreePEsWrapper.scala 90:69]
  wire [9:0] pes_1_pe_io_sample_out_bits_offset; // @[TreePEsWrapper.scala 90:69]
  wire  pes_1_pe_io_sample_out_bits_search_for_root; // @[TreePEsWrapper.scala 90:69]
  wire [7:0] pes_1_pe_io_sample_out_bits_tree_to_exec; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_1_pe_io_sample_out_bits_scores_0; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_1_pe_io_sample_out_bits_scores_1; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_1_pe_io_sample_out_bits_scores_2; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_1_pe_io_sample_out_bits_scores_3; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_1_pe_io_sample_out_bits_weights_0; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_1_pe_io_sample_out_bits_weights_1; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_1_pe_io_sample_out_bits_weights_2; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_1_pe_io_sample_out_bits_weights_3; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_1_pe_io_sample_out_bits_weights_4; // @[TreePEsWrapper.scala 90:69]
  wire  pes_1_pe_io_sample_out_bits_dest; // @[TreePEsWrapper.scala 90:69]
  wire  pes_1_pe_io_sample_out_bits_last; // @[TreePEsWrapper.scala 90:69]
  wire  pes_2_clock; // @[TreePEsWrapper.scala 90:69]
  wire  pes_2_reset; // @[TreePEsWrapper.scala 90:69]
  wire  pes_2_pe_io_sample_in_ready; // @[TreePEsWrapper.scala 90:69]
  wire  pes_2_pe_io_sample_in_valid; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_2_pe_io_sample_in_bits_features_0; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_2_pe_io_sample_in_bits_features_1; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_2_pe_io_sample_in_bits_features_2; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_2_pe_io_sample_in_bits_features_3; // @[TreePEsWrapper.scala 90:69]
  wire [9:0] pes_2_pe_io_sample_in_bits_offset; // @[TreePEsWrapper.scala 90:69]
  wire  pes_2_pe_io_sample_in_bits_search_for_root; // @[TreePEsWrapper.scala 90:69]
  wire [7:0] pes_2_pe_io_sample_in_bits_tree_to_exec; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_2_pe_io_sample_in_bits_scores_0; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_2_pe_io_sample_in_bits_scores_1; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_2_pe_io_sample_in_bits_scores_2; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_2_pe_io_sample_in_bits_scores_3; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_2_pe_io_sample_in_bits_weights_0; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_2_pe_io_sample_in_bits_weights_1; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_2_pe_io_sample_in_bits_weights_2; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_2_pe_io_sample_in_bits_weights_3; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_2_pe_io_sample_in_bits_weights_4; // @[TreePEsWrapper.scala 90:69]
  wire  pes_2_pe_io_sample_in_bits_last; // @[TreePEsWrapper.scala 90:69]
  wire  pes_2_pe_io_mem_enable_1; // @[TreePEsWrapper.scala 90:69]
  wire [12:0] pes_2_pe_io_mem_addr_1; // @[TreePEsWrapper.scala 90:69]
  wire [63:0] pes_2_pe_io_mem_dataOut_1; // @[TreePEsWrapper.scala 90:69]
  wire  pes_2_pe_io_sample_out_ready; // @[TreePEsWrapper.scala 90:69]
  wire  pes_2_pe_io_sample_out_valid; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_2_pe_io_sample_out_bits_features_0; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_2_pe_io_sample_out_bits_features_1; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_2_pe_io_sample_out_bits_features_2; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_2_pe_io_sample_out_bits_features_3; // @[TreePEsWrapper.scala 90:69]
  wire [9:0] pes_2_pe_io_sample_out_bits_offset; // @[TreePEsWrapper.scala 90:69]
  wire  pes_2_pe_io_sample_out_bits_search_for_root; // @[TreePEsWrapper.scala 90:69]
  wire [7:0] pes_2_pe_io_sample_out_bits_tree_to_exec; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_2_pe_io_sample_out_bits_scores_0; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_2_pe_io_sample_out_bits_scores_1; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_2_pe_io_sample_out_bits_scores_2; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_2_pe_io_sample_out_bits_scores_3; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_2_pe_io_sample_out_bits_weights_0; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_2_pe_io_sample_out_bits_weights_1; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_2_pe_io_sample_out_bits_weights_2; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_2_pe_io_sample_out_bits_weights_3; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_2_pe_io_sample_out_bits_weights_4; // @[TreePEsWrapper.scala 90:69]
  wire  pes_2_pe_io_sample_out_bits_dest; // @[TreePEsWrapper.scala 90:69]
  wire  pes_2_pe_io_sample_out_bits_last; // @[TreePEsWrapper.scala 90:69]
  wire  pes_3_clock; // @[TreePEsWrapper.scala 90:69]
  wire  pes_3_reset; // @[TreePEsWrapper.scala 90:69]
  wire  pes_3_pe_io_sample_in_ready; // @[TreePEsWrapper.scala 90:69]
  wire  pes_3_pe_io_sample_in_valid; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_3_pe_io_sample_in_bits_features_0; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_3_pe_io_sample_in_bits_features_1; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_3_pe_io_sample_in_bits_features_2; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_3_pe_io_sample_in_bits_features_3; // @[TreePEsWrapper.scala 90:69]
  wire [9:0] pes_3_pe_io_sample_in_bits_offset; // @[TreePEsWrapper.scala 90:69]
  wire  pes_3_pe_io_sample_in_bits_search_for_root; // @[TreePEsWrapper.scala 90:69]
  wire [7:0] pes_3_pe_io_sample_in_bits_tree_to_exec; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_3_pe_io_sample_in_bits_scores_0; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_3_pe_io_sample_in_bits_scores_1; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_3_pe_io_sample_in_bits_scores_2; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_3_pe_io_sample_in_bits_scores_3; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_3_pe_io_sample_in_bits_weights_0; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_3_pe_io_sample_in_bits_weights_1; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_3_pe_io_sample_in_bits_weights_2; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_3_pe_io_sample_in_bits_weights_3; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_3_pe_io_sample_in_bits_weights_4; // @[TreePEsWrapper.scala 90:69]
  wire  pes_3_pe_io_sample_in_bits_last; // @[TreePEsWrapper.scala 90:69]
  wire  pes_3_pe_io_mem_enable_1; // @[TreePEsWrapper.scala 90:69]
  wire [12:0] pes_3_pe_io_mem_addr_1; // @[TreePEsWrapper.scala 90:69]
  wire [63:0] pes_3_pe_io_mem_dataOut_1; // @[TreePEsWrapper.scala 90:69]
  wire  pes_3_pe_io_sample_out_ready; // @[TreePEsWrapper.scala 90:69]
  wire  pes_3_pe_io_sample_out_valid; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_3_pe_io_sample_out_bits_features_0; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_3_pe_io_sample_out_bits_features_1; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_3_pe_io_sample_out_bits_features_2; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_3_pe_io_sample_out_bits_features_3; // @[TreePEsWrapper.scala 90:69]
  wire [9:0] pes_3_pe_io_sample_out_bits_offset; // @[TreePEsWrapper.scala 90:69]
  wire  pes_3_pe_io_sample_out_bits_search_for_root; // @[TreePEsWrapper.scala 90:69]
  wire [7:0] pes_3_pe_io_sample_out_bits_tree_to_exec; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_3_pe_io_sample_out_bits_scores_0; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_3_pe_io_sample_out_bits_scores_1; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_3_pe_io_sample_out_bits_scores_2; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_3_pe_io_sample_out_bits_scores_3; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_3_pe_io_sample_out_bits_weights_0; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_3_pe_io_sample_out_bits_weights_1; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_3_pe_io_sample_out_bits_weights_2; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_3_pe_io_sample_out_bits_weights_3; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_3_pe_io_sample_out_bits_weights_4; // @[TreePEsWrapper.scala 90:69]
  wire  pes_3_pe_io_sample_out_bits_dest; // @[TreePEsWrapper.scala 90:69]
  wire  pes_3_pe_io_sample_out_bits_last; // @[TreePEsWrapper.scala 90:69]
  wire  pes_4_clock; // @[TreePEsWrapper.scala 90:69]
  wire  pes_4_reset; // @[TreePEsWrapper.scala 90:69]
  wire  pes_4_pe_io_sample_in_ready; // @[TreePEsWrapper.scala 90:69]
  wire  pes_4_pe_io_sample_in_valid; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_4_pe_io_sample_in_bits_features_0; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_4_pe_io_sample_in_bits_features_1; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_4_pe_io_sample_in_bits_features_2; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_4_pe_io_sample_in_bits_features_3; // @[TreePEsWrapper.scala 90:69]
  wire [9:0] pes_4_pe_io_sample_in_bits_offset; // @[TreePEsWrapper.scala 90:69]
  wire  pes_4_pe_io_sample_in_bits_search_for_root; // @[TreePEsWrapper.scala 90:69]
  wire [7:0] pes_4_pe_io_sample_in_bits_tree_to_exec; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_4_pe_io_sample_in_bits_scores_0; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_4_pe_io_sample_in_bits_scores_1; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_4_pe_io_sample_in_bits_scores_2; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_4_pe_io_sample_in_bits_scores_3; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_4_pe_io_sample_in_bits_weights_0; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_4_pe_io_sample_in_bits_weights_1; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_4_pe_io_sample_in_bits_weights_2; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_4_pe_io_sample_in_bits_weights_3; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_4_pe_io_sample_in_bits_weights_4; // @[TreePEsWrapper.scala 90:69]
  wire  pes_4_pe_io_sample_in_bits_last; // @[TreePEsWrapper.scala 90:69]
  wire  pes_4_pe_io_mem_enable_1; // @[TreePEsWrapper.scala 90:69]
  wire [12:0] pes_4_pe_io_mem_addr_1; // @[TreePEsWrapper.scala 90:69]
  wire [63:0] pes_4_pe_io_mem_dataOut_1; // @[TreePEsWrapper.scala 90:69]
  wire  pes_4_pe_io_sample_out_ready; // @[TreePEsWrapper.scala 90:69]
  wire  pes_4_pe_io_sample_out_valid; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_4_pe_io_sample_out_bits_features_0; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_4_pe_io_sample_out_bits_features_1; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_4_pe_io_sample_out_bits_features_2; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_4_pe_io_sample_out_bits_features_3; // @[TreePEsWrapper.scala 90:69]
  wire [9:0] pes_4_pe_io_sample_out_bits_offset; // @[TreePEsWrapper.scala 90:69]
  wire  pes_4_pe_io_sample_out_bits_search_for_root; // @[TreePEsWrapper.scala 90:69]
  wire [7:0] pes_4_pe_io_sample_out_bits_tree_to_exec; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_4_pe_io_sample_out_bits_scores_0; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_4_pe_io_sample_out_bits_scores_1; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_4_pe_io_sample_out_bits_scores_2; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_4_pe_io_sample_out_bits_scores_3; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_4_pe_io_sample_out_bits_weights_0; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_4_pe_io_sample_out_bits_weights_1; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_4_pe_io_sample_out_bits_weights_2; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_4_pe_io_sample_out_bits_weights_3; // @[TreePEsWrapper.scala 90:69]
  wire [15:0] pes_4_pe_io_sample_out_bits_weights_4; // @[TreePEsWrapper.scala 90:69]
  wire  pes_4_pe_io_sample_out_bits_dest; // @[TreePEsWrapper.scala 90:69]
  wire  pes_4_pe_io_sample_out_bits_last; // @[TreePEsWrapper.scala 90:69]
  wire  brams_0_clk; // @[TreePEsWrapper.scala 91:71]
  wire  brams_0_a_en; // @[TreePEsWrapper.scala 91:71]
  wire  brams_0_a_wr; // @[TreePEsWrapper.scala 91:71]
  wire [12:0] brams_0_a_addr; // @[TreePEsWrapper.scala 91:71]
  wire [63:0] brams_0_a_din; // @[TreePEsWrapper.scala 91:71]
  wire [63:0] brams_0_a_dout; // @[TreePEsWrapper.scala 91:71]
  wire  brams_0_b_en; // @[TreePEsWrapper.scala 91:71]
  wire  brams_0_b_wr; // @[TreePEsWrapper.scala 91:71]
  wire [12:0] brams_0_b_addr; // @[TreePEsWrapper.scala 91:71]
  wire [31:0] brams_0_b_din; // @[TreePEsWrapper.scala 91:71]
  wire [31:0] brams_0_b_dout; // @[TreePEsWrapper.scala 91:71]
  wire  brams_1_clk; // @[TreePEsWrapper.scala 91:71]
  wire  brams_1_a_en; // @[TreePEsWrapper.scala 91:71]
  wire  brams_1_a_wr; // @[TreePEsWrapper.scala 91:71]
  wire [12:0] brams_1_a_addr; // @[TreePEsWrapper.scala 91:71]
  wire [63:0] brams_1_a_din; // @[TreePEsWrapper.scala 91:71]
  wire [63:0] brams_1_a_dout; // @[TreePEsWrapper.scala 91:71]
  wire  brams_1_b_en; // @[TreePEsWrapper.scala 91:71]
  wire  brams_1_b_wr; // @[TreePEsWrapper.scala 91:71]
  wire [12:0] brams_1_b_addr; // @[TreePEsWrapper.scala 91:71]
  wire [31:0] brams_1_b_din; // @[TreePEsWrapper.scala 91:71]
  wire [31:0] brams_1_b_dout; // @[TreePEsWrapper.scala 91:71]
  wire  brams_2_clk; // @[TreePEsWrapper.scala 91:71]
  wire  brams_2_a_en; // @[TreePEsWrapper.scala 91:71]
  wire  brams_2_a_wr; // @[TreePEsWrapper.scala 91:71]
  wire [12:0] brams_2_a_addr; // @[TreePEsWrapper.scala 91:71]
  wire [63:0] brams_2_a_din; // @[TreePEsWrapper.scala 91:71]
  wire [63:0] brams_2_a_dout; // @[TreePEsWrapper.scala 91:71]
  wire  brams_2_b_en; // @[TreePEsWrapper.scala 91:71]
  wire  brams_2_b_wr; // @[TreePEsWrapper.scala 91:71]
  wire [12:0] brams_2_b_addr; // @[TreePEsWrapper.scala 91:71]
  wire [31:0] brams_2_b_din; // @[TreePEsWrapper.scala 91:71]
  wire [31:0] brams_2_b_dout; // @[TreePEsWrapper.scala 91:71]
  wire  brams_3_clk; // @[TreePEsWrapper.scala 91:71]
  wire  brams_3_a_en; // @[TreePEsWrapper.scala 91:71]
  wire  brams_3_a_wr; // @[TreePEsWrapper.scala 91:71]
  wire [12:0] brams_3_a_addr; // @[TreePEsWrapper.scala 91:71]
  wire [63:0] brams_3_a_din; // @[TreePEsWrapper.scala 91:71]
  wire [63:0] brams_3_a_dout; // @[TreePEsWrapper.scala 91:71]
  wire  brams_3_b_en; // @[TreePEsWrapper.scala 91:71]
  wire  brams_3_b_wr; // @[TreePEsWrapper.scala 91:71]
  wire [12:0] brams_3_b_addr; // @[TreePEsWrapper.scala 91:71]
  wire [31:0] brams_3_b_din; // @[TreePEsWrapper.scala 91:71]
  wire [31:0] brams_3_b_dout; // @[TreePEsWrapper.scala 91:71]
  wire  brams_4_clk; // @[TreePEsWrapper.scala 91:71]
  wire  brams_4_a_en; // @[TreePEsWrapper.scala 91:71]
  wire  brams_4_a_wr; // @[TreePEsWrapper.scala 91:71]
  wire [12:0] brams_4_a_addr; // @[TreePEsWrapper.scala 91:71]
  wire [63:0] brams_4_a_din; // @[TreePEsWrapper.scala 91:71]
  wire [63:0] brams_4_a_dout; // @[TreePEsWrapper.scala 91:71]
  wire  brams_4_b_en; // @[TreePEsWrapper.scala 91:71]
  wire  brams_4_b_wr; // @[TreePEsWrapper.scala 91:71]
  wire [12:0] brams_4_b_addr; // @[TreePEsWrapper.scala 91:71]
  wire [31:0] brams_4_b_din; // @[TreePEsWrapper.scala 91:71]
  wire [31:0] brams_4_b_dout; // @[TreePEsWrapper.scala 91:71]
  wire  first_interconnect_clock; // @[TreePEsWrapper.scala 93:44]
  wire  first_interconnect_reset; // @[TreePEsWrapper.scala 93:44]
  wire  first_interconnect_io_sample_entering_ready; // @[TreePEsWrapper.scala 93:44]
  wire  first_interconnect_io_sample_entering_valid; // @[TreePEsWrapper.scala 93:44]
  wire [15:0] first_interconnect_io_sample_entering_bits_features_0; // @[TreePEsWrapper.scala 93:44]
  wire [15:0] first_interconnect_io_sample_entering_bits_features_1; // @[TreePEsWrapper.scala 93:44]
  wire [15:0] first_interconnect_io_sample_entering_bits_features_2; // @[TreePEsWrapper.scala 93:44]
  wire [15:0] first_interconnect_io_sample_entering_bits_features_3; // @[TreePEsWrapper.scala 93:44]
  wire [9:0] first_interconnect_io_sample_entering_bits_offset; // @[TreePEsWrapper.scala 93:44]
  wire  first_interconnect_io_sample_entering_bits_search_for_root; // @[TreePEsWrapper.scala 93:44]
  wire [7:0] first_interconnect_io_sample_entering_bits_tree_to_exec; // @[TreePEsWrapper.scala 93:44]
  wire [15:0] first_interconnect_io_sample_entering_bits_scores_0; // @[TreePEsWrapper.scala 93:44]
  wire [15:0] first_interconnect_io_sample_entering_bits_scores_1; // @[TreePEsWrapper.scala 93:44]
  wire [15:0] first_interconnect_io_sample_entering_bits_scores_2; // @[TreePEsWrapper.scala 93:44]
  wire [15:0] first_interconnect_io_sample_entering_bits_scores_3; // @[TreePEsWrapper.scala 93:44]
  wire [15:0] first_interconnect_io_sample_entering_bits_weights_0; // @[TreePEsWrapper.scala 93:44]
  wire [15:0] first_interconnect_io_sample_entering_bits_weights_1; // @[TreePEsWrapper.scala 93:44]
  wire [15:0] first_interconnect_io_sample_entering_bits_weights_2; // @[TreePEsWrapper.scala 93:44]
  wire [15:0] first_interconnect_io_sample_entering_bits_weights_3; // @[TreePEsWrapper.scala 93:44]
  wire [15:0] first_interconnect_io_sample_entering_bits_weights_4; // @[TreePEsWrapper.scala 93:44]
  wire  first_interconnect_io_sample_entering_bits_last; // @[TreePEsWrapper.scala 93:44]
  wire  first_interconnect_io_sample_looping_ready; // @[TreePEsWrapper.scala 93:44]
  wire  first_interconnect_io_sample_looping_valid; // @[TreePEsWrapper.scala 93:44]
  wire [15:0] first_interconnect_io_sample_looping_bits_features_0; // @[TreePEsWrapper.scala 93:44]
  wire [15:0] first_interconnect_io_sample_looping_bits_features_1; // @[TreePEsWrapper.scala 93:44]
  wire [15:0] first_interconnect_io_sample_looping_bits_features_2; // @[TreePEsWrapper.scala 93:44]
  wire [15:0] first_interconnect_io_sample_looping_bits_features_3; // @[TreePEsWrapper.scala 93:44]
  wire [9:0] first_interconnect_io_sample_looping_bits_offset; // @[TreePEsWrapper.scala 93:44]
  wire  first_interconnect_io_sample_looping_bits_search_for_root; // @[TreePEsWrapper.scala 93:44]
  wire [7:0] first_interconnect_io_sample_looping_bits_tree_to_exec; // @[TreePEsWrapper.scala 93:44]
  wire [15:0] first_interconnect_io_sample_looping_bits_scores_0; // @[TreePEsWrapper.scala 93:44]
  wire [15:0] first_interconnect_io_sample_looping_bits_scores_1; // @[TreePEsWrapper.scala 93:44]
  wire [15:0] first_interconnect_io_sample_looping_bits_scores_2; // @[TreePEsWrapper.scala 93:44]
  wire [15:0] first_interconnect_io_sample_looping_bits_scores_3; // @[TreePEsWrapper.scala 93:44]
  wire [15:0] first_interconnect_io_sample_looping_bits_weights_0; // @[TreePEsWrapper.scala 93:44]
  wire [15:0] first_interconnect_io_sample_looping_bits_weights_1; // @[TreePEsWrapper.scala 93:44]
  wire [15:0] first_interconnect_io_sample_looping_bits_weights_2; // @[TreePEsWrapper.scala 93:44]
  wire [15:0] first_interconnect_io_sample_looping_bits_weights_3; // @[TreePEsWrapper.scala 93:44]
  wire [15:0] first_interconnect_io_sample_looping_bits_weights_4; // @[TreePEsWrapper.scala 93:44]
  wire  first_interconnect_io_sample_looping_bits_last; // @[TreePEsWrapper.scala 93:44]
  wire  first_interconnect_io_sample_out_ready; // @[TreePEsWrapper.scala 93:44]
  wire  first_interconnect_io_sample_out_valid; // @[TreePEsWrapper.scala 93:44]
  wire [15:0] first_interconnect_io_sample_out_bits_features_0; // @[TreePEsWrapper.scala 93:44]
  wire [15:0] first_interconnect_io_sample_out_bits_features_1; // @[TreePEsWrapper.scala 93:44]
  wire [15:0] first_interconnect_io_sample_out_bits_features_2; // @[TreePEsWrapper.scala 93:44]
  wire [15:0] first_interconnect_io_sample_out_bits_features_3; // @[TreePEsWrapper.scala 93:44]
  wire [9:0] first_interconnect_io_sample_out_bits_offset; // @[TreePEsWrapper.scala 93:44]
  wire  first_interconnect_io_sample_out_bits_search_for_root; // @[TreePEsWrapper.scala 93:44]
  wire [7:0] first_interconnect_io_sample_out_bits_tree_to_exec; // @[TreePEsWrapper.scala 93:44]
  wire [15:0] first_interconnect_io_sample_out_bits_scores_0; // @[TreePEsWrapper.scala 93:44]
  wire [15:0] first_interconnect_io_sample_out_bits_scores_1; // @[TreePEsWrapper.scala 93:44]
  wire [15:0] first_interconnect_io_sample_out_bits_scores_2; // @[TreePEsWrapper.scala 93:44]
  wire [15:0] first_interconnect_io_sample_out_bits_scores_3; // @[TreePEsWrapper.scala 93:44]
  wire [15:0] first_interconnect_io_sample_out_bits_weights_0; // @[TreePEsWrapper.scala 93:44]
  wire [15:0] first_interconnect_io_sample_out_bits_weights_1; // @[TreePEsWrapper.scala 93:44]
  wire [15:0] first_interconnect_io_sample_out_bits_weights_2; // @[TreePEsWrapper.scala 93:44]
  wire [15:0] first_interconnect_io_sample_out_bits_weights_3; // @[TreePEsWrapper.scala 93:44]
  wire [15:0] first_interconnect_io_sample_out_bits_weights_4; // @[TreePEsWrapper.scala 93:44]
  wire  first_interconnect_io_sample_out_bits_last; // @[TreePEsWrapper.scala 93:44]
  wire  last_interconnect_clock; // @[TreePEsWrapper.scala 94:43]
  wire  last_interconnect_reset; // @[TreePEsWrapper.scala 94:43]
  wire  last_interconnect_io_sample_in_ready; // @[TreePEsWrapper.scala 94:43]
  wire  last_interconnect_io_sample_in_valid; // @[TreePEsWrapper.scala 94:43]
  wire [15:0] last_interconnect_io_sample_in_bits_features_0; // @[TreePEsWrapper.scala 94:43]
  wire [15:0] last_interconnect_io_sample_in_bits_features_1; // @[TreePEsWrapper.scala 94:43]
  wire [15:0] last_interconnect_io_sample_in_bits_features_2; // @[TreePEsWrapper.scala 94:43]
  wire [15:0] last_interconnect_io_sample_in_bits_features_3; // @[TreePEsWrapper.scala 94:43]
  wire [9:0] last_interconnect_io_sample_in_bits_offset; // @[TreePEsWrapper.scala 94:43]
  wire  last_interconnect_io_sample_in_bits_search_for_root; // @[TreePEsWrapper.scala 94:43]
  wire [7:0] last_interconnect_io_sample_in_bits_tree_to_exec; // @[TreePEsWrapper.scala 94:43]
  wire [15:0] last_interconnect_io_sample_in_bits_scores_0; // @[TreePEsWrapper.scala 94:43]
  wire [15:0] last_interconnect_io_sample_in_bits_scores_1; // @[TreePEsWrapper.scala 94:43]
  wire [15:0] last_interconnect_io_sample_in_bits_scores_2; // @[TreePEsWrapper.scala 94:43]
  wire [15:0] last_interconnect_io_sample_in_bits_scores_3; // @[TreePEsWrapper.scala 94:43]
  wire [15:0] last_interconnect_io_sample_in_bits_weights_0; // @[TreePEsWrapper.scala 94:43]
  wire [15:0] last_interconnect_io_sample_in_bits_weights_1; // @[TreePEsWrapper.scala 94:43]
  wire [15:0] last_interconnect_io_sample_in_bits_weights_2; // @[TreePEsWrapper.scala 94:43]
  wire [15:0] last_interconnect_io_sample_in_bits_weights_3; // @[TreePEsWrapper.scala 94:43]
  wire [15:0] last_interconnect_io_sample_in_bits_weights_4; // @[TreePEsWrapper.scala 94:43]
  wire  last_interconnect_io_sample_in_bits_dest; // @[TreePEsWrapper.scala 94:43]
  wire  last_interconnect_io_sample_in_bits_last; // @[TreePEsWrapper.scala 94:43]
  wire  last_interconnect_io_sample_looping_ready; // @[TreePEsWrapper.scala 94:43]
  wire  last_interconnect_io_sample_looping_valid; // @[TreePEsWrapper.scala 94:43]
  wire [15:0] last_interconnect_io_sample_looping_bits_features_0; // @[TreePEsWrapper.scala 94:43]
  wire [15:0] last_interconnect_io_sample_looping_bits_features_1; // @[TreePEsWrapper.scala 94:43]
  wire [15:0] last_interconnect_io_sample_looping_bits_features_2; // @[TreePEsWrapper.scala 94:43]
  wire [15:0] last_interconnect_io_sample_looping_bits_features_3; // @[TreePEsWrapper.scala 94:43]
  wire [9:0] last_interconnect_io_sample_looping_bits_offset; // @[TreePEsWrapper.scala 94:43]
  wire  last_interconnect_io_sample_looping_bits_search_for_root; // @[TreePEsWrapper.scala 94:43]
  wire [7:0] last_interconnect_io_sample_looping_bits_tree_to_exec; // @[TreePEsWrapper.scala 94:43]
  wire [15:0] last_interconnect_io_sample_looping_bits_scores_0; // @[TreePEsWrapper.scala 94:43]
  wire [15:0] last_interconnect_io_sample_looping_bits_scores_1; // @[TreePEsWrapper.scala 94:43]
  wire [15:0] last_interconnect_io_sample_looping_bits_scores_2; // @[TreePEsWrapper.scala 94:43]
  wire [15:0] last_interconnect_io_sample_looping_bits_scores_3; // @[TreePEsWrapper.scala 94:43]
  wire [15:0] last_interconnect_io_sample_looping_bits_weights_0; // @[TreePEsWrapper.scala 94:43]
  wire [15:0] last_interconnect_io_sample_looping_bits_weights_1; // @[TreePEsWrapper.scala 94:43]
  wire [15:0] last_interconnect_io_sample_looping_bits_weights_2; // @[TreePEsWrapper.scala 94:43]
  wire [15:0] last_interconnect_io_sample_looping_bits_weights_3; // @[TreePEsWrapper.scala 94:43]
  wire [15:0] last_interconnect_io_sample_looping_bits_weights_4; // @[TreePEsWrapper.scala 94:43]
  wire  last_interconnect_io_sample_looping_bits_last; // @[TreePEsWrapper.scala 94:43]
  wire  last_interconnect_io_sample_leaving_ready; // @[TreePEsWrapper.scala 94:43]
  wire  last_interconnect_io_sample_leaving_valid; // @[TreePEsWrapper.scala 94:43]
  wire [15:0] last_interconnect_io_sample_leaving_bits_features_0; // @[TreePEsWrapper.scala 94:43]
  wire [15:0] last_interconnect_io_sample_leaving_bits_features_1; // @[TreePEsWrapper.scala 94:43]
  wire [15:0] last_interconnect_io_sample_leaving_bits_features_2; // @[TreePEsWrapper.scala 94:43]
  wire [15:0] last_interconnect_io_sample_leaving_bits_features_3; // @[TreePEsWrapper.scala 94:43]
  wire [9:0] last_interconnect_io_sample_leaving_bits_offset; // @[TreePEsWrapper.scala 94:43]
  wire  last_interconnect_io_sample_leaving_bits_shift; // @[TreePEsWrapper.scala 94:43]
  wire  last_interconnect_io_sample_leaving_bits_search_for_root; // @[TreePEsWrapper.scala 94:43]
  wire [7:0] last_interconnect_io_sample_leaving_bits_tree_to_exec; // @[TreePEsWrapper.scala 94:43]
  wire [15:0] last_interconnect_io_sample_leaving_bits_scores_0; // @[TreePEsWrapper.scala 94:43]
  wire [15:0] last_interconnect_io_sample_leaving_bits_scores_1; // @[TreePEsWrapper.scala 94:43]
  wire [15:0] last_interconnect_io_sample_leaving_bits_scores_2; // @[TreePEsWrapper.scala 94:43]
  wire [15:0] last_interconnect_io_sample_leaving_bits_scores_3; // @[TreePEsWrapper.scala 94:43]
  wire [15:0] last_interconnect_io_sample_leaving_bits_weights_0; // @[TreePEsWrapper.scala 94:43]
  wire [15:0] last_interconnect_io_sample_leaving_bits_weights_1; // @[TreePEsWrapper.scala 94:43]
  wire [15:0] last_interconnect_io_sample_leaving_bits_weights_2; // @[TreePEsWrapper.scala 94:43]
  wire [15:0] last_interconnect_io_sample_leaving_bits_weights_3; // @[TreePEsWrapper.scala 94:43]
  wire [15:0] last_interconnect_io_sample_leaving_bits_weights_4; // @[TreePEsWrapper.scala 94:43]
  wire  last_interconnect_io_sample_leaving_bits_last; // @[TreePEsWrapper.scala 94:43]
  wire  increment_clock; // @[TreePEsWrapper.scala 95:35]
  wire  increment_reset; // @[TreePEsWrapper.scala 95:35]
  wire  increment_io_sample_in_ready; // @[TreePEsWrapper.scala 95:35]
  wire  increment_io_sample_in_valid; // @[TreePEsWrapper.scala 95:35]
  wire [15:0] increment_io_sample_in_bits_features_0; // @[TreePEsWrapper.scala 95:35]
  wire [15:0] increment_io_sample_in_bits_features_1; // @[TreePEsWrapper.scala 95:35]
  wire [15:0] increment_io_sample_in_bits_features_2; // @[TreePEsWrapper.scala 95:35]
  wire [15:0] increment_io_sample_in_bits_features_3; // @[TreePEsWrapper.scala 95:35]
  wire [9:0] increment_io_sample_in_bits_offset; // @[TreePEsWrapper.scala 95:35]
  wire  increment_io_sample_in_bits_search_for_root; // @[TreePEsWrapper.scala 95:35]
  wire [7:0] increment_io_sample_in_bits_tree_to_exec; // @[TreePEsWrapper.scala 95:35]
  wire [15:0] increment_io_sample_in_bits_scores_0; // @[TreePEsWrapper.scala 95:35]
  wire [15:0] increment_io_sample_in_bits_scores_1; // @[TreePEsWrapper.scala 95:35]
  wire [15:0] increment_io_sample_in_bits_scores_2; // @[TreePEsWrapper.scala 95:35]
  wire [15:0] increment_io_sample_in_bits_scores_3; // @[TreePEsWrapper.scala 95:35]
  wire [15:0] increment_io_sample_in_bits_weights_0; // @[TreePEsWrapper.scala 95:35]
  wire [15:0] increment_io_sample_in_bits_weights_1; // @[TreePEsWrapper.scala 95:35]
  wire [15:0] increment_io_sample_in_bits_weights_2; // @[TreePEsWrapper.scala 95:35]
  wire [15:0] increment_io_sample_in_bits_weights_3; // @[TreePEsWrapper.scala 95:35]
  wire [15:0] increment_io_sample_in_bits_weights_4; // @[TreePEsWrapper.scala 95:35]
  wire  increment_io_sample_in_bits_last; // @[TreePEsWrapper.scala 95:35]
  wire  increment_io_sample_out_ready; // @[TreePEsWrapper.scala 95:35]
  wire  increment_io_sample_out_valid; // @[TreePEsWrapper.scala 95:35]
  wire [15:0] increment_io_sample_out_bits_features_0; // @[TreePEsWrapper.scala 95:35]
  wire [15:0] increment_io_sample_out_bits_features_1; // @[TreePEsWrapper.scala 95:35]
  wire [15:0] increment_io_sample_out_bits_features_2; // @[TreePEsWrapper.scala 95:35]
  wire [15:0] increment_io_sample_out_bits_features_3; // @[TreePEsWrapper.scala 95:35]
  wire [9:0] increment_io_sample_out_bits_offset; // @[TreePEsWrapper.scala 95:35]
  wire  increment_io_sample_out_bits_search_for_root; // @[TreePEsWrapper.scala 95:35]
  wire [7:0] increment_io_sample_out_bits_tree_to_exec; // @[TreePEsWrapper.scala 95:35]
  wire [15:0] increment_io_sample_out_bits_scores_0; // @[TreePEsWrapper.scala 95:35]
  wire [15:0] increment_io_sample_out_bits_scores_1; // @[TreePEsWrapper.scala 95:35]
  wire [15:0] increment_io_sample_out_bits_scores_2; // @[TreePEsWrapper.scala 95:35]
  wire [15:0] increment_io_sample_out_bits_scores_3; // @[TreePEsWrapper.scala 95:35]
  wire [15:0] increment_io_sample_out_bits_weights_0; // @[TreePEsWrapper.scala 95:35]
  wire [15:0] increment_io_sample_out_bits_weights_1; // @[TreePEsWrapper.scala 95:35]
  wire [15:0] increment_io_sample_out_bits_weights_2; // @[TreePEsWrapper.scala 95:35]
  wire [15:0] increment_io_sample_out_bits_weights_3; // @[TreePEsWrapper.scala 95:35]
  wire [15:0] increment_io_sample_out_bits_weights_4; // @[TreePEsWrapper.scala 95:35]
  wire  increment_io_sample_out_bits_last; // @[TreePEsWrapper.scala 95:35]
  ForwardConverter forward_converter ( // @[TreePEsWrapper.scala 80:39]
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
    .io_sample_out_bits_search_for_root(forward_converter_io_sample_out_bits_search_for_root),
    .io_sample_out_bits_tree_to_exec(forward_converter_io_sample_out_bits_tree_to_exec),
    .io_sample_out_bits_scores_0(forward_converter_io_sample_out_bits_scores_0),
    .io_sample_out_bits_scores_1(forward_converter_io_sample_out_bits_scores_1),
    .io_sample_out_bits_scores_2(forward_converter_io_sample_out_bits_scores_2),
    .io_sample_out_bits_scores_3(forward_converter_io_sample_out_bits_scores_3),
    .io_sample_out_bits_weights_0(forward_converter_io_sample_out_bits_weights_0),
    .io_sample_out_bits_weights_1(forward_converter_io_sample_out_bits_weights_1),
    .io_sample_out_bits_weights_2(forward_converter_io_sample_out_bits_weights_2),
    .io_sample_out_bits_weights_3(forward_converter_io_sample_out_bits_weights_3),
    .io_sample_out_bits_weights_4(forward_converter_io_sample_out_bits_weights_4),
    .io_sample_out_bits_last(forward_converter_io_sample_out_bits_last)
  );
  BackwardConverter backward_converter ( // @[TreePEsWrapper.scala 81:40]
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
    .io_sample_in_bits_weights_2(backward_converter_io_sample_in_bits_weights_2),
    .io_sample_in_bits_weights_3(backward_converter_io_sample_in_bits_weights_3),
    .io_sample_in_bits_weights_4(backward_converter_io_sample_in_bits_weights_4),
    .io_sample_in_bits_last(backward_converter_io_sample_in_bits_last),
    .io_sample_out_TDATA(backward_converter_io_sample_out_TDATA),
    .io_sample_out_TLAST(backward_converter_io_sample_out_TLAST),
    .io_sample_out_TREADY(backward_converter_io_sample_out_TREADY),
    .io_sample_out_TVALID(backward_converter_io_sample_out_TVALID)
  );
  TreePEwithBRAM pes_0 ( // @[TreePEsWrapper.scala 90:69]
    .clock(pes_0_clock),
    .reset(pes_0_reset),
    .pe_io_sample_in_ready(pes_0_pe_io_sample_in_ready),
    .pe_io_sample_in_valid(pes_0_pe_io_sample_in_valid),
    .pe_io_sample_in_bits_features_0(pes_0_pe_io_sample_in_bits_features_0),
    .pe_io_sample_in_bits_features_1(pes_0_pe_io_sample_in_bits_features_1),
    .pe_io_sample_in_bits_features_2(pes_0_pe_io_sample_in_bits_features_2),
    .pe_io_sample_in_bits_features_3(pes_0_pe_io_sample_in_bits_features_3),
    .pe_io_sample_in_bits_offset(pes_0_pe_io_sample_in_bits_offset),
    .pe_io_sample_in_bits_search_for_root(pes_0_pe_io_sample_in_bits_search_for_root),
    .pe_io_sample_in_bits_tree_to_exec(pes_0_pe_io_sample_in_bits_tree_to_exec),
    .pe_io_sample_in_bits_scores_0(pes_0_pe_io_sample_in_bits_scores_0),
    .pe_io_sample_in_bits_scores_1(pes_0_pe_io_sample_in_bits_scores_1),
    .pe_io_sample_in_bits_scores_2(pes_0_pe_io_sample_in_bits_scores_2),
    .pe_io_sample_in_bits_scores_3(pes_0_pe_io_sample_in_bits_scores_3),
    .pe_io_sample_in_bits_weights_0(pes_0_pe_io_sample_in_bits_weights_0),
    .pe_io_sample_in_bits_weights_1(pes_0_pe_io_sample_in_bits_weights_1),
    .pe_io_sample_in_bits_weights_2(pes_0_pe_io_sample_in_bits_weights_2),
    .pe_io_sample_in_bits_weights_3(pes_0_pe_io_sample_in_bits_weights_3),
    .pe_io_sample_in_bits_weights_4(pes_0_pe_io_sample_in_bits_weights_4),
    .pe_io_sample_in_bits_last(pes_0_pe_io_sample_in_bits_last),
    .pe_io_mem_enable_1(pes_0_pe_io_mem_enable_1),
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
    .pe_io_sample_out_bits_weights_2(pes_0_pe_io_sample_out_bits_weights_2),
    .pe_io_sample_out_bits_weights_3(pes_0_pe_io_sample_out_bits_weights_3),
    .pe_io_sample_out_bits_weights_4(pes_0_pe_io_sample_out_bits_weights_4),
    .pe_io_sample_out_bits_last(pes_0_pe_io_sample_out_bits_last)
  );
  TreePEwithBRAM_1 pes_1 ( // @[TreePEsWrapper.scala 90:69]
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
    .pe_io_sample_in_bits_weights_2(pes_1_pe_io_sample_in_bits_weights_2),
    .pe_io_sample_in_bits_weights_3(pes_1_pe_io_sample_in_bits_weights_3),
    .pe_io_sample_in_bits_weights_4(pes_1_pe_io_sample_in_bits_weights_4),
    .pe_io_sample_in_bits_last(pes_1_pe_io_sample_in_bits_last),
    .pe_io_mem_enable_1(pes_1_pe_io_mem_enable_1),
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
    .pe_io_sample_out_bits_weights_2(pes_1_pe_io_sample_out_bits_weights_2),
    .pe_io_sample_out_bits_weights_3(pes_1_pe_io_sample_out_bits_weights_3),
    .pe_io_sample_out_bits_weights_4(pes_1_pe_io_sample_out_bits_weights_4),
    .pe_io_sample_out_bits_dest(pes_1_pe_io_sample_out_bits_dest),
    .pe_io_sample_out_bits_last(pes_1_pe_io_sample_out_bits_last)
  );
  TreePEwithBRAM_1 pes_2 ( // @[TreePEsWrapper.scala 90:69]
    .clock(pes_2_clock),
    .reset(pes_2_reset),
    .pe_io_sample_in_ready(pes_2_pe_io_sample_in_ready),
    .pe_io_sample_in_valid(pes_2_pe_io_sample_in_valid),
    .pe_io_sample_in_bits_features_0(pes_2_pe_io_sample_in_bits_features_0),
    .pe_io_sample_in_bits_features_1(pes_2_pe_io_sample_in_bits_features_1),
    .pe_io_sample_in_bits_features_2(pes_2_pe_io_sample_in_bits_features_2),
    .pe_io_sample_in_bits_features_3(pes_2_pe_io_sample_in_bits_features_3),
    .pe_io_sample_in_bits_offset(pes_2_pe_io_sample_in_bits_offset),
    .pe_io_sample_in_bits_search_for_root(pes_2_pe_io_sample_in_bits_search_for_root),
    .pe_io_sample_in_bits_tree_to_exec(pes_2_pe_io_sample_in_bits_tree_to_exec),
    .pe_io_sample_in_bits_scores_0(pes_2_pe_io_sample_in_bits_scores_0),
    .pe_io_sample_in_bits_scores_1(pes_2_pe_io_sample_in_bits_scores_1),
    .pe_io_sample_in_bits_scores_2(pes_2_pe_io_sample_in_bits_scores_2),
    .pe_io_sample_in_bits_scores_3(pes_2_pe_io_sample_in_bits_scores_3),
    .pe_io_sample_in_bits_weights_0(pes_2_pe_io_sample_in_bits_weights_0),
    .pe_io_sample_in_bits_weights_1(pes_2_pe_io_sample_in_bits_weights_1),
    .pe_io_sample_in_bits_weights_2(pes_2_pe_io_sample_in_bits_weights_2),
    .pe_io_sample_in_bits_weights_3(pes_2_pe_io_sample_in_bits_weights_3),
    .pe_io_sample_in_bits_weights_4(pes_2_pe_io_sample_in_bits_weights_4),
    .pe_io_sample_in_bits_last(pes_2_pe_io_sample_in_bits_last),
    .pe_io_mem_enable_1(pes_2_pe_io_mem_enable_1),
    .pe_io_mem_addr_1(pes_2_pe_io_mem_addr_1),
    .pe_io_mem_dataOut_1(pes_2_pe_io_mem_dataOut_1),
    .pe_io_sample_out_ready(pes_2_pe_io_sample_out_ready),
    .pe_io_sample_out_valid(pes_2_pe_io_sample_out_valid),
    .pe_io_sample_out_bits_features_0(pes_2_pe_io_sample_out_bits_features_0),
    .pe_io_sample_out_bits_features_1(pes_2_pe_io_sample_out_bits_features_1),
    .pe_io_sample_out_bits_features_2(pes_2_pe_io_sample_out_bits_features_2),
    .pe_io_sample_out_bits_features_3(pes_2_pe_io_sample_out_bits_features_3),
    .pe_io_sample_out_bits_offset(pes_2_pe_io_sample_out_bits_offset),
    .pe_io_sample_out_bits_search_for_root(pes_2_pe_io_sample_out_bits_search_for_root),
    .pe_io_sample_out_bits_tree_to_exec(pes_2_pe_io_sample_out_bits_tree_to_exec),
    .pe_io_sample_out_bits_scores_0(pes_2_pe_io_sample_out_bits_scores_0),
    .pe_io_sample_out_bits_scores_1(pes_2_pe_io_sample_out_bits_scores_1),
    .pe_io_sample_out_bits_scores_2(pes_2_pe_io_sample_out_bits_scores_2),
    .pe_io_sample_out_bits_scores_3(pes_2_pe_io_sample_out_bits_scores_3),
    .pe_io_sample_out_bits_weights_0(pes_2_pe_io_sample_out_bits_weights_0),
    .pe_io_sample_out_bits_weights_1(pes_2_pe_io_sample_out_bits_weights_1),
    .pe_io_sample_out_bits_weights_2(pes_2_pe_io_sample_out_bits_weights_2),
    .pe_io_sample_out_bits_weights_3(pes_2_pe_io_sample_out_bits_weights_3),
    .pe_io_sample_out_bits_weights_4(pes_2_pe_io_sample_out_bits_weights_4),
    .pe_io_sample_out_bits_dest(pes_2_pe_io_sample_out_bits_dest),
    .pe_io_sample_out_bits_last(pes_2_pe_io_sample_out_bits_last)
  );
  TreePEwithBRAM_1 pes_3 ( // @[TreePEsWrapper.scala 90:69]
    .clock(pes_3_clock),
    .reset(pes_3_reset),
    .pe_io_sample_in_ready(pes_3_pe_io_sample_in_ready),
    .pe_io_sample_in_valid(pes_3_pe_io_sample_in_valid),
    .pe_io_sample_in_bits_features_0(pes_3_pe_io_sample_in_bits_features_0),
    .pe_io_sample_in_bits_features_1(pes_3_pe_io_sample_in_bits_features_1),
    .pe_io_sample_in_bits_features_2(pes_3_pe_io_sample_in_bits_features_2),
    .pe_io_sample_in_bits_features_3(pes_3_pe_io_sample_in_bits_features_3),
    .pe_io_sample_in_bits_offset(pes_3_pe_io_sample_in_bits_offset),
    .pe_io_sample_in_bits_search_for_root(pes_3_pe_io_sample_in_bits_search_for_root),
    .pe_io_sample_in_bits_tree_to_exec(pes_3_pe_io_sample_in_bits_tree_to_exec),
    .pe_io_sample_in_bits_scores_0(pes_3_pe_io_sample_in_bits_scores_0),
    .pe_io_sample_in_bits_scores_1(pes_3_pe_io_sample_in_bits_scores_1),
    .pe_io_sample_in_bits_scores_2(pes_3_pe_io_sample_in_bits_scores_2),
    .pe_io_sample_in_bits_scores_3(pes_3_pe_io_sample_in_bits_scores_3),
    .pe_io_sample_in_bits_weights_0(pes_3_pe_io_sample_in_bits_weights_0),
    .pe_io_sample_in_bits_weights_1(pes_3_pe_io_sample_in_bits_weights_1),
    .pe_io_sample_in_bits_weights_2(pes_3_pe_io_sample_in_bits_weights_2),
    .pe_io_sample_in_bits_weights_3(pes_3_pe_io_sample_in_bits_weights_3),
    .pe_io_sample_in_bits_weights_4(pes_3_pe_io_sample_in_bits_weights_4),
    .pe_io_sample_in_bits_last(pes_3_pe_io_sample_in_bits_last),
    .pe_io_mem_enable_1(pes_3_pe_io_mem_enable_1),
    .pe_io_mem_addr_1(pes_3_pe_io_mem_addr_1),
    .pe_io_mem_dataOut_1(pes_3_pe_io_mem_dataOut_1),
    .pe_io_sample_out_ready(pes_3_pe_io_sample_out_ready),
    .pe_io_sample_out_valid(pes_3_pe_io_sample_out_valid),
    .pe_io_sample_out_bits_features_0(pes_3_pe_io_sample_out_bits_features_0),
    .pe_io_sample_out_bits_features_1(pes_3_pe_io_sample_out_bits_features_1),
    .pe_io_sample_out_bits_features_2(pes_3_pe_io_sample_out_bits_features_2),
    .pe_io_sample_out_bits_features_3(pes_3_pe_io_sample_out_bits_features_3),
    .pe_io_sample_out_bits_offset(pes_3_pe_io_sample_out_bits_offset),
    .pe_io_sample_out_bits_search_for_root(pes_3_pe_io_sample_out_bits_search_for_root),
    .pe_io_sample_out_bits_tree_to_exec(pes_3_pe_io_sample_out_bits_tree_to_exec),
    .pe_io_sample_out_bits_scores_0(pes_3_pe_io_sample_out_bits_scores_0),
    .pe_io_sample_out_bits_scores_1(pes_3_pe_io_sample_out_bits_scores_1),
    .pe_io_sample_out_bits_scores_2(pes_3_pe_io_sample_out_bits_scores_2),
    .pe_io_sample_out_bits_scores_3(pes_3_pe_io_sample_out_bits_scores_3),
    .pe_io_sample_out_bits_weights_0(pes_3_pe_io_sample_out_bits_weights_0),
    .pe_io_sample_out_bits_weights_1(pes_3_pe_io_sample_out_bits_weights_1),
    .pe_io_sample_out_bits_weights_2(pes_3_pe_io_sample_out_bits_weights_2),
    .pe_io_sample_out_bits_weights_3(pes_3_pe_io_sample_out_bits_weights_3),
    .pe_io_sample_out_bits_weights_4(pes_3_pe_io_sample_out_bits_weights_4),
    .pe_io_sample_out_bits_dest(pes_3_pe_io_sample_out_bits_dest),
    .pe_io_sample_out_bits_last(pes_3_pe_io_sample_out_bits_last)
  );
  TreePEwithBRAM_1 pes_4 ( // @[TreePEsWrapper.scala 90:69]
    .clock(pes_4_clock),
    .reset(pes_4_reset),
    .pe_io_sample_in_ready(pes_4_pe_io_sample_in_ready),
    .pe_io_sample_in_valid(pes_4_pe_io_sample_in_valid),
    .pe_io_sample_in_bits_features_0(pes_4_pe_io_sample_in_bits_features_0),
    .pe_io_sample_in_bits_features_1(pes_4_pe_io_sample_in_bits_features_1),
    .pe_io_sample_in_bits_features_2(pes_4_pe_io_sample_in_bits_features_2),
    .pe_io_sample_in_bits_features_3(pes_4_pe_io_sample_in_bits_features_3),
    .pe_io_sample_in_bits_offset(pes_4_pe_io_sample_in_bits_offset),
    .pe_io_sample_in_bits_search_for_root(pes_4_pe_io_sample_in_bits_search_for_root),
    .pe_io_sample_in_bits_tree_to_exec(pes_4_pe_io_sample_in_bits_tree_to_exec),
    .pe_io_sample_in_bits_scores_0(pes_4_pe_io_sample_in_bits_scores_0),
    .pe_io_sample_in_bits_scores_1(pes_4_pe_io_sample_in_bits_scores_1),
    .pe_io_sample_in_bits_scores_2(pes_4_pe_io_sample_in_bits_scores_2),
    .pe_io_sample_in_bits_scores_3(pes_4_pe_io_sample_in_bits_scores_3),
    .pe_io_sample_in_bits_weights_0(pes_4_pe_io_sample_in_bits_weights_0),
    .pe_io_sample_in_bits_weights_1(pes_4_pe_io_sample_in_bits_weights_1),
    .pe_io_sample_in_bits_weights_2(pes_4_pe_io_sample_in_bits_weights_2),
    .pe_io_sample_in_bits_weights_3(pes_4_pe_io_sample_in_bits_weights_3),
    .pe_io_sample_in_bits_weights_4(pes_4_pe_io_sample_in_bits_weights_4),
    .pe_io_sample_in_bits_last(pes_4_pe_io_sample_in_bits_last),
    .pe_io_mem_enable_1(pes_4_pe_io_mem_enable_1),
    .pe_io_mem_addr_1(pes_4_pe_io_mem_addr_1),
    .pe_io_mem_dataOut_1(pes_4_pe_io_mem_dataOut_1),
    .pe_io_sample_out_ready(pes_4_pe_io_sample_out_ready),
    .pe_io_sample_out_valid(pes_4_pe_io_sample_out_valid),
    .pe_io_sample_out_bits_features_0(pes_4_pe_io_sample_out_bits_features_0),
    .pe_io_sample_out_bits_features_1(pes_4_pe_io_sample_out_bits_features_1),
    .pe_io_sample_out_bits_features_2(pes_4_pe_io_sample_out_bits_features_2),
    .pe_io_sample_out_bits_features_3(pes_4_pe_io_sample_out_bits_features_3),
    .pe_io_sample_out_bits_offset(pes_4_pe_io_sample_out_bits_offset),
    .pe_io_sample_out_bits_search_for_root(pes_4_pe_io_sample_out_bits_search_for_root),
    .pe_io_sample_out_bits_tree_to_exec(pes_4_pe_io_sample_out_bits_tree_to_exec),
    .pe_io_sample_out_bits_scores_0(pes_4_pe_io_sample_out_bits_scores_0),
    .pe_io_sample_out_bits_scores_1(pes_4_pe_io_sample_out_bits_scores_1),
    .pe_io_sample_out_bits_scores_2(pes_4_pe_io_sample_out_bits_scores_2),
    .pe_io_sample_out_bits_scores_3(pes_4_pe_io_sample_out_bits_scores_3),
    .pe_io_sample_out_bits_weights_0(pes_4_pe_io_sample_out_bits_weights_0),
    .pe_io_sample_out_bits_weights_1(pes_4_pe_io_sample_out_bits_weights_1),
    .pe_io_sample_out_bits_weights_2(pes_4_pe_io_sample_out_bits_weights_2),
    .pe_io_sample_out_bits_weights_3(pes_4_pe_io_sample_out_bits_weights_3),
    .pe_io_sample_out_bits_weights_4(pes_4_pe_io_sample_out_bits_weights_4),
    .pe_io_sample_out_bits_dest(pes_4_pe_io_sample_out_bits_dest),
    .pe_io_sample_out_bits_last(pes_4_pe_io_sample_out_bits_last)
  );
  BRAMBlackBox #(.SIZE_B(1152), .DATA_B(32), .SIZE_A(576), .ADDR(13), .DATA_A(64)) brams_0 ( // @[TreePEsWrapper.scala 91:71]
    .clk(brams_0_clk),
    .a_en(brams_0_a_en),
    .a_wr(brams_0_a_wr),
    .a_addr(brams_0_a_addr),
    .a_din(brams_0_a_din),
    .a_dout(brams_0_a_dout),
    .b_en(brams_0_b_en),
    .b_wr(brams_0_b_wr),
    .b_addr(brams_0_b_addr),
    .b_din(brams_0_b_din),
    .b_dout(brams_0_b_dout)
  );
  BRAMBlackBox #(.SIZE_B(1152), .DATA_B(32), .SIZE_A(576), .ADDR(13), .DATA_A(64)) brams_1 ( // @[TreePEsWrapper.scala 91:71]
    .clk(brams_1_clk),
    .a_en(brams_1_a_en),
    .a_wr(brams_1_a_wr),
    .a_addr(brams_1_a_addr),
    .a_din(brams_1_a_din),
    .a_dout(brams_1_a_dout),
    .b_en(brams_1_b_en),
    .b_wr(brams_1_b_wr),
    .b_addr(brams_1_b_addr),
    .b_din(brams_1_b_din),
    .b_dout(brams_1_b_dout)
  );
  BRAMBlackBox #(.SIZE_B(1152), .DATA_B(32), .SIZE_A(576), .ADDR(13), .DATA_A(64)) brams_2 ( // @[TreePEsWrapper.scala 91:71]
    .clk(brams_2_clk),
    .a_en(brams_2_a_en),
    .a_wr(brams_2_a_wr),
    .a_addr(brams_2_a_addr),
    .a_din(brams_2_a_din),
    .a_dout(brams_2_a_dout),
    .b_en(brams_2_b_en),
    .b_wr(brams_2_b_wr),
    .b_addr(brams_2_b_addr),
    .b_din(brams_2_b_din),
    .b_dout(brams_2_b_dout)
  );
  BRAMBlackBox #(.SIZE_B(1152), .DATA_B(32), .SIZE_A(576), .ADDR(13), .DATA_A(64)) brams_3 ( // @[TreePEsWrapper.scala 91:71]
    .clk(brams_3_clk),
    .a_en(brams_3_a_en),
    .a_wr(brams_3_a_wr),
    .a_addr(brams_3_a_addr),
    .a_din(brams_3_a_din),
    .a_dout(brams_3_a_dout),
    .b_en(brams_3_b_en),
    .b_wr(brams_3_b_wr),
    .b_addr(brams_3_b_addr),
    .b_din(brams_3_b_din),
    .b_dout(brams_3_b_dout)
  );
  BRAMBlackBox #(.SIZE_B(1152), .DATA_B(32), .SIZE_A(576), .ADDR(13), .DATA_A(64)) brams_4 ( // @[TreePEsWrapper.scala 91:71]
    .clk(brams_4_clk),
    .a_en(brams_4_a_en),
    .a_wr(brams_4_a_wr),
    .a_addr(brams_4_a_addr),
    .a_din(brams_4_a_din),
    .a_dout(brams_4_a_dout),
    .b_en(brams_4_b_en),
    .b_wr(brams_4_b_wr),
    .b_addr(brams_4_b_addr),
    .b_din(brams_4_b_din),
    .b_dout(brams_4_b_dout)
  );
  FirstInterconnectPE first_interconnect ( // @[TreePEsWrapper.scala 93:44]
    .clock(first_interconnect_clock),
    .reset(first_interconnect_reset),
    .io_sample_entering_ready(first_interconnect_io_sample_entering_ready),
    .io_sample_entering_valid(first_interconnect_io_sample_entering_valid),
    .io_sample_entering_bits_features_0(first_interconnect_io_sample_entering_bits_features_0),
    .io_sample_entering_bits_features_1(first_interconnect_io_sample_entering_bits_features_1),
    .io_sample_entering_bits_features_2(first_interconnect_io_sample_entering_bits_features_2),
    .io_sample_entering_bits_features_3(first_interconnect_io_sample_entering_bits_features_3),
    .io_sample_entering_bits_offset(first_interconnect_io_sample_entering_bits_offset),
    .io_sample_entering_bits_search_for_root(first_interconnect_io_sample_entering_bits_search_for_root),
    .io_sample_entering_bits_tree_to_exec(first_interconnect_io_sample_entering_bits_tree_to_exec),
    .io_sample_entering_bits_scores_0(first_interconnect_io_sample_entering_bits_scores_0),
    .io_sample_entering_bits_scores_1(first_interconnect_io_sample_entering_bits_scores_1),
    .io_sample_entering_bits_scores_2(first_interconnect_io_sample_entering_bits_scores_2),
    .io_sample_entering_bits_scores_3(first_interconnect_io_sample_entering_bits_scores_3),
    .io_sample_entering_bits_weights_0(first_interconnect_io_sample_entering_bits_weights_0),
    .io_sample_entering_bits_weights_1(first_interconnect_io_sample_entering_bits_weights_1),
    .io_sample_entering_bits_weights_2(first_interconnect_io_sample_entering_bits_weights_2),
    .io_sample_entering_bits_weights_3(first_interconnect_io_sample_entering_bits_weights_3),
    .io_sample_entering_bits_weights_4(first_interconnect_io_sample_entering_bits_weights_4),
    .io_sample_entering_bits_last(first_interconnect_io_sample_entering_bits_last),
    .io_sample_looping_ready(first_interconnect_io_sample_looping_ready),
    .io_sample_looping_valid(first_interconnect_io_sample_looping_valid),
    .io_sample_looping_bits_features_0(first_interconnect_io_sample_looping_bits_features_0),
    .io_sample_looping_bits_features_1(first_interconnect_io_sample_looping_bits_features_1),
    .io_sample_looping_bits_features_2(first_interconnect_io_sample_looping_bits_features_2),
    .io_sample_looping_bits_features_3(first_interconnect_io_sample_looping_bits_features_3),
    .io_sample_looping_bits_offset(first_interconnect_io_sample_looping_bits_offset),
    .io_sample_looping_bits_search_for_root(first_interconnect_io_sample_looping_bits_search_for_root),
    .io_sample_looping_bits_tree_to_exec(first_interconnect_io_sample_looping_bits_tree_to_exec),
    .io_sample_looping_bits_scores_0(first_interconnect_io_sample_looping_bits_scores_0),
    .io_sample_looping_bits_scores_1(first_interconnect_io_sample_looping_bits_scores_1),
    .io_sample_looping_bits_scores_2(first_interconnect_io_sample_looping_bits_scores_2),
    .io_sample_looping_bits_scores_3(first_interconnect_io_sample_looping_bits_scores_3),
    .io_sample_looping_bits_weights_0(first_interconnect_io_sample_looping_bits_weights_0),
    .io_sample_looping_bits_weights_1(first_interconnect_io_sample_looping_bits_weights_1),
    .io_sample_looping_bits_weights_2(first_interconnect_io_sample_looping_bits_weights_2),
    .io_sample_looping_bits_weights_3(first_interconnect_io_sample_looping_bits_weights_3),
    .io_sample_looping_bits_weights_4(first_interconnect_io_sample_looping_bits_weights_4),
    .io_sample_looping_bits_last(first_interconnect_io_sample_looping_bits_last),
    .io_sample_out_ready(first_interconnect_io_sample_out_ready),
    .io_sample_out_valid(first_interconnect_io_sample_out_valid),
    .io_sample_out_bits_features_0(first_interconnect_io_sample_out_bits_features_0),
    .io_sample_out_bits_features_1(first_interconnect_io_sample_out_bits_features_1),
    .io_sample_out_bits_features_2(first_interconnect_io_sample_out_bits_features_2),
    .io_sample_out_bits_features_3(first_interconnect_io_sample_out_bits_features_3),
    .io_sample_out_bits_offset(first_interconnect_io_sample_out_bits_offset),
    .io_sample_out_bits_search_for_root(first_interconnect_io_sample_out_bits_search_for_root),
    .io_sample_out_bits_tree_to_exec(first_interconnect_io_sample_out_bits_tree_to_exec),
    .io_sample_out_bits_scores_0(first_interconnect_io_sample_out_bits_scores_0),
    .io_sample_out_bits_scores_1(first_interconnect_io_sample_out_bits_scores_1),
    .io_sample_out_bits_scores_2(first_interconnect_io_sample_out_bits_scores_2),
    .io_sample_out_bits_scores_3(first_interconnect_io_sample_out_bits_scores_3),
    .io_sample_out_bits_weights_0(first_interconnect_io_sample_out_bits_weights_0),
    .io_sample_out_bits_weights_1(first_interconnect_io_sample_out_bits_weights_1),
    .io_sample_out_bits_weights_2(first_interconnect_io_sample_out_bits_weights_2),
    .io_sample_out_bits_weights_3(first_interconnect_io_sample_out_bits_weights_3),
    .io_sample_out_bits_weights_4(first_interconnect_io_sample_out_bits_weights_4),
    .io_sample_out_bits_last(first_interconnect_io_sample_out_bits_last)
  );
  LastInterconnectPE last_interconnect ( // @[TreePEsWrapper.scala 94:43]
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
    .io_sample_in_bits_weights_2(last_interconnect_io_sample_in_bits_weights_2),
    .io_sample_in_bits_weights_3(last_interconnect_io_sample_in_bits_weights_3),
    .io_sample_in_bits_weights_4(last_interconnect_io_sample_in_bits_weights_4),
    .io_sample_in_bits_dest(last_interconnect_io_sample_in_bits_dest),
    .io_sample_in_bits_last(last_interconnect_io_sample_in_bits_last),
    .io_sample_looping_ready(last_interconnect_io_sample_looping_ready),
    .io_sample_looping_valid(last_interconnect_io_sample_looping_valid),
    .io_sample_looping_bits_features_0(last_interconnect_io_sample_looping_bits_features_0),
    .io_sample_looping_bits_features_1(last_interconnect_io_sample_looping_bits_features_1),
    .io_sample_looping_bits_features_2(last_interconnect_io_sample_looping_bits_features_2),
    .io_sample_looping_bits_features_3(last_interconnect_io_sample_looping_bits_features_3),
    .io_sample_looping_bits_offset(last_interconnect_io_sample_looping_bits_offset),
    .io_sample_looping_bits_search_for_root(last_interconnect_io_sample_looping_bits_search_for_root),
    .io_sample_looping_bits_tree_to_exec(last_interconnect_io_sample_looping_bits_tree_to_exec),
    .io_sample_looping_bits_scores_0(last_interconnect_io_sample_looping_bits_scores_0),
    .io_sample_looping_bits_scores_1(last_interconnect_io_sample_looping_bits_scores_1),
    .io_sample_looping_bits_scores_2(last_interconnect_io_sample_looping_bits_scores_2),
    .io_sample_looping_bits_scores_3(last_interconnect_io_sample_looping_bits_scores_3),
    .io_sample_looping_bits_weights_0(last_interconnect_io_sample_looping_bits_weights_0),
    .io_sample_looping_bits_weights_1(last_interconnect_io_sample_looping_bits_weights_1),
    .io_sample_looping_bits_weights_2(last_interconnect_io_sample_looping_bits_weights_2),
    .io_sample_looping_bits_weights_3(last_interconnect_io_sample_looping_bits_weights_3),
    .io_sample_looping_bits_weights_4(last_interconnect_io_sample_looping_bits_weights_4),
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
    .io_sample_leaving_bits_weights_2(last_interconnect_io_sample_leaving_bits_weights_2),
    .io_sample_leaving_bits_weights_3(last_interconnect_io_sample_leaving_bits_weights_3),
    .io_sample_leaving_bits_weights_4(last_interconnect_io_sample_leaving_bits_weights_4),
    .io_sample_leaving_bits_last(last_interconnect_io_sample_leaving_bits_last)
  );
  IncrementTreePE increment ( // @[TreePEsWrapper.scala 95:35]
    .clock(increment_clock),
    .reset(increment_reset),
    .io_sample_in_ready(increment_io_sample_in_ready),
    .io_sample_in_valid(increment_io_sample_in_valid),
    .io_sample_in_bits_features_0(increment_io_sample_in_bits_features_0),
    .io_sample_in_bits_features_1(increment_io_sample_in_bits_features_1),
    .io_sample_in_bits_features_2(increment_io_sample_in_bits_features_2),
    .io_sample_in_bits_features_3(increment_io_sample_in_bits_features_3),
    .io_sample_in_bits_offset(increment_io_sample_in_bits_offset),
    .io_sample_in_bits_search_for_root(increment_io_sample_in_bits_search_for_root),
    .io_sample_in_bits_tree_to_exec(increment_io_sample_in_bits_tree_to_exec),
    .io_sample_in_bits_scores_0(increment_io_sample_in_bits_scores_0),
    .io_sample_in_bits_scores_1(increment_io_sample_in_bits_scores_1),
    .io_sample_in_bits_scores_2(increment_io_sample_in_bits_scores_2),
    .io_sample_in_bits_scores_3(increment_io_sample_in_bits_scores_3),
    .io_sample_in_bits_weights_0(increment_io_sample_in_bits_weights_0),
    .io_sample_in_bits_weights_1(increment_io_sample_in_bits_weights_1),
    .io_sample_in_bits_weights_2(increment_io_sample_in_bits_weights_2),
    .io_sample_in_bits_weights_3(increment_io_sample_in_bits_weights_3),
    .io_sample_in_bits_weights_4(increment_io_sample_in_bits_weights_4),
    .io_sample_in_bits_last(increment_io_sample_in_bits_last),
    .io_sample_out_ready(increment_io_sample_out_ready),
    .io_sample_out_valid(increment_io_sample_out_valid),
    .io_sample_out_bits_features_0(increment_io_sample_out_bits_features_0),
    .io_sample_out_bits_features_1(increment_io_sample_out_bits_features_1),
    .io_sample_out_bits_features_2(increment_io_sample_out_bits_features_2),
    .io_sample_out_bits_features_3(increment_io_sample_out_bits_features_3),
    .io_sample_out_bits_offset(increment_io_sample_out_bits_offset),
    .io_sample_out_bits_search_for_root(increment_io_sample_out_bits_search_for_root),
    .io_sample_out_bits_tree_to_exec(increment_io_sample_out_bits_tree_to_exec),
    .io_sample_out_bits_scores_0(increment_io_sample_out_bits_scores_0),
    .io_sample_out_bits_scores_1(increment_io_sample_out_bits_scores_1),
    .io_sample_out_bits_scores_2(increment_io_sample_out_bits_scores_2),
    .io_sample_out_bits_scores_3(increment_io_sample_out_bits_scores_3),
    .io_sample_out_bits_weights_0(increment_io_sample_out_bits_weights_0),
    .io_sample_out_bits_weights_1(increment_io_sample_out_bits_weights_1),
    .io_sample_out_bits_weights_2(increment_io_sample_out_bits_weights_2),
    .io_sample_out_bits_weights_3(increment_io_sample_out_bits_weights_3),
    .io_sample_out_bits_weights_4(increment_io_sample_out_bits_weights_4),
    .io_sample_out_bits_last(increment_io_sample_out_bits_last)
  );
  assign wrapper_io_sample_in_TREADY = forward_converter_io_sample_in_TREADY; // @[TreePEsWrapper.scala 157:30]
  assign wrapper_io_sample_out_TDATA = backward_converter_io_sample_out_TDATA; // @[TreePEsWrapper.scala 160:31]
  assign wrapper_io_sample_out_TKEEP = 32'h7fffffff; // @[TreePEsWrapper.scala 160:31]
  assign wrapper_io_sample_out_TLAST = backward_converter_io_sample_out_TLAST; // @[TreePEsWrapper.scala 160:31]
  assign wrapper_io_sample_out_TVALID = backward_converter_io_sample_out_TVALID; // @[TreePEsWrapper.scala 160:31]
  assign brams_io_0_bram_rddata_a = brams_0_b_dout; // @[TreePEsWrapper.scala 110:49]
  assign brams_io_1_bram_rddata_a = brams_1_b_dout; // @[TreePEsWrapper.scala 110:49]
  assign brams_io_2_bram_rddata_a = brams_2_b_dout; // @[TreePEsWrapper.scala 110:49]
  assign brams_io_3_bram_rddata_a = brams_3_b_dout; // @[TreePEsWrapper.scala 110:49]
  assign brams_io_4_bram_rddata_a = brams_4_b_dout; // @[TreePEsWrapper.scala 110:49]
  assign forward_converter_io_sample_in_TDATA = wrapper_io_sample_in_TDATA; // @[TreePEsWrapper.scala 157:30]
  assign forward_converter_io_sample_in_TLAST = wrapper_io_sample_in_TLAST; // @[TreePEsWrapper.scala 157:30]
  assign forward_converter_io_sample_in_TVALID = wrapper_io_sample_in_TVALID; // @[TreePEsWrapper.scala 157:30]
  assign forward_converter_io_sample_out_ready = first_interconnect_io_sample_entering_ready; // @[TreePEsWrapper.scala 158:41]
  assign backward_converter_io_sample_in_valid = last_interconnect_io_sample_leaving_valid; // @[TreePEsWrapper.scala 132:49]
  assign backward_converter_io_sample_in_bits_features_0 = last_interconnect_io_sample_leaving_bits_features_0; // @[TreePEsWrapper.scala 132:49]
  assign backward_converter_io_sample_in_bits_features_1 = last_interconnect_io_sample_leaving_bits_features_1; // @[TreePEsWrapper.scala 132:49]
  assign backward_converter_io_sample_in_bits_features_2 = last_interconnect_io_sample_leaving_bits_features_2; // @[TreePEsWrapper.scala 132:49]
  assign backward_converter_io_sample_in_bits_features_3 = last_interconnect_io_sample_leaving_bits_features_3; // @[TreePEsWrapper.scala 132:49]
  assign backward_converter_io_sample_in_bits_offset = last_interconnect_io_sample_leaving_bits_offset; // @[TreePEsWrapper.scala 132:49]
  assign backward_converter_io_sample_in_bits_shift = last_interconnect_io_sample_leaving_bits_shift; // @[TreePEsWrapper.scala 132:49]
  assign backward_converter_io_sample_in_bits_search_for_root = last_interconnect_io_sample_leaving_bits_search_for_root
    ; // @[TreePEsWrapper.scala 132:49]
  assign backward_converter_io_sample_in_bits_tree_to_exec = last_interconnect_io_sample_leaving_bits_tree_to_exec; // @[TreePEsWrapper.scala 132:49]
  assign backward_converter_io_sample_in_bits_scores_0 = last_interconnect_io_sample_leaving_bits_scores_0; // @[TreePEsWrapper.scala 132:49]
  assign backward_converter_io_sample_in_bits_scores_1 = last_interconnect_io_sample_leaving_bits_scores_1; // @[TreePEsWrapper.scala 132:49]
  assign backward_converter_io_sample_in_bits_scores_2 = last_interconnect_io_sample_leaving_bits_scores_2; // @[TreePEsWrapper.scala 132:49]
  assign backward_converter_io_sample_in_bits_scores_3 = last_interconnect_io_sample_leaving_bits_scores_3; // @[TreePEsWrapper.scala 132:49]
  assign backward_converter_io_sample_in_bits_weights_0 = last_interconnect_io_sample_leaving_bits_weights_0; // @[TreePEsWrapper.scala 132:49]
  assign backward_converter_io_sample_in_bits_weights_1 = last_interconnect_io_sample_leaving_bits_weights_1; // @[TreePEsWrapper.scala 132:49]
  assign backward_converter_io_sample_in_bits_weights_2 = last_interconnect_io_sample_leaving_bits_weights_2; // @[TreePEsWrapper.scala 132:49]
  assign backward_converter_io_sample_in_bits_weights_3 = last_interconnect_io_sample_leaving_bits_weights_3; // @[TreePEsWrapper.scala 132:49]
  assign backward_converter_io_sample_in_bits_weights_4 = last_interconnect_io_sample_leaving_bits_weights_4; // @[TreePEsWrapper.scala 132:49]
  assign backward_converter_io_sample_in_bits_last = last_interconnect_io_sample_leaving_bits_last; // @[TreePEsWrapper.scala 132:49]
  assign backward_converter_io_sample_out_TREADY = wrapper_io_sample_out_TREADY; // @[TreePEsWrapper.scala 160:31]
  assign pes_0_clock = clock;
  assign pes_0_reset = reset;
  assign pes_0_pe_io_sample_in_valid = first_interconnect_io_sample_out_valid; // @[Interconnect.scala 71:23]
  assign pes_0_pe_io_sample_in_bits_features_0 = first_interconnect_io_sample_out_bits_features_0; // @[Interconnect.scala 71:23]
  assign pes_0_pe_io_sample_in_bits_features_1 = first_interconnect_io_sample_out_bits_features_1; // @[Interconnect.scala 71:23]
  assign pes_0_pe_io_sample_in_bits_features_2 = first_interconnect_io_sample_out_bits_features_2; // @[Interconnect.scala 71:23]
  assign pes_0_pe_io_sample_in_bits_features_3 = first_interconnect_io_sample_out_bits_features_3; // @[Interconnect.scala 71:23]
  assign pes_0_pe_io_sample_in_bits_offset = first_interconnect_io_sample_out_bits_offset; // @[Interconnect.scala 71:23]
  assign pes_0_pe_io_sample_in_bits_search_for_root = first_interconnect_io_sample_out_bits_search_for_root; // @[Interconnect.scala 71:23]
  assign pes_0_pe_io_sample_in_bits_tree_to_exec = first_interconnect_io_sample_out_bits_tree_to_exec; // @[Interconnect.scala 71:23]
  assign pes_0_pe_io_sample_in_bits_scores_0 = first_interconnect_io_sample_out_bits_scores_0; // @[Interconnect.scala 71:23]
  assign pes_0_pe_io_sample_in_bits_scores_1 = first_interconnect_io_sample_out_bits_scores_1; // @[Interconnect.scala 71:23]
  assign pes_0_pe_io_sample_in_bits_scores_2 = first_interconnect_io_sample_out_bits_scores_2; // @[Interconnect.scala 71:23]
  assign pes_0_pe_io_sample_in_bits_scores_3 = first_interconnect_io_sample_out_bits_scores_3; // @[Interconnect.scala 71:23]
  assign pes_0_pe_io_sample_in_bits_weights_0 = first_interconnect_io_sample_out_bits_weights_0; // @[Interconnect.scala 71:23]
  assign pes_0_pe_io_sample_in_bits_weights_1 = first_interconnect_io_sample_out_bits_weights_1; // @[Interconnect.scala 71:23]
  assign pes_0_pe_io_sample_in_bits_weights_2 = first_interconnect_io_sample_out_bits_weights_2; // @[Interconnect.scala 71:23]
  assign pes_0_pe_io_sample_in_bits_weights_3 = first_interconnect_io_sample_out_bits_weights_3; // @[Interconnect.scala 71:23]
  assign pes_0_pe_io_sample_in_bits_weights_4 = first_interconnect_io_sample_out_bits_weights_4; // @[Interconnect.scala 71:23]
  assign pes_0_pe_io_sample_in_bits_last = first_interconnect_io_sample_out_bits_last; // @[Interconnect.scala 71:23]
  assign pes_0_pe_io_mem_dataOut_1 = brams_0_a_dout; // @[TreePEsWrapper.scala 104:44]
  assign pes_0_pe_io_sample_out_ready = pes_1_pe_io_sample_in_ready; // @[TreePE.scala 133:22]
  assign pes_1_clock = clock;
  assign pes_1_reset = reset;
  assign pes_1_pe_io_sample_in_valid = pes_0_pe_io_sample_out_valid; // @[TreePE.scala 133:22]
  assign pes_1_pe_io_sample_in_bits_features_0 = pes_0_pe_io_sample_out_bits_features_0; // @[TreePE.scala 133:22]
  assign pes_1_pe_io_sample_in_bits_features_1 = pes_0_pe_io_sample_out_bits_features_1; // @[TreePE.scala 133:22]
  assign pes_1_pe_io_sample_in_bits_features_2 = pes_0_pe_io_sample_out_bits_features_2; // @[TreePE.scala 133:22]
  assign pes_1_pe_io_sample_in_bits_features_3 = pes_0_pe_io_sample_out_bits_features_3; // @[TreePE.scala 133:22]
  assign pes_1_pe_io_sample_in_bits_offset = pes_0_pe_io_sample_out_bits_offset; // @[TreePE.scala 133:22]
  assign pes_1_pe_io_sample_in_bits_search_for_root = pes_0_pe_io_sample_out_bits_search_for_root; // @[TreePE.scala 133:22]
  assign pes_1_pe_io_sample_in_bits_tree_to_exec = pes_0_pe_io_sample_out_bits_tree_to_exec; // @[TreePE.scala 133:22]
  assign pes_1_pe_io_sample_in_bits_scores_0 = pes_0_pe_io_sample_out_bits_scores_0; // @[TreePE.scala 133:22]
  assign pes_1_pe_io_sample_in_bits_scores_1 = pes_0_pe_io_sample_out_bits_scores_1; // @[TreePE.scala 133:22]
  assign pes_1_pe_io_sample_in_bits_scores_2 = pes_0_pe_io_sample_out_bits_scores_2; // @[TreePE.scala 133:22]
  assign pes_1_pe_io_sample_in_bits_scores_3 = pes_0_pe_io_sample_out_bits_scores_3; // @[TreePE.scala 133:22]
  assign pes_1_pe_io_sample_in_bits_weights_0 = pes_0_pe_io_sample_out_bits_weights_0; // @[TreePE.scala 133:22]
  assign pes_1_pe_io_sample_in_bits_weights_1 = pes_0_pe_io_sample_out_bits_weights_1; // @[TreePE.scala 133:22]
  assign pes_1_pe_io_sample_in_bits_weights_2 = pes_0_pe_io_sample_out_bits_weights_2; // @[TreePE.scala 133:22]
  assign pes_1_pe_io_sample_in_bits_weights_3 = pes_0_pe_io_sample_out_bits_weights_3; // @[TreePE.scala 133:22]
  assign pes_1_pe_io_sample_in_bits_weights_4 = pes_0_pe_io_sample_out_bits_weights_4; // @[TreePE.scala 133:22]
  assign pes_1_pe_io_sample_in_bits_last = pes_0_pe_io_sample_out_bits_last; // @[TreePE.scala 133:22]
  assign pes_1_pe_io_mem_dataOut_1 = brams_1_a_dout; // @[TreePEsWrapper.scala 104:44]
  assign pes_1_pe_io_sample_out_ready = pes_2_pe_io_sample_in_ready; // @[TreePE.scala 133:22]
  assign pes_2_clock = clock;
  assign pes_2_reset = reset;
  assign pes_2_pe_io_sample_in_valid = pes_1_pe_io_sample_out_valid; // @[TreePE.scala 133:22]
  assign pes_2_pe_io_sample_in_bits_features_0 = pes_1_pe_io_sample_out_bits_features_0; // @[TreePE.scala 133:22]
  assign pes_2_pe_io_sample_in_bits_features_1 = pes_1_pe_io_sample_out_bits_features_1; // @[TreePE.scala 133:22]
  assign pes_2_pe_io_sample_in_bits_features_2 = pes_1_pe_io_sample_out_bits_features_2; // @[TreePE.scala 133:22]
  assign pes_2_pe_io_sample_in_bits_features_3 = pes_1_pe_io_sample_out_bits_features_3; // @[TreePE.scala 133:22]
  assign pes_2_pe_io_sample_in_bits_offset = pes_1_pe_io_sample_out_bits_offset; // @[TreePE.scala 133:22]
  assign pes_2_pe_io_sample_in_bits_search_for_root = pes_1_pe_io_sample_out_bits_search_for_root; // @[TreePE.scala 133:22]
  assign pes_2_pe_io_sample_in_bits_tree_to_exec = pes_1_pe_io_sample_out_bits_tree_to_exec; // @[TreePE.scala 133:22]
  assign pes_2_pe_io_sample_in_bits_scores_0 = pes_1_pe_io_sample_out_bits_scores_0; // @[TreePE.scala 133:22]
  assign pes_2_pe_io_sample_in_bits_scores_1 = pes_1_pe_io_sample_out_bits_scores_1; // @[TreePE.scala 133:22]
  assign pes_2_pe_io_sample_in_bits_scores_2 = pes_1_pe_io_sample_out_bits_scores_2; // @[TreePE.scala 133:22]
  assign pes_2_pe_io_sample_in_bits_scores_3 = pes_1_pe_io_sample_out_bits_scores_3; // @[TreePE.scala 133:22]
  assign pes_2_pe_io_sample_in_bits_weights_0 = pes_1_pe_io_sample_out_bits_weights_0; // @[TreePE.scala 133:22]
  assign pes_2_pe_io_sample_in_bits_weights_1 = pes_1_pe_io_sample_out_bits_weights_1; // @[TreePE.scala 133:22]
  assign pes_2_pe_io_sample_in_bits_weights_2 = pes_1_pe_io_sample_out_bits_weights_2; // @[TreePE.scala 133:22]
  assign pes_2_pe_io_sample_in_bits_weights_3 = pes_1_pe_io_sample_out_bits_weights_3; // @[TreePE.scala 133:22]
  assign pes_2_pe_io_sample_in_bits_weights_4 = pes_1_pe_io_sample_out_bits_weights_4; // @[TreePE.scala 133:22]
  assign pes_2_pe_io_sample_in_bits_last = pes_1_pe_io_sample_out_bits_last; // @[TreePE.scala 133:22]
  assign pes_2_pe_io_mem_dataOut_1 = brams_2_a_dout; // @[TreePEsWrapper.scala 104:44]
  assign pes_2_pe_io_sample_out_ready = pes_3_pe_io_sample_in_ready; // @[TreePE.scala 133:22]
  assign pes_3_clock = clock;
  assign pes_3_reset = reset;
  assign pes_3_pe_io_sample_in_valid = pes_2_pe_io_sample_out_valid; // @[TreePE.scala 133:22]
  assign pes_3_pe_io_sample_in_bits_features_0 = pes_2_pe_io_sample_out_bits_features_0; // @[TreePE.scala 133:22]
  assign pes_3_pe_io_sample_in_bits_features_1 = pes_2_pe_io_sample_out_bits_features_1; // @[TreePE.scala 133:22]
  assign pes_3_pe_io_sample_in_bits_features_2 = pes_2_pe_io_sample_out_bits_features_2; // @[TreePE.scala 133:22]
  assign pes_3_pe_io_sample_in_bits_features_3 = pes_2_pe_io_sample_out_bits_features_3; // @[TreePE.scala 133:22]
  assign pes_3_pe_io_sample_in_bits_offset = pes_2_pe_io_sample_out_bits_offset; // @[TreePE.scala 133:22]
  assign pes_3_pe_io_sample_in_bits_search_for_root = pes_2_pe_io_sample_out_bits_search_for_root; // @[TreePE.scala 133:22]
  assign pes_3_pe_io_sample_in_bits_tree_to_exec = pes_2_pe_io_sample_out_bits_tree_to_exec; // @[TreePE.scala 133:22]
  assign pes_3_pe_io_sample_in_bits_scores_0 = pes_2_pe_io_sample_out_bits_scores_0; // @[TreePE.scala 133:22]
  assign pes_3_pe_io_sample_in_bits_scores_1 = pes_2_pe_io_sample_out_bits_scores_1; // @[TreePE.scala 133:22]
  assign pes_3_pe_io_sample_in_bits_scores_2 = pes_2_pe_io_sample_out_bits_scores_2; // @[TreePE.scala 133:22]
  assign pes_3_pe_io_sample_in_bits_scores_3 = pes_2_pe_io_sample_out_bits_scores_3; // @[TreePE.scala 133:22]
  assign pes_3_pe_io_sample_in_bits_weights_0 = pes_2_pe_io_sample_out_bits_weights_0; // @[TreePE.scala 133:22]
  assign pes_3_pe_io_sample_in_bits_weights_1 = pes_2_pe_io_sample_out_bits_weights_1; // @[TreePE.scala 133:22]
  assign pes_3_pe_io_sample_in_bits_weights_2 = pes_2_pe_io_sample_out_bits_weights_2; // @[TreePE.scala 133:22]
  assign pes_3_pe_io_sample_in_bits_weights_3 = pes_2_pe_io_sample_out_bits_weights_3; // @[TreePE.scala 133:22]
  assign pes_3_pe_io_sample_in_bits_weights_4 = pes_2_pe_io_sample_out_bits_weights_4; // @[TreePE.scala 133:22]
  assign pes_3_pe_io_sample_in_bits_last = pes_2_pe_io_sample_out_bits_last; // @[TreePE.scala 133:22]
  assign pes_3_pe_io_mem_dataOut_1 = brams_3_a_dout; // @[TreePEsWrapper.scala 104:44]
  assign pes_3_pe_io_sample_out_ready = pes_4_pe_io_sample_in_ready; // @[TreePE.scala 133:22]
  assign pes_4_clock = clock;
  assign pes_4_reset = reset;
  assign pes_4_pe_io_sample_in_valid = pes_3_pe_io_sample_out_valid; // @[TreePE.scala 133:22]
  assign pes_4_pe_io_sample_in_bits_features_0 = pes_3_pe_io_sample_out_bits_features_0; // @[TreePE.scala 133:22]
  assign pes_4_pe_io_sample_in_bits_features_1 = pes_3_pe_io_sample_out_bits_features_1; // @[TreePE.scala 133:22]
  assign pes_4_pe_io_sample_in_bits_features_2 = pes_3_pe_io_sample_out_bits_features_2; // @[TreePE.scala 133:22]
  assign pes_4_pe_io_sample_in_bits_features_3 = pes_3_pe_io_sample_out_bits_features_3; // @[TreePE.scala 133:22]
  assign pes_4_pe_io_sample_in_bits_offset = pes_3_pe_io_sample_out_bits_offset; // @[TreePE.scala 133:22]
  assign pes_4_pe_io_sample_in_bits_search_for_root = pes_3_pe_io_sample_out_bits_search_for_root; // @[TreePE.scala 133:22]
  assign pes_4_pe_io_sample_in_bits_tree_to_exec = pes_3_pe_io_sample_out_bits_tree_to_exec; // @[TreePE.scala 133:22]
  assign pes_4_pe_io_sample_in_bits_scores_0 = pes_3_pe_io_sample_out_bits_scores_0; // @[TreePE.scala 133:22]
  assign pes_4_pe_io_sample_in_bits_scores_1 = pes_3_pe_io_sample_out_bits_scores_1; // @[TreePE.scala 133:22]
  assign pes_4_pe_io_sample_in_bits_scores_2 = pes_3_pe_io_sample_out_bits_scores_2; // @[TreePE.scala 133:22]
  assign pes_4_pe_io_sample_in_bits_scores_3 = pes_3_pe_io_sample_out_bits_scores_3; // @[TreePE.scala 133:22]
  assign pes_4_pe_io_sample_in_bits_weights_0 = pes_3_pe_io_sample_out_bits_weights_0; // @[TreePE.scala 133:22]
  assign pes_4_pe_io_sample_in_bits_weights_1 = pes_3_pe_io_sample_out_bits_weights_1; // @[TreePE.scala 133:22]
  assign pes_4_pe_io_sample_in_bits_weights_2 = pes_3_pe_io_sample_out_bits_weights_2; // @[TreePE.scala 133:22]
  assign pes_4_pe_io_sample_in_bits_weights_3 = pes_3_pe_io_sample_out_bits_weights_3; // @[TreePE.scala 133:22]
  assign pes_4_pe_io_sample_in_bits_weights_4 = pes_3_pe_io_sample_out_bits_weights_4; // @[TreePE.scala 133:22]
  assign pes_4_pe_io_sample_in_bits_last = pes_3_pe_io_sample_out_bits_last; // @[TreePE.scala 133:22]
  assign pes_4_pe_io_mem_dataOut_1 = brams_4_a_dout; // @[TreePEsWrapper.scala 104:44]
  assign pes_4_pe_io_sample_out_ready = last_interconnect_io_sample_in_ready; // @[TreePE.scala 129:22]
  assign brams_0_clk = brams_io_0_bram_clk_a; // @[TreePEsWrapper.scala 112:33]
  assign brams_0_a_en = pes_0_pe_io_mem_enable_1; // @[TreePEsWrapper.scala 100:34]
  assign brams_0_a_wr = 1'h0; // @[TreePEsWrapper.scala 101:34]
  assign brams_0_a_addr = pes_0_pe_io_mem_addr_1; // @[TreePEsWrapper.scala 102:36]
  assign brams_0_a_din = 64'h0; // @[TreePEsWrapper.scala 103:35]
  assign brams_0_b_en = brams_io_0_bram_en_a; // @[TreePEsWrapper.scala 106:34]
  assign brams_0_b_wr = brams_io_0_bram_we_a[0]; // @[TreePEsWrapper.scala 107:64]
  assign brams_0_b_addr = brams_io_0_bram_addr_a; // @[TreePEsWrapper.scala 108:36]
  assign brams_0_b_din = brams_io_0_bram_wrdata_a; // @[TreePEsWrapper.scala 109:35]
  assign brams_1_clk = brams_io_1_bram_clk_a; // @[TreePEsWrapper.scala 112:33]
  assign brams_1_a_en = pes_1_pe_io_mem_enable_1; // @[TreePEsWrapper.scala 100:34]
  assign brams_1_a_wr = 1'h0; // @[TreePEsWrapper.scala 101:34]
  assign brams_1_a_addr = pes_1_pe_io_mem_addr_1; // @[TreePEsWrapper.scala 102:36]
  assign brams_1_a_din = 64'h0; // @[TreePEsWrapper.scala 103:35]
  assign brams_1_b_en = brams_io_1_bram_en_a; // @[TreePEsWrapper.scala 106:34]
  assign brams_1_b_wr = brams_io_1_bram_we_a[0]; // @[TreePEsWrapper.scala 107:64]
  assign brams_1_b_addr = brams_io_1_bram_addr_a; // @[TreePEsWrapper.scala 108:36]
  assign brams_1_b_din = brams_io_1_bram_wrdata_a; // @[TreePEsWrapper.scala 109:35]
  assign brams_2_clk = brams_io_2_bram_clk_a; // @[TreePEsWrapper.scala 112:33]
  assign brams_2_a_en = pes_2_pe_io_mem_enable_1; // @[TreePEsWrapper.scala 100:34]
  assign brams_2_a_wr = 1'h0; // @[TreePEsWrapper.scala 101:34]
  assign brams_2_a_addr = pes_2_pe_io_mem_addr_1; // @[TreePEsWrapper.scala 102:36]
  assign brams_2_a_din = 64'h0; // @[TreePEsWrapper.scala 103:35]
  assign brams_2_b_en = brams_io_2_bram_en_a; // @[TreePEsWrapper.scala 106:34]
  assign brams_2_b_wr = brams_io_2_bram_we_a[0]; // @[TreePEsWrapper.scala 107:64]
  assign brams_2_b_addr = brams_io_2_bram_addr_a; // @[TreePEsWrapper.scala 108:36]
  assign brams_2_b_din = brams_io_2_bram_wrdata_a; // @[TreePEsWrapper.scala 109:35]
  assign brams_3_clk = brams_io_3_bram_clk_a; // @[TreePEsWrapper.scala 112:33]
  assign brams_3_a_en = pes_3_pe_io_mem_enable_1; // @[TreePEsWrapper.scala 100:34]
  assign brams_3_a_wr = 1'h0; // @[TreePEsWrapper.scala 101:34]
  assign brams_3_a_addr = pes_3_pe_io_mem_addr_1; // @[TreePEsWrapper.scala 102:36]
  assign brams_3_a_din = 64'h0; // @[TreePEsWrapper.scala 103:35]
  assign brams_3_b_en = brams_io_3_bram_en_a; // @[TreePEsWrapper.scala 106:34]
  assign brams_3_b_wr = brams_io_3_bram_we_a[0]; // @[TreePEsWrapper.scala 107:64]
  assign brams_3_b_addr = brams_io_3_bram_addr_a; // @[TreePEsWrapper.scala 108:36]
  assign brams_3_b_din = brams_io_3_bram_wrdata_a; // @[TreePEsWrapper.scala 109:35]
  assign brams_4_clk = brams_io_4_bram_clk_a; // @[TreePEsWrapper.scala 112:33]
  assign brams_4_a_en = pes_4_pe_io_mem_enable_1; // @[TreePEsWrapper.scala 100:34]
  assign brams_4_a_wr = 1'h0; // @[TreePEsWrapper.scala 101:34]
  assign brams_4_a_addr = pes_4_pe_io_mem_addr_1; // @[TreePEsWrapper.scala 102:36]
  assign brams_4_a_din = 64'h0; // @[TreePEsWrapper.scala 103:35]
  assign brams_4_b_en = brams_io_4_bram_en_a; // @[TreePEsWrapper.scala 106:34]
  assign brams_4_b_wr = brams_io_4_bram_we_a[0]; // @[TreePEsWrapper.scala 107:64]
  assign brams_4_b_addr = brams_io_4_bram_addr_a; // @[TreePEsWrapper.scala 108:36]
  assign brams_4_b_din = brams_io_4_bram_wrdata_a; // @[TreePEsWrapper.scala 109:35]
  assign first_interconnect_clock = clock;
  assign first_interconnect_reset = reset;
  assign first_interconnect_io_sample_entering_valid = forward_converter_io_sample_out_valid; // @[TreePEsWrapper.scala 158:41]
  assign first_interconnect_io_sample_entering_bits_features_0 = forward_converter_io_sample_out_bits_features_0; // @[TreePEsWrapper.scala 158:41]
  assign first_interconnect_io_sample_entering_bits_features_1 = forward_converter_io_sample_out_bits_features_1; // @[TreePEsWrapper.scala 158:41]
  assign first_interconnect_io_sample_entering_bits_features_2 = forward_converter_io_sample_out_bits_features_2; // @[TreePEsWrapper.scala 158:41]
  assign first_interconnect_io_sample_entering_bits_features_3 = forward_converter_io_sample_out_bits_features_3; // @[TreePEsWrapper.scala 158:41]
  assign first_interconnect_io_sample_entering_bits_offset = forward_converter_io_sample_out_bits_offset; // @[TreePEsWrapper.scala 158:41]
  assign first_interconnect_io_sample_entering_bits_search_for_root =
    forward_converter_io_sample_out_bits_search_for_root; // @[TreePEsWrapper.scala 158:41]
  assign first_interconnect_io_sample_entering_bits_tree_to_exec = forward_converter_io_sample_out_bits_tree_to_exec; // @[TreePEsWrapper.scala 158:41]
  assign first_interconnect_io_sample_entering_bits_scores_0 = forward_converter_io_sample_out_bits_scores_0; // @[TreePEsWrapper.scala 158:41]
  assign first_interconnect_io_sample_entering_bits_scores_1 = forward_converter_io_sample_out_bits_scores_1; // @[TreePEsWrapper.scala 158:41]
  assign first_interconnect_io_sample_entering_bits_scores_2 = forward_converter_io_sample_out_bits_scores_2; // @[TreePEsWrapper.scala 158:41]
  assign first_interconnect_io_sample_entering_bits_scores_3 = forward_converter_io_sample_out_bits_scores_3; // @[TreePEsWrapper.scala 158:41]
  assign first_interconnect_io_sample_entering_bits_weights_0 = forward_converter_io_sample_out_bits_weights_0; // @[TreePEsWrapper.scala 158:41]
  assign first_interconnect_io_sample_entering_bits_weights_1 = forward_converter_io_sample_out_bits_weights_1; // @[TreePEsWrapper.scala 158:41]
  assign first_interconnect_io_sample_entering_bits_weights_2 = forward_converter_io_sample_out_bits_weights_2; // @[TreePEsWrapper.scala 158:41]
  assign first_interconnect_io_sample_entering_bits_weights_3 = forward_converter_io_sample_out_bits_weights_3; // @[TreePEsWrapper.scala 158:41]
  assign first_interconnect_io_sample_entering_bits_weights_4 = forward_converter_io_sample_out_bits_weights_4; // @[TreePEsWrapper.scala 158:41]
  assign first_interconnect_io_sample_entering_bits_last = forward_converter_io_sample_out_bits_last; // @[TreePEsWrapper.scala 158:41]
  assign first_interconnect_io_sample_looping_valid = increment_io_sample_out_valid; // @[IncrementTreePE.scala 30:23]
  assign first_interconnect_io_sample_looping_bits_features_0 = increment_io_sample_out_bits_features_0; // @[IncrementTreePE.scala 30:23]
  assign first_interconnect_io_sample_looping_bits_features_1 = increment_io_sample_out_bits_features_1; // @[IncrementTreePE.scala 30:23]
  assign first_interconnect_io_sample_looping_bits_features_2 = increment_io_sample_out_bits_features_2; // @[IncrementTreePE.scala 30:23]
  assign first_interconnect_io_sample_looping_bits_features_3 = increment_io_sample_out_bits_features_3; // @[IncrementTreePE.scala 30:23]
  assign first_interconnect_io_sample_looping_bits_offset = increment_io_sample_out_bits_offset; // @[IncrementTreePE.scala 30:23]
  assign first_interconnect_io_sample_looping_bits_search_for_root = increment_io_sample_out_bits_search_for_root; // @[IncrementTreePE.scala 30:23]
  assign first_interconnect_io_sample_looping_bits_tree_to_exec = increment_io_sample_out_bits_tree_to_exec; // @[IncrementTreePE.scala 30:23]
  assign first_interconnect_io_sample_looping_bits_scores_0 = increment_io_sample_out_bits_scores_0; // @[IncrementTreePE.scala 30:23]
  assign first_interconnect_io_sample_looping_bits_scores_1 = increment_io_sample_out_bits_scores_1; // @[IncrementTreePE.scala 30:23]
  assign first_interconnect_io_sample_looping_bits_scores_2 = increment_io_sample_out_bits_scores_2; // @[IncrementTreePE.scala 30:23]
  assign first_interconnect_io_sample_looping_bits_scores_3 = increment_io_sample_out_bits_scores_3; // @[IncrementTreePE.scala 30:23]
  assign first_interconnect_io_sample_looping_bits_weights_0 = increment_io_sample_out_bits_weights_0; // @[IncrementTreePE.scala 30:23]
  assign first_interconnect_io_sample_looping_bits_weights_1 = increment_io_sample_out_bits_weights_1; // @[IncrementTreePE.scala 30:23]
  assign first_interconnect_io_sample_looping_bits_weights_2 = increment_io_sample_out_bits_weights_2; // @[IncrementTreePE.scala 30:23]
  assign first_interconnect_io_sample_looping_bits_weights_3 = increment_io_sample_out_bits_weights_3; // @[IncrementTreePE.scala 30:23]
  assign first_interconnect_io_sample_looping_bits_weights_4 = increment_io_sample_out_bits_weights_4; // @[IncrementTreePE.scala 30:23]
  assign first_interconnect_io_sample_looping_bits_last = increment_io_sample_out_bits_last; // @[IncrementTreePE.scala 30:23]
  assign first_interconnect_io_sample_out_ready = pes_0_pe_io_sample_in_ready; // @[Interconnect.scala 71:23]
  assign last_interconnect_clock = clock;
  assign last_interconnect_reset = reset;
  assign last_interconnect_io_sample_in_valid = pes_4_pe_io_sample_out_valid; // @[TreePE.scala 129:22]
  assign last_interconnect_io_sample_in_bits_features_0 = pes_4_pe_io_sample_out_bits_features_0; // @[TreePE.scala 129:22]
  assign last_interconnect_io_sample_in_bits_features_1 = pes_4_pe_io_sample_out_bits_features_1; // @[TreePE.scala 129:22]
  assign last_interconnect_io_sample_in_bits_features_2 = pes_4_pe_io_sample_out_bits_features_2; // @[TreePE.scala 129:22]
  assign last_interconnect_io_sample_in_bits_features_3 = pes_4_pe_io_sample_out_bits_features_3; // @[TreePE.scala 129:22]
  assign last_interconnect_io_sample_in_bits_offset = pes_4_pe_io_sample_out_bits_offset; // @[TreePE.scala 129:22]
  assign last_interconnect_io_sample_in_bits_search_for_root = pes_4_pe_io_sample_out_bits_search_for_root; // @[TreePE.scala 129:22]
  assign last_interconnect_io_sample_in_bits_tree_to_exec = pes_4_pe_io_sample_out_bits_tree_to_exec; // @[TreePE.scala 129:22]
  assign last_interconnect_io_sample_in_bits_scores_0 = pes_4_pe_io_sample_out_bits_scores_0; // @[TreePE.scala 129:22]
  assign last_interconnect_io_sample_in_bits_scores_1 = pes_4_pe_io_sample_out_bits_scores_1; // @[TreePE.scala 129:22]
  assign last_interconnect_io_sample_in_bits_scores_2 = pes_4_pe_io_sample_out_bits_scores_2; // @[TreePE.scala 129:22]
  assign last_interconnect_io_sample_in_bits_scores_3 = pes_4_pe_io_sample_out_bits_scores_3; // @[TreePE.scala 129:22]
  assign last_interconnect_io_sample_in_bits_weights_0 = pes_4_pe_io_sample_out_bits_weights_0; // @[TreePE.scala 129:22]
  assign last_interconnect_io_sample_in_bits_weights_1 = pes_4_pe_io_sample_out_bits_weights_1; // @[TreePE.scala 129:22]
  assign last_interconnect_io_sample_in_bits_weights_2 = pes_4_pe_io_sample_out_bits_weights_2; // @[TreePE.scala 129:22]
  assign last_interconnect_io_sample_in_bits_weights_3 = pes_4_pe_io_sample_out_bits_weights_3; // @[TreePE.scala 129:22]
  assign last_interconnect_io_sample_in_bits_weights_4 = pes_4_pe_io_sample_out_bits_weights_4; // @[TreePE.scala 129:22]
  assign last_interconnect_io_sample_in_bits_dest = pes_4_pe_io_sample_out_bits_dest; // @[TreePE.scala 129:22]
  assign last_interconnect_io_sample_in_bits_last = pes_4_pe_io_sample_out_bits_last; // @[TreePE.scala 129:22]
  assign last_interconnect_io_sample_looping_ready = increment_io_sample_in_ready; // @[Interconnect.scala 34:27]
  assign last_interconnect_io_sample_leaving_ready = backward_converter_io_sample_in_ready; // @[TreePEsWrapper.scala 132:49]
  assign increment_clock = clock;
  assign increment_reset = reset;
  assign increment_io_sample_in_valid = last_interconnect_io_sample_looping_valid; // @[Interconnect.scala 34:27]
  assign increment_io_sample_in_bits_features_0 = last_interconnect_io_sample_looping_bits_features_0; // @[Interconnect.scala 34:27]
  assign increment_io_sample_in_bits_features_1 = last_interconnect_io_sample_looping_bits_features_1; // @[Interconnect.scala 34:27]
  assign increment_io_sample_in_bits_features_2 = last_interconnect_io_sample_looping_bits_features_2; // @[Interconnect.scala 34:27]
  assign increment_io_sample_in_bits_features_3 = last_interconnect_io_sample_looping_bits_features_3; // @[Interconnect.scala 34:27]
  assign increment_io_sample_in_bits_offset = last_interconnect_io_sample_looping_bits_offset; // @[Interconnect.scala 34:27]
  assign increment_io_sample_in_bits_search_for_root = last_interconnect_io_sample_looping_bits_search_for_root; // @[Interconnect.scala 34:27]
  assign increment_io_sample_in_bits_tree_to_exec = last_interconnect_io_sample_looping_bits_tree_to_exec; // @[Interconnect.scala 34:27]
  assign increment_io_sample_in_bits_scores_0 = last_interconnect_io_sample_looping_bits_scores_0; // @[Interconnect.scala 34:27]
  assign increment_io_sample_in_bits_scores_1 = last_interconnect_io_sample_looping_bits_scores_1; // @[Interconnect.scala 34:27]
  assign increment_io_sample_in_bits_scores_2 = last_interconnect_io_sample_looping_bits_scores_2; // @[Interconnect.scala 34:27]
  assign increment_io_sample_in_bits_scores_3 = last_interconnect_io_sample_looping_bits_scores_3; // @[Interconnect.scala 34:27]
  assign increment_io_sample_in_bits_weights_0 = last_interconnect_io_sample_looping_bits_weights_0; // @[Interconnect.scala 34:27]
  assign increment_io_sample_in_bits_weights_1 = last_interconnect_io_sample_looping_bits_weights_1; // @[Interconnect.scala 34:27]
  assign increment_io_sample_in_bits_weights_2 = last_interconnect_io_sample_looping_bits_weights_2; // @[Interconnect.scala 34:27]
  assign increment_io_sample_in_bits_weights_3 = last_interconnect_io_sample_looping_bits_weights_3; // @[Interconnect.scala 34:27]
  assign increment_io_sample_in_bits_weights_4 = last_interconnect_io_sample_looping_bits_weights_4; // @[Interconnect.scala 34:27]
  assign increment_io_sample_in_bits_last = last_interconnect_io_sample_looping_bits_last; // @[Interconnect.scala 34:27]
  assign increment_io_sample_out_ready = first_interconnect_io_sample_looping_ready; // @[IncrementTreePE.scala 30:23]
endmodule
