module ForwardConverter(
  input  [383:0] io_sample_in_TDATA,
  input          io_sample_in_TLAST,
  output         io_sample_in_TREADY,
  input          io_sample_in_TVALID,
  input          io_sample_out_ready,
  output         io_sample_out_valid,
  output [31:0]  io_sample_out_bits_features_0,
  output [31:0]  io_sample_out_bits_features_1,
  output [31:0]  io_sample_out_bits_features_2,
  output [31:0]  io_sample_out_bits_features_3,
  output [31:0]  io_sample_out_bits_features_4,
  output [9:0]   io_sample_out_bits_offset,
  output         io_sample_out_bits_shift,
  output         io_sample_out_bits_search_for_root,
  output [7:0]   io_sample_out_bits_tree_to_exec,
  output [15:0]  io_sample_out_bits_scores_0,
  output [15:0]  io_sample_out_bits_scores_1,
  output [15:0]  io_sample_out_bits_scores_2,
  output [15:0]  io_sample_out_bits_scores_3,
  output [15:0]  io_sample_out_bits_scores_4,
  output [15:0]  io_sample_out_bits_scores_5,
  output [15:0]  io_sample_out_bits_weights_0,
  output [15:0]  io_sample_out_bits_weights_1,
  output [15:0]  io_sample_out_bits_weights_2,
  output [15:0]  io_sample_out_bits_weights_3,
  output [15:0]  io_sample_out_bits_weights_4,
  output         io_sample_out_bits_last
);
  assign io_sample_in_TREADY = io_sample_out_ready; // @[Converter.scala 31:25]
  assign io_sample_out_valid = io_sample_in_TVALID; // @[Converter.scala 27:25]
  assign io_sample_out_bits_features_0 = io_sample_in_TDATA[31:0]; // @[Converter.scala 15:91]
  assign io_sample_out_bits_features_1 = io_sample_in_TDATA[63:32]; // @[Converter.scala 15:91]
  assign io_sample_out_bits_features_2 = io_sample_in_TDATA[95:64]; // @[Converter.scala 15:91]
  assign io_sample_out_bits_features_3 = io_sample_in_TDATA[127:96]; // @[Converter.scala 15:91]
  assign io_sample_out_bits_features_4 = io_sample_in_TDATA[159:128]; // @[Converter.scala 15:91]
  assign io_sample_out_bits_offset = io_sample_in_TDATA[169:160]; // @[Converter.scala 17:31]
  assign io_sample_out_bits_shift = io_sample_in_TDATA[176]; // @[Converter.scala 18:30]
  assign io_sample_out_bits_search_for_root = io_sample_in_TDATA[184]; // @[Converter.scala 19:40]
  assign io_sample_out_bits_tree_to_exec = io_sample_in_TDATA[199:192]; // @[Converter.scala 20:58]
  assign io_sample_out_bits_scores_0 = io_sample_in_TDATA[223:208]; // @[Converter.scala 22:115]
  assign io_sample_out_bits_scores_1 = io_sample_in_TDATA[239:224]; // @[Converter.scala 22:115]
  assign io_sample_out_bits_scores_2 = io_sample_in_TDATA[255:240]; // @[Converter.scala 22:115]
  assign io_sample_out_bits_scores_3 = io_sample_in_TDATA[271:256]; // @[Converter.scala 22:115]
  assign io_sample_out_bits_scores_4 = io_sample_in_TDATA[287:272]; // @[Converter.scala 22:115]
  assign io_sample_out_bits_scores_5 = io_sample_in_TDATA[303:288]; // @[Converter.scala 22:115]
  assign io_sample_out_bits_weights_0 = io_sample_in_TDATA[319:304]; // @[Converter.scala 25:142]
  assign io_sample_out_bits_weights_1 = io_sample_in_TDATA[335:320]; // @[Converter.scala 25:142]
  assign io_sample_out_bits_weights_2 = io_sample_in_TDATA[351:336]; // @[Converter.scala 25:142]
  assign io_sample_out_bits_weights_3 = io_sample_in_TDATA[367:352]; // @[Converter.scala 25:142]
  assign io_sample_out_bits_weights_4 = io_sample_in_TDATA[383:368]; // @[Converter.scala 25:142]
  assign io_sample_out_bits_last = io_sample_in_TLAST; // @[Converter.scala 29:29]
endmodule
module Queue(
  input         clock,
  input         reset,
  output        io_enq_ready,
  input         io_enq_valid,
  input  [31:0] io_enq_bits_features_0,
  input  [31:0] io_enq_bits_features_1,
  input  [31:0] io_enq_bits_features_2,
  input  [31:0] io_enq_bits_features_3,
  input  [31:0] io_enq_bits_features_4,
  input  [9:0]  io_enq_bits_offset,
  input         io_enq_bits_shift,
  input         io_enq_bits_search_for_root,
  input  [7:0]  io_enq_bits_tree_to_exec,
  input  [15:0] io_enq_bits_scores_0,
  input  [15:0] io_enq_bits_scores_1,
  input  [15:0] io_enq_bits_scores_2,
  input  [15:0] io_enq_bits_scores_3,
  input  [15:0] io_enq_bits_scores_4,
  input  [15:0] io_enq_bits_scores_5,
  input         io_enq_bits_last,
  input  [31:0] io_enq_bits_clock_cycles,
  input         io_deq_ready,
  output        io_deq_valid,
  output [31:0] io_deq_bits_features_0,
  output [31:0] io_deq_bits_features_1,
  output [31:0] io_deq_bits_features_2,
  output [31:0] io_deq_bits_features_3,
  output [31:0] io_deq_bits_features_4,
  output [9:0]  io_deq_bits_offset,
  output        io_deq_bits_shift,
  output        io_deq_bits_search_for_root,
  output [7:0]  io_deq_bits_tree_to_exec,
  output [15:0] io_deq_bits_scores_0,
  output [15:0] io_deq_bits_scores_1,
  output [15:0] io_deq_bits_scores_2,
  output [15:0] io_deq_bits_scores_3,
  output [15:0] io_deq_bits_scores_4,
  output [15:0] io_deq_bits_scores_5,
  output        io_deq_bits_last,
  output [31:0] io_deq_bits_clock_cycles
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
  reg [31:0] ram_features_0 [0:127]; // @[Decoupled.scala 275:95]
  wire  ram_features_0_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [6:0] ram_features_0_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire [31:0] ram_features_0_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire [31:0] ram_features_0_MPORT_data; // @[Decoupled.scala 275:95]
  wire [6:0] ram_features_0_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_features_0_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_features_0_MPORT_en; // @[Decoupled.scala 275:95]
  reg [31:0] ram_features_1 [0:127]; // @[Decoupled.scala 275:95]
  wire  ram_features_1_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [6:0] ram_features_1_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire [31:0] ram_features_1_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire [31:0] ram_features_1_MPORT_data; // @[Decoupled.scala 275:95]
  wire [6:0] ram_features_1_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_features_1_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_features_1_MPORT_en; // @[Decoupled.scala 275:95]
  reg [31:0] ram_features_2 [0:127]; // @[Decoupled.scala 275:95]
  wire  ram_features_2_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [6:0] ram_features_2_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire [31:0] ram_features_2_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire [31:0] ram_features_2_MPORT_data; // @[Decoupled.scala 275:95]
  wire [6:0] ram_features_2_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_features_2_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_features_2_MPORT_en; // @[Decoupled.scala 275:95]
  reg [31:0] ram_features_3 [0:127]; // @[Decoupled.scala 275:95]
  wire  ram_features_3_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [6:0] ram_features_3_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire [31:0] ram_features_3_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire [31:0] ram_features_3_MPORT_data; // @[Decoupled.scala 275:95]
  wire [6:0] ram_features_3_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_features_3_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_features_3_MPORT_en; // @[Decoupled.scala 275:95]
  reg [31:0] ram_features_4 [0:127]; // @[Decoupled.scala 275:95]
  wire  ram_features_4_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [6:0] ram_features_4_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire [31:0] ram_features_4_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire [31:0] ram_features_4_MPORT_data; // @[Decoupled.scala 275:95]
  wire [6:0] ram_features_4_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_features_4_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_features_4_MPORT_en; // @[Decoupled.scala 275:95]
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
  reg [15:0] ram_scores_4 [0:127]; // @[Decoupled.scala 275:95]
  wire  ram_scores_4_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [6:0] ram_scores_4_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire [15:0] ram_scores_4_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire [15:0] ram_scores_4_MPORT_data; // @[Decoupled.scala 275:95]
  wire [6:0] ram_scores_4_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_scores_4_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_scores_4_MPORT_en; // @[Decoupled.scala 275:95]
  reg [15:0] ram_scores_5 [0:127]; // @[Decoupled.scala 275:95]
  wire  ram_scores_5_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [6:0] ram_scores_5_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire [15:0] ram_scores_5_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire [15:0] ram_scores_5_MPORT_data; // @[Decoupled.scala 275:95]
  wire [6:0] ram_scores_5_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_scores_5_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_scores_5_MPORT_en; // @[Decoupled.scala 275:95]
  reg  ram_last [0:127]; // @[Decoupled.scala 275:95]
  wire  ram_last_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [6:0] ram_last_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_last_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire  ram_last_MPORT_data; // @[Decoupled.scala 275:95]
  wire [6:0] ram_last_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_last_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_last_MPORT_en; // @[Decoupled.scala 275:95]
  reg [31:0] ram_clock_cycles [0:127]; // @[Decoupled.scala 275:95]
  wire  ram_clock_cycles_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [6:0] ram_clock_cycles_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire [31:0] ram_clock_cycles_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire [31:0] ram_clock_cycles_MPORT_data; // @[Decoupled.scala 275:95]
  wire [6:0] ram_clock_cycles_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_clock_cycles_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_clock_cycles_MPORT_en; // @[Decoupled.scala 275:95]
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
  assign ram_features_4_io_deq_bits_MPORT_en = 1'h1;
  assign ram_features_4_io_deq_bits_MPORT_addr = deq_ptr_value;
  assign ram_features_4_io_deq_bits_MPORT_data = ram_features_4[ram_features_4_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  assign ram_features_4_MPORT_data = io_enq_bits_features_4;
  assign ram_features_4_MPORT_addr = enq_ptr_value;
  assign ram_features_4_MPORT_mask = 1'h1;
  assign ram_features_4_MPORT_en = io_enq_ready & io_enq_valid;
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
  assign ram_scores_4_io_deq_bits_MPORT_en = 1'h1;
  assign ram_scores_4_io_deq_bits_MPORT_addr = deq_ptr_value;
  assign ram_scores_4_io_deq_bits_MPORT_data = ram_scores_4[ram_scores_4_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  assign ram_scores_4_MPORT_data = io_enq_bits_scores_4;
  assign ram_scores_4_MPORT_addr = enq_ptr_value;
  assign ram_scores_4_MPORT_mask = 1'h1;
  assign ram_scores_4_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_scores_5_io_deq_bits_MPORT_en = 1'h1;
  assign ram_scores_5_io_deq_bits_MPORT_addr = deq_ptr_value;
  assign ram_scores_5_io_deq_bits_MPORT_data = ram_scores_5[ram_scores_5_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  assign ram_scores_5_MPORT_data = io_enq_bits_scores_5;
  assign ram_scores_5_MPORT_addr = enq_ptr_value;
  assign ram_scores_5_MPORT_mask = 1'h1;
  assign ram_scores_5_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_last_io_deq_bits_MPORT_en = 1'h1;
  assign ram_last_io_deq_bits_MPORT_addr = deq_ptr_value;
  assign ram_last_io_deq_bits_MPORT_data = ram_last[ram_last_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  assign ram_last_MPORT_data = io_enq_bits_last;
  assign ram_last_MPORT_addr = enq_ptr_value;
  assign ram_last_MPORT_mask = 1'h1;
  assign ram_last_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_clock_cycles_io_deq_bits_MPORT_en = 1'h1;
  assign ram_clock_cycles_io_deq_bits_MPORT_addr = deq_ptr_value;
  assign ram_clock_cycles_io_deq_bits_MPORT_data = ram_clock_cycles[ram_clock_cycles_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  assign ram_clock_cycles_MPORT_data = io_enq_bits_clock_cycles;
  assign ram_clock_cycles_MPORT_addr = enq_ptr_value;
  assign ram_clock_cycles_MPORT_mask = 1'h1;
  assign ram_clock_cycles_MPORT_en = io_enq_ready & io_enq_valid;
  assign io_enq_ready = ~full; // @[Decoupled.scala 305:19]
  assign io_deq_valid = ~empty; // @[Decoupled.scala 304:19]
  assign io_deq_bits_features_0 = ram_features_0_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_features_1 = ram_features_1_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_features_2 = ram_features_2_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_features_3 = ram_features_3_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_features_4 = ram_features_4_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_offset = ram_offset_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_shift = ram_shift_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_search_for_root = ram_search_for_root_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_tree_to_exec = ram_tree_to_exec_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_scores_0 = ram_scores_0_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_scores_1 = ram_scores_1_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_scores_2 = ram_scores_2_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_scores_3 = ram_scores_3_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_scores_4 = ram_scores_4_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_scores_5 = ram_scores_5_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_last = ram_last_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_clock_cycles = ram_clock_cycles_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
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
    if (ram_features_4_MPORT_en & ram_features_4_MPORT_mask) begin
      ram_features_4[ram_features_4_MPORT_addr] <= ram_features_4_MPORT_data; // @[Decoupled.scala 275:95]
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
    if (ram_scores_4_MPORT_en & ram_scores_4_MPORT_mask) begin
      ram_scores_4[ram_scores_4_MPORT_addr] <= ram_scores_4_MPORT_data; // @[Decoupled.scala 275:95]
    end
    if (ram_scores_5_MPORT_en & ram_scores_5_MPORT_mask) begin
      ram_scores_5[ram_scores_5_MPORT_addr] <= ram_scores_5_MPORT_data; // @[Decoupled.scala 275:95]
    end
    if (ram_last_MPORT_en & ram_last_MPORT_mask) begin
      ram_last[ram_last_MPORT_addr] <= ram_last_MPORT_data; // @[Decoupled.scala 275:95]
    end
    if (ram_clock_cycles_MPORT_en & ram_clock_cycles_MPORT_mask) begin
      ram_clock_cycles[ram_clock_cycles_MPORT_addr] <= ram_clock_cycles_MPORT_data; // @[Decoupled.scala 275:95]
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
    ram_features_0[initvar] = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  for (initvar = 0; initvar < 128; initvar = initvar+1)
    ram_features_1[initvar] = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  for (initvar = 0; initvar < 128; initvar = initvar+1)
    ram_features_2[initvar] = _RAND_2[31:0];
  _RAND_3 = {1{`RANDOM}};
  for (initvar = 0; initvar < 128; initvar = initvar+1)
    ram_features_3[initvar] = _RAND_3[31:0];
  _RAND_4 = {1{`RANDOM}};
  for (initvar = 0; initvar < 128; initvar = initvar+1)
    ram_features_4[initvar] = _RAND_4[31:0];
  _RAND_5 = {1{`RANDOM}};
  for (initvar = 0; initvar < 128; initvar = initvar+1)
    ram_offset[initvar] = _RAND_5[9:0];
  _RAND_6 = {1{`RANDOM}};
  for (initvar = 0; initvar < 128; initvar = initvar+1)
    ram_shift[initvar] = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  for (initvar = 0; initvar < 128; initvar = initvar+1)
    ram_search_for_root[initvar] = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  for (initvar = 0; initvar < 128; initvar = initvar+1)
    ram_tree_to_exec[initvar] = _RAND_8[7:0];
  _RAND_9 = {1{`RANDOM}};
  for (initvar = 0; initvar < 128; initvar = initvar+1)
    ram_scores_0[initvar] = _RAND_9[15:0];
  _RAND_10 = {1{`RANDOM}};
  for (initvar = 0; initvar < 128; initvar = initvar+1)
    ram_scores_1[initvar] = _RAND_10[15:0];
  _RAND_11 = {1{`RANDOM}};
  for (initvar = 0; initvar < 128; initvar = initvar+1)
    ram_scores_2[initvar] = _RAND_11[15:0];
  _RAND_12 = {1{`RANDOM}};
  for (initvar = 0; initvar < 128; initvar = initvar+1)
    ram_scores_3[initvar] = _RAND_12[15:0];
  _RAND_13 = {1{`RANDOM}};
  for (initvar = 0; initvar < 128; initvar = initvar+1)
    ram_scores_4[initvar] = _RAND_13[15:0];
  _RAND_14 = {1{`RANDOM}};
  for (initvar = 0; initvar < 128; initvar = initvar+1)
    ram_scores_5[initvar] = _RAND_14[15:0];
  _RAND_15 = {1{`RANDOM}};
  for (initvar = 0; initvar < 128; initvar = initvar+1)
    ram_last[initvar] = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  for (initvar = 0; initvar < 128; initvar = initvar+1)
    ram_clock_cycles[initvar] = _RAND_16[31:0];
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
module BackwardConverter(
  input          clock,
  input          reset,
  output         io_sample_in_ready,
  input          io_sample_in_valid,
  input  [31:0]  io_sample_in_bits_features_0,
  input  [31:0]  io_sample_in_bits_features_1,
  input  [31:0]  io_sample_in_bits_features_2,
  input  [31:0]  io_sample_in_bits_features_3,
  input  [31:0]  io_sample_in_bits_features_4,
  input  [9:0]   io_sample_in_bits_offset,
  input          io_sample_in_bits_shift,
  input          io_sample_in_bits_search_for_root,
  input  [7:0]   io_sample_in_bits_tree_to_exec,
  input  [15:0]  io_sample_in_bits_scores_0,
  input  [15:0]  io_sample_in_bits_scores_1,
  input  [15:0]  io_sample_in_bits_scores_2,
  input  [15:0]  io_sample_in_bits_scores_3,
  input  [15:0]  io_sample_in_bits_scores_4,
  input  [15:0]  io_sample_in_bits_scores_5,
  input          io_sample_in_bits_last,
  input  [31:0]  io_sample_in_bits_clock_cycles,
  output [383:0] io_sample_out_TDATA,
  output         io_sample_out_TLAST,
  input          io_sample_out_TREADY,
  output         io_sample_out_TVALID
);
  wire  queue_clock; // @[Decoupled.scala 377:21]
  wire  queue_reset; // @[Decoupled.scala 377:21]
  wire  queue_io_enq_ready; // @[Decoupled.scala 377:21]
  wire  queue_io_enq_valid; // @[Decoupled.scala 377:21]
  wire [31:0] queue_io_enq_bits_features_0; // @[Decoupled.scala 377:21]
  wire [31:0] queue_io_enq_bits_features_1; // @[Decoupled.scala 377:21]
  wire [31:0] queue_io_enq_bits_features_2; // @[Decoupled.scala 377:21]
  wire [31:0] queue_io_enq_bits_features_3; // @[Decoupled.scala 377:21]
  wire [31:0] queue_io_enq_bits_features_4; // @[Decoupled.scala 377:21]
  wire [9:0] queue_io_enq_bits_offset; // @[Decoupled.scala 377:21]
  wire  queue_io_enq_bits_shift; // @[Decoupled.scala 377:21]
  wire  queue_io_enq_bits_search_for_root; // @[Decoupled.scala 377:21]
  wire [7:0] queue_io_enq_bits_tree_to_exec; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_scores_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_scores_1; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_scores_2; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_scores_3; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_scores_4; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_scores_5; // @[Decoupled.scala 377:21]
  wire  queue_io_enq_bits_last; // @[Decoupled.scala 377:21]
  wire [31:0] queue_io_enq_bits_clock_cycles; // @[Decoupled.scala 377:21]
  wire  queue_io_deq_ready; // @[Decoupled.scala 377:21]
  wire  queue_io_deq_valid; // @[Decoupled.scala 377:21]
  wire [31:0] queue_io_deq_bits_features_0; // @[Decoupled.scala 377:21]
  wire [31:0] queue_io_deq_bits_features_1; // @[Decoupled.scala 377:21]
  wire [31:0] queue_io_deq_bits_features_2; // @[Decoupled.scala 377:21]
  wire [31:0] queue_io_deq_bits_features_3; // @[Decoupled.scala 377:21]
  wire [31:0] queue_io_deq_bits_features_4; // @[Decoupled.scala 377:21]
  wire [9:0] queue_io_deq_bits_offset; // @[Decoupled.scala 377:21]
  wire  queue_io_deq_bits_shift; // @[Decoupled.scala 377:21]
  wire  queue_io_deq_bits_search_for_root; // @[Decoupled.scala 377:21]
  wire [7:0] queue_io_deq_bits_tree_to_exec; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_scores_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_scores_1; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_scores_2; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_scores_3; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_scores_4; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_scores_5; // @[Decoupled.scala 377:21]
  wire  queue_io_deq_bits_last; // @[Decoupled.scala 377:21]
  wire [31:0] queue_io_deq_bits_clock_cycles; // @[Decoupled.scala 377:21]
  wire [183:0] io_sample_out_TDATA_lo_2 = {7'h0,queue_io_deq_bits_shift,6'h0,queue_io_deq_bits_offset,
    queue_io_deq_bits_features_4,queue_io_deq_bits_features_3,queue_io_deq_bits_features_2,queue_io_deq_bits_features_1,
    queue_io_deq_bits_features_0}; // @[Cat.scala 33:92]
  wire [23:0] io_sample_out_TDATA_hi_lo_2 = {8'h0,queue_io_deq_bits_tree_to_exec,7'h0,queue_io_deq_bits_search_for_root}
    ; // @[Cat.scala 33:92]
  wire [335:0] _io_sample_out_TDATA_T_10 = {queue_io_deq_bits_clock_cycles,queue_io_deq_bits_scores_5,
    queue_io_deq_bits_scores_4,queue_io_deq_bits_scores_3,queue_io_deq_bits_scores_2,queue_io_deq_bits_scores_1,
    queue_io_deq_bits_scores_0,io_sample_out_TDATA_hi_lo_2,io_sample_out_TDATA_lo_2}; // @[Cat.scala 33:92]
  Queue queue ( // @[Decoupled.scala 377:21]
    .clock(queue_clock),
    .reset(queue_reset),
    .io_enq_ready(queue_io_enq_ready),
    .io_enq_valid(queue_io_enq_valid),
    .io_enq_bits_features_0(queue_io_enq_bits_features_0),
    .io_enq_bits_features_1(queue_io_enq_bits_features_1),
    .io_enq_bits_features_2(queue_io_enq_bits_features_2),
    .io_enq_bits_features_3(queue_io_enq_bits_features_3),
    .io_enq_bits_features_4(queue_io_enq_bits_features_4),
    .io_enq_bits_offset(queue_io_enq_bits_offset),
    .io_enq_bits_shift(queue_io_enq_bits_shift),
    .io_enq_bits_search_for_root(queue_io_enq_bits_search_for_root),
    .io_enq_bits_tree_to_exec(queue_io_enq_bits_tree_to_exec),
    .io_enq_bits_scores_0(queue_io_enq_bits_scores_0),
    .io_enq_bits_scores_1(queue_io_enq_bits_scores_1),
    .io_enq_bits_scores_2(queue_io_enq_bits_scores_2),
    .io_enq_bits_scores_3(queue_io_enq_bits_scores_3),
    .io_enq_bits_scores_4(queue_io_enq_bits_scores_4),
    .io_enq_bits_scores_5(queue_io_enq_bits_scores_5),
    .io_enq_bits_last(queue_io_enq_bits_last),
    .io_enq_bits_clock_cycles(queue_io_enq_bits_clock_cycles),
    .io_deq_ready(queue_io_deq_ready),
    .io_deq_valid(queue_io_deq_valid),
    .io_deq_bits_features_0(queue_io_deq_bits_features_0),
    .io_deq_bits_features_1(queue_io_deq_bits_features_1),
    .io_deq_bits_features_2(queue_io_deq_bits_features_2),
    .io_deq_bits_features_3(queue_io_deq_bits_features_3),
    .io_deq_bits_features_4(queue_io_deq_bits_features_4),
    .io_deq_bits_offset(queue_io_deq_bits_offset),
    .io_deq_bits_shift(queue_io_deq_bits_shift),
    .io_deq_bits_search_for_root(queue_io_deq_bits_search_for_root),
    .io_deq_bits_tree_to_exec(queue_io_deq_bits_tree_to_exec),
    .io_deq_bits_scores_0(queue_io_deq_bits_scores_0),
    .io_deq_bits_scores_1(queue_io_deq_bits_scores_1),
    .io_deq_bits_scores_2(queue_io_deq_bits_scores_2),
    .io_deq_bits_scores_3(queue_io_deq_bits_scores_3),
    .io_deq_bits_scores_4(queue_io_deq_bits_scores_4),
    .io_deq_bits_scores_5(queue_io_deq_bits_scores_5),
    .io_deq_bits_last(queue_io_deq_bits_last),
    .io_deq_bits_clock_cycles(queue_io_deq_bits_clock_cycles)
  );
  assign io_sample_in_ready = queue_io_enq_ready; // @[Decoupled.scala 381:17]
  assign io_sample_out_TDATA = {{48'd0}, _io_sample_out_TDATA_T_10}; // @[Converter.scala 58:25]
  assign io_sample_out_TLAST = queue_io_deq_bits_last; // @[Converter.scala 50:25]
  assign io_sample_out_TVALID = queue_io_deq_valid; // @[Converter.scala 51:26]
  assign queue_clock = clock;
  assign queue_reset = reset;
  assign queue_io_enq_valid = io_sample_in_valid; // @[Decoupled.scala 379:22]
  assign queue_io_enq_bits_features_0 = io_sample_in_bits_features_0; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_features_1 = io_sample_in_bits_features_1; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_features_2 = io_sample_in_bits_features_2; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_features_3 = io_sample_in_bits_features_3; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_features_4 = io_sample_in_bits_features_4; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_offset = io_sample_in_bits_offset; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_shift = io_sample_in_bits_shift; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_search_for_root = io_sample_in_bits_search_for_root; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_tree_to_exec = io_sample_in_bits_tree_to_exec; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_scores_0 = io_sample_in_bits_scores_0; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_scores_1 = io_sample_in_bits_scores_1; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_scores_2 = io_sample_in_bits_scores_2; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_scores_3 = io_sample_in_bits_scores_3; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_scores_4 = io_sample_in_bits_scores_4; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_scores_5 = io_sample_in_bits_scores_5; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_last = io_sample_in_bits_last; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_clock_cycles = io_sample_in_bits_clock_cycles; // @[Decoupled.scala 380:21]
  assign queue_io_deq_ready = io_sample_out_TREADY; // @[Converter.scala 47:17]
endmodule
module Queue_1(
  input         clock,
  input         reset,
  output        io_enq_ready,
  input         io_enq_valid,
  input  [31:0] io_enq_bits_features_0,
  input  [31:0] io_enq_bits_features_1,
  input  [31:0] io_enq_bits_features_2,
  input  [31:0] io_enq_bits_features_3,
  input  [31:0] io_enq_bits_features_4,
  input  [9:0]  io_enq_bits_offset,
  input         io_enq_bits_shift,
  input         io_enq_bits_search_for_root,
  input  [7:0]  io_enq_bits_tree_to_exec,
  input  [15:0] io_enq_bits_scores_0,
  input  [15:0] io_enq_bits_scores_1,
  input  [15:0] io_enq_bits_scores_2,
  input  [15:0] io_enq_bits_scores_3,
  input  [15:0] io_enq_bits_scores_4,
  input  [15:0] io_enq_bits_scores_5,
  input  [15:0] io_enq_bits_weights_0,
  input  [15:0] io_enq_bits_weights_1,
  input  [15:0] io_enq_bits_weights_2,
  input  [15:0] io_enq_bits_weights_3,
  input  [15:0] io_enq_bits_weights_4,
  input         io_enq_bits_last,
  input         io_deq_ready,
  output        io_deq_valid,
  output [31:0] io_deq_bits_features_0,
  output [31:0] io_deq_bits_features_1,
  output [31:0] io_deq_bits_features_2,
  output [31:0] io_deq_bits_features_3,
  output [31:0] io_deq_bits_features_4,
  output [9:0]  io_deq_bits_offset,
  output        io_deq_bits_shift,
  output        io_deq_bits_search_for_root,
  output [7:0]  io_deq_bits_tree_to_exec,
  output [15:0] io_deq_bits_scores_0,
  output [15:0] io_deq_bits_scores_1,
  output [15:0] io_deq_bits_scores_2,
  output [15:0] io_deq_bits_scores_3,
  output [15:0] io_deq_bits_scores_4,
  output [15:0] io_deq_bits_scores_5,
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
  reg [31:0] _RAND_35;
  reg [31:0] _RAND_37;
  reg [31:0] _RAND_39;
  reg [31:0] _RAND_41;
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
  reg [31:0] _RAND_38;
  reg [31:0] _RAND_40;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_42;
  reg [31:0] _RAND_43;
  reg [31:0] _RAND_44;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] ram_features_0 [0:2]; // @[Decoupled.scala 275:95]
  wire  ram_features_0_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [1:0] ram_features_0_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire [31:0] ram_features_0_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire [31:0] ram_features_0_MPORT_data; // @[Decoupled.scala 275:95]
  wire [1:0] ram_features_0_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_features_0_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_features_0_MPORT_en; // @[Decoupled.scala 275:95]
  reg [31:0] ram_features_1 [0:2]; // @[Decoupled.scala 275:95]
  wire  ram_features_1_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [1:0] ram_features_1_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire [31:0] ram_features_1_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire [31:0] ram_features_1_MPORT_data; // @[Decoupled.scala 275:95]
  wire [1:0] ram_features_1_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_features_1_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_features_1_MPORT_en; // @[Decoupled.scala 275:95]
  reg [31:0] ram_features_2 [0:2]; // @[Decoupled.scala 275:95]
  wire  ram_features_2_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [1:0] ram_features_2_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire [31:0] ram_features_2_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire [31:0] ram_features_2_MPORT_data; // @[Decoupled.scala 275:95]
  wire [1:0] ram_features_2_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_features_2_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_features_2_MPORT_en; // @[Decoupled.scala 275:95]
  reg [31:0] ram_features_3 [0:2]; // @[Decoupled.scala 275:95]
  wire  ram_features_3_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [1:0] ram_features_3_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire [31:0] ram_features_3_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire [31:0] ram_features_3_MPORT_data; // @[Decoupled.scala 275:95]
  wire [1:0] ram_features_3_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_features_3_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_features_3_MPORT_en; // @[Decoupled.scala 275:95]
  reg [31:0] ram_features_4 [0:2]; // @[Decoupled.scala 275:95]
  wire  ram_features_4_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [1:0] ram_features_4_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire [31:0] ram_features_4_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire [31:0] ram_features_4_MPORT_data; // @[Decoupled.scala 275:95]
  wire [1:0] ram_features_4_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_features_4_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_features_4_MPORT_en; // @[Decoupled.scala 275:95]
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
  reg [15:0] ram_scores_4 [0:2]; // @[Decoupled.scala 275:95]
  wire  ram_scores_4_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [1:0] ram_scores_4_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire [15:0] ram_scores_4_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire [15:0] ram_scores_4_MPORT_data; // @[Decoupled.scala 275:95]
  wire [1:0] ram_scores_4_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_scores_4_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_scores_4_MPORT_en; // @[Decoupled.scala 275:95]
  reg [15:0] ram_scores_5 [0:2]; // @[Decoupled.scala 275:95]
  wire  ram_scores_5_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [1:0] ram_scores_5_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire [15:0] ram_scores_5_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire [15:0] ram_scores_5_MPORT_data; // @[Decoupled.scala 275:95]
  wire [1:0] ram_scores_5_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_scores_5_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_scores_5_MPORT_en; // @[Decoupled.scala 275:95]
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
  assign ram_features_0_io_deq_bits_MPORT_data = ram_features_0_io_deq_bits_MPORT_addr >= 2'h3 ? _RAND_1[31:0] :
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
  assign ram_features_1_io_deq_bits_MPORT_data = ram_features_1_io_deq_bits_MPORT_addr >= 2'h3 ? _RAND_3[31:0] :
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
  assign ram_features_2_io_deq_bits_MPORT_data = ram_features_2_io_deq_bits_MPORT_addr >= 2'h3 ? _RAND_5[31:0] :
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
  assign ram_features_3_io_deq_bits_MPORT_data = ram_features_3_io_deq_bits_MPORT_addr >= 2'h3 ? _RAND_7[31:0] :
    ram_features_3[ram_features_3_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign ram_features_3_MPORT_data = io_enq_bits_features_3;
  assign ram_features_3_MPORT_addr = enq_ptr_value;
  assign ram_features_3_MPORT_mask = 1'h1;
  assign ram_features_3_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_features_4_io_deq_bits_MPORT_en = 1'h1;
  assign ram_features_4_io_deq_bits_MPORT_addr = deq_ptr_value;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign ram_features_4_io_deq_bits_MPORT_data = ram_features_4[ram_features_4_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `else
  assign ram_features_4_io_deq_bits_MPORT_data = ram_features_4_io_deq_bits_MPORT_addr >= 2'h3 ? _RAND_9[31:0] :
    ram_features_4[ram_features_4_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign ram_features_4_MPORT_data = io_enq_bits_features_4;
  assign ram_features_4_MPORT_addr = enq_ptr_value;
  assign ram_features_4_MPORT_mask = 1'h1;
  assign ram_features_4_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_offset_io_deq_bits_MPORT_en = 1'h1;
  assign ram_offset_io_deq_bits_MPORT_addr = deq_ptr_value;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign ram_offset_io_deq_bits_MPORT_data = ram_offset[ram_offset_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `else
  assign ram_offset_io_deq_bits_MPORT_data = ram_offset_io_deq_bits_MPORT_addr >= 2'h3 ? _RAND_11[9:0] :
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
  assign ram_shift_io_deq_bits_MPORT_data = ram_shift_io_deq_bits_MPORT_addr >= 2'h3 ? _RAND_13[0:0] :
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
  assign ram_search_for_root_io_deq_bits_MPORT_data = ram_search_for_root_io_deq_bits_MPORT_addr >= 2'h3 ? _RAND_15[0:0]
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
  assign ram_tree_to_exec_io_deq_bits_MPORT_data = ram_tree_to_exec_io_deq_bits_MPORT_addr >= 2'h3 ? _RAND_17[7:0] :
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
  assign ram_scores_0_io_deq_bits_MPORT_data = ram_scores_0_io_deq_bits_MPORT_addr >= 2'h3 ? _RAND_19[15:0] :
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
  assign ram_scores_1_io_deq_bits_MPORT_data = ram_scores_1_io_deq_bits_MPORT_addr >= 2'h3 ? _RAND_21[15:0] :
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
  assign ram_scores_2_io_deq_bits_MPORT_data = ram_scores_2_io_deq_bits_MPORT_addr >= 2'h3 ? _RAND_23[15:0] :
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
  assign ram_scores_3_io_deq_bits_MPORT_data = ram_scores_3_io_deq_bits_MPORT_addr >= 2'h3 ? _RAND_25[15:0] :
    ram_scores_3[ram_scores_3_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign ram_scores_3_MPORT_data = io_enq_bits_scores_3;
  assign ram_scores_3_MPORT_addr = enq_ptr_value;
  assign ram_scores_3_MPORT_mask = 1'h1;
  assign ram_scores_3_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_scores_4_io_deq_bits_MPORT_en = 1'h1;
  assign ram_scores_4_io_deq_bits_MPORT_addr = deq_ptr_value;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign ram_scores_4_io_deq_bits_MPORT_data = ram_scores_4[ram_scores_4_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `else
  assign ram_scores_4_io_deq_bits_MPORT_data = ram_scores_4_io_deq_bits_MPORT_addr >= 2'h3 ? _RAND_27[15:0] :
    ram_scores_4[ram_scores_4_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign ram_scores_4_MPORT_data = io_enq_bits_scores_4;
  assign ram_scores_4_MPORT_addr = enq_ptr_value;
  assign ram_scores_4_MPORT_mask = 1'h1;
  assign ram_scores_4_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_scores_5_io_deq_bits_MPORT_en = 1'h1;
  assign ram_scores_5_io_deq_bits_MPORT_addr = deq_ptr_value;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign ram_scores_5_io_deq_bits_MPORT_data = ram_scores_5[ram_scores_5_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `else
  assign ram_scores_5_io_deq_bits_MPORT_data = ram_scores_5_io_deq_bits_MPORT_addr >= 2'h3 ? _RAND_29[15:0] :
    ram_scores_5[ram_scores_5_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign ram_scores_5_MPORT_data = io_enq_bits_scores_5;
  assign ram_scores_5_MPORT_addr = enq_ptr_value;
  assign ram_scores_5_MPORT_mask = 1'h1;
  assign ram_scores_5_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_weights_0_io_deq_bits_MPORT_en = 1'h1;
  assign ram_weights_0_io_deq_bits_MPORT_addr = deq_ptr_value;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign ram_weights_0_io_deq_bits_MPORT_data = ram_weights_0[ram_weights_0_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `else
  assign ram_weights_0_io_deq_bits_MPORT_data = ram_weights_0_io_deq_bits_MPORT_addr >= 2'h3 ? _RAND_31[15:0] :
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
  assign ram_weights_1_io_deq_bits_MPORT_data = ram_weights_1_io_deq_bits_MPORT_addr >= 2'h3 ? _RAND_33[15:0] :
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
  assign ram_weights_2_io_deq_bits_MPORT_data = ram_weights_2_io_deq_bits_MPORT_addr >= 2'h3 ? _RAND_35[15:0] :
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
  assign ram_weights_3_io_deq_bits_MPORT_data = ram_weights_3_io_deq_bits_MPORT_addr >= 2'h3 ? _RAND_37[15:0] :
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
  assign ram_weights_4_io_deq_bits_MPORT_data = ram_weights_4_io_deq_bits_MPORT_addr >= 2'h3 ? _RAND_39[15:0] :
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
  assign ram_last_io_deq_bits_MPORT_data = ram_last_io_deq_bits_MPORT_addr >= 2'h3 ? _RAND_41[0:0] :
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
  assign io_deq_bits_features_4 = ram_features_4_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_offset = ram_offset_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_shift = ram_shift_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_search_for_root = ram_search_for_root_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_tree_to_exec = ram_tree_to_exec_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_scores_0 = ram_scores_0_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_scores_1 = ram_scores_1_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_scores_2 = ram_scores_2_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_scores_3 = ram_scores_3_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_scores_4 = ram_scores_4_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_scores_5 = ram_scores_5_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
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
    if (ram_features_4_MPORT_en & ram_features_4_MPORT_mask) begin
      ram_features_4[ram_features_4_MPORT_addr] <= ram_features_4_MPORT_data; // @[Decoupled.scala 275:95]
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
    if (ram_scores_4_MPORT_en & ram_scores_4_MPORT_mask) begin
      ram_scores_4[ram_scores_4_MPORT_addr] <= ram_scores_4_MPORT_data; // @[Decoupled.scala 275:95]
    end
    if (ram_scores_5_MPORT_en & ram_scores_5_MPORT_mask) begin
      ram_scores_5[ram_scores_5_MPORT_addr] <= ram_scores_5_MPORT_data; // @[Decoupled.scala 275:95]
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
  _RAND_35 = {1{`RANDOM}};
  _RAND_37 = {1{`RANDOM}};
  _RAND_39 = {1{`RANDOM}};
  _RAND_41 = {1{`RANDOM}};
`endif // RANDOMIZE_GARBAGE_ASSIGN
`ifdef RANDOMIZE_MEM_INIT
  _RAND_0 = {1{`RANDOM}};
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    ram_features_0[initvar] = _RAND_0[31:0];
  _RAND_2 = {1{`RANDOM}};
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    ram_features_1[initvar] = _RAND_2[31:0];
  _RAND_4 = {1{`RANDOM}};
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    ram_features_2[initvar] = _RAND_4[31:0];
  _RAND_6 = {1{`RANDOM}};
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    ram_features_3[initvar] = _RAND_6[31:0];
  _RAND_8 = {1{`RANDOM}};
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    ram_features_4[initvar] = _RAND_8[31:0];
  _RAND_10 = {1{`RANDOM}};
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    ram_offset[initvar] = _RAND_10[9:0];
  _RAND_12 = {1{`RANDOM}};
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    ram_shift[initvar] = _RAND_12[0:0];
  _RAND_14 = {1{`RANDOM}};
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    ram_search_for_root[initvar] = _RAND_14[0:0];
  _RAND_16 = {1{`RANDOM}};
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    ram_tree_to_exec[initvar] = _RAND_16[7:0];
  _RAND_18 = {1{`RANDOM}};
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    ram_scores_0[initvar] = _RAND_18[15:0];
  _RAND_20 = {1{`RANDOM}};
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    ram_scores_1[initvar] = _RAND_20[15:0];
  _RAND_22 = {1{`RANDOM}};
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    ram_scores_2[initvar] = _RAND_22[15:0];
  _RAND_24 = {1{`RANDOM}};
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    ram_scores_3[initvar] = _RAND_24[15:0];
  _RAND_26 = {1{`RANDOM}};
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    ram_scores_4[initvar] = _RAND_26[15:0];
  _RAND_28 = {1{`RANDOM}};
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    ram_scores_5[initvar] = _RAND_28[15:0];
  _RAND_30 = {1{`RANDOM}};
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    ram_weights_0[initvar] = _RAND_30[15:0];
  _RAND_32 = {1{`RANDOM}};
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    ram_weights_1[initvar] = _RAND_32[15:0];
  _RAND_34 = {1{`RANDOM}};
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    ram_weights_2[initvar] = _RAND_34[15:0];
  _RAND_36 = {1{`RANDOM}};
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    ram_weights_3[initvar] = _RAND_36[15:0];
  _RAND_38 = {1{`RANDOM}};
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    ram_weights_4[initvar] = _RAND_38[15:0];
  _RAND_40 = {1{`RANDOM}};
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    ram_last[initvar] = _RAND_40[0:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_42 = {1{`RANDOM}};
  enq_ptr_value = _RAND_42[1:0];
  _RAND_43 = {1{`RANDOM}};
  deq_ptr_value = _RAND_43[1:0];
  _RAND_44 = {1{`RANDOM}};
  maybe_full = _RAND_44[0:0];
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
  input  [31:0] io_sample_in_bits_features_0,
  input  [31:0] io_sample_in_bits_features_1,
  input  [31:0] io_sample_in_bits_features_2,
  input  [31:0] io_sample_in_bits_features_3,
  input  [31:0] io_sample_in_bits_features_4,
  input  [9:0]  io_sample_in_bits_offset,
  input         io_sample_in_bits_shift,
  input         io_sample_in_bits_search_for_root,
  input  [7:0]  io_sample_in_bits_tree_to_exec,
  input  [15:0] io_sample_in_bits_scores_0,
  input  [15:0] io_sample_in_bits_scores_1,
  input  [15:0] io_sample_in_bits_scores_2,
  input  [15:0] io_sample_in_bits_scores_3,
  input  [15:0] io_sample_in_bits_scores_4,
  input  [15:0] io_sample_in_bits_scores_5,
  input  [15:0] io_sample_in_bits_weights_0,
  input  [15:0] io_sample_in_bits_weights_1,
  input  [15:0] io_sample_in_bits_weights_2,
  input  [15:0] io_sample_in_bits_weights_3,
  input  [15:0] io_sample_in_bits_weights_4,
  input         io_sample_in_bits_last,
  input         io_samples_out_0_ready,
  output        io_samples_out_0_valid,
  output [31:0] io_samples_out_0_bits_features_0,
  output [31:0] io_samples_out_0_bits_features_1,
  output [31:0] io_samples_out_0_bits_features_2,
  output [31:0] io_samples_out_0_bits_features_3,
  output [31:0] io_samples_out_0_bits_features_4,
  output [9:0]  io_samples_out_0_bits_offset,
  output        io_samples_out_0_bits_shift,
  output        io_samples_out_0_bits_search_for_root,
  output [7:0]  io_samples_out_0_bits_tree_to_exec,
  output [15:0] io_samples_out_0_bits_scores_0,
  output [15:0] io_samples_out_0_bits_scores_1,
  output [15:0] io_samples_out_0_bits_scores_2,
  output [15:0] io_samples_out_0_bits_scores_3,
  output [15:0] io_samples_out_0_bits_scores_4,
  output [15:0] io_samples_out_0_bits_scores_5,
  output [15:0] io_samples_out_0_bits_weights_0,
  output [15:0] io_samples_out_0_bits_weights_1,
  output [15:0] io_samples_out_0_bits_weights_2,
  output [15:0] io_samples_out_0_bits_weights_3,
  output [15:0] io_samples_out_0_bits_weights_4,
  output        io_samples_out_0_bits_last
);
  wire  queue_clock; // @[Decoupled.scala 377:21]
  wire  queue_reset; // @[Decoupled.scala 377:21]
  wire  queue_io_enq_ready; // @[Decoupled.scala 377:21]
  wire  queue_io_enq_valid; // @[Decoupled.scala 377:21]
  wire [31:0] queue_io_enq_bits_features_0; // @[Decoupled.scala 377:21]
  wire [31:0] queue_io_enq_bits_features_1; // @[Decoupled.scala 377:21]
  wire [31:0] queue_io_enq_bits_features_2; // @[Decoupled.scala 377:21]
  wire [31:0] queue_io_enq_bits_features_3; // @[Decoupled.scala 377:21]
  wire [31:0] queue_io_enq_bits_features_4; // @[Decoupled.scala 377:21]
  wire [9:0] queue_io_enq_bits_offset; // @[Decoupled.scala 377:21]
  wire  queue_io_enq_bits_shift; // @[Decoupled.scala 377:21]
  wire  queue_io_enq_bits_search_for_root; // @[Decoupled.scala 377:21]
  wire [7:0] queue_io_enq_bits_tree_to_exec; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_scores_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_scores_1; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_scores_2; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_scores_3; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_scores_4; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_scores_5; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_weights_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_weights_1; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_weights_2; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_weights_3; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_weights_4; // @[Decoupled.scala 377:21]
  wire  queue_io_enq_bits_last; // @[Decoupled.scala 377:21]
  wire  queue_io_deq_ready; // @[Decoupled.scala 377:21]
  wire  queue_io_deq_valid; // @[Decoupled.scala 377:21]
  wire [31:0] queue_io_deq_bits_features_0; // @[Decoupled.scala 377:21]
  wire [31:0] queue_io_deq_bits_features_1; // @[Decoupled.scala 377:21]
  wire [31:0] queue_io_deq_bits_features_2; // @[Decoupled.scala 377:21]
  wire [31:0] queue_io_deq_bits_features_3; // @[Decoupled.scala 377:21]
  wire [31:0] queue_io_deq_bits_features_4; // @[Decoupled.scala 377:21]
  wire [9:0] queue_io_deq_bits_offset; // @[Decoupled.scala 377:21]
  wire  queue_io_deq_bits_shift; // @[Decoupled.scala 377:21]
  wire  queue_io_deq_bits_search_for_root; // @[Decoupled.scala 377:21]
  wire [7:0] queue_io_deq_bits_tree_to_exec; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_scores_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_scores_1; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_scores_2; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_scores_3; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_scores_4; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_scores_5; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_weights_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_weights_1; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_weights_2; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_weights_3; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_weights_4; // @[Decoupled.scala 377:21]
  wire  queue_io_deq_bits_last; // @[Decoupled.scala 377:21]
  Queue_1 queue ( // @[Decoupled.scala 377:21]
    .clock(queue_clock),
    .reset(queue_reset),
    .io_enq_ready(queue_io_enq_ready),
    .io_enq_valid(queue_io_enq_valid),
    .io_enq_bits_features_0(queue_io_enq_bits_features_0),
    .io_enq_bits_features_1(queue_io_enq_bits_features_1),
    .io_enq_bits_features_2(queue_io_enq_bits_features_2),
    .io_enq_bits_features_3(queue_io_enq_bits_features_3),
    .io_enq_bits_features_4(queue_io_enq_bits_features_4),
    .io_enq_bits_offset(queue_io_enq_bits_offset),
    .io_enq_bits_shift(queue_io_enq_bits_shift),
    .io_enq_bits_search_for_root(queue_io_enq_bits_search_for_root),
    .io_enq_bits_tree_to_exec(queue_io_enq_bits_tree_to_exec),
    .io_enq_bits_scores_0(queue_io_enq_bits_scores_0),
    .io_enq_bits_scores_1(queue_io_enq_bits_scores_1),
    .io_enq_bits_scores_2(queue_io_enq_bits_scores_2),
    .io_enq_bits_scores_3(queue_io_enq_bits_scores_3),
    .io_enq_bits_scores_4(queue_io_enq_bits_scores_4),
    .io_enq_bits_scores_5(queue_io_enq_bits_scores_5),
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
    .io_deq_bits_features_4(queue_io_deq_bits_features_4),
    .io_deq_bits_offset(queue_io_deq_bits_offset),
    .io_deq_bits_shift(queue_io_deq_bits_shift),
    .io_deq_bits_search_for_root(queue_io_deq_bits_search_for_root),
    .io_deq_bits_tree_to_exec(queue_io_deq_bits_tree_to_exec),
    .io_deq_bits_scores_0(queue_io_deq_bits_scores_0),
    .io_deq_bits_scores_1(queue_io_deq_bits_scores_1),
    .io_deq_bits_scores_2(queue_io_deq_bits_scores_2),
    .io_deq_bits_scores_3(queue_io_deq_bits_scores_3),
    .io_deq_bits_scores_4(queue_io_deq_bits_scores_4),
    .io_deq_bits_scores_5(queue_io_deq_bits_scores_5),
    .io_deq_bits_weights_0(queue_io_deq_bits_weights_0),
    .io_deq_bits_weights_1(queue_io_deq_bits_weights_1),
    .io_deq_bits_weights_2(queue_io_deq_bits_weights_2),
    .io_deq_bits_weights_3(queue_io_deq_bits_weights_3),
    .io_deq_bits_weights_4(queue_io_deq_bits_weights_4),
    .io_deq_bits_last(queue_io_deq_bits_last)
  );
  assign io_sample_in_ready = queue_io_enq_ready; // @[Decoupled.scala 381:17]
  assign io_samples_out_0_valid = queue_io_deq_valid; // @[DispatcherPE.scala 19:33]
  assign io_samples_out_0_bits_features_0 = queue_io_deq_bits_features_0; // @[DispatcherPE.scala 18:32]
  assign io_samples_out_0_bits_features_1 = queue_io_deq_bits_features_1; // @[DispatcherPE.scala 18:32]
  assign io_samples_out_0_bits_features_2 = queue_io_deq_bits_features_2; // @[DispatcherPE.scala 18:32]
  assign io_samples_out_0_bits_features_3 = queue_io_deq_bits_features_3; // @[DispatcherPE.scala 18:32]
  assign io_samples_out_0_bits_features_4 = queue_io_deq_bits_features_4; // @[DispatcherPE.scala 18:32]
  assign io_samples_out_0_bits_offset = queue_io_deq_bits_offset; // @[DispatcherPE.scala 18:32]
  assign io_samples_out_0_bits_shift = queue_io_deq_bits_shift; // @[DispatcherPE.scala 18:32]
  assign io_samples_out_0_bits_search_for_root = queue_io_deq_bits_search_for_root; // @[DispatcherPE.scala 18:32]
  assign io_samples_out_0_bits_tree_to_exec = queue_io_deq_bits_tree_to_exec; // @[DispatcherPE.scala 18:32]
  assign io_samples_out_0_bits_scores_0 = queue_io_deq_bits_scores_0; // @[DispatcherPE.scala 18:32]
  assign io_samples_out_0_bits_scores_1 = queue_io_deq_bits_scores_1; // @[DispatcherPE.scala 18:32]
  assign io_samples_out_0_bits_scores_2 = queue_io_deq_bits_scores_2; // @[DispatcherPE.scala 18:32]
  assign io_samples_out_0_bits_scores_3 = queue_io_deq_bits_scores_3; // @[DispatcherPE.scala 18:32]
  assign io_samples_out_0_bits_scores_4 = queue_io_deq_bits_scores_4; // @[DispatcherPE.scala 18:32]
  assign io_samples_out_0_bits_scores_5 = queue_io_deq_bits_scores_5; // @[DispatcherPE.scala 18:32]
  assign io_samples_out_0_bits_weights_0 = queue_io_deq_bits_weights_0; // @[DispatcherPE.scala 18:32]
  assign io_samples_out_0_bits_weights_1 = queue_io_deq_bits_weights_1; // @[DispatcherPE.scala 18:32]
  assign io_samples_out_0_bits_weights_2 = queue_io_deq_bits_weights_2; // @[DispatcherPE.scala 18:32]
  assign io_samples_out_0_bits_weights_3 = queue_io_deq_bits_weights_3; // @[DispatcherPE.scala 18:32]
  assign io_samples_out_0_bits_weights_4 = queue_io_deq_bits_weights_4; // @[DispatcherPE.scala 18:32]
  assign io_samples_out_0_bits_last = queue_io_deq_bits_last; // @[DispatcherPE.scala 18:32]
  assign queue_clock = clock;
  assign queue_reset = reset;
  assign queue_io_enq_valid = io_sample_in_valid; // @[Decoupled.scala 379:22]
  assign queue_io_enq_bits_features_0 = io_sample_in_bits_features_0; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_features_1 = io_sample_in_bits_features_1; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_features_2 = io_sample_in_bits_features_2; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_features_3 = io_sample_in_bits_features_3; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_features_4 = io_sample_in_bits_features_4; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_offset = io_sample_in_bits_offset; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_shift = io_sample_in_bits_shift; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_search_for_root = io_sample_in_bits_search_for_root; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_tree_to_exec = io_sample_in_bits_tree_to_exec; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_scores_0 = io_sample_in_bits_scores_0; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_scores_1 = io_sample_in_bits_scores_1; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_scores_2 = io_sample_in_bits_scores_2; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_scores_3 = io_sample_in_bits_scores_3; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_scores_4 = io_sample_in_bits_scores_4; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_scores_5 = io_sample_in_bits_scores_5; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_weights_0 = io_sample_in_bits_weights_0; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_weights_1 = io_sample_in_bits_weights_1; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_weights_2 = io_sample_in_bits_weights_2; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_weights_3 = io_sample_in_bits_weights_3; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_weights_4 = io_sample_in_bits_weights_4; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_last = io_sample_in_bits_last; // @[Decoupled.scala 380:21]
  assign queue_io_deq_ready = io_samples_out_0_ready; // @[DispatcherPE.scala 22:17]
endmodule
module Queue_2(
  input         clock,
  input         reset,
  output        io_enq_ready,
  input         io_enq_valid,
  input  [31:0] io_enq_bits_features_0,
  input  [31:0] io_enq_bits_features_1,
  input  [31:0] io_enq_bits_features_2,
  input  [31:0] io_enq_bits_features_3,
  input  [31:0] io_enq_bits_features_4,
  input  [9:0]  io_enq_bits_offset,
  input         io_enq_bits_shift,
  input         io_enq_bits_search_for_root,
  input  [7:0]  io_enq_bits_tree_to_exec,
  input  [15:0] io_enq_bits_scores_0,
  input  [15:0] io_enq_bits_scores_1,
  input  [15:0] io_enq_bits_scores_2,
  input  [15:0] io_enq_bits_scores_3,
  input  [15:0] io_enq_bits_scores_4,
  input  [15:0] io_enq_bits_scores_5,
  input  [15:0] io_enq_bits_weights_0,
  input  [15:0] io_enq_bits_weights_1,
  input  [15:0] io_enq_bits_weights_2,
  input  [15:0] io_enq_bits_weights_3,
  input  [15:0] io_enq_bits_weights_4,
  input         io_enq_bits_last,
  input         io_deq_ready,
  output        io_deq_valid,
  output [31:0] io_deq_bits_features_0,
  output [31:0] io_deq_bits_features_1,
  output [31:0] io_deq_bits_features_2,
  output [31:0] io_deq_bits_features_3,
  output [31:0] io_deq_bits_features_4,
  output [9:0]  io_deq_bits_offset,
  output        io_deq_bits_shift,
  output        io_deq_bits_search_for_root,
  output [7:0]  io_deq_bits_tree_to_exec,
  output [15:0] io_deq_bits_scores_0,
  output [15:0] io_deq_bits_scores_1,
  output [15:0] io_deq_bits_scores_2,
  output [15:0] io_deq_bits_scores_3,
  output [15:0] io_deq_bits_scores_4,
  output [15:0] io_deq_bits_scores_5,
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
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] ram_features_0 [0:127]; // @[Decoupled.scala 275:95]
  wire  ram_features_0_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [6:0] ram_features_0_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire [31:0] ram_features_0_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire [31:0] ram_features_0_MPORT_data; // @[Decoupled.scala 275:95]
  wire [6:0] ram_features_0_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_features_0_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_features_0_MPORT_en; // @[Decoupled.scala 275:95]
  reg [31:0] ram_features_1 [0:127]; // @[Decoupled.scala 275:95]
  wire  ram_features_1_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [6:0] ram_features_1_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire [31:0] ram_features_1_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire [31:0] ram_features_1_MPORT_data; // @[Decoupled.scala 275:95]
  wire [6:0] ram_features_1_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_features_1_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_features_1_MPORT_en; // @[Decoupled.scala 275:95]
  reg [31:0] ram_features_2 [0:127]; // @[Decoupled.scala 275:95]
  wire  ram_features_2_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [6:0] ram_features_2_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire [31:0] ram_features_2_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire [31:0] ram_features_2_MPORT_data; // @[Decoupled.scala 275:95]
  wire [6:0] ram_features_2_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_features_2_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_features_2_MPORT_en; // @[Decoupled.scala 275:95]
  reg [31:0] ram_features_3 [0:127]; // @[Decoupled.scala 275:95]
  wire  ram_features_3_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [6:0] ram_features_3_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire [31:0] ram_features_3_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire [31:0] ram_features_3_MPORT_data; // @[Decoupled.scala 275:95]
  wire [6:0] ram_features_3_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_features_3_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_features_3_MPORT_en; // @[Decoupled.scala 275:95]
  reg [31:0] ram_features_4 [0:127]; // @[Decoupled.scala 275:95]
  wire  ram_features_4_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [6:0] ram_features_4_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire [31:0] ram_features_4_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire [31:0] ram_features_4_MPORT_data; // @[Decoupled.scala 275:95]
  wire [6:0] ram_features_4_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_features_4_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_features_4_MPORT_en; // @[Decoupled.scala 275:95]
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
  reg [15:0] ram_scores_4 [0:127]; // @[Decoupled.scala 275:95]
  wire  ram_scores_4_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [6:0] ram_scores_4_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire [15:0] ram_scores_4_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire [15:0] ram_scores_4_MPORT_data; // @[Decoupled.scala 275:95]
  wire [6:0] ram_scores_4_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_scores_4_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_scores_4_MPORT_en; // @[Decoupled.scala 275:95]
  reg [15:0] ram_scores_5 [0:127]; // @[Decoupled.scala 275:95]
  wire  ram_scores_5_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [6:0] ram_scores_5_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire [15:0] ram_scores_5_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire [15:0] ram_scores_5_MPORT_data; // @[Decoupled.scala 275:95]
  wire [6:0] ram_scores_5_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_scores_5_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_scores_5_MPORT_en; // @[Decoupled.scala 275:95]
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
  assign ram_features_4_io_deq_bits_MPORT_en = 1'h1;
  assign ram_features_4_io_deq_bits_MPORT_addr = deq_ptr_value;
  assign ram_features_4_io_deq_bits_MPORT_data = ram_features_4[ram_features_4_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  assign ram_features_4_MPORT_data = io_enq_bits_features_4;
  assign ram_features_4_MPORT_addr = enq_ptr_value;
  assign ram_features_4_MPORT_mask = 1'h1;
  assign ram_features_4_MPORT_en = io_enq_ready & io_enq_valid;
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
  assign ram_scores_4_io_deq_bits_MPORT_en = 1'h1;
  assign ram_scores_4_io_deq_bits_MPORT_addr = deq_ptr_value;
  assign ram_scores_4_io_deq_bits_MPORT_data = ram_scores_4[ram_scores_4_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  assign ram_scores_4_MPORT_data = io_enq_bits_scores_4;
  assign ram_scores_4_MPORT_addr = enq_ptr_value;
  assign ram_scores_4_MPORT_mask = 1'h1;
  assign ram_scores_4_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_scores_5_io_deq_bits_MPORT_en = 1'h1;
  assign ram_scores_5_io_deq_bits_MPORT_addr = deq_ptr_value;
  assign ram_scores_5_io_deq_bits_MPORT_data = ram_scores_5[ram_scores_5_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  assign ram_scores_5_MPORT_data = io_enq_bits_scores_5;
  assign ram_scores_5_MPORT_addr = enq_ptr_value;
  assign ram_scores_5_MPORT_mask = 1'h1;
  assign ram_scores_5_MPORT_en = io_enq_ready & io_enq_valid;
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
  assign io_deq_bits_features_4 = ram_features_4_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_offset = ram_offset_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_shift = ram_shift_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_search_for_root = ram_search_for_root_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_tree_to_exec = ram_tree_to_exec_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_scores_0 = ram_scores_0_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_scores_1 = ram_scores_1_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_scores_2 = ram_scores_2_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_scores_3 = ram_scores_3_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_scores_4 = ram_scores_4_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_scores_5 = ram_scores_5_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
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
    if (ram_features_4_MPORT_en & ram_features_4_MPORT_mask) begin
      ram_features_4[ram_features_4_MPORT_addr] <= ram_features_4_MPORT_data; // @[Decoupled.scala 275:95]
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
    if (ram_scores_4_MPORT_en & ram_scores_4_MPORT_mask) begin
      ram_scores_4[ram_scores_4_MPORT_addr] <= ram_scores_4_MPORT_data; // @[Decoupled.scala 275:95]
    end
    if (ram_scores_5_MPORT_en & ram_scores_5_MPORT_mask) begin
      ram_scores_5[ram_scores_5_MPORT_addr] <= ram_scores_5_MPORT_data; // @[Decoupled.scala 275:95]
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
    ram_features_0[initvar] = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  for (initvar = 0; initvar < 128; initvar = initvar+1)
    ram_features_1[initvar] = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  for (initvar = 0; initvar < 128; initvar = initvar+1)
    ram_features_2[initvar] = _RAND_2[31:0];
  _RAND_3 = {1{`RANDOM}};
  for (initvar = 0; initvar < 128; initvar = initvar+1)
    ram_features_3[initvar] = _RAND_3[31:0];
  _RAND_4 = {1{`RANDOM}};
  for (initvar = 0; initvar < 128; initvar = initvar+1)
    ram_features_4[initvar] = _RAND_4[31:0];
  _RAND_5 = {1{`RANDOM}};
  for (initvar = 0; initvar < 128; initvar = initvar+1)
    ram_offset[initvar] = _RAND_5[9:0];
  _RAND_6 = {1{`RANDOM}};
  for (initvar = 0; initvar < 128; initvar = initvar+1)
    ram_shift[initvar] = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  for (initvar = 0; initvar < 128; initvar = initvar+1)
    ram_search_for_root[initvar] = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  for (initvar = 0; initvar < 128; initvar = initvar+1)
    ram_tree_to_exec[initvar] = _RAND_8[7:0];
  _RAND_9 = {1{`RANDOM}};
  for (initvar = 0; initvar < 128; initvar = initvar+1)
    ram_scores_0[initvar] = _RAND_9[15:0];
  _RAND_10 = {1{`RANDOM}};
  for (initvar = 0; initvar < 128; initvar = initvar+1)
    ram_scores_1[initvar] = _RAND_10[15:0];
  _RAND_11 = {1{`RANDOM}};
  for (initvar = 0; initvar < 128; initvar = initvar+1)
    ram_scores_2[initvar] = _RAND_11[15:0];
  _RAND_12 = {1{`RANDOM}};
  for (initvar = 0; initvar < 128; initvar = initvar+1)
    ram_scores_3[initvar] = _RAND_12[15:0];
  _RAND_13 = {1{`RANDOM}};
  for (initvar = 0; initvar < 128; initvar = initvar+1)
    ram_scores_4[initvar] = _RAND_13[15:0];
  _RAND_14 = {1{`RANDOM}};
  for (initvar = 0; initvar < 128; initvar = initvar+1)
    ram_scores_5[initvar] = _RAND_14[15:0];
  _RAND_15 = {1{`RANDOM}};
  for (initvar = 0; initvar < 128; initvar = initvar+1)
    ram_weights_0[initvar] = _RAND_15[15:0];
  _RAND_16 = {1{`RANDOM}};
  for (initvar = 0; initvar < 128; initvar = initvar+1)
    ram_weights_1[initvar] = _RAND_16[15:0];
  _RAND_17 = {1{`RANDOM}};
  for (initvar = 0; initvar < 128; initvar = initvar+1)
    ram_weights_2[initvar] = _RAND_17[15:0];
  _RAND_18 = {1{`RANDOM}};
  for (initvar = 0; initvar < 128; initvar = initvar+1)
    ram_weights_3[initvar] = _RAND_18[15:0];
  _RAND_19 = {1{`RANDOM}};
  for (initvar = 0; initvar < 128; initvar = initvar+1)
    ram_weights_4[initvar] = _RAND_19[15:0];
  _RAND_20 = {1{`RANDOM}};
  for (initvar = 0; initvar < 128; initvar = initvar+1)
    ram_last[initvar] = _RAND_20[0:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{`RANDOM}};
  enq_ptr_value = _RAND_21[6:0];
  _RAND_22 = {1{`RANDOM}};
  deq_ptr_value = _RAND_22[6:0];
  _RAND_23 = {1{`RANDOM}};
  maybe_full = _RAND_23[0:0];
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
  input  [31:0] io_samples_in_0_bits_features_0,
  input  [31:0] io_samples_in_0_bits_features_1,
  input  [31:0] io_samples_in_0_bits_features_2,
  input  [31:0] io_samples_in_0_bits_features_3,
  input  [31:0] io_samples_in_0_bits_features_4,
  input  [9:0]  io_samples_in_0_bits_offset,
  input         io_samples_in_0_bits_shift,
  input         io_samples_in_0_bits_search_for_root,
  input  [7:0]  io_samples_in_0_bits_tree_to_exec,
  input  [15:0] io_samples_in_0_bits_scores_0,
  input  [15:0] io_samples_in_0_bits_scores_1,
  input  [15:0] io_samples_in_0_bits_scores_2,
  input  [15:0] io_samples_in_0_bits_scores_3,
  input  [15:0] io_samples_in_0_bits_scores_4,
  input  [15:0] io_samples_in_0_bits_scores_5,
  input  [15:0] io_samples_in_0_bits_weights_0,
  input  [15:0] io_samples_in_0_bits_weights_1,
  input  [15:0] io_samples_in_0_bits_weights_2,
  input  [15:0] io_samples_in_0_bits_weights_3,
  input  [15:0] io_samples_in_0_bits_weights_4,
  input         io_samples_in_0_bits_last,
  input         io_sample_out_ready,
  output        io_sample_out_valid,
  output [31:0] io_sample_out_bits_features_0,
  output [31:0] io_sample_out_bits_features_1,
  output [31:0] io_sample_out_bits_features_2,
  output [31:0] io_sample_out_bits_features_3,
  output [31:0] io_sample_out_bits_features_4,
  output [9:0]  io_sample_out_bits_offset,
  output        io_sample_out_bits_shift,
  output        io_sample_out_bits_search_for_root,
  output [7:0]  io_sample_out_bits_tree_to_exec,
  output [15:0] io_sample_out_bits_scores_0,
  output [15:0] io_sample_out_bits_scores_1,
  output [15:0] io_sample_out_bits_scores_2,
  output [15:0] io_sample_out_bits_scores_3,
  output [15:0] io_sample_out_bits_scores_4,
  output [15:0] io_sample_out_bits_scores_5,
  output        io_sample_out_bits_last
);
  wire  queues_q_clock; // @[Decoupled.scala 377:21]
  wire  queues_q_reset; // @[Decoupled.scala 377:21]
  wire  queues_q_io_enq_ready; // @[Decoupled.scala 377:21]
  wire  queues_q_io_enq_valid; // @[Decoupled.scala 377:21]
  wire [31:0] queues_q_io_enq_bits_features_0; // @[Decoupled.scala 377:21]
  wire [31:0] queues_q_io_enq_bits_features_1; // @[Decoupled.scala 377:21]
  wire [31:0] queues_q_io_enq_bits_features_2; // @[Decoupled.scala 377:21]
  wire [31:0] queues_q_io_enq_bits_features_3; // @[Decoupled.scala 377:21]
  wire [31:0] queues_q_io_enq_bits_features_4; // @[Decoupled.scala 377:21]
  wire [9:0] queues_q_io_enq_bits_offset; // @[Decoupled.scala 377:21]
  wire  queues_q_io_enq_bits_shift; // @[Decoupled.scala 377:21]
  wire  queues_q_io_enq_bits_search_for_root; // @[Decoupled.scala 377:21]
  wire [7:0] queues_q_io_enq_bits_tree_to_exec; // @[Decoupled.scala 377:21]
  wire [15:0] queues_q_io_enq_bits_scores_0; // @[Decoupled.scala 377:21]
  wire [15:0] queues_q_io_enq_bits_scores_1; // @[Decoupled.scala 377:21]
  wire [15:0] queues_q_io_enq_bits_scores_2; // @[Decoupled.scala 377:21]
  wire [15:0] queues_q_io_enq_bits_scores_3; // @[Decoupled.scala 377:21]
  wire [15:0] queues_q_io_enq_bits_scores_4; // @[Decoupled.scala 377:21]
  wire [15:0] queues_q_io_enq_bits_scores_5; // @[Decoupled.scala 377:21]
  wire [15:0] queues_q_io_enq_bits_weights_0; // @[Decoupled.scala 377:21]
  wire [15:0] queues_q_io_enq_bits_weights_1; // @[Decoupled.scala 377:21]
  wire [15:0] queues_q_io_enq_bits_weights_2; // @[Decoupled.scala 377:21]
  wire [15:0] queues_q_io_enq_bits_weights_3; // @[Decoupled.scala 377:21]
  wire [15:0] queues_q_io_enq_bits_weights_4; // @[Decoupled.scala 377:21]
  wire  queues_q_io_enq_bits_last; // @[Decoupled.scala 377:21]
  wire  queues_q_io_deq_ready; // @[Decoupled.scala 377:21]
  wire  queues_q_io_deq_valid; // @[Decoupled.scala 377:21]
  wire [31:0] queues_q_io_deq_bits_features_0; // @[Decoupled.scala 377:21]
  wire [31:0] queues_q_io_deq_bits_features_1; // @[Decoupled.scala 377:21]
  wire [31:0] queues_q_io_deq_bits_features_2; // @[Decoupled.scala 377:21]
  wire [31:0] queues_q_io_deq_bits_features_3; // @[Decoupled.scala 377:21]
  wire [31:0] queues_q_io_deq_bits_features_4; // @[Decoupled.scala 377:21]
  wire [9:0] queues_q_io_deq_bits_offset; // @[Decoupled.scala 377:21]
  wire  queues_q_io_deq_bits_shift; // @[Decoupled.scala 377:21]
  wire  queues_q_io_deq_bits_search_for_root; // @[Decoupled.scala 377:21]
  wire [7:0] queues_q_io_deq_bits_tree_to_exec; // @[Decoupled.scala 377:21]
  wire [15:0] queues_q_io_deq_bits_scores_0; // @[Decoupled.scala 377:21]
  wire [15:0] queues_q_io_deq_bits_scores_1; // @[Decoupled.scala 377:21]
  wire [15:0] queues_q_io_deq_bits_scores_2; // @[Decoupled.scala 377:21]
  wire [15:0] queues_q_io_deq_bits_scores_3; // @[Decoupled.scala 377:21]
  wire [15:0] queues_q_io_deq_bits_scores_4; // @[Decoupled.scala 377:21]
  wire [15:0] queues_q_io_deq_bits_scores_5; // @[Decoupled.scala 377:21]
  wire [15:0] queues_q_io_deq_bits_weights_0; // @[Decoupled.scala 377:21]
  wire [15:0] queues_q_io_deq_bits_weights_1; // @[Decoupled.scala 377:21]
  wire [15:0] queues_q_io_deq_bits_weights_2; // @[Decoupled.scala 377:21]
  wire [15:0] queues_q_io_deq_bits_weights_3; // @[Decoupled.scala 377:21]
  wire [15:0] queues_q_io_deq_bits_weights_4; // @[Decoupled.scala 377:21]
  wire  queues_q_io_deq_bits_last; // @[Decoupled.scala 377:21]
  Queue_2 queues_q ( // @[Decoupled.scala 377:21]
    .clock(queues_q_clock),
    .reset(queues_q_reset),
    .io_enq_ready(queues_q_io_enq_ready),
    .io_enq_valid(queues_q_io_enq_valid),
    .io_enq_bits_features_0(queues_q_io_enq_bits_features_0),
    .io_enq_bits_features_1(queues_q_io_enq_bits_features_1),
    .io_enq_bits_features_2(queues_q_io_enq_bits_features_2),
    .io_enq_bits_features_3(queues_q_io_enq_bits_features_3),
    .io_enq_bits_features_4(queues_q_io_enq_bits_features_4),
    .io_enq_bits_offset(queues_q_io_enq_bits_offset),
    .io_enq_bits_shift(queues_q_io_enq_bits_shift),
    .io_enq_bits_search_for_root(queues_q_io_enq_bits_search_for_root),
    .io_enq_bits_tree_to_exec(queues_q_io_enq_bits_tree_to_exec),
    .io_enq_bits_scores_0(queues_q_io_enq_bits_scores_0),
    .io_enq_bits_scores_1(queues_q_io_enq_bits_scores_1),
    .io_enq_bits_scores_2(queues_q_io_enq_bits_scores_2),
    .io_enq_bits_scores_3(queues_q_io_enq_bits_scores_3),
    .io_enq_bits_scores_4(queues_q_io_enq_bits_scores_4),
    .io_enq_bits_scores_5(queues_q_io_enq_bits_scores_5),
    .io_enq_bits_weights_0(queues_q_io_enq_bits_weights_0),
    .io_enq_bits_weights_1(queues_q_io_enq_bits_weights_1),
    .io_enq_bits_weights_2(queues_q_io_enq_bits_weights_2),
    .io_enq_bits_weights_3(queues_q_io_enq_bits_weights_3),
    .io_enq_bits_weights_4(queues_q_io_enq_bits_weights_4),
    .io_enq_bits_last(queues_q_io_enq_bits_last),
    .io_deq_ready(queues_q_io_deq_ready),
    .io_deq_valid(queues_q_io_deq_valid),
    .io_deq_bits_features_0(queues_q_io_deq_bits_features_0),
    .io_deq_bits_features_1(queues_q_io_deq_bits_features_1),
    .io_deq_bits_features_2(queues_q_io_deq_bits_features_2),
    .io_deq_bits_features_3(queues_q_io_deq_bits_features_3),
    .io_deq_bits_features_4(queues_q_io_deq_bits_features_4),
    .io_deq_bits_offset(queues_q_io_deq_bits_offset),
    .io_deq_bits_shift(queues_q_io_deq_bits_shift),
    .io_deq_bits_search_for_root(queues_q_io_deq_bits_search_for_root),
    .io_deq_bits_tree_to_exec(queues_q_io_deq_bits_tree_to_exec),
    .io_deq_bits_scores_0(queues_q_io_deq_bits_scores_0),
    .io_deq_bits_scores_1(queues_q_io_deq_bits_scores_1),
    .io_deq_bits_scores_2(queues_q_io_deq_bits_scores_2),
    .io_deq_bits_scores_3(queues_q_io_deq_bits_scores_3),
    .io_deq_bits_scores_4(queues_q_io_deq_bits_scores_4),
    .io_deq_bits_scores_5(queues_q_io_deq_bits_scores_5),
    .io_deq_bits_weights_0(queues_q_io_deq_bits_weights_0),
    .io_deq_bits_weights_1(queues_q_io_deq_bits_weights_1),
    .io_deq_bits_weights_2(queues_q_io_deq_bits_weights_2),
    .io_deq_bits_weights_3(queues_q_io_deq_bits_weights_3),
    .io_deq_bits_weights_4(queues_q_io_deq_bits_weights_4),
    .io_deq_bits_last(queues_q_io_deq_bits_last)
  );
  assign io_samples_in_0_ready = queues_q_io_enq_ready; // @[Decoupled.scala 381:17]
  assign io_sample_out_valid = queues_q_io_deq_valid; // @[VoterPE.scala 15:{25,25}]
  assign io_sample_out_bits_features_0 = queues_q_io_deq_bits_features_0; // @[VoterPE.scala 15:{25,25}]
  assign io_sample_out_bits_features_1 = queues_q_io_deq_bits_features_1; // @[VoterPE.scala 15:{25,25}]
  assign io_sample_out_bits_features_2 = queues_q_io_deq_bits_features_2; // @[VoterPE.scala 15:{25,25}]
  assign io_sample_out_bits_features_3 = queues_q_io_deq_bits_features_3; // @[VoterPE.scala 15:{25,25}]
  assign io_sample_out_bits_features_4 = queues_q_io_deq_bits_features_4; // @[VoterPE.scala 15:{25,25}]
  assign io_sample_out_bits_offset = queues_q_io_deq_bits_offset; // @[VoterPE.scala 15:{25,25}]
  assign io_sample_out_bits_shift = queues_q_io_deq_bits_shift; // @[VoterPE.scala 15:{25,25}]
  assign io_sample_out_bits_search_for_root = queues_q_io_deq_bits_search_for_root; // @[VoterPE.scala 15:{25,25}]
  assign io_sample_out_bits_tree_to_exec = queues_q_io_deq_bits_tree_to_exec; // @[VoterPE.scala 15:{25,25}]
  assign io_sample_out_bits_scores_0 = queues_q_io_deq_bits_scores_0; // @[VoterPE.scala 15:{25,25}]
  assign io_sample_out_bits_scores_1 = queues_q_io_deq_bits_scores_1; // @[VoterPE.scala 15:{25,25}]
  assign io_sample_out_bits_scores_2 = queues_q_io_deq_bits_scores_2; // @[VoterPE.scala 15:{25,25}]
  assign io_sample_out_bits_scores_3 = queues_q_io_deq_bits_scores_3; // @[VoterPE.scala 15:{25,25}]
  assign io_sample_out_bits_scores_4 = queues_q_io_deq_bits_scores_4; // @[VoterPE.scala 15:{25,25}]
  assign io_sample_out_bits_scores_5 = queues_q_io_deq_bits_scores_5; // @[VoterPE.scala 15:{25,25}]
  assign io_sample_out_bits_last = queues_q_io_deq_bits_last; // @[VoterPE.scala 15:{25,25}]
  assign queues_q_clock = clock;
  assign queues_q_reset = reset;
  assign queues_q_io_enq_valid = io_samples_in_0_valid; // @[Decoupled.scala 379:22]
  assign queues_q_io_enq_bits_features_0 = io_samples_in_0_bits_features_0; // @[Decoupled.scala 380:21]
  assign queues_q_io_enq_bits_features_1 = io_samples_in_0_bits_features_1; // @[Decoupled.scala 380:21]
  assign queues_q_io_enq_bits_features_2 = io_samples_in_0_bits_features_2; // @[Decoupled.scala 380:21]
  assign queues_q_io_enq_bits_features_3 = io_samples_in_0_bits_features_3; // @[Decoupled.scala 380:21]
  assign queues_q_io_enq_bits_features_4 = io_samples_in_0_bits_features_4; // @[Decoupled.scala 380:21]
  assign queues_q_io_enq_bits_offset = io_samples_in_0_bits_offset; // @[Decoupled.scala 380:21]
  assign queues_q_io_enq_bits_shift = io_samples_in_0_bits_shift; // @[Decoupled.scala 380:21]
  assign queues_q_io_enq_bits_search_for_root = io_samples_in_0_bits_search_for_root; // @[Decoupled.scala 380:21]
  assign queues_q_io_enq_bits_tree_to_exec = io_samples_in_0_bits_tree_to_exec; // @[Decoupled.scala 380:21]
  assign queues_q_io_enq_bits_scores_0 = io_samples_in_0_bits_scores_0; // @[Decoupled.scala 380:21]
  assign queues_q_io_enq_bits_scores_1 = io_samples_in_0_bits_scores_1; // @[Decoupled.scala 380:21]
  assign queues_q_io_enq_bits_scores_2 = io_samples_in_0_bits_scores_2; // @[Decoupled.scala 380:21]
  assign queues_q_io_enq_bits_scores_3 = io_samples_in_0_bits_scores_3; // @[Decoupled.scala 380:21]
  assign queues_q_io_enq_bits_scores_4 = io_samples_in_0_bits_scores_4; // @[Decoupled.scala 380:21]
  assign queues_q_io_enq_bits_scores_5 = io_samples_in_0_bits_scores_5; // @[Decoupled.scala 380:21]
  assign queues_q_io_enq_bits_weights_0 = io_samples_in_0_bits_weights_0; // @[Decoupled.scala 380:21]
  assign queues_q_io_enq_bits_weights_1 = io_samples_in_0_bits_weights_1; // @[Decoupled.scala 380:21]
  assign queues_q_io_enq_bits_weights_2 = io_samples_in_0_bits_weights_2; // @[Decoupled.scala 380:21]
  assign queues_q_io_enq_bits_weights_3 = io_samples_in_0_bits_weights_3; // @[Decoupled.scala 380:21]
  assign queues_q_io_enq_bits_weights_4 = io_samples_in_0_bits_weights_4; // @[Decoupled.scala 380:21]
  assign queues_q_io_enq_bits_last = io_samples_in_0_bits_last; // @[Decoupled.scala 380:21]
  assign queues_q_io_deq_ready = io_sample_out_ready; // @[VoterPE.scala 15:25 46:25]
endmodule
module Queue_3(
  input         clock,
  input         reset,
  output        io_enq_ready,
  input         io_enq_valid,
  input  [31:0] io_enq_bits_features_0,
  input  [31:0] io_enq_bits_features_1,
  input  [31:0] io_enq_bits_features_2,
  input  [31:0] io_enq_bits_features_3,
  input  [31:0] io_enq_bits_features_4,
  input  [9:0]  io_enq_bits_offset,
  input         io_enq_bits_shift,
  input         io_enq_bits_search_for_root,
  input  [7:0]  io_enq_bits_tree_to_exec,
  input  [15:0] io_enq_bits_scores_0,
  input  [15:0] io_enq_bits_scores_1,
  input  [15:0] io_enq_bits_scores_2,
  input  [15:0] io_enq_bits_scores_3,
  input  [15:0] io_enq_bits_scores_4,
  input  [15:0] io_enq_bits_scores_5,
  input  [15:0] io_enq_bits_weights_0,
  input  [15:0] io_enq_bits_weights_1,
  input  [15:0] io_enq_bits_weights_2,
  input  [15:0] io_enq_bits_weights_3,
  input  [15:0] io_enq_bits_weights_4,
  input         io_enq_bits_last,
  input         io_deq_ready,
  output        io_deq_valid,
  output [31:0] io_deq_bits_features_0,
  output [31:0] io_deq_bits_features_1,
  output [31:0] io_deq_bits_features_2,
  output [31:0] io_deq_bits_features_3,
  output [31:0] io_deq_bits_features_4,
  output [9:0]  io_deq_bits_offset,
  output        io_deq_bits_shift,
  output        io_deq_bits_search_for_root,
  output [7:0]  io_deq_bits_tree_to_exec,
  output [15:0] io_deq_bits_scores_0,
  output [15:0] io_deq_bits_scores_1,
  output [15:0] io_deq_bits_scores_2,
  output [15:0] io_deq_bits_scores_3,
  output [15:0] io_deq_bits_scores_4,
  output [15:0] io_deq_bits_scores_5,
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
  reg [31:0] _RAND_35;
  reg [31:0] _RAND_37;
  reg [31:0] _RAND_39;
  reg [31:0] _RAND_41;
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
  reg [31:0] _RAND_38;
  reg [31:0] _RAND_40;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_42;
  reg [31:0] _RAND_43;
  reg [31:0] _RAND_44;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] ram_features_0 [0:2]; // @[Decoupled.scala 275:95]
  wire  ram_features_0_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [1:0] ram_features_0_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire [31:0] ram_features_0_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire [31:0] ram_features_0_MPORT_data; // @[Decoupled.scala 275:95]
  wire [1:0] ram_features_0_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_features_0_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_features_0_MPORT_en; // @[Decoupled.scala 275:95]
  reg [31:0] ram_features_1 [0:2]; // @[Decoupled.scala 275:95]
  wire  ram_features_1_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [1:0] ram_features_1_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire [31:0] ram_features_1_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire [31:0] ram_features_1_MPORT_data; // @[Decoupled.scala 275:95]
  wire [1:0] ram_features_1_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_features_1_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_features_1_MPORT_en; // @[Decoupled.scala 275:95]
  reg [31:0] ram_features_2 [0:2]; // @[Decoupled.scala 275:95]
  wire  ram_features_2_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [1:0] ram_features_2_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire [31:0] ram_features_2_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire [31:0] ram_features_2_MPORT_data; // @[Decoupled.scala 275:95]
  wire [1:0] ram_features_2_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_features_2_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_features_2_MPORT_en; // @[Decoupled.scala 275:95]
  reg [31:0] ram_features_3 [0:2]; // @[Decoupled.scala 275:95]
  wire  ram_features_3_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [1:0] ram_features_3_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire [31:0] ram_features_3_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire [31:0] ram_features_3_MPORT_data; // @[Decoupled.scala 275:95]
  wire [1:0] ram_features_3_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_features_3_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_features_3_MPORT_en; // @[Decoupled.scala 275:95]
  reg [31:0] ram_features_4 [0:2]; // @[Decoupled.scala 275:95]
  wire  ram_features_4_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [1:0] ram_features_4_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire [31:0] ram_features_4_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire [31:0] ram_features_4_MPORT_data; // @[Decoupled.scala 275:95]
  wire [1:0] ram_features_4_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_features_4_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_features_4_MPORT_en; // @[Decoupled.scala 275:95]
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
  reg [15:0] ram_scores_4 [0:2]; // @[Decoupled.scala 275:95]
  wire  ram_scores_4_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [1:0] ram_scores_4_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire [15:0] ram_scores_4_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire [15:0] ram_scores_4_MPORT_data; // @[Decoupled.scala 275:95]
  wire [1:0] ram_scores_4_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_scores_4_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_scores_4_MPORT_en; // @[Decoupled.scala 275:95]
  reg [15:0] ram_scores_5 [0:2]; // @[Decoupled.scala 275:95]
  wire  ram_scores_5_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [1:0] ram_scores_5_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire [15:0] ram_scores_5_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire [15:0] ram_scores_5_MPORT_data; // @[Decoupled.scala 275:95]
  wire [1:0] ram_scores_5_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_scores_5_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_scores_5_MPORT_en; // @[Decoupled.scala 275:95]
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
  assign ram_features_0_io_deq_bits_MPORT_data = ram_features_0_io_deq_bits_MPORT_addr >= 2'h3 ? _RAND_1[31:0] :
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
  assign ram_features_1_io_deq_bits_MPORT_data = ram_features_1_io_deq_bits_MPORT_addr >= 2'h3 ? _RAND_3[31:0] :
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
  assign ram_features_2_io_deq_bits_MPORT_data = ram_features_2_io_deq_bits_MPORT_addr >= 2'h3 ? _RAND_5[31:0] :
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
  assign ram_features_3_io_deq_bits_MPORT_data = ram_features_3_io_deq_bits_MPORT_addr >= 2'h3 ? _RAND_7[31:0] :
    ram_features_3[ram_features_3_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign ram_features_3_MPORT_data = io_enq_bits_features_3;
  assign ram_features_3_MPORT_addr = enq_ptr_value;
  assign ram_features_3_MPORT_mask = 1'h1;
  assign ram_features_3_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_features_4_io_deq_bits_MPORT_en = 1'h1;
  assign ram_features_4_io_deq_bits_MPORT_addr = deq_ptr_value;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign ram_features_4_io_deq_bits_MPORT_data = ram_features_4[ram_features_4_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `else
  assign ram_features_4_io_deq_bits_MPORT_data = ram_features_4_io_deq_bits_MPORT_addr >= 2'h3 ? _RAND_9[31:0] :
    ram_features_4[ram_features_4_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign ram_features_4_MPORT_data = io_enq_bits_features_4;
  assign ram_features_4_MPORT_addr = enq_ptr_value;
  assign ram_features_4_MPORT_mask = 1'h1;
  assign ram_features_4_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_offset_io_deq_bits_MPORT_en = 1'h1;
  assign ram_offset_io_deq_bits_MPORT_addr = deq_ptr_value;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign ram_offset_io_deq_bits_MPORT_data = ram_offset[ram_offset_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `else
  assign ram_offset_io_deq_bits_MPORT_data = ram_offset_io_deq_bits_MPORT_addr >= 2'h3 ? _RAND_11[9:0] :
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
  assign ram_shift_io_deq_bits_MPORT_data = ram_shift_io_deq_bits_MPORT_addr >= 2'h3 ? _RAND_13[0:0] :
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
  assign ram_search_for_root_io_deq_bits_MPORT_data = ram_search_for_root_io_deq_bits_MPORT_addr >= 2'h3 ? _RAND_15[0:0]
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
  assign ram_tree_to_exec_io_deq_bits_MPORT_data = ram_tree_to_exec_io_deq_bits_MPORT_addr >= 2'h3 ? _RAND_17[7:0] :
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
  assign ram_scores_0_io_deq_bits_MPORT_data = ram_scores_0_io_deq_bits_MPORT_addr >= 2'h3 ? _RAND_19[15:0] :
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
  assign ram_scores_1_io_deq_bits_MPORT_data = ram_scores_1_io_deq_bits_MPORT_addr >= 2'h3 ? _RAND_21[15:0] :
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
  assign ram_scores_2_io_deq_bits_MPORT_data = ram_scores_2_io_deq_bits_MPORT_addr >= 2'h3 ? _RAND_23[15:0] :
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
  assign ram_scores_3_io_deq_bits_MPORT_data = ram_scores_3_io_deq_bits_MPORT_addr >= 2'h3 ? _RAND_25[15:0] :
    ram_scores_3[ram_scores_3_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign ram_scores_3_MPORT_data = io_enq_bits_scores_3;
  assign ram_scores_3_MPORT_addr = enq_ptr_value;
  assign ram_scores_3_MPORT_mask = 1'h1;
  assign ram_scores_3_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_scores_4_io_deq_bits_MPORT_en = 1'h1;
  assign ram_scores_4_io_deq_bits_MPORT_addr = deq_ptr_value;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign ram_scores_4_io_deq_bits_MPORT_data = ram_scores_4[ram_scores_4_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `else
  assign ram_scores_4_io_deq_bits_MPORT_data = ram_scores_4_io_deq_bits_MPORT_addr >= 2'h3 ? _RAND_27[15:0] :
    ram_scores_4[ram_scores_4_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign ram_scores_4_MPORT_data = io_enq_bits_scores_4;
  assign ram_scores_4_MPORT_addr = enq_ptr_value;
  assign ram_scores_4_MPORT_mask = 1'h1;
  assign ram_scores_4_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_scores_5_io_deq_bits_MPORT_en = 1'h1;
  assign ram_scores_5_io_deq_bits_MPORT_addr = deq_ptr_value;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign ram_scores_5_io_deq_bits_MPORT_data = ram_scores_5[ram_scores_5_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `else
  assign ram_scores_5_io_deq_bits_MPORT_data = ram_scores_5_io_deq_bits_MPORT_addr >= 2'h3 ? _RAND_29[15:0] :
    ram_scores_5[ram_scores_5_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign ram_scores_5_MPORT_data = io_enq_bits_scores_5;
  assign ram_scores_5_MPORT_addr = enq_ptr_value;
  assign ram_scores_5_MPORT_mask = 1'h1;
  assign ram_scores_5_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_weights_0_io_deq_bits_MPORT_en = 1'h1;
  assign ram_weights_0_io_deq_bits_MPORT_addr = deq_ptr_value;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign ram_weights_0_io_deq_bits_MPORT_data = ram_weights_0[ram_weights_0_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  `else
  assign ram_weights_0_io_deq_bits_MPORT_data = ram_weights_0_io_deq_bits_MPORT_addr >= 2'h3 ? _RAND_31[15:0] :
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
  assign ram_weights_1_io_deq_bits_MPORT_data = ram_weights_1_io_deq_bits_MPORT_addr >= 2'h3 ? _RAND_33[15:0] :
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
  assign ram_weights_2_io_deq_bits_MPORT_data = ram_weights_2_io_deq_bits_MPORT_addr >= 2'h3 ? _RAND_35[15:0] :
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
  assign ram_weights_3_io_deq_bits_MPORT_data = ram_weights_3_io_deq_bits_MPORT_addr >= 2'h3 ? _RAND_37[15:0] :
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
  assign ram_weights_4_io_deq_bits_MPORT_data = ram_weights_4_io_deq_bits_MPORT_addr >= 2'h3 ? _RAND_39[15:0] :
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
  assign ram_last_io_deq_bits_MPORT_data = ram_last_io_deq_bits_MPORT_addr >= 2'h3 ? _RAND_41[0:0] :
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
  assign io_deq_bits_features_4 = ram_features_4_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_offset = ram_offset_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_shift = ram_shift_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_search_for_root = ram_search_for_root_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_tree_to_exec = ram_tree_to_exec_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_scores_0 = ram_scores_0_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_scores_1 = ram_scores_1_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_scores_2 = ram_scores_2_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_scores_3 = ram_scores_3_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_scores_4 = ram_scores_4_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_scores_5 = ram_scores_5_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
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
    if (ram_features_4_MPORT_en & ram_features_4_MPORT_mask) begin
      ram_features_4[ram_features_4_MPORT_addr] <= ram_features_4_MPORT_data; // @[Decoupled.scala 275:95]
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
    if (ram_scores_4_MPORT_en & ram_scores_4_MPORT_mask) begin
      ram_scores_4[ram_scores_4_MPORT_addr] <= ram_scores_4_MPORT_data; // @[Decoupled.scala 275:95]
    end
    if (ram_scores_5_MPORT_en & ram_scores_5_MPORT_mask) begin
      ram_scores_5[ram_scores_5_MPORT_addr] <= ram_scores_5_MPORT_data; // @[Decoupled.scala 275:95]
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
  _RAND_35 = {1{`RANDOM}};
  _RAND_37 = {1{`RANDOM}};
  _RAND_39 = {1{`RANDOM}};
  _RAND_41 = {1{`RANDOM}};
`endif // RANDOMIZE_GARBAGE_ASSIGN
`ifdef RANDOMIZE_MEM_INIT
  _RAND_0 = {1{`RANDOM}};
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    ram_features_0[initvar] = _RAND_0[31:0];
  _RAND_2 = {1{`RANDOM}};
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    ram_features_1[initvar] = _RAND_2[31:0];
  _RAND_4 = {1{`RANDOM}};
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    ram_features_2[initvar] = _RAND_4[31:0];
  _RAND_6 = {1{`RANDOM}};
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    ram_features_3[initvar] = _RAND_6[31:0];
  _RAND_8 = {1{`RANDOM}};
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    ram_features_4[initvar] = _RAND_8[31:0];
  _RAND_10 = {1{`RANDOM}};
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    ram_offset[initvar] = _RAND_10[9:0];
  _RAND_12 = {1{`RANDOM}};
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    ram_shift[initvar] = _RAND_12[0:0];
  _RAND_14 = {1{`RANDOM}};
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    ram_search_for_root[initvar] = _RAND_14[0:0];
  _RAND_16 = {1{`RANDOM}};
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    ram_tree_to_exec[initvar] = _RAND_16[7:0];
  _RAND_18 = {1{`RANDOM}};
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    ram_scores_0[initvar] = _RAND_18[15:0];
  _RAND_20 = {1{`RANDOM}};
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    ram_scores_1[initvar] = _RAND_20[15:0];
  _RAND_22 = {1{`RANDOM}};
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    ram_scores_2[initvar] = _RAND_22[15:0];
  _RAND_24 = {1{`RANDOM}};
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    ram_scores_3[initvar] = _RAND_24[15:0];
  _RAND_26 = {1{`RANDOM}};
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    ram_scores_4[initvar] = _RAND_26[15:0];
  _RAND_28 = {1{`RANDOM}};
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    ram_scores_5[initvar] = _RAND_28[15:0];
  _RAND_30 = {1{`RANDOM}};
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    ram_weights_0[initvar] = _RAND_30[15:0];
  _RAND_32 = {1{`RANDOM}};
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    ram_weights_1[initvar] = _RAND_32[15:0];
  _RAND_34 = {1{`RANDOM}};
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    ram_weights_2[initvar] = _RAND_34[15:0];
  _RAND_36 = {1{`RANDOM}};
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    ram_weights_3[initvar] = _RAND_36[15:0];
  _RAND_38 = {1{`RANDOM}};
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    ram_weights_4[initvar] = _RAND_38[15:0];
  _RAND_40 = {1{`RANDOM}};
  for (initvar = 0; initvar < 3; initvar = initvar+1)
    ram_last[initvar] = _RAND_40[0:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_42 = {1{`RANDOM}};
  enq_ptr_value = _RAND_42[1:0];
  _RAND_43 = {1{`RANDOM}};
  deq_ptr_value = _RAND_43[1:0];
  _RAND_44 = {1{`RANDOM}};
  maybe_full = _RAND_44[0:0];
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
  input  [31:0] io_sample_in_bits_features_0,
  input  [31:0] io_sample_in_bits_features_1,
  input  [31:0] io_sample_in_bits_features_2,
  input  [31:0] io_sample_in_bits_features_3,
  input  [31:0] io_sample_in_bits_features_4,
  input  [9:0]  io_sample_in_bits_offset,
  input         io_sample_in_bits_shift,
  input         io_sample_in_bits_search_for_root,
  input  [7:0]  io_sample_in_bits_tree_to_exec,
  input  [15:0] io_sample_in_bits_scores_0,
  input  [15:0] io_sample_in_bits_scores_1,
  input  [15:0] io_sample_in_bits_scores_2,
  input  [15:0] io_sample_in_bits_scores_3,
  input  [15:0] io_sample_in_bits_scores_4,
  input  [15:0] io_sample_in_bits_scores_5,
  input  [15:0] io_sample_in_bits_weights_0,
  input  [15:0] io_sample_in_bits_weights_1,
  input  [15:0] io_sample_in_bits_weights_2,
  input  [15:0] io_sample_in_bits_weights_3,
  input  [15:0] io_sample_in_bits_weights_4,
  input         io_sample_in_bits_last,
  output [12:0] io_mem_addr_1,
  input  [63:0] io_mem_dataOut_1,
  input         io_sample_out_ready,
  output        io_sample_out_valid,
  output [31:0] io_sample_out_bits_features_0,
  output [31:0] io_sample_out_bits_features_1,
  output [31:0] io_sample_out_bits_features_2,
  output [31:0] io_sample_out_bits_features_3,
  output [31:0] io_sample_out_bits_features_4,
  output [9:0]  io_sample_out_bits_offset,
  output        io_sample_out_bits_search_for_root,
  output [7:0]  io_sample_out_bits_tree_to_exec,
  output [15:0] io_sample_out_bits_scores_0,
  output [15:0] io_sample_out_bits_scores_1,
  output [15:0] io_sample_out_bits_scores_2,
  output [15:0] io_sample_out_bits_scores_3,
  output [15:0] io_sample_out_bits_scores_4,
  output [15:0] io_sample_out_bits_scores_5,
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
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
`endif // RANDOMIZE_REG_INIT
  wire  queue_clock; // @[Decoupled.scala 377:21]
  wire  queue_reset; // @[Decoupled.scala 377:21]
  wire  queue_io_enq_ready; // @[Decoupled.scala 377:21]
  wire  queue_io_enq_valid; // @[Decoupled.scala 377:21]
  wire [31:0] queue_io_enq_bits_features_0; // @[Decoupled.scala 377:21]
  wire [31:0] queue_io_enq_bits_features_1; // @[Decoupled.scala 377:21]
  wire [31:0] queue_io_enq_bits_features_2; // @[Decoupled.scala 377:21]
  wire [31:0] queue_io_enq_bits_features_3; // @[Decoupled.scala 377:21]
  wire [31:0] queue_io_enq_bits_features_4; // @[Decoupled.scala 377:21]
  wire [9:0] queue_io_enq_bits_offset; // @[Decoupled.scala 377:21]
  wire  queue_io_enq_bits_shift; // @[Decoupled.scala 377:21]
  wire  queue_io_enq_bits_search_for_root; // @[Decoupled.scala 377:21]
  wire [7:0] queue_io_enq_bits_tree_to_exec; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_scores_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_scores_1; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_scores_2; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_scores_3; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_scores_4; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_scores_5; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_weights_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_weights_1; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_weights_2; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_weights_3; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_weights_4; // @[Decoupled.scala 377:21]
  wire  queue_io_enq_bits_last; // @[Decoupled.scala 377:21]
  wire  queue_io_deq_ready; // @[Decoupled.scala 377:21]
  wire  queue_io_deq_valid; // @[Decoupled.scala 377:21]
  wire [31:0] queue_io_deq_bits_features_0; // @[Decoupled.scala 377:21]
  wire [31:0] queue_io_deq_bits_features_1; // @[Decoupled.scala 377:21]
  wire [31:0] queue_io_deq_bits_features_2; // @[Decoupled.scala 377:21]
  wire [31:0] queue_io_deq_bits_features_3; // @[Decoupled.scala 377:21]
  wire [31:0] queue_io_deq_bits_features_4; // @[Decoupled.scala 377:21]
  wire [9:0] queue_io_deq_bits_offset; // @[Decoupled.scala 377:21]
  wire  queue_io_deq_bits_shift; // @[Decoupled.scala 377:21]
  wire  queue_io_deq_bits_search_for_root; // @[Decoupled.scala 377:21]
  wire [7:0] queue_io_deq_bits_tree_to_exec; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_scores_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_scores_1; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_scores_2; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_scores_3; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_scores_4; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_scores_5; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_weights_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_weights_1; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_weights_2; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_weights_3; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_weights_4; // @[Decoupled.scala 377:21]
  wire  queue_io_deq_bits_last; // @[Decoupled.scala 377:21]
  reg  REG; // @[TreePE.scala 35:17]
  wire [2:0] attr_id = io_mem_dataOut_1[34:32]; // @[TreePE.scala 37:37]
  wire [9:0] leftChildInfo = io_mem_dataOut_1[44:35]; // @[TreePE.scala 40:43]
  wire [9:0] rightChildInfo = io_mem_dataOut_1[54:45]; // @[TreePE.scala 41:44]
  wire  leftChildType = io_mem_dataOut_1[55]; // @[TreePE.scala 42:43]
  wire  rightChildType = io_mem_dataOut_1[56]; // @[TreePE.scala 43:44]
  wire  is_valid = io_mem_dataOut_1[57]; // @[TreePE.scala 44:38]
  wire [2:0] depth_indicator = io_mem_dataOut_1[60:58]; // @[TreePE.scala 45:45]
  reg [31:0] REG_1_0; // @[TreePE.scala 47:45]
  reg [31:0] REG_1_1; // @[TreePE.scala 47:45]
  reg [31:0] REG_1_2; // @[TreePE.scala 47:45]
  reg [31:0] REG_1_3; // @[TreePE.scala 47:45]
  reg [31:0] REG_1_4; // @[TreePE.scala 47:45]
  reg [15:0] REG_2_0; // @[TreePE.scala 48:44]
  reg [15:0] REG_2_1; // @[TreePE.scala 48:44]
  reg [15:0] REG_2_2; // @[TreePE.scala 48:44]
  reg [15:0] REG_2_3; // @[TreePE.scala 48:44]
  reg [15:0] REG_2_4; // @[TreePE.scala 48:44]
  reg [7:0] io_sample_out_bits_tree_to_exec_REG; // @[TreePE.scala 49:49]
  reg [31:0] features_bits_0; // @[TreePE.scala 57:36]
  reg [31:0] features_bits_1; // @[TreePE.scala 57:36]
  reg [31:0] features_bits_2; // @[TreePE.scala 57:36]
  reg [31:0] features_bits_3; // @[TreePE.scala 57:36]
  reg [31:0] features_bits_4; // @[TreePE.scala 57:36]
  reg [15:0] scores_bits_0; // @[TreePE.scala 58:34]
  reg [15:0] scores_bits_1; // @[TreePE.scala 58:34]
  reg [15:0] scores_bits_2; // @[TreePE.scala 58:34]
  reg [15:0] scores_bits_3; // @[TreePE.scala 58:34]
  reg [15:0] scores_bits_4; // @[TreePE.scala 58:34]
  reg [15:0] scores_bits_5; // @[TreePE.scala 58:34]
  reg [15:0] weights_bits_0; // @[TreePE.scala 59:35]
  reg [15:0] weights_bits_1; // @[TreePE.scala 59:35]
  reg [15:0] weights_bits_2; // @[TreePE.scala 59:35]
  reg [15:0] weights_bits_3; // @[TreePE.scala 59:35]
  reg [15:0] weights_bits_4; // @[TreePE.scala 59:35]
  wire [15:0] _shift_T = io_mem_dataOut_1[15:0]; // @[TreePE.scala 60:69]
  wire [31:0] _GEN_1 = 3'h1 == attr_id ? $signed(features_bits_1) : $signed(features_bits_0); // @[TreePE.scala 60:{45,45}]
  wire [31:0] _GEN_2 = 3'h2 == attr_id ? $signed(features_bits_2) : $signed(_GEN_1); // @[TreePE.scala 60:{45,45}]
  wire [31:0] _GEN_3 = 3'h3 == attr_id ? $signed(features_bits_3) : $signed(_GEN_2); // @[TreePE.scala 60:{45,45}]
  wire [31:0] _GEN_4 = 3'h4 == attr_id ? $signed(features_bits_4) : $signed(_GEN_3); // @[TreePE.scala 60:{45,45}]
  wire [23:0] _GEN_28 = {$signed(_shift_T), 8'h0}; // @[TreePE.scala 60:45]
  wire [31:0] _GEN_32 = {{8{_GEN_28[23]}},_GEN_28}; // @[TreePE.scala 60:45]
  wire  _shift_T_1 = $signed(_GEN_4) < $signed(_GEN_32); // @[TreePE.scala 60:45]
  wire  shift = $signed(_GEN_4) < $signed(_GEN_32) ? leftChildType : rightChildType; // @[TreePE.scala 60:21]
  wire [9:0] offset = _shift_T_1 ? leftChildInfo : rightChildInfo; // @[TreePE.scala 61:22]
  wire  _io_sample_out_bits_offset_T = ~shift; // @[TreePE.scala 62:48]
  reg [7:0] io_sample_out_bits_offset_REG; // @[TreePE.scala 62:67]
  wire [15:0] _GEN_6 = 3'h1 == depth_indicator ? $signed(weights_bits_1) : $signed(weights_bits_0); // @[TreePE.scala 66:{151,151}]
  wire [15:0] _GEN_7 = 3'h2 == depth_indicator ? $signed(weights_bits_2) : $signed(_GEN_6); // @[TreePE.scala 66:{151,151}]
  wire [15:0] _GEN_8 = 3'h3 == depth_indicator ? $signed(weights_bits_3) : $signed(_GEN_7); // @[TreePE.scala 66:{151,151}]
  wire [15:0] _io_sample_out_bits_scores_0_T_4 = 3'h4 == depth_indicator ? $signed(weights_bits_4) : $signed(_GEN_8); // @[TreePE.scala 66:151]
  wire [15:0] _io_sample_out_bits_scores_0_T_6 = _io_sample_out_bits_offset_T & is_valid & 10'h0 == offset ?
    _io_sample_out_bits_scores_0_T_4 : 16'h0; // @[TreePE.scala 66:178]
  wire [15:0] _io_sample_out_bits_scores_1_T_6 = _io_sample_out_bits_offset_T & is_valid & 10'h1 == offset ?
    _io_sample_out_bits_scores_0_T_4 : 16'h0; // @[TreePE.scala 66:178]
  wire [15:0] _io_sample_out_bits_scores_2_T_6 = _io_sample_out_bits_offset_T & is_valid & 10'h2 == offset ?
    _io_sample_out_bits_scores_0_T_4 : 16'h0; // @[TreePE.scala 66:178]
  wire [15:0] _io_sample_out_bits_scores_3_T_6 = _io_sample_out_bits_offset_T & is_valid & 10'h3 == offset ?
    _io_sample_out_bits_scores_0_T_4 : 16'h0; // @[TreePE.scala 66:178]
  wire [15:0] _io_sample_out_bits_scores_4_T_6 = _io_sample_out_bits_offset_T & is_valid & 10'h4 == offset ?
    _io_sample_out_bits_scores_0_T_4 : 16'h0; // @[TreePE.scala 66:178]
  wire [15:0] _io_sample_out_bits_scores_5_T_6 = _io_sample_out_bits_offset_T & is_valid & 10'h5 == offset ?
    _io_sample_out_bits_scores_0_T_4 : 16'h0; // @[TreePE.scala 66:178]
  reg  io_sample_out_bits_last_REG; // @[TreePE.scala 69:43]
  Queue_3 queue ( // @[Decoupled.scala 377:21]
    .clock(queue_clock),
    .reset(queue_reset),
    .io_enq_ready(queue_io_enq_ready),
    .io_enq_valid(queue_io_enq_valid),
    .io_enq_bits_features_0(queue_io_enq_bits_features_0),
    .io_enq_bits_features_1(queue_io_enq_bits_features_1),
    .io_enq_bits_features_2(queue_io_enq_bits_features_2),
    .io_enq_bits_features_3(queue_io_enq_bits_features_3),
    .io_enq_bits_features_4(queue_io_enq_bits_features_4),
    .io_enq_bits_offset(queue_io_enq_bits_offset),
    .io_enq_bits_shift(queue_io_enq_bits_shift),
    .io_enq_bits_search_for_root(queue_io_enq_bits_search_for_root),
    .io_enq_bits_tree_to_exec(queue_io_enq_bits_tree_to_exec),
    .io_enq_bits_scores_0(queue_io_enq_bits_scores_0),
    .io_enq_bits_scores_1(queue_io_enq_bits_scores_1),
    .io_enq_bits_scores_2(queue_io_enq_bits_scores_2),
    .io_enq_bits_scores_3(queue_io_enq_bits_scores_3),
    .io_enq_bits_scores_4(queue_io_enq_bits_scores_4),
    .io_enq_bits_scores_5(queue_io_enq_bits_scores_5),
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
    .io_deq_bits_features_4(queue_io_deq_bits_features_4),
    .io_deq_bits_offset(queue_io_deq_bits_offset),
    .io_deq_bits_shift(queue_io_deq_bits_shift),
    .io_deq_bits_search_for_root(queue_io_deq_bits_search_for_root),
    .io_deq_bits_tree_to_exec(queue_io_deq_bits_tree_to_exec),
    .io_deq_bits_scores_0(queue_io_deq_bits_scores_0),
    .io_deq_bits_scores_1(queue_io_deq_bits_scores_1),
    .io_deq_bits_scores_2(queue_io_deq_bits_scores_2),
    .io_deq_bits_scores_3(queue_io_deq_bits_scores_3),
    .io_deq_bits_scores_4(queue_io_deq_bits_scores_4),
    .io_deq_bits_scores_5(queue_io_deq_bits_scores_5),
    .io_deq_bits_weights_0(queue_io_deq_bits_weights_0),
    .io_deq_bits_weights_1(queue_io_deq_bits_weights_1),
    .io_deq_bits_weights_2(queue_io_deq_bits_weights_2),
    .io_deq_bits_weights_3(queue_io_deq_bits_weights_3),
    .io_deq_bits_weights_4(queue_io_deq_bits_weights_4),
    .io_deq_bits_last(queue_io_deq_bits_last)
  );
  assign io_sample_in_ready = queue_io_enq_ready; // @[Decoupled.scala 381:17]
  assign io_mem_addr_1 = {{3'd0}, queue_io_deq_bits_offset}; // @[TreePE.scala 24:19]
  assign io_sample_out_valid = REG; // @[TreePE.scala 35:31 51:27 89:27]
  assign io_sample_out_bits_features_0 = REG_1_0; // @[TreePE.scala 35:31 47:35]
  assign io_sample_out_bits_features_1 = REG_1_1; // @[TreePE.scala 35:31 47:35]
  assign io_sample_out_bits_features_2 = REG_1_2; // @[TreePE.scala 35:31 47:35]
  assign io_sample_out_bits_features_3 = REG_1_3; // @[TreePE.scala 35:31 47:35]
  assign io_sample_out_bits_features_4 = REG_1_4; // @[TreePE.scala 35:31 47:35]
  assign io_sample_out_bits_offset = ~shift ? {{2'd0}, io_sample_out_bits_offset_REG} : offset; // @[TreePE.scala 62:41]
  assign io_sample_out_bits_search_for_root = ~shift; // @[TreePE.scala 64:47]
  assign io_sample_out_bits_tree_to_exec = io_sample_out_bits_tree_to_exec_REG; // @[TreePE.scala 35:31 49:39]
  assign io_sample_out_bits_scores_0 = $signed(scores_bits_0) + $signed(_io_sample_out_bits_scores_0_T_6); // @[TreePE.scala 66:58]
  assign io_sample_out_bits_scores_1 = $signed(scores_bits_1) + $signed(_io_sample_out_bits_scores_1_T_6); // @[TreePE.scala 66:58]
  assign io_sample_out_bits_scores_2 = $signed(scores_bits_2) + $signed(_io_sample_out_bits_scores_2_T_6); // @[TreePE.scala 66:58]
  assign io_sample_out_bits_scores_3 = $signed(scores_bits_3) + $signed(_io_sample_out_bits_scores_3_T_6); // @[TreePE.scala 66:58]
  assign io_sample_out_bits_scores_4 = $signed(scores_bits_4) + $signed(_io_sample_out_bits_scores_4_T_6); // @[TreePE.scala 66:58]
  assign io_sample_out_bits_scores_5 = $signed(scores_bits_5) + $signed(_io_sample_out_bits_scores_5_T_6); // @[TreePE.scala 66:58]
  assign io_sample_out_bits_weights_0 = REG_2_0; // @[TreePE.scala 35:31 48:34]
  assign io_sample_out_bits_weights_1 = REG_2_1; // @[TreePE.scala 35:31 48:34]
  assign io_sample_out_bits_weights_2 = REG_2_2; // @[TreePE.scala 35:31 48:34]
  assign io_sample_out_bits_weights_3 = REG_2_3; // @[TreePE.scala 35:31 48:34]
  assign io_sample_out_bits_weights_4 = REG_2_4; // @[TreePE.scala 35:31 48:34]
  assign io_sample_out_bits_last = io_sample_out_bits_last_REG; // @[TreePE.scala 35:31 69:33]
  assign queue_clock = clock;
  assign queue_reset = reset;
  assign queue_io_enq_valid = io_sample_in_valid; // @[Decoupled.scala 379:22]
  assign queue_io_enq_bits_features_0 = io_sample_in_bits_features_0; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_features_1 = io_sample_in_bits_features_1; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_features_2 = io_sample_in_bits_features_2; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_features_3 = io_sample_in_bits_features_3; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_features_4 = io_sample_in_bits_features_4; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_offset = io_sample_in_bits_offset; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_shift = io_sample_in_bits_shift; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_search_for_root = io_sample_in_bits_search_for_root; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_tree_to_exec = io_sample_in_bits_tree_to_exec; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_scores_0 = io_sample_in_bits_scores_0; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_scores_1 = io_sample_in_bits_scores_1; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_scores_2 = io_sample_in_bits_scores_2; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_scores_3 = io_sample_in_bits_scores_3; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_scores_4 = io_sample_in_bits_scores_4; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_scores_5 = io_sample_in_bits_scores_5; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_weights_0 = io_sample_in_bits_weights_0; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_weights_1 = io_sample_in_bits_weights_1; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_weights_2 = io_sample_in_bits_weights_2; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_weights_3 = io_sample_in_bits_weights_3; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_weights_4 = io_sample_in_bits_weights_4; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_last = io_sample_in_bits_last; // @[Decoupled.scala 380:21]
  assign queue_io_deq_ready = io_sample_out_ready; // @[TreePE.scala 92:17]
  always @(posedge clock) begin
    REG <= queue_io_deq_valid; // @[TreePE.scala 35:17]
    REG_1_0 <= queue_io_deq_bits_features_0; // @[TreePE.scala 47:45]
    REG_1_1 <= queue_io_deq_bits_features_1; // @[TreePE.scala 47:45]
    REG_1_2 <= queue_io_deq_bits_features_2; // @[TreePE.scala 47:45]
    REG_1_3 <= queue_io_deq_bits_features_3; // @[TreePE.scala 47:45]
    REG_1_4 <= queue_io_deq_bits_features_4; // @[TreePE.scala 47:45]
    REG_2_0 <= queue_io_deq_bits_weights_0; // @[TreePE.scala 48:44]
    REG_2_1 <= queue_io_deq_bits_weights_1; // @[TreePE.scala 48:44]
    REG_2_2 <= queue_io_deq_bits_weights_2; // @[TreePE.scala 48:44]
    REG_2_3 <= queue_io_deq_bits_weights_3; // @[TreePE.scala 48:44]
    REG_2_4 <= queue_io_deq_bits_weights_4; // @[TreePE.scala 48:44]
    io_sample_out_bits_tree_to_exec_REG <= queue_io_deq_bits_tree_to_exec; // @[TreePE.scala 49:49]
    features_bits_0 <= queue_io_deq_bits_features_0; // @[TreePE.scala 57:36]
    features_bits_1 <= queue_io_deq_bits_features_1; // @[TreePE.scala 57:36]
    features_bits_2 <= queue_io_deq_bits_features_2; // @[TreePE.scala 57:36]
    features_bits_3 <= queue_io_deq_bits_features_3; // @[TreePE.scala 57:36]
    features_bits_4 <= queue_io_deq_bits_features_4; // @[TreePE.scala 57:36]
    scores_bits_0 <= queue_io_deq_bits_scores_0; // @[TreePE.scala 58:34]
    scores_bits_1 <= queue_io_deq_bits_scores_1; // @[TreePE.scala 58:34]
    scores_bits_2 <= queue_io_deq_bits_scores_2; // @[TreePE.scala 58:34]
    scores_bits_3 <= queue_io_deq_bits_scores_3; // @[TreePE.scala 58:34]
    scores_bits_4 <= queue_io_deq_bits_scores_4; // @[TreePE.scala 58:34]
    scores_bits_5 <= queue_io_deq_bits_scores_5; // @[TreePE.scala 58:34]
    weights_bits_0 <= queue_io_deq_bits_weights_0; // @[TreePE.scala 59:35]
    weights_bits_1 <= queue_io_deq_bits_weights_1; // @[TreePE.scala 59:35]
    weights_bits_2 <= queue_io_deq_bits_weights_2; // @[TreePE.scala 59:35]
    weights_bits_3 <= queue_io_deq_bits_weights_3; // @[TreePE.scala 59:35]
    weights_bits_4 <= queue_io_deq_bits_weights_4; // @[TreePE.scala 59:35]
    io_sample_out_bits_offset_REG <= queue_io_deq_bits_tree_to_exec; // @[TreePE.scala 62:67]
    io_sample_out_bits_last_REG <= queue_io_deq_bits_last; // @[TreePE.scala 69:43]
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
  REG_1_0 = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  REG_1_1 = _RAND_2[31:0];
  _RAND_3 = {1{`RANDOM}};
  REG_1_2 = _RAND_3[31:0];
  _RAND_4 = {1{`RANDOM}};
  REG_1_3 = _RAND_4[31:0];
  _RAND_5 = {1{`RANDOM}};
  REG_1_4 = _RAND_5[31:0];
  _RAND_6 = {1{`RANDOM}};
  REG_2_0 = _RAND_6[15:0];
  _RAND_7 = {1{`RANDOM}};
  REG_2_1 = _RAND_7[15:0];
  _RAND_8 = {1{`RANDOM}};
  REG_2_2 = _RAND_8[15:0];
  _RAND_9 = {1{`RANDOM}};
  REG_2_3 = _RAND_9[15:0];
  _RAND_10 = {1{`RANDOM}};
  REG_2_4 = _RAND_10[15:0];
  _RAND_11 = {1{`RANDOM}};
  io_sample_out_bits_tree_to_exec_REG = _RAND_11[7:0];
  _RAND_12 = {1{`RANDOM}};
  features_bits_0 = _RAND_12[31:0];
  _RAND_13 = {1{`RANDOM}};
  features_bits_1 = _RAND_13[31:0];
  _RAND_14 = {1{`RANDOM}};
  features_bits_2 = _RAND_14[31:0];
  _RAND_15 = {1{`RANDOM}};
  features_bits_3 = _RAND_15[31:0];
  _RAND_16 = {1{`RANDOM}};
  features_bits_4 = _RAND_16[31:0];
  _RAND_17 = {1{`RANDOM}};
  scores_bits_0 = _RAND_17[15:0];
  _RAND_18 = {1{`RANDOM}};
  scores_bits_1 = _RAND_18[15:0];
  _RAND_19 = {1{`RANDOM}};
  scores_bits_2 = _RAND_19[15:0];
  _RAND_20 = {1{`RANDOM}};
  scores_bits_3 = _RAND_20[15:0];
  _RAND_21 = {1{`RANDOM}};
  scores_bits_4 = _RAND_21[15:0];
  _RAND_22 = {1{`RANDOM}};
  scores_bits_5 = _RAND_22[15:0];
  _RAND_23 = {1{`RANDOM}};
  weights_bits_0 = _RAND_23[15:0];
  _RAND_24 = {1{`RANDOM}};
  weights_bits_1 = _RAND_24[15:0];
  _RAND_25 = {1{`RANDOM}};
  weights_bits_2 = _RAND_25[15:0];
  _RAND_26 = {1{`RANDOM}};
  weights_bits_3 = _RAND_26[15:0];
  _RAND_27 = {1{`RANDOM}};
  weights_bits_4 = _RAND_27[15:0];
  _RAND_28 = {1{`RANDOM}};
  io_sample_out_bits_offset_REG = _RAND_28[7:0];
  _RAND_29 = {1{`RANDOM}};
  io_sample_out_bits_last_REG = _RAND_29[0:0];
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
  input  [31:0] pe_io_sample_in_bits_features_0,
  input  [31:0] pe_io_sample_in_bits_features_1,
  input  [31:0] pe_io_sample_in_bits_features_2,
  input  [31:0] pe_io_sample_in_bits_features_3,
  input  [31:0] pe_io_sample_in_bits_features_4,
  input  [9:0]  pe_io_sample_in_bits_offset,
  input         pe_io_sample_in_bits_shift,
  input         pe_io_sample_in_bits_search_for_root,
  input  [7:0]  pe_io_sample_in_bits_tree_to_exec,
  input  [15:0] pe_io_sample_in_bits_scores_0,
  input  [15:0] pe_io_sample_in_bits_scores_1,
  input  [15:0] pe_io_sample_in_bits_scores_2,
  input  [15:0] pe_io_sample_in_bits_scores_3,
  input  [15:0] pe_io_sample_in_bits_scores_4,
  input  [15:0] pe_io_sample_in_bits_scores_5,
  input  [15:0] pe_io_sample_in_bits_weights_0,
  input  [15:0] pe_io_sample_in_bits_weights_1,
  input  [15:0] pe_io_sample_in_bits_weights_2,
  input  [15:0] pe_io_sample_in_bits_weights_3,
  input  [15:0] pe_io_sample_in_bits_weights_4,
  input         pe_io_sample_in_bits_last,
  output [12:0] pe_io_mem_addr_1,
  input  [63:0] pe_io_mem_dataOut_1,
  input         pe_io_sample_out_ready,
  output        pe_io_sample_out_valid,
  output [31:0] pe_io_sample_out_bits_features_0,
  output [31:0] pe_io_sample_out_bits_features_1,
  output [31:0] pe_io_sample_out_bits_features_2,
  output [31:0] pe_io_sample_out_bits_features_3,
  output [31:0] pe_io_sample_out_bits_features_4,
  output [9:0]  pe_io_sample_out_bits_offset,
  output        pe_io_sample_out_bits_search_for_root,
  output [7:0]  pe_io_sample_out_bits_tree_to_exec,
  output [15:0] pe_io_sample_out_bits_scores_0,
  output [15:0] pe_io_sample_out_bits_scores_1,
  output [15:0] pe_io_sample_out_bits_scores_2,
  output [15:0] pe_io_sample_out_bits_scores_3,
  output [15:0] pe_io_sample_out_bits_scores_4,
  output [15:0] pe_io_sample_out_bits_scores_5,
  output [15:0] pe_io_sample_out_bits_weights_0,
  output [15:0] pe_io_sample_out_bits_weights_1,
  output [15:0] pe_io_sample_out_bits_weights_2,
  output [15:0] pe_io_sample_out_bits_weights_3,
  output [15:0] pe_io_sample_out_bits_weights_4,
  output        pe_io_sample_out_bits_last
);
  wire  pe__clock; // @[TreePE.scala 104:18]
  wire  pe__reset; // @[TreePE.scala 104:18]
  wire  pe__io_sample_in_ready; // @[TreePE.scala 104:18]
  wire  pe__io_sample_in_valid; // @[TreePE.scala 104:18]
  wire [31:0] pe__io_sample_in_bits_features_0; // @[TreePE.scala 104:18]
  wire [31:0] pe__io_sample_in_bits_features_1; // @[TreePE.scala 104:18]
  wire [31:0] pe__io_sample_in_bits_features_2; // @[TreePE.scala 104:18]
  wire [31:0] pe__io_sample_in_bits_features_3; // @[TreePE.scala 104:18]
  wire [31:0] pe__io_sample_in_bits_features_4; // @[TreePE.scala 104:18]
  wire [9:0] pe__io_sample_in_bits_offset; // @[TreePE.scala 104:18]
  wire  pe__io_sample_in_bits_shift; // @[TreePE.scala 104:18]
  wire  pe__io_sample_in_bits_search_for_root; // @[TreePE.scala 104:18]
  wire [7:0] pe__io_sample_in_bits_tree_to_exec; // @[TreePE.scala 104:18]
  wire [15:0] pe__io_sample_in_bits_scores_0; // @[TreePE.scala 104:18]
  wire [15:0] pe__io_sample_in_bits_scores_1; // @[TreePE.scala 104:18]
  wire [15:0] pe__io_sample_in_bits_scores_2; // @[TreePE.scala 104:18]
  wire [15:0] pe__io_sample_in_bits_scores_3; // @[TreePE.scala 104:18]
  wire [15:0] pe__io_sample_in_bits_scores_4; // @[TreePE.scala 104:18]
  wire [15:0] pe__io_sample_in_bits_scores_5; // @[TreePE.scala 104:18]
  wire [15:0] pe__io_sample_in_bits_weights_0; // @[TreePE.scala 104:18]
  wire [15:0] pe__io_sample_in_bits_weights_1; // @[TreePE.scala 104:18]
  wire [15:0] pe__io_sample_in_bits_weights_2; // @[TreePE.scala 104:18]
  wire [15:0] pe__io_sample_in_bits_weights_3; // @[TreePE.scala 104:18]
  wire [15:0] pe__io_sample_in_bits_weights_4; // @[TreePE.scala 104:18]
  wire  pe__io_sample_in_bits_last; // @[TreePE.scala 104:18]
  wire [12:0] pe__io_mem_addr_1; // @[TreePE.scala 104:18]
  wire [63:0] pe__io_mem_dataOut_1; // @[TreePE.scala 104:18]
  wire  pe__io_sample_out_ready; // @[TreePE.scala 104:18]
  wire  pe__io_sample_out_valid; // @[TreePE.scala 104:18]
  wire [31:0] pe__io_sample_out_bits_features_0; // @[TreePE.scala 104:18]
  wire [31:0] pe__io_sample_out_bits_features_1; // @[TreePE.scala 104:18]
  wire [31:0] pe__io_sample_out_bits_features_2; // @[TreePE.scala 104:18]
  wire [31:0] pe__io_sample_out_bits_features_3; // @[TreePE.scala 104:18]
  wire [31:0] pe__io_sample_out_bits_features_4; // @[TreePE.scala 104:18]
  wire [9:0] pe__io_sample_out_bits_offset; // @[TreePE.scala 104:18]
  wire  pe__io_sample_out_bits_search_for_root; // @[TreePE.scala 104:18]
  wire [7:0] pe__io_sample_out_bits_tree_to_exec; // @[TreePE.scala 104:18]
  wire [15:0] pe__io_sample_out_bits_scores_0; // @[TreePE.scala 104:18]
  wire [15:0] pe__io_sample_out_bits_scores_1; // @[TreePE.scala 104:18]
  wire [15:0] pe__io_sample_out_bits_scores_2; // @[TreePE.scala 104:18]
  wire [15:0] pe__io_sample_out_bits_scores_3; // @[TreePE.scala 104:18]
  wire [15:0] pe__io_sample_out_bits_scores_4; // @[TreePE.scala 104:18]
  wire [15:0] pe__io_sample_out_bits_scores_5; // @[TreePE.scala 104:18]
  wire [15:0] pe__io_sample_out_bits_weights_0; // @[TreePE.scala 104:18]
  wire [15:0] pe__io_sample_out_bits_weights_1; // @[TreePE.scala 104:18]
  wire [15:0] pe__io_sample_out_bits_weights_2; // @[TreePE.scala 104:18]
  wire [15:0] pe__io_sample_out_bits_weights_3; // @[TreePE.scala 104:18]
  wire [15:0] pe__io_sample_out_bits_weights_4; // @[TreePE.scala 104:18]
  wire  pe__io_sample_out_bits_last; // @[TreePE.scala 104:18]
  TreePE pe_ ( // @[TreePE.scala 104:18]
    .clock(pe__clock),
    .reset(pe__reset),
    .io_sample_in_ready(pe__io_sample_in_ready),
    .io_sample_in_valid(pe__io_sample_in_valid),
    .io_sample_in_bits_features_0(pe__io_sample_in_bits_features_0),
    .io_sample_in_bits_features_1(pe__io_sample_in_bits_features_1),
    .io_sample_in_bits_features_2(pe__io_sample_in_bits_features_2),
    .io_sample_in_bits_features_3(pe__io_sample_in_bits_features_3),
    .io_sample_in_bits_features_4(pe__io_sample_in_bits_features_4),
    .io_sample_in_bits_offset(pe__io_sample_in_bits_offset),
    .io_sample_in_bits_shift(pe__io_sample_in_bits_shift),
    .io_sample_in_bits_search_for_root(pe__io_sample_in_bits_search_for_root),
    .io_sample_in_bits_tree_to_exec(pe__io_sample_in_bits_tree_to_exec),
    .io_sample_in_bits_scores_0(pe__io_sample_in_bits_scores_0),
    .io_sample_in_bits_scores_1(pe__io_sample_in_bits_scores_1),
    .io_sample_in_bits_scores_2(pe__io_sample_in_bits_scores_2),
    .io_sample_in_bits_scores_3(pe__io_sample_in_bits_scores_3),
    .io_sample_in_bits_scores_4(pe__io_sample_in_bits_scores_4),
    .io_sample_in_bits_scores_5(pe__io_sample_in_bits_scores_5),
    .io_sample_in_bits_weights_0(pe__io_sample_in_bits_weights_0),
    .io_sample_in_bits_weights_1(pe__io_sample_in_bits_weights_1),
    .io_sample_in_bits_weights_2(pe__io_sample_in_bits_weights_2),
    .io_sample_in_bits_weights_3(pe__io_sample_in_bits_weights_3),
    .io_sample_in_bits_weights_4(pe__io_sample_in_bits_weights_4),
    .io_sample_in_bits_last(pe__io_sample_in_bits_last),
    .io_mem_addr_1(pe__io_mem_addr_1),
    .io_mem_dataOut_1(pe__io_mem_dataOut_1),
    .io_sample_out_ready(pe__io_sample_out_ready),
    .io_sample_out_valid(pe__io_sample_out_valid),
    .io_sample_out_bits_features_0(pe__io_sample_out_bits_features_0),
    .io_sample_out_bits_features_1(pe__io_sample_out_bits_features_1),
    .io_sample_out_bits_features_2(pe__io_sample_out_bits_features_2),
    .io_sample_out_bits_features_3(pe__io_sample_out_bits_features_3),
    .io_sample_out_bits_features_4(pe__io_sample_out_bits_features_4),
    .io_sample_out_bits_offset(pe__io_sample_out_bits_offset),
    .io_sample_out_bits_search_for_root(pe__io_sample_out_bits_search_for_root),
    .io_sample_out_bits_tree_to_exec(pe__io_sample_out_bits_tree_to_exec),
    .io_sample_out_bits_scores_0(pe__io_sample_out_bits_scores_0),
    .io_sample_out_bits_scores_1(pe__io_sample_out_bits_scores_1),
    .io_sample_out_bits_scores_2(pe__io_sample_out_bits_scores_2),
    .io_sample_out_bits_scores_3(pe__io_sample_out_bits_scores_3),
    .io_sample_out_bits_scores_4(pe__io_sample_out_bits_scores_4),
    .io_sample_out_bits_scores_5(pe__io_sample_out_bits_scores_5),
    .io_sample_out_bits_weights_0(pe__io_sample_out_bits_weights_0),
    .io_sample_out_bits_weights_1(pe__io_sample_out_bits_weights_1),
    .io_sample_out_bits_weights_2(pe__io_sample_out_bits_weights_2),
    .io_sample_out_bits_weights_3(pe__io_sample_out_bits_weights_3),
    .io_sample_out_bits_weights_4(pe__io_sample_out_bits_weights_4),
    .io_sample_out_bits_last(pe__io_sample_out_bits_last)
  );
  assign pe_io_sample_in_ready = pe__io_sample_in_ready; // @[TreePE.scala 106:9]
  assign pe_io_mem_addr_1 = pe__io_mem_addr_1; // @[TreePE.scala 106:9]
  assign pe_io_sample_out_valid = pe__io_sample_out_valid; // @[TreePE.scala 106:9]
  assign pe_io_sample_out_bits_features_0 = pe__io_sample_out_bits_features_0; // @[TreePE.scala 106:9]
  assign pe_io_sample_out_bits_features_1 = pe__io_sample_out_bits_features_1; // @[TreePE.scala 106:9]
  assign pe_io_sample_out_bits_features_2 = pe__io_sample_out_bits_features_2; // @[TreePE.scala 106:9]
  assign pe_io_sample_out_bits_features_3 = pe__io_sample_out_bits_features_3; // @[TreePE.scala 106:9]
  assign pe_io_sample_out_bits_features_4 = pe__io_sample_out_bits_features_4; // @[TreePE.scala 106:9]
  assign pe_io_sample_out_bits_offset = pe__io_sample_out_bits_offset; // @[TreePE.scala 106:9]
  assign pe_io_sample_out_bits_search_for_root = pe__io_sample_out_bits_search_for_root; // @[TreePE.scala 106:9]
  assign pe_io_sample_out_bits_tree_to_exec = pe__io_sample_out_bits_tree_to_exec; // @[TreePE.scala 106:9]
  assign pe_io_sample_out_bits_scores_0 = pe__io_sample_out_bits_scores_0; // @[TreePE.scala 106:9]
  assign pe_io_sample_out_bits_scores_1 = pe__io_sample_out_bits_scores_1; // @[TreePE.scala 106:9]
  assign pe_io_sample_out_bits_scores_2 = pe__io_sample_out_bits_scores_2; // @[TreePE.scala 106:9]
  assign pe_io_sample_out_bits_scores_3 = pe__io_sample_out_bits_scores_3; // @[TreePE.scala 106:9]
  assign pe_io_sample_out_bits_scores_4 = pe__io_sample_out_bits_scores_4; // @[TreePE.scala 106:9]
  assign pe_io_sample_out_bits_scores_5 = pe__io_sample_out_bits_scores_5; // @[TreePE.scala 106:9]
  assign pe_io_sample_out_bits_weights_0 = pe__io_sample_out_bits_weights_0; // @[TreePE.scala 106:9]
  assign pe_io_sample_out_bits_weights_1 = pe__io_sample_out_bits_weights_1; // @[TreePE.scala 106:9]
  assign pe_io_sample_out_bits_weights_2 = pe__io_sample_out_bits_weights_2; // @[TreePE.scala 106:9]
  assign pe_io_sample_out_bits_weights_3 = pe__io_sample_out_bits_weights_3; // @[TreePE.scala 106:9]
  assign pe_io_sample_out_bits_weights_4 = pe__io_sample_out_bits_weights_4; // @[TreePE.scala 106:9]
  assign pe_io_sample_out_bits_last = pe__io_sample_out_bits_last; // @[TreePE.scala 106:9]
  assign pe__clock = clock;
  assign pe__reset = reset;
  assign pe__io_sample_in_valid = pe_io_sample_in_valid; // @[TreePE.scala 106:9]
  assign pe__io_sample_in_bits_features_0 = pe_io_sample_in_bits_features_0; // @[TreePE.scala 106:9]
  assign pe__io_sample_in_bits_features_1 = pe_io_sample_in_bits_features_1; // @[TreePE.scala 106:9]
  assign pe__io_sample_in_bits_features_2 = pe_io_sample_in_bits_features_2; // @[TreePE.scala 106:9]
  assign pe__io_sample_in_bits_features_3 = pe_io_sample_in_bits_features_3; // @[TreePE.scala 106:9]
  assign pe__io_sample_in_bits_features_4 = pe_io_sample_in_bits_features_4; // @[TreePE.scala 106:9]
  assign pe__io_sample_in_bits_offset = pe_io_sample_in_bits_offset; // @[TreePE.scala 106:9]
  assign pe__io_sample_in_bits_shift = pe_io_sample_in_bits_shift; // @[TreePE.scala 106:9]
  assign pe__io_sample_in_bits_search_for_root = pe_io_sample_in_bits_search_for_root; // @[TreePE.scala 106:9]
  assign pe__io_sample_in_bits_tree_to_exec = pe_io_sample_in_bits_tree_to_exec; // @[TreePE.scala 106:9]
  assign pe__io_sample_in_bits_scores_0 = pe_io_sample_in_bits_scores_0; // @[TreePE.scala 106:9]
  assign pe__io_sample_in_bits_scores_1 = pe_io_sample_in_bits_scores_1; // @[TreePE.scala 106:9]
  assign pe__io_sample_in_bits_scores_2 = pe_io_sample_in_bits_scores_2; // @[TreePE.scala 106:9]
  assign pe__io_sample_in_bits_scores_3 = pe_io_sample_in_bits_scores_3; // @[TreePE.scala 106:9]
  assign pe__io_sample_in_bits_scores_4 = pe_io_sample_in_bits_scores_4; // @[TreePE.scala 106:9]
  assign pe__io_sample_in_bits_scores_5 = pe_io_sample_in_bits_scores_5; // @[TreePE.scala 106:9]
  assign pe__io_sample_in_bits_weights_0 = pe_io_sample_in_bits_weights_0; // @[TreePE.scala 106:9]
  assign pe__io_sample_in_bits_weights_1 = pe_io_sample_in_bits_weights_1; // @[TreePE.scala 106:9]
  assign pe__io_sample_in_bits_weights_2 = pe_io_sample_in_bits_weights_2; // @[TreePE.scala 106:9]
  assign pe__io_sample_in_bits_weights_3 = pe_io_sample_in_bits_weights_3; // @[TreePE.scala 106:9]
  assign pe__io_sample_in_bits_weights_4 = pe_io_sample_in_bits_weights_4; // @[TreePE.scala 106:9]
  assign pe__io_sample_in_bits_last = pe_io_sample_in_bits_last; // @[TreePE.scala 106:9]
  assign pe__io_mem_dataOut_1 = pe_io_mem_dataOut_1; // @[TreePE.scala 106:9]
  assign pe__io_sample_out_ready = pe_io_sample_out_ready; // @[TreePE.scala 106:9]
endmodule
module TreePE_1(
  input         clock,
  input         reset,
  output        io_sample_in_ready,
  input         io_sample_in_valid,
  input  [31:0] io_sample_in_bits_features_0,
  input  [31:0] io_sample_in_bits_features_1,
  input  [31:0] io_sample_in_bits_features_2,
  input  [31:0] io_sample_in_bits_features_3,
  input  [31:0] io_sample_in_bits_features_4,
  input  [9:0]  io_sample_in_bits_offset,
  input         io_sample_in_bits_search_for_root,
  input  [7:0]  io_sample_in_bits_tree_to_exec,
  input  [15:0] io_sample_in_bits_scores_0,
  input  [15:0] io_sample_in_bits_scores_1,
  input  [15:0] io_sample_in_bits_scores_2,
  input  [15:0] io_sample_in_bits_scores_3,
  input  [15:0] io_sample_in_bits_scores_4,
  input  [15:0] io_sample_in_bits_scores_5,
  input  [15:0] io_sample_in_bits_weights_0,
  input  [15:0] io_sample_in_bits_weights_1,
  input  [15:0] io_sample_in_bits_weights_2,
  input  [15:0] io_sample_in_bits_weights_3,
  input  [15:0] io_sample_in_bits_weights_4,
  input         io_sample_in_bits_last,
  output [12:0] io_mem_addr_1,
  input  [63:0] io_mem_dataOut_1,
  input         io_sample_out_ready,
  output        io_sample_out_valid,
  output [31:0] io_sample_out_bits_features_0,
  output [31:0] io_sample_out_bits_features_1,
  output [31:0] io_sample_out_bits_features_2,
  output [31:0] io_sample_out_bits_features_3,
  output [31:0] io_sample_out_bits_features_4,
  output [9:0]  io_sample_out_bits_offset,
  output        io_sample_out_bits_search_for_root,
  output [7:0]  io_sample_out_bits_tree_to_exec,
  output [15:0] io_sample_out_bits_scores_0,
  output [15:0] io_sample_out_bits_scores_1,
  output [15:0] io_sample_out_bits_scores_2,
  output [15:0] io_sample_out_bits_scores_3,
  output [15:0] io_sample_out_bits_scores_4,
  output [15:0] io_sample_out_bits_scores_5,
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
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
  reg [31:0] _RAND_33;
  reg [31:0] _RAND_34;
  reg [31:0] _RAND_35;
  reg [31:0] _RAND_36;
  reg [31:0] _RAND_37;
  reg [31:0] _RAND_38;
`endif // RANDOMIZE_REG_INIT
  wire  queue_clock; // @[Decoupled.scala 377:21]
  wire  queue_reset; // @[Decoupled.scala 377:21]
  wire  queue_io_enq_ready; // @[Decoupled.scala 377:21]
  wire  queue_io_enq_valid; // @[Decoupled.scala 377:21]
  wire [31:0] queue_io_enq_bits_features_0; // @[Decoupled.scala 377:21]
  wire [31:0] queue_io_enq_bits_features_1; // @[Decoupled.scala 377:21]
  wire [31:0] queue_io_enq_bits_features_2; // @[Decoupled.scala 377:21]
  wire [31:0] queue_io_enq_bits_features_3; // @[Decoupled.scala 377:21]
  wire [31:0] queue_io_enq_bits_features_4; // @[Decoupled.scala 377:21]
  wire [9:0] queue_io_enq_bits_offset; // @[Decoupled.scala 377:21]
  wire  queue_io_enq_bits_shift; // @[Decoupled.scala 377:21]
  wire  queue_io_enq_bits_search_for_root; // @[Decoupled.scala 377:21]
  wire [7:0] queue_io_enq_bits_tree_to_exec; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_scores_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_scores_1; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_scores_2; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_scores_3; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_scores_4; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_scores_5; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_weights_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_weights_1; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_weights_2; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_weights_3; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_weights_4; // @[Decoupled.scala 377:21]
  wire  queue_io_enq_bits_last; // @[Decoupled.scala 377:21]
  wire  queue_io_deq_ready; // @[Decoupled.scala 377:21]
  wire  queue_io_deq_valid; // @[Decoupled.scala 377:21]
  wire [31:0] queue_io_deq_bits_features_0; // @[Decoupled.scala 377:21]
  wire [31:0] queue_io_deq_bits_features_1; // @[Decoupled.scala 377:21]
  wire [31:0] queue_io_deq_bits_features_2; // @[Decoupled.scala 377:21]
  wire [31:0] queue_io_deq_bits_features_3; // @[Decoupled.scala 377:21]
  wire [31:0] queue_io_deq_bits_features_4; // @[Decoupled.scala 377:21]
  wire [9:0] queue_io_deq_bits_offset; // @[Decoupled.scala 377:21]
  wire  queue_io_deq_bits_shift; // @[Decoupled.scala 377:21]
  wire  queue_io_deq_bits_search_for_root; // @[Decoupled.scala 377:21]
  wire [7:0] queue_io_deq_bits_tree_to_exec; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_scores_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_scores_1; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_scores_2; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_scores_3; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_scores_4; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_scores_5; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_weights_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_weights_1; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_weights_2; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_weights_3; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_weights_4; // @[Decoupled.scala 377:21]
  wire  queue_io_deq_bits_last; // @[Decoupled.scala 377:21]
  reg  REG; // @[TreePE.scala 35:17]
  wire [2:0] attr_id = io_mem_dataOut_1[34:32]; // @[TreePE.scala 37:37]
  wire [9:0] leftChildInfo = io_mem_dataOut_1[44:35]; // @[TreePE.scala 40:43]
  wire [9:0] rightChildInfo = io_mem_dataOut_1[54:45]; // @[TreePE.scala 41:44]
  wire  leftChildType = io_mem_dataOut_1[55]; // @[TreePE.scala 42:43]
  wire  rightChildType = io_mem_dataOut_1[56]; // @[TreePE.scala 43:44]
  wire  is_valid = io_mem_dataOut_1[57]; // @[TreePE.scala 44:38]
  wire [2:0] depth_indicator = io_mem_dataOut_1[60:58]; // @[TreePE.scala 45:45]
  reg [31:0] REG_1_0; // @[TreePE.scala 47:45]
  reg [31:0] REG_1_1; // @[TreePE.scala 47:45]
  reg [31:0] REG_1_2; // @[TreePE.scala 47:45]
  reg [31:0] REG_1_3; // @[TreePE.scala 47:45]
  reg [31:0] REG_1_4; // @[TreePE.scala 47:45]
  reg [15:0] REG_2_0; // @[TreePE.scala 48:44]
  reg [15:0] REG_2_1; // @[TreePE.scala 48:44]
  reg [15:0] REG_2_2; // @[TreePE.scala 48:44]
  reg [15:0] REG_2_3; // @[TreePE.scala 48:44]
  reg [15:0] REG_2_4; // @[TreePE.scala 48:44]
  reg [7:0] io_sample_out_bits_tree_to_exec_REG; // @[TreePE.scala 49:49]
  reg [31:0] features_bits_0; // @[TreePE.scala 73:36]
  reg [31:0] features_bits_1; // @[TreePE.scala 73:36]
  reg [31:0] features_bits_2; // @[TreePE.scala 73:36]
  reg [31:0] features_bits_3; // @[TreePE.scala 73:36]
  reg [31:0] features_bits_4; // @[TreePE.scala 73:36]
  reg [15:0] scores_bits_0; // @[TreePE.scala 74:34]
  reg [15:0] scores_bits_1; // @[TreePE.scala 74:34]
  reg [15:0] scores_bits_2; // @[TreePE.scala 74:34]
  reg [15:0] scores_bits_3; // @[TreePE.scala 74:34]
  reg [15:0] scores_bits_4; // @[TreePE.scala 74:34]
  reg [15:0] scores_bits_5; // @[TreePE.scala 74:34]
  reg [15:0] weights_bits_0; // @[TreePE.scala 75:35]
  reg [15:0] weights_bits_1; // @[TreePE.scala 75:35]
  reg [15:0] weights_bits_2; // @[TreePE.scala 75:35]
  reg [15:0] weights_bits_3; // @[TreePE.scala 75:35]
  reg [15:0] weights_bits_4; // @[TreePE.scala 75:35]
  wire [15:0] _shift_T = io_mem_dataOut_1[15:0]; // @[TreePE.scala 76:69]
  wire [31:0] _GEN_1 = 3'h1 == attr_id ? $signed(features_bits_1) : $signed(features_bits_0); // @[TreePE.scala 76:{45,45}]
  wire [31:0] _GEN_2 = 3'h2 == attr_id ? $signed(features_bits_2) : $signed(_GEN_1); // @[TreePE.scala 76:{45,45}]
  wire [31:0] _GEN_3 = 3'h3 == attr_id ? $signed(features_bits_3) : $signed(_GEN_2); // @[TreePE.scala 76:{45,45}]
  wire [31:0] _GEN_4 = 3'h4 == attr_id ? $signed(features_bits_4) : $signed(_GEN_3); // @[TreePE.scala 76:{45,45}]
  wire [23:0] _GEN_28 = {$signed(_shift_T), 8'h0}; // @[TreePE.scala 76:45]
  wire [31:0] _GEN_34 = {{8{_GEN_28[23]}},_GEN_28}; // @[TreePE.scala 76:45]
  wire  _shift_T_1 = $signed(_GEN_4) < $signed(_GEN_34); // @[TreePE.scala 76:45]
  wire  shift = $signed(_GEN_4) < $signed(_GEN_34) ? leftChildType : rightChildType; // @[TreePE.scala 76:21]
  wire [9:0] offset = _shift_T_1 ? leftChildInfo : rightChildInfo; // @[TreePE.scala 77:22]
  wire  _io_sample_out_bits_offset_T = ~shift; // @[TreePE.scala 78:48]
  reg  io_sample_out_bits_offset_REG; // @[TreePE.scala 78:70]
  reg [7:0] io_sample_out_bits_offset_REG_1; // @[TreePE.scala 78:106]
  reg  io_sample_out_bits_search_for_root_REG; // @[TreePE.scala 80:64]
  reg  io_sample_out_bits_scores_0_REG; // @[TreePE.scala 82:74]
  wire [15:0] _GEN_6 = 3'h1 == depth_indicator ? $signed(weights_bits_1) : $signed(weights_bits_0); // @[TreePE.scala 82:{190,190}]
  wire [15:0] _GEN_7 = 3'h2 == depth_indicator ? $signed(weights_bits_2) : $signed(_GEN_6); // @[TreePE.scala 82:{190,190}]
  wire [15:0] _GEN_8 = 3'h3 == depth_indicator ? $signed(weights_bits_3) : $signed(_GEN_7); // @[TreePE.scala 82:{190,190}]
  wire [15:0] _io_sample_out_bits_scores_0_T_6 = 3'h4 == depth_indicator ? $signed(weights_bits_4) : $signed(_GEN_8); // @[TreePE.scala 82:190]
  wire [15:0] _io_sample_out_bits_scores_0_T_8 = ~io_sample_out_bits_scores_0_REG & _io_sample_out_bits_offset_T &
    is_valid & 10'h0 == offset ? _io_sample_out_bits_scores_0_T_6 : 16'h0; // @[TreePE.scala 82:217]
  reg  io_sample_out_bits_scores_1_REG; // @[TreePE.scala 82:74]
  wire [15:0] _io_sample_out_bits_scores_1_T_8 = ~io_sample_out_bits_scores_1_REG & _io_sample_out_bits_offset_T &
    is_valid & 10'h1 == offset ? _io_sample_out_bits_scores_0_T_6 : 16'h0; // @[TreePE.scala 82:217]
  reg  io_sample_out_bits_scores_2_REG; // @[TreePE.scala 82:74]
  wire [15:0] _io_sample_out_bits_scores_2_T_8 = ~io_sample_out_bits_scores_2_REG & _io_sample_out_bits_offset_T &
    is_valid & 10'h2 == offset ? _io_sample_out_bits_scores_0_T_6 : 16'h0; // @[TreePE.scala 82:217]
  reg  io_sample_out_bits_scores_3_REG; // @[TreePE.scala 82:74]
  wire [15:0] _io_sample_out_bits_scores_3_T_8 = ~io_sample_out_bits_scores_3_REG & _io_sample_out_bits_offset_T &
    is_valid & 10'h3 == offset ? _io_sample_out_bits_scores_0_T_6 : 16'h0; // @[TreePE.scala 82:217]
  reg  io_sample_out_bits_scores_4_REG; // @[TreePE.scala 82:74]
  wire [15:0] _io_sample_out_bits_scores_4_T_8 = ~io_sample_out_bits_scores_4_REG & _io_sample_out_bits_offset_T &
    is_valid & 10'h4 == offset ? _io_sample_out_bits_scores_0_T_6 : 16'h0; // @[TreePE.scala 82:217]
  reg  io_sample_out_bits_scores_5_REG; // @[TreePE.scala 82:74]
  wire [15:0] _io_sample_out_bits_scores_5_T_8 = ~io_sample_out_bits_scores_5_REG & _io_sample_out_bits_offset_T &
    is_valid & 10'h5 == offset ? _io_sample_out_bits_scores_0_T_6 : 16'h0; // @[TreePE.scala 82:217]
  reg [7:0] io_sample_out_bits_dest_REG; // @[TreePE.scala 84:43]
  reg  io_sample_out_bits_last_REG; // @[TreePE.scala 85:43]
  Queue_3 queue ( // @[Decoupled.scala 377:21]
    .clock(queue_clock),
    .reset(queue_reset),
    .io_enq_ready(queue_io_enq_ready),
    .io_enq_valid(queue_io_enq_valid),
    .io_enq_bits_features_0(queue_io_enq_bits_features_0),
    .io_enq_bits_features_1(queue_io_enq_bits_features_1),
    .io_enq_bits_features_2(queue_io_enq_bits_features_2),
    .io_enq_bits_features_3(queue_io_enq_bits_features_3),
    .io_enq_bits_features_4(queue_io_enq_bits_features_4),
    .io_enq_bits_offset(queue_io_enq_bits_offset),
    .io_enq_bits_shift(queue_io_enq_bits_shift),
    .io_enq_bits_search_for_root(queue_io_enq_bits_search_for_root),
    .io_enq_bits_tree_to_exec(queue_io_enq_bits_tree_to_exec),
    .io_enq_bits_scores_0(queue_io_enq_bits_scores_0),
    .io_enq_bits_scores_1(queue_io_enq_bits_scores_1),
    .io_enq_bits_scores_2(queue_io_enq_bits_scores_2),
    .io_enq_bits_scores_3(queue_io_enq_bits_scores_3),
    .io_enq_bits_scores_4(queue_io_enq_bits_scores_4),
    .io_enq_bits_scores_5(queue_io_enq_bits_scores_5),
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
    .io_deq_bits_features_4(queue_io_deq_bits_features_4),
    .io_deq_bits_offset(queue_io_deq_bits_offset),
    .io_deq_bits_shift(queue_io_deq_bits_shift),
    .io_deq_bits_search_for_root(queue_io_deq_bits_search_for_root),
    .io_deq_bits_tree_to_exec(queue_io_deq_bits_tree_to_exec),
    .io_deq_bits_scores_0(queue_io_deq_bits_scores_0),
    .io_deq_bits_scores_1(queue_io_deq_bits_scores_1),
    .io_deq_bits_scores_2(queue_io_deq_bits_scores_2),
    .io_deq_bits_scores_3(queue_io_deq_bits_scores_3),
    .io_deq_bits_scores_4(queue_io_deq_bits_scores_4),
    .io_deq_bits_scores_5(queue_io_deq_bits_scores_5),
    .io_deq_bits_weights_0(queue_io_deq_bits_weights_0),
    .io_deq_bits_weights_1(queue_io_deq_bits_weights_1),
    .io_deq_bits_weights_2(queue_io_deq_bits_weights_2),
    .io_deq_bits_weights_3(queue_io_deq_bits_weights_3),
    .io_deq_bits_weights_4(queue_io_deq_bits_weights_4),
    .io_deq_bits_last(queue_io_deq_bits_last)
  );
  assign io_sample_in_ready = queue_io_enq_ready; // @[Decoupled.scala 381:17]
  assign io_mem_addr_1 = {{3'd0}, queue_io_deq_bits_offset}; // @[TreePE.scala 24:19]
  assign io_sample_out_valid = REG; // @[TreePE.scala 35:31 51:27 89:27]
  assign io_sample_out_bits_features_0 = REG_1_0; // @[TreePE.scala 35:31 47:35]
  assign io_sample_out_bits_features_1 = REG_1_1; // @[TreePE.scala 35:31 47:35]
  assign io_sample_out_bits_features_2 = REG_1_2; // @[TreePE.scala 35:31 47:35]
  assign io_sample_out_bits_features_3 = REG_1_3; // @[TreePE.scala 35:31 47:35]
  assign io_sample_out_bits_features_4 = REG_1_4; // @[TreePE.scala 35:31 47:35]
  assign io_sample_out_bits_offset = ~shift | io_sample_out_bits_offset_REG ? {{2'd0}, io_sample_out_bits_offset_REG_1}
     : offset; // @[TreePE.scala 78:41]
  assign io_sample_out_bits_search_for_root = _io_sample_out_bits_offset_T | io_sample_out_bits_search_for_root_REG; // @[TreePE.scala 80:54]
  assign io_sample_out_bits_tree_to_exec = io_sample_out_bits_tree_to_exec_REG; // @[TreePE.scala 35:31 49:39]
  assign io_sample_out_bits_scores_0 = $signed(scores_bits_0) + $signed(_io_sample_out_bits_scores_0_T_8); // @[TreePE.scala 82:58]
  assign io_sample_out_bits_scores_1 = $signed(scores_bits_1) + $signed(_io_sample_out_bits_scores_1_T_8); // @[TreePE.scala 82:58]
  assign io_sample_out_bits_scores_2 = $signed(scores_bits_2) + $signed(_io_sample_out_bits_scores_2_T_8); // @[TreePE.scala 82:58]
  assign io_sample_out_bits_scores_3 = $signed(scores_bits_3) + $signed(_io_sample_out_bits_scores_3_T_8); // @[TreePE.scala 82:58]
  assign io_sample_out_bits_scores_4 = $signed(scores_bits_4) + $signed(_io_sample_out_bits_scores_4_T_8); // @[TreePE.scala 82:58]
  assign io_sample_out_bits_scores_5 = $signed(scores_bits_5) + $signed(_io_sample_out_bits_scores_5_T_8); // @[TreePE.scala 82:58]
  assign io_sample_out_bits_weights_0 = REG_2_0; // @[TreePE.scala 35:31 48:34]
  assign io_sample_out_bits_weights_1 = REG_2_1; // @[TreePE.scala 35:31 48:34]
  assign io_sample_out_bits_weights_2 = REG_2_2; // @[TreePE.scala 35:31 48:34]
  assign io_sample_out_bits_weights_3 = REG_2_3; // @[TreePE.scala 35:31 48:34]
  assign io_sample_out_bits_weights_4 = REG_2_4; // @[TreePE.scala 35:31 48:34]
  assign io_sample_out_bits_dest = io_sample_out_bits_dest_REG == 8'h63; // @[TreePE.scala 84:69]
  assign io_sample_out_bits_last = io_sample_out_bits_last_REG; // @[TreePE.scala 35:31 85:33]
  assign queue_clock = clock;
  assign queue_reset = reset;
  assign queue_io_enq_valid = io_sample_in_valid; // @[Decoupled.scala 379:22]
  assign queue_io_enq_bits_features_0 = io_sample_in_bits_features_0; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_features_1 = io_sample_in_bits_features_1; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_features_2 = io_sample_in_bits_features_2; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_features_3 = io_sample_in_bits_features_3; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_features_4 = io_sample_in_bits_features_4; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_offset = io_sample_in_bits_offset; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_shift = 1'h0; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_search_for_root = io_sample_in_bits_search_for_root; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_tree_to_exec = io_sample_in_bits_tree_to_exec; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_scores_0 = io_sample_in_bits_scores_0; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_scores_1 = io_sample_in_bits_scores_1; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_scores_2 = io_sample_in_bits_scores_2; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_scores_3 = io_sample_in_bits_scores_3; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_scores_4 = io_sample_in_bits_scores_4; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_scores_5 = io_sample_in_bits_scores_5; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_weights_0 = io_sample_in_bits_weights_0; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_weights_1 = io_sample_in_bits_weights_1; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_weights_2 = io_sample_in_bits_weights_2; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_weights_3 = io_sample_in_bits_weights_3; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_weights_4 = io_sample_in_bits_weights_4; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_last = io_sample_in_bits_last; // @[Decoupled.scala 380:21]
  assign queue_io_deq_ready = io_sample_out_ready; // @[TreePE.scala 92:17]
  always @(posedge clock) begin
    REG <= queue_io_deq_valid; // @[TreePE.scala 35:17]
    REG_1_0 <= queue_io_deq_bits_features_0; // @[TreePE.scala 47:45]
    REG_1_1 <= queue_io_deq_bits_features_1; // @[TreePE.scala 47:45]
    REG_1_2 <= queue_io_deq_bits_features_2; // @[TreePE.scala 47:45]
    REG_1_3 <= queue_io_deq_bits_features_3; // @[TreePE.scala 47:45]
    REG_1_4 <= queue_io_deq_bits_features_4; // @[TreePE.scala 47:45]
    REG_2_0 <= queue_io_deq_bits_weights_0; // @[TreePE.scala 48:44]
    REG_2_1 <= queue_io_deq_bits_weights_1; // @[TreePE.scala 48:44]
    REG_2_2 <= queue_io_deq_bits_weights_2; // @[TreePE.scala 48:44]
    REG_2_3 <= queue_io_deq_bits_weights_3; // @[TreePE.scala 48:44]
    REG_2_4 <= queue_io_deq_bits_weights_4; // @[TreePE.scala 48:44]
    io_sample_out_bits_tree_to_exec_REG <= queue_io_deq_bits_tree_to_exec; // @[TreePE.scala 49:49]
    features_bits_0 <= queue_io_deq_bits_features_0; // @[TreePE.scala 73:36]
    features_bits_1 <= queue_io_deq_bits_features_1; // @[TreePE.scala 73:36]
    features_bits_2 <= queue_io_deq_bits_features_2; // @[TreePE.scala 73:36]
    features_bits_3 <= queue_io_deq_bits_features_3; // @[TreePE.scala 73:36]
    features_bits_4 <= queue_io_deq_bits_features_4; // @[TreePE.scala 73:36]
    scores_bits_0 <= queue_io_deq_bits_scores_0; // @[TreePE.scala 74:34]
    scores_bits_1 <= queue_io_deq_bits_scores_1; // @[TreePE.scala 74:34]
    scores_bits_2 <= queue_io_deq_bits_scores_2; // @[TreePE.scala 74:34]
    scores_bits_3 <= queue_io_deq_bits_scores_3; // @[TreePE.scala 74:34]
    scores_bits_4 <= queue_io_deq_bits_scores_4; // @[TreePE.scala 74:34]
    scores_bits_5 <= queue_io_deq_bits_scores_5; // @[TreePE.scala 74:34]
    weights_bits_0 <= queue_io_deq_bits_weights_0; // @[TreePE.scala 75:35]
    weights_bits_1 <= queue_io_deq_bits_weights_1; // @[TreePE.scala 75:35]
    weights_bits_2 <= queue_io_deq_bits_weights_2; // @[TreePE.scala 75:35]
    weights_bits_3 <= queue_io_deq_bits_weights_3; // @[TreePE.scala 75:35]
    weights_bits_4 <= queue_io_deq_bits_weights_4; // @[TreePE.scala 75:35]
    io_sample_out_bits_offset_REG <= queue_io_deq_bits_search_for_root; // @[TreePE.scala 78:70]
    io_sample_out_bits_offset_REG_1 <= queue_io_deq_bits_tree_to_exec; // @[TreePE.scala 78:106]
    io_sample_out_bits_search_for_root_REG <= queue_io_deq_bits_search_for_root; // @[TreePE.scala 80:64]
    io_sample_out_bits_scores_0_REG <= queue_io_deq_bits_search_for_root; // @[TreePE.scala 82:74]
    io_sample_out_bits_scores_1_REG <= queue_io_deq_bits_search_for_root; // @[TreePE.scala 82:74]
    io_sample_out_bits_scores_2_REG <= queue_io_deq_bits_search_for_root; // @[TreePE.scala 82:74]
    io_sample_out_bits_scores_3_REG <= queue_io_deq_bits_search_for_root; // @[TreePE.scala 82:74]
    io_sample_out_bits_scores_4_REG <= queue_io_deq_bits_search_for_root; // @[TreePE.scala 82:74]
    io_sample_out_bits_scores_5_REG <= queue_io_deq_bits_search_for_root; // @[TreePE.scala 82:74]
    io_sample_out_bits_dest_REG <= queue_io_deq_bits_tree_to_exec; // @[TreePE.scala 84:43]
    io_sample_out_bits_last_REG <= queue_io_deq_bits_last; // @[TreePE.scala 85:43]
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
  REG_1_0 = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  REG_1_1 = _RAND_2[31:0];
  _RAND_3 = {1{`RANDOM}};
  REG_1_2 = _RAND_3[31:0];
  _RAND_4 = {1{`RANDOM}};
  REG_1_3 = _RAND_4[31:0];
  _RAND_5 = {1{`RANDOM}};
  REG_1_4 = _RAND_5[31:0];
  _RAND_6 = {1{`RANDOM}};
  REG_2_0 = _RAND_6[15:0];
  _RAND_7 = {1{`RANDOM}};
  REG_2_1 = _RAND_7[15:0];
  _RAND_8 = {1{`RANDOM}};
  REG_2_2 = _RAND_8[15:0];
  _RAND_9 = {1{`RANDOM}};
  REG_2_3 = _RAND_9[15:0];
  _RAND_10 = {1{`RANDOM}};
  REG_2_4 = _RAND_10[15:0];
  _RAND_11 = {1{`RANDOM}};
  io_sample_out_bits_tree_to_exec_REG = _RAND_11[7:0];
  _RAND_12 = {1{`RANDOM}};
  features_bits_0 = _RAND_12[31:0];
  _RAND_13 = {1{`RANDOM}};
  features_bits_1 = _RAND_13[31:0];
  _RAND_14 = {1{`RANDOM}};
  features_bits_2 = _RAND_14[31:0];
  _RAND_15 = {1{`RANDOM}};
  features_bits_3 = _RAND_15[31:0];
  _RAND_16 = {1{`RANDOM}};
  features_bits_4 = _RAND_16[31:0];
  _RAND_17 = {1{`RANDOM}};
  scores_bits_0 = _RAND_17[15:0];
  _RAND_18 = {1{`RANDOM}};
  scores_bits_1 = _RAND_18[15:0];
  _RAND_19 = {1{`RANDOM}};
  scores_bits_2 = _RAND_19[15:0];
  _RAND_20 = {1{`RANDOM}};
  scores_bits_3 = _RAND_20[15:0];
  _RAND_21 = {1{`RANDOM}};
  scores_bits_4 = _RAND_21[15:0];
  _RAND_22 = {1{`RANDOM}};
  scores_bits_5 = _RAND_22[15:0];
  _RAND_23 = {1{`RANDOM}};
  weights_bits_0 = _RAND_23[15:0];
  _RAND_24 = {1{`RANDOM}};
  weights_bits_1 = _RAND_24[15:0];
  _RAND_25 = {1{`RANDOM}};
  weights_bits_2 = _RAND_25[15:0];
  _RAND_26 = {1{`RANDOM}};
  weights_bits_3 = _RAND_26[15:0];
  _RAND_27 = {1{`RANDOM}};
  weights_bits_4 = _RAND_27[15:0];
  _RAND_28 = {1{`RANDOM}};
  io_sample_out_bits_offset_REG = _RAND_28[0:0];
  _RAND_29 = {1{`RANDOM}};
  io_sample_out_bits_offset_REG_1 = _RAND_29[7:0];
  _RAND_30 = {1{`RANDOM}};
  io_sample_out_bits_search_for_root_REG = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  io_sample_out_bits_scores_0_REG = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  io_sample_out_bits_scores_1_REG = _RAND_32[0:0];
  _RAND_33 = {1{`RANDOM}};
  io_sample_out_bits_scores_2_REG = _RAND_33[0:0];
  _RAND_34 = {1{`RANDOM}};
  io_sample_out_bits_scores_3_REG = _RAND_34[0:0];
  _RAND_35 = {1{`RANDOM}};
  io_sample_out_bits_scores_4_REG = _RAND_35[0:0];
  _RAND_36 = {1{`RANDOM}};
  io_sample_out_bits_scores_5_REG = _RAND_36[0:0];
  _RAND_37 = {1{`RANDOM}};
  io_sample_out_bits_dest_REG = _RAND_37[7:0];
  _RAND_38 = {1{`RANDOM}};
  io_sample_out_bits_last_REG = _RAND_38[0:0];
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
  input  [31:0] pe_io_sample_in_bits_features_0,
  input  [31:0] pe_io_sample_in_bits_features_1,
  input  [31:0] pe_io_sample_in_bits_features_2,
  input  [31:0] pe_io_sample_in_bits_features_3,
  input  [31:0] pe_io_sample_in_bits_features_4,
  input  [9:0]  pe_io_sample_in_bits_offset,
  input         pe_io_sample_in_bits_search_for_root,
  input  [7:0]  pe_io_sample_in_bits_tree_to_exec,
  input  [15:0] pe_io_sample_in_bits_scores_0,
  input  [15:0] pe_io_sample_in_bits_scores_1,
  input  [15:0] pe_io_sample_in_bits_scores_2,
  input  [15:0] pe_io_sample_in_bits_scores_3,
  input  [15:0] pe_io_sample_in_bits_scores_4,
  input  [15:0] pe_io_sample_in_bits_scores_5,
  input  [15:0] pe_io_sample_in_bits_weights_0,
  input  [15:0] pe_io_sample_in_bits_weights_1,
  input  [15:0] pe_io_sample_in_bits_weights_2,
  input  [15:0] pe_io_sample_in_bits_weights_3,
  input  [15:0] pe_io_sample_in_bits_weights_4,
  input         pe_io_sample_in_bits_last,
  output [12:0] pe_io_mem_addr_1,
  input  [63:0] pe_io_mem_dataOut_1,
  input         pe_io_sample_out_ready,
  output        pe_io_sample_out_valid,
  output [31:0] pe_io_sample_out_bits_features_0,
  output [31:0] pe_io_sample_out_bits_features_1,
  output [31:0] pe_io_sample_out_bits_features_2,
  output [31:0] pe_io_sample_out_bits_features_3,
  output [31:0] pe_io_sample_out_bits_features_4,
  output [9:0]  pe_io_sample_out_bits_offset,
  output        pe_io_sample_out_bits_search_for_root,
  output [7:0]  pe_io_sample_out_bits_tree_to_exec,
  output [15:0] pe_io_sample_out_bits_scores_0,
  output [15:0] pe_io_sample_out_bits_scores_1,
  output [15:0] pe_io_sample_out_bits_scores_2,
  output [15:0] pe_io_sample_out_bits_scores_3,
  output [15:0] pe_io_sample_out_bits_scores_4,
  output [15:0] pe_io_sample_out_bits_scores_5,
  output [15:0] pe_io_sample_out_bits_weights_0,
  output [15:0] pe_io_sample_out_bits_weights_1,
  output [15:0] pe_io_sample_out_bits_weights_2,
  output [15:0] pe_io_sample_out_bits_weights_3,
  output [15:0] pe_io_sample_out_bits_weights_4,
  output        pe_io_sample_out_bits_dest,
  output        pe_io_sample_out_bits_last
);
  wire  pe__clock; // @[TreePE.scala 104:18]
  wire  pe__reset; // @[TreePE.scala 104:18]
  wire  pe__io_sample_in_ready; // @[TreePE.scala 104:18]
  wire  pe__io_sample_in_valid; // @[TreePE.scala 104:18]
  wire [31:0] pe__io_sample_in_bits_features_0; // @[TreePE.scala 104:18]
  wire [31:0] pe__io_sample_in_bits_features_1; // @[TreePE.scala 104:18]
  wire [31:0] pe__io_sample_in_bits_features_2; // @[TreePE.scala 104:18]
  wire [31:0] pe__io_sample_in_bits_features_3; // @[TreePE.scala 104:18]
  wire [31:0] pe__io_sample_in_bits_features_4; // @[TreePE.scala 104:18]
  wire [9:0] pe__io_sample_in_bits_offset; // @[TreePE.scala 104:18]
  wire  pe__io_sample_in_bits_search_for_root; // @[TreePE.scala 104:18]
  wire [7:0] pe__io_sample_in_bits_tree_to_exec; // @[TreePE.scala 104:18]
  wire [15:0] pe__io_sample_in_bits_scores_0; // @[TreePE.scala 104:18]
  wire [15:0] pe__io_sample_in_bits_scores_1; // @[TreePE.scala 104:18]
  wire [15:0] pe__io_sample_in_bits_scores_2; // @[TreePE.scala 104:18]
  wire [15:0] pe__io_sample_in_bits_scores_3; // @[TreePE.scala 104:18]
  wire [15:0] pe__io_sample_in_bits_scores_4; // @[TreePE.scala 104:18]
  wire [15:0] pe__io_sample_in_bits_scores_5; // @[TreePE.scala 104:18]
  wire [15:0] pe__io_sample_in_bits_weights_0; // @[TreePE.scala 104:18]
  wire [15:0] pe__io_sample_in_bits_weights_1; // @[TreePE.scala 104:18]
  wire [15:0] pe__io_sample_in_bits_weights_2; // @[TreePE.scala 104:18]
  wire [15:0] pe__io_sample_in_bits_weights_3; // @[TreePE.scala 104:18]
  wire [15:0] pe__io_sample_in_bits_weights_4; // @[TreePE.scala 104:18]
  wire  pe__io_sample_in_bits_last; // @[TreePE.scala 104:18]
  wire [12:0] pe__io_mem_addr_1; // @[TreePE.scala 104:18]
  wire [63:0] pe__io_mem_dataOut_1; // @[TreePE.scala 104:18]
  wire  pe__io_sample_out_ready; // @[TreePE.scala 104:18]
  wire  pe__io_sample_out_valid; // @[TreePE.scala 104:18]
  wire [31:0] pe__io_sample_out_bits_features_0; // @[TreePE.scala 104:18]
  wire [31:0] pe__io_sample_out_bits_features_1; // @[TreePE.scala 104:18]
  wire [31:0] pe__io_sample_out_bits_features_2; // @[TreePE.scala 104:18]
  wire [31:0] pe__io_sample_out_bits_features_3; // @[TreePE.scala 104:18]
  wire [31:0] pe__io_sample_out_bits_features_4; // @[TreePE.scala 104:18]
  wire [9:0] pe__io_sample_out_bits_offset; // @[TreePE.scala 104:18]
  wire  pe__io_sample_out_bits_search_for_root; // @[TreePE.scala 104:18]
  wire [7:0] pe__io_sample_out_bits_tree_to_exec; // @[TreePE.scala 104:18]
  wire [15:0] pe__io_sample_out_bits_scores_0; // @[TreePE.scala 104:18]
  wire [15:0] pe__io_sample_out_bits_scores_1; // @[TreePE.scala 104:18]
  wire [15:0] pe__io_sample_out_bits_scores_2; // @[TreePE.scala 104:18]
  wire [15:0] pe__io_sample_out_bits_scores_3; // @[TreePE.scala 104:18]
  wire [15:0] pe__io_sample_out_bits_scores_4; // @[TreePE.scala 104:18]
  wire [15:0] pe__io_sample_out_bits_scores_5; // @[TreePE.scala 104:18]
  wire [15:0] pe__io_sample_out_bits_weights_0; // @[TreePE.scala 104:18]
  wire [15:0] pe__io_sample_out_bits_weights_1; // @[TreePE.scala 104:18]
  wire [15:0] pe__io_sample_out_bits_weights_2; // @[TreePE.scala 104:18]
  wire [15:0] pe__io_sample_out_bits_weights_3; // @[TreePE.scala 104:18]
  wire [15:0] pe__io_sample_out_bits_weights_4; // @[TreePE.scala 104:18]
  wire  pe__io_sample_out_bits_dest; // @[TreePE.scala 104:18]
  wire  pe__io_sample_out_bits_last; // @[TreePE.scala 104:18]
  TreePE_1 pe_ ( // @[TreePE.scala 104:18]
    .clock(pe__clock),
    .reset(pe__reset),
    .io_sample_in_ready(pe__io_sample_in_ready),
    .io_sample_in_valid(pe__io_sample_in_valid),
    .io_sample_in_bits_features_0(pe__io_sample_in_bits_features_0),
    .io_sample_in_bits_features_1(pe__io_sample_in_bits_features_1),
    .io_sample_in_bits_features_2(pe__io_sample_in_bits_features_2),
    .io_sample_in_bits_features_3(pe__io_sample_in_bits_features_3),
    .io_sample_in_bits_features_4(pe__io_sample_in_bits_features_4),
    .io_sample_in_bits_offset(pe__io_sample_in_bits_offset),
    .io_sample_in_bits_search_for_root(pe__io_sample_in_bits_search_for_root),
    .io_sample_in_bits_tree_to_exec(pe__io_sample_in_bits_tree_to_exec),
    .io_sample_in_bits_scores_0(pe__io_sample_in_bits_scores_0),
    .io_sample_in_bits_scores_1(pe__io_sample_in_bits_scores_1),
    .io_sample_in_bits_scores_2(pe__io_sample_in_bits_scores_2),
    .io_sample_in_bits_scores_3(pe__io_sample_in_bits_scores_3),
    .io_sample_in_bits_scores_4(pe__io_sample_in_bits_scores_4),
    .io_sample_in_bits_scores_5(pe__io_sample_in_bits_scores_5),
    .io_sample_in_bits_weights_0(pe__io_sample_in_bits_weights_0),
    .io_sample_in_bits_weights_1(pe__io_sample_in_bits_weights_1),
    .io_sample_in_bits_weights_2(pe__io_sample_in_bits_weights_2),
    .io_sample_in_bits_weights_3(pe__io_sample_in_bits_weights_3),
    .io_sample_in_bits_weights_4(pe__io_sample_in_bits_weights_4),
    .io_sample_in_bits_last(pe__io_sample_in_bits_last),
    .io_mem_addr_1(pe__io_mem_addr_1),
    .io_mem_dataOut_1(pe__io_mem_dataOut_1),
    .io_sample_out_ready(pe__io_sample_out_ready),
    .io_sample_out_valid(pe__io_sample_out_valid),
    .io_sample_out_bits_features_0(pe__io_sample_out_bits_features_0),
    .io_sample_out_bits_features_1(pe__io_sample_out_bits_features_1),
    .io_sample_out_bits_features_2(pe__io_sample_out_bits_features_2),
    .io_sample_out_bits_features_3(pe__io_sample_out_bits_features_3),
    .io_sample_out_bits_features_4(pe__io_sample_out_bits_features_4),
    .io_sample_out_bits_offset(pe__io_sample_out_bits_offset),
    .io_sample_out_bits_search_for_root(pe__io_sample_out_bits_search_for_root),
    .io_sample_out_bits_tree_to_exec(pe__io_sample_out_bits_tree_to_exec),
    .io_sample_out_bits_scores_0(pe__io_sample_out_bits_scores_0),
    .io_sample_out_bits_scores_1(pe__io_sample_out_bits_scores_1),
    .io_sample_out_bits_scores_2(pe__io_sample_out_bits_scores_2),
    .io_sample_out_bits_scores_3(pe__io_sample_out_bits_scores_3),
    .io_sample_out_bits_scores_4(pe__io_sample_out_bits_scores_4),
    .io_sample_out_bits_scores_5(pe__io_sample_out_bits_scores_5),
    .io_sample_out_bits_weights_0(pe__io_sample_out_bits_weights_0),
    .io_sample_out_bits_weights_1(pe__io_sample_out_bits_weights_1),
    .io_sample_out_bits_weights_2(pe__io_sample_out_bits_weights_2),
    .io_sample_out_bits_weights_3(pe__io_sample_out_bits_weights_3),
    .io_sample_out_bits_weights_4(pe__io_sample_out_bits_weights_4),
    .io_sample_out_bits_dest(pe__io_sample_out_bits_dest),
    .io_sample_out_bits_last(pe__io_sample_out_bits_last)
  );
  assign pe_io_sample_in_ready = pe__io_sample_in_ready; // @[TreePE.scala 106:9]
  assign pe_io_mem_addr_1 = pe__io_mem_addr_1; // @[TreePE.scala 106:9]
  assign pe_io_sample_out_valid = pe__io_sample_out_valid; // @[TreePE.scala 106:9]
  assign pe_io_sample_out_bits_features_0 = pe__io_sample_out_bits_features_0; // @[TreePE.scala 106:9]
  assign pe_io_sample_out_bits_features_1 = pe__io_sample_out_bits_features_1; // @[TreePE.scala 106:9]
  assign pe_io_sample_out_bits_features_2 = pe__io_sample_out_bits_features_2; // @[TreePE.scala 106:9]
  assign pe_io_sample_out_bits_features_3 = pe__io_sample_out_bits_features_3; // @[TreePE.scala 106:9]
  assign pe_io_sample_out_bits_features_4 = pe__io_sample_out_bits_features_4; // @[TreePE.scala 106:9]
  assign pe_io_sample_out_bits_offset = pe__io_sample_out_bits_offset; // @[TreePE.scala 106:9]
  assign pe_io_sample_out_bits_search_for_root = pe__io_sample_out_bits_search_for_root; // @[TreePE.scala 106:9]
  assign pe_io_sample_out_bits_tree_to_exec = pe__io_sample_out_bits_tree_to_exec; // @[TreePE.scala 106:9]
  assign pe_io_sample_out_bits_scores_0 = pe__io_sample_out_bits_scores_0; // @[TreePE.scala 106:9]
  assign pe_io_sample_out_bits_scores_1 = pe__io_sample_out_bits_scores_1; // @[TreePE.scala 106:9]
  assign pe_io_sample_out_bits_scores_2 = pe__io_sample_out_bits_scores_2; // @[TreePE.scala 106:9]
  assign pe_io_sample_out_bits_scores_3 = pe__io_sample_out_bits_scores_3; // @[TreePE.scala 106:9]
  assign pe_io_sample_out_bits_scores_4 = pe__io_sample_out_bits_scores_4; // @[TreePE.scala 106:9]
  assign pe_io_sample_out_bits_scores_5 = pe__io_sample_out_bits_scores_5; // @[TreePE.scala 106:9]
  assign pe_io_sample_out_bits_weights_0 = pe__io_sample_out_bits_weights_0; // @[TreePE.scala 106:9]
  assign pe_io_sample_out_bits_weights_1 = pe__io_sample_out_bits_weights_1; // @[TreePE.scala 106:9]
  assign pe_io_sample_out_bits_weights_2 = pe__io_sample_out_bits_weights_2; // @[TreePE.scala 106:9]
  assign pe_io_sample_out_bits_weights_3 = pe__io_sample_out_bits_weights_3; // @[TreePE.scala 106:9]
  assign pe_io_sample_out_bits_weights_4 = pe__io_sample_out_bits_weights_4; // @[TreePE.scala 106:9]
  assign pe_io_sample_out_bits_dest = pe__io_sample_out_bits_dest; // @[TreePE.scala 106:9]
  assign pe_io_sample_out_bits_last = pe__io_sample_out_bits_last; // @[TreePE.scala 106:9]
  assign pe__clock = clock;
  assign pe__reset = reset;
  assign pe__io_sample_in_valid = pe_io_sample_in_valid; // @[TreePE.scala 106:9]
  assign pe__io_sample_in_bits_features_0 = pe_io_sample_in_bits_features_0; // @[TreePE.scala 106:9]
  assign pe__io_sample_in_bits_features_1 = pe_io_sample_in_bits_features_1; // @[TreePE.scala 106:9]
  assign pe__io_sample_in_bits_features_2 = pe_io_sample_in_bits_features_2; // @[TreePE.scala 106:9]
  assign pe__io_sample_in_bits_features_3 = pe_io_sample_in_bits_features_3; // @[TreePE.scala 106:9]
  assign pe__io_sample_in_bits_features_4 = pe_io_sample_in_bits_features_4; // @[TreePE.scala 106:9]
  assign pe__io_sample_in_bits_offset = pe_io_sample_in_bits_offset; // @[TreePE.scala 106:9]
  assign pe__io_sample_in_bits_search_for_root = pe_io_sample_in_bits_search_for_root; // @[TreePE.scala 106:9]
  assign pe__io_sample_in_bits_tree_to_exec = pe_io_sample_in_bits_tree_to_exec; // @[TreePE.scala 106:9]
  assign pe__io_sample_in_bits_scores_0 = pe_io_sample_in_bits_scores_0; // @[TreePE.scala 106:9]
  assign pe__io_sample_in_bits_scores_1 = pe_io_sample_in_bits_scores_1; // @[TreePE.scala 106:9]
  assign pe__io_sample_in_bits_scores_2 = pe_io_sample_in_bits_scores_2; // @[TreePE.scala 106:9]
  assign pe__io_sample_in_bits_scores_3 = pe_io_sample_in_bits_scores_3; // @[TreePE.scala 106:9]
  assign pe__io_sample_in_bits_scores_4 = pe_io_sample_in_bits_scores_4; // @[TreePE.scala 106:9]
  assign pe__io_sample_in_bits_scores_5 = pe_io_sample_in_bits_scores_5; // @[TreePE.scala 106:9]
  assign pe__io_sample_in_bits_weights_0 = pe_io_sample_in_bits_weights_0; // @[TreePE.scala 106:9]
  assign pe__io_sample_in_bits_weights_1 = pe_io_sample_in_bits_weights_1; // @[TreePE.scala 106:9]
  assign pe__io_sample_in_bits_weights_2 = pe_io_sample_in_bits_weights_2; // @[TreePE.scala 106:9]
  assign pe__io_sample_in_bits_weights_3 = pe_io_sample_in_bits_weights_3; // @[TreePE.scala 106:9]
  assign pe__io_sample_in_bits_weights_4 = pe_io_sample_in_bits_weights_4; // @[TreePE.scala 106:9]
  assign pe__io_sample_in_bits_last = pe_io_sample_in_bits_last; // @[TreePE.scala 106:9]
  assign pe__io_mem_dataOut_1 = pe_io_mem_dataOut_1; // @[TreePE.scala 106:9]
  assign pe__io_sample_out_ready = pe_io_sample_out_ready; // @[TreePE.scala 106:9]
endmodule
module BRAMBlackBoxAsymm(
  input         io_clk,
  input         io_a_en,
  input         io_a_wr,
  input  [12:0] io_a_addr,
  input  [31:0] io_a_din,
  output [31:0] io_a_dout,
  input  [10:0] io_b_addr,
  output [63:0] io_b_dout
);
  wire  bram_1_clk; // @[ME.scala 202:24]
  wire  bram_1_a_wr; // @[ME.scala 202:24]
  wire [10:0] bram_1_a_addr; // @[ME.scala 202:24]
  wire [31:0] bram_1_a_din; // @[ME.scala 202:24]
  wire [31:0] bram_1_a_dout; // @[ME.scala 202:24]
  wire  bram_1_b_wr; // @[ME.scala 202:24]
  wire [10:0] bram_1_b_addr; // @[ME.scala 202:24]
  wire [31:0] bram_1_b_din; // @[ME.scala 202:24]
  wire [31:0] bram_1_b_dout; // @[ME.scala 202:24]
  wire [11:0] _bram_1_io_a_addr_T_1 = {io_b_addr, 1'h0}; // @[ME.scala 205:67]
  wire [11:0] _bram_1_io_a_addr_T_2 = io_a_en ? {{1'd0}, io_a_addr[12:2]} : _bram_1_io_a_addr_T_1; // @[ME.scala 205:28]
  wire [11:0] _bram_1_io_b_addr_T_2 = _bram_1_io_a_addr_T_1 + 12'h1; // @[ME.scala 209:42]
  BRAMBlackBoxSingle #(.DATA(32), .ADDR(11)) bram_1 ( // @[ME.scala 202:24]
    .clk(bram_1_clk),
    .a_wr(bram_1_a_wr),
    .a_addr(bram_1_a_addr),
    .a_din(bram_1_a_din),
    .a_dout(bram_1_a_dout),
    .b_wr(bram_1_b_wr),
    .b_addr(bram_1_b_addr),
    .b_din(bram_1_b_din),
    .b_dout(bram_1_b_dout)
  );
  assign io_a_dout = bram_1_a_dout; // @[ME.scala 211:15]
  assign io_b_dout = {bram_1_b_dout,bram_1_a_dout}; // @[Cat.scala 33:92]
  assign bram_1_clk = io_clk; // @[ME.scala 212:19]
  assign bram_1_a_wr = io_a_en & io_a_wr; // @[ME.scala 204:26]
  assign bram_1_a_addr = _bram_1_io_a_addr_T_2[10:0]; // @[ME.scala 205:22]
  assign bram_1_a_din = io_a_en ? io_a_din : 32'h0; // @[ME.scala 206:27]
  assign bram_1_b_wr = 1'h0; // @[ME.scala 208:26]
  assign bram_1_b_addr = _bram_1_io_b_addr_T_2[10:0]; // @[ME.scala 209:22]
  assign bram_1_b_din = 32'h0; // @[ME.scala 210:32]
endmodule
module RRArbiter(
  input         clock,
  output        io_in_0_ready,
  input         io_in_0_valid,
  input  [31:0] io_in_0_bits_features_0,
  input  [31:0] io_in_0_bits_features_1,
  input  [31:0] io_in_0_bits_features_2,
  input  [31:0] io_in_0_bits_features_3,
  input  [31:0] io_in_0_bits_features_4,
  input  [9:0]  io_in_0_bits_offset,
  input         io_in_0_bits_shift,
  input         io_in_0_bits_search_for_root,
  input  [7:0]  io_in_0_bits_tree_to_exec,
  input  [15:0] io_in_0_bits_scores_0,
  input  [15:0] io_in_0_bits_scores_1,
  input  [15:0] io_in_0_bits_scores_2,
  input  [15:0] io_in_0_bits_scores_3,
  input  [15:0] io_in_0_bits_scores_4,
  input  [15:0] io_in_0_bits_scores_5,
  input  [15:0] io_in_0_bits_weights_0,
  input  [15:0] io_in_0_bits_weights_1,
  input  [15:0] io_in_0_bits_weights_2,
  input  [15:0] io_in_0_bits_weights_3,
  input  [15:0] io_in_0_bits_weights_4,
  input         io_in_0_bits_last,
  output        io_in_1_ready,
  input         io_in_1_valid,
  input  [31:0] io_in_1_bits_features_0,
  input  [31:0] io_in_1_bits_features_1,
  input  [31:0] io_in_1_bits_features_2,
  input  [31:0] io_in_1_bits_features_3,
  input  [31:0] io_in_1_bits_features_4,
  input  [9:0]  io_in_1_bits_offset,
  input         io_in_1_bits_shift,
  input         io_in_1_bits_search_for_root,
  input  [7:0]  io_in_1_bits_tree_to_exec,
  input  [15:0] io_in_1_bits_scores_0,
  input  [15:0] io_in_1_bits_scores_1,
  input  [15:0] io_in_1_bits_scores_2,
  input  [15:0] io_in_1_bits_scores_3,
  input  [15:0] io_in_1_bits_scores_4,
  input  [15:0] io_in_1_bits_scores_5,
  input  [15:0] io_in_1_bits_weights_0,
  input  [15:0] io_in_1_bits_weights_1,
  input  [15:0] io_in_1_bits_weights_2,
  input  [15:0] io_in_1_bits_weights_3,
  input  [15:0] io_in_1_bits_weights_4,
  input         io_in_1_bits_last,
  input         io_out_ready,
  output        io_out_valid,
  output [31:0] io_out_bits_features_0,
  output [31:0] io_out_bits_features_1,
  output [31:0] io_out_bits_features_2,
  output [31:0] io_out_bits_features_3,
  output [31:0] io_out_bits_features_4,
  output [9:0]  io_out_bits_offset,
  output        io_out_bits_shift,
  output        io_out_bits_search_for_root,
  output [7:0]  io_out_bits_tree_to_exec,
  output [15:0] io_out_bits_scores_0,
  output [15:0] io_out_bits_scores_1,
  output [15:0] io_out_bits_scores_2,
  output [15:0] io_out_bits_scores_3,
  output [15:0] io_out_bits_scores_4,
  output [15:0] io_out_bits_scores_5,
  output [15:0] io_out_bits_weights_0,
  output [15:0] io_out_bits_weights_1,
  output [15:0] io_out_bits_weights_2,
  output [15:0] io_out_bits_weights_3,
  output [15:0] io_out_bits_weights_4,
  output        io_out_bits_last,
  output        io_chosen
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  wire  _ctrl_validMask_grantMask_lastGrant_T = io_out_ready & io_out_valid; // @[Decoupled.scala 52:35]
  reg  lastGrant; // @[Reg.scala 19:16]
  wire  grantMask_1 = 1'h1 > lastGrant; // @[Arbiter.scala 81:49]
  wire  validMask_1 = io_in_1_valid & grantMask_1; // @[Arbiter.scala 82:76]
  wire  ctrl_2 = ~validMask_1; // @[Arbiter.scala 45:78]
  wire  ctrl_3 = ~(validMask_1 | io_in_0_valid); // @[Arbiter.scala 45:78]
  wire  _T_3 = grantMask_1 | ctrl_3; // @[Arbiter.scala 86:50]
  wire  _GEN_49 = io_in_0_valid ? 1'h0 : 1'h1; // @[Arbiter.scala 91:{26,35}]
  assign io_in_0_ready = ctrl_2 & io_out_ready; // @[Arbiter.scala 74:21]
  assign io_in_1_ready = _T_3 & io_out_ready; // @[Arbiter.scala 74:21]
  assign io_out_valid = io_chosen ? io_in_1_valid : io_in_0_valid; // @[Arbiter.scala 55:{16,16}]
  assign io_out_bits_features_0 = io_chosen ? $signed(io_in_1_bits_features_0) : $signed(io_in_0_bits_features_0); // @[Arbiter.scala 56:{15,15}]
  assign io_out_bits_features_1 = io_chosen ? $signed(io_in_1_bits_features_1) : $signed(io_in_0_bits_features_1); // @[Arbiter.scala 56:{15,15}]
  assign io_out_bits_features_2 = io_chosen ? $signed(io_in_1_bits_features_2) : $signed(io_in_0_bits_features_2); // @[Arbiter.scala 56:{15,15}]
  assign io_out_bits_features_3 = io_chosen ? $signed(io_in_1_bits_features_3) : $signed(io_in_0_bits_features_3); // @[Arbiter.scala 56:{15,15}]
  assign io_out_bits_features_4 = io_chosen ? $signed(io_in_1_bits_features_4) : $signed(io_in_0_bits_features_4); // @[Arbiter.scala 56:{15,15}]
  assign io_out_bits_offset = io_chosen ? io_in_1_bits_offset : io_in_0_bits_offset; // @[Arbiter.scala 56:{15,15}]
  assign io_out_bits_shift = io_chosen ? io_in_1_bits_shift : io_in_0_bits_shift; // @[Arbiter.scala 56:{15,15}]
  assign io_out_bits_search_for_root = io_chosen ? io_in_1_bits_search_for_root : io_in_0_bits_search_for_root; // @[Arbiter.scala 56:{15,15}]
  assign io_out_bits_tree_to_exec = io_chosen ? io_in_1_bits_tree_to_exec : io_in_0_bits_tree_to_exec; // @[Arbiter.scala 56:{15,15}]
  assign io_out_bits_scores_0 = io_chosen ? $signed(io_in_1_bits_scores_0) : $signed(io_in_0_bits_scores_0); // @[Arbiter.scala 56:{15,15}]
  assign io_out_bits_scores_1 = io_chosen ? $signed(io_in_1_bits_scores_1) : $signed(io_in_0_bits_scores_1); // @[Arbiter.scala 56:{15,15}]
  assign io_out_bits_scores_2 = io_chosen ? $signed(io_in_1_bits_scores_2) : $signed(io_in_0_bits_scores_2); // @[Arbiter.scala 56:{15,15}]
  assign io_out_bits_scores_3 = io_chosen ? $signed(io_in_1_bits_scores_3) : $signed(io_in_0_bits_scores_3); // @[Arbiter.scala 56:{15,15}]
  assign io_out_bits_scores_4 = io_chosen ? $signed(io_in_1_bits_scores_4) : $signed(io_in_0_bits_scores_4); // @[Arbiter.scala 56:{15,15}]
  assign io_out_bits_scores_5 = io_chosen ? $signed(io_in_1_bits_scores_5) : $signed(io_in_0_bits_scores_5); // @[Arbiter.scala 56:{15,15}]
  assign io_out_bits_weights_0 = io_chosen ? $signed(io_in_1_bits_weights_0) : $signed(io_in_0_bits_weights_0); // @[Arbiter.scala 56:{15,15}]
  assign io_out_bits_weights_1 = io_chosen ? $signed(io_in_1_bits_weights_1) : $signed(io_in_0_bits_weights_1); // @[Arbiter.scala 56:{15,15}]
  assign io_out_bits_weights_2 = io_chosen ? $signed(io_in_1_bits_weights_2) : $signed(io_in_0_bits_weights_2); // @[Arbiter.scala 56:{15,15}]
  assign io_out_bits_weights_3 = io_chosen ? $signed(io_in_1_bits_weights_3) : $signed(io_in_0_bits_weights_3); // @[Arbiter.scala 56:{15,15}]
  assign io_out_bits_weights_4 = io_chosen ? $signed(io_in_1_bits_weights_4) : $signed(io_in_0_bits_weights_4); // @[Arbiter.scala 56:{15,15}]
  assign io_out_bits_last = io_chosen ? io_in_1_bits_last : io_in_0_bits_last; // @[Arbiter.scala 56:{15,15}]
  assign io_chosen = validMask_1 | _GEN_49; // @[Arbiter.scala 93:{24,33}]
  always @(posedge clock) begin
    if (_ctrl_validMask_grantMask_lastGrant_T) begin // @[Reg.scala 20:18]
      lastGrant <= io_chosen; // @[Reg.scala 20:22]
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
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  lastGrant = _RAND_0[0:0];
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
  input  [31:0] io_sample_entering_bits_features_0,
  input  [31:0] io_sample_entering_bits_features_1,
  input  [31:0] io_sample_entering_bits_features_2,
  input  [31:0] io_sample_entering_bits_features_3,
  input  [31:0] io_sample_entering_bits_features_4,
  input  [9:0]  io_sample_entering_bits_offset,
  input         io_sample_entering_bits_shift,
  input         io_sample_entering_bits_search_for_root,
  input  [7:0]  io_sample_entering_bits_tree_to_exec,
  input  [15:0] io_sample_entering_bits_scores_0,
  input  [15:0] io_sample_entering_bits_scores_1,
  input  [15:0] io_sample_entering_bits_scores_2,
  input  [15:0] io_sample_entering_bits_scores_3,
  input  [15:0] io_sample_entering_bits_scores_4,
  input  [15:0] io_sample_entering_bits_scores_5,
  input  [15:0] io_sample_entering_bits_weights_0,
  input  [15:0] io_sample_entering_bits_weights_1,
  input  [15:0] io_sample_entering_bits_weights_2,
  input  [15:0] io_sample_entering_bits_weights_3,
  input  [15:0] io_sample_entering_bits_weights_4,
  input         io_sample_entering_bits_last,
  output        io_sample_looping_ready,
  input         io_sample_looping_valid,
  input  [31:0] io_sample_looping_bits_features_0,
  input  [31:0] io_sample_looping_bits_features_1,
  input  [31:0] io_sample_looping_bits_features_2,
  input  [31:0] io_sample_looping_bits_features_3,
  input  [31:0] io_sample_looping_bits_features_4,
  input  [9:0]  io_sample_looping_bits_offset,
  input         io_sample_looping_bits_shift,
  input         io_sample_looping_bits_search_for_root,
  input  [7:0]  io_sample_looping_bits_tree_to_exec,
  input  [15:0] io_sample_looping_bits_scores_0,
  input  [15:0] io_sample_looping_bits_scores_1,
  input  [15:0] io_sample_looping_bits_scores_2,
  input  [15:0] io_sample_looping_bits_scores_3,
  input  [15:0] io_sample_looping_bits_scores_4,
  input  [15:0] io_sample_looping_bits_scores_5,
  input  [15:0] io_sample_looping_bits_weights_0,
  input  [15:0] io_sample_looping_bits_weights_1,
  input  [15:0] io_sample_looping_bits_weights_2,
  input  [15:0] io_sample_looping_bits_weights_3,
  input  [15:0] io_sample_looping_bits_weights_4,
  input         io_sample_looping_bits_last,
  input         io_sample_out_ready,
  output        io_sample_out_valid,
  output [31:0] io_sample_out_bits_features_0,
  output [31:0] io_sample_out_bits_features_1,
  output [31:0] io_sample_out_bits_features_2,
  output [31:0] io_sample_out_bits_features_3,
  output [31:0] io_sample_out_bits_features_4,
  output [9:0]  io_sample_out_bits_offset,
  output        io_sample_out_bits_shift,
  output        io_sample_out_bits_search_for_root,
  output [7:0]  io_sample_out_bits_tree_to_exec,
  output [15:0] io_sample_out_bits_scores_0,
  output [15:0] io_sample_out_bits_scores_1,
  output [15:0] io_sample_out_bits_scores_2,
  output [15:0] io_sample_out_bits_scores_3,
  output [15:0] io_sample_out_bits_scores_4,
  output [15:0] io_sample_out_bits_scores_5,
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
  wire [31:0] queue_entering_io_enq_bits_features_0; // @[Decoupled.scala 377:21]
  wire [31:0] queue_entering_io_enq_bits_features_1; // @[Decoupled.scala 377:21]
  wire [31:0] queue_entering_io_enq_bits_features_2; // @[Decoupled.scala 377:21]
  wire [31:0] queue_entering_io_enq_bits_features_3; // @[Decoupled.scala 377:21]
  wire [31:0] queue_entering_io_enq_bits_features_4; // @[Decoupled.scala 377:21]
  wire [9:0] queue_entering_io_enq_bits_offset; // @[Decoupled.scala 377:21]
  wire  queue_entering_io_enq_bits_shift; // @[Decoupled.scala 377:21]
  wire  queue_entering_io_enq_bits_search_for_root; // @[Decoupled.scala 377:21]
  wire [7:0] queue_entering_io_enq_bits_tree_to_exec; // @[Decoupled.scala 377:21]
  wire [15:0] queue_entering_io_enq_bits_scores_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_entering_io_enq_bits_scores_1; // @[Decoupled.scala 377:21]
  wire [15:0] queue_entering_io_enq_bits_scores_2; // @[Decoupled.scala 377:21]
  wire [15:0] queue_entering_io_enq_bits_scores_3; // @[Decoupled.scala 377:21]
  wire [15:0] queue_entering_io_enq_bits_scores_4; // @[Decoupled.scala 377:21]
  wire [15:0] queue_entering_io_enq_bits_scores_5; // @[Decoupled.scala 377:21]
  wire [15:0] queue_entering_io_enq_bits_weights_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_entering_io_enq_bits_weights_1; // @[Decoupled.scala 377:21]
  wire [15:0] queue_entering_io_enq_bits_weights_2; // @[Decoupled.scala 377:21]
  wire [15:0] queue_entering_io_enq_bits_weights_3; // @[Decoupled.scala 377:21]
  wire [15:0] queue_entering_io_enq_bits_weights_4; // @[Decoupled.scala 377:21]
  wire  queue_entering_io_enq_bits_last; // @[Decoupled.scala 377:21]
  wire  queue_entering_io_deq_ready; // @[Decoupled.scala 377:21]
  wire  queue_entering_io_deq_valid; // @[Decoupled.scala 377:21]
  wire [31:0] queue_entering_io_deq_bits_features_0; // @[Decoupled.scala 377:21]
  wire [31:0] queue_entering_io_deq_bits_features_1; // @[Decoupled.scala 377:21]
  wire [31:0] queue_entering_io_deq_bits_features_2; // @[Decoupled.scala 377:21]
  wire [31:0] queue_entering_io_deq_bits_features_3; // @[Decoupled.scala 377:21]
  wire [31:0] queue_entering_io_deq_bits_features_4; // @[Decoupled.scala 377:21]
  wire [9:0] queue_entering_io_deq_bits_offset; // @[Decoupled.scala 377:21]
  wire  queue_entering_io_deq_bits_shift; // @[Decoupled.scala 377:21]
  wire  queue_entering_io_deq_bits_search_for_root; // @[Decoupled.scala 377:21]
  wire [7:0] queue_entering_io_deq_bits_tree_to_exec; // @[Decoupled.scala 377:21]
  wire [15:0] queue_entering_io_deq_bits_scores_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_entering_io_deq_bits_scores_1; // @[Decoupled.scala 377:21]
  wire [15:0] queue_entering_io_deq_bits_scores_2; // @[Decoupled.scala 377:21]
  wire [15:0] queue_entering_io_deq_bits_scores_3; // @[Decoupled.scala 377:21]
  wire [15:0] queue_entering_io_deq_bits_scores_4; // @[Decoupled.scala 377:21]
  wire [15:0] queue_entering_io_deq_bits_scores_5; // @[Decoupled.scala 377:21]
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
  wire [31:0] queue_looping_io_enq_bits_features_0; // @[Decoupled.scala 377:21]
  wire [31:0] queue_looping_io_enq_bits_features_1; // @[Decoupled.scala 377:21]
  wire [31:0] queue_looping_io_enq_bits_features_2; // @[Decoupled.scala 377:21]
  wire [31:0] queue_looping_io_enq_bits_features_3; // @[Decoupled.scala 377:21]
  wire [31:0] queue_looping_io_enq_bits_features_4; // @[Decoupled.scala 377:21]
  wire [9:0] queue_looping_io_enq_bits_offset; // @[Decoupled.scala 377:21]
  wire  queue_looping_io_enq_bits_shift; // @[Decoupled.scala 377:21]
  wire  queue_looping_io_enq_bits_search_for_root; // @[Decoupled.scala 377:21]
  wire [7:0] queue_looping_io_enq_bits_tree_to_exec; // @[Decoupled.scala 377:21]
  wire [15:0] queue_looping_io_enq_bits_scores_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_looping_io_enq_bits_scores_1; // @[Decoupled.scala 377:21]
  wire [15:0] queue_looping_io_enq_bits_scores_2; // @[Decoupled.scala 377:21]
  wire [15:0] queue_looping_io_enq_bits_scores_3; // @[Decoupled.scala 377:21]
  wire [15:0] queue_looping_io_enq_bits_scores_4; // @[Decoupled.scala 377:21]
  wire [15:0] queue_looping_io_enq_bits_scores_5; // @[Decoupled.scala 377:21]
  wire [15:0] queue_looping_io_enq_bits_weights_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_looping_io_enq_bits_weights_1; // @[Decoupled.scala 377:21]
  wire [15:0] queue_looping_io_enq_bits_weights_2; // @[Decoupled.scala 377:21]
  wire [15:0] queue_looping_io_enq_bits_weights_3; // @[Decoupled.scala 377:21]
  wire [15:0] queue_looping_io_enq_bits_weights_4; // @[Decoupled.scala 377:21]
  wire  queue_looping_io_enq_bits_last; // @[Decoupled.scala 377:21]
  wire  queue_looping_io_deq_ready; // @[Decoupled.scala 377:21]
  wire  queue_looping_io_deq_valid; // @[Decoupled.scala 377:21]
  wire [31:0] queue_looping_io_deq_bits_features_0; // @[Decoupled.scala 377:21]
  wire [31:0] queue_looping_io_deq_bits_features_1; // @[Decoupled.scala 377:21]
  wire [31:0] queue_looping_io_deq_bits_features_2; // @[Decoupled.scala 377:21]
  wire [31:0] queue_looping_io_deq_bits_features_3; // @[Decoupled.scala 377:21]
  wire [31:0] queue_looping_io_deq_bits_features_4; // @[Decoupled.scala 377:21]
  wire [9:0] queue_looping_io_deq_bits_offset; // @[Decoupled.scala 377:21]
  wire  queue_looping_io_deq_bits_shift; // @[Decoupled.scala 377:21]
  wire  queue_looping_io_deq_bits_search_for_root; // @[Decoupled.scala 377:21]
  wire [7:0] queue_looping_io_deq_bits_tree_to_exec; // @[Decoupled.scala 377:21]
  wire [15:0] queue_looping_io_deq_bits_scores_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_looping_io_deq_bits_scores_1; // @[Decoupled.scala 377:21]
  wire [15:0] queue_looping_io_deq_bits_scores_2; // @[Decoupled.scala 377:21]
  wire [15:0] queue_looping_io_deq_bits_scores_3; // @[Decoupled.scala 377:21]
  wire [15:0] queue_looping_io_deq_bits_scores_4; // @[Decoupled.scala 377:21]
  wire [15:0] queue_looping_io_deq_bits_scores_5; // @[Decoupled.scala 377:21]
  wire [15:0] queue_looping_io_deq_bits_weights_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_looping_io_deq_bits_weights_1; // @[Decoupled.scala 377:21]
  wire [15:0] queue_looping_io_deq_bits_weights_2; // @[Decoupled.scala 377:21]
  wire [15:0] queue_looping_io_deq_bits_weights_3; // @[Decoupled.scala 377:21]
  wire [15:0] queue_looping_io_deq_bits_weights_4; // @[Decoupled.scala 377:21]
  wire  queue_looping_io_deq_bits_last; // @[Decoupled.scala 377:21]
  wire  arbiter_clock; // @[Interconnect.scala 54:25]
  wire  arbiter_io_in_0_ready; // @[Interconnect.scala 54:25]
  wire  arbiter_io_in_0_valid; // @[Interconnect.scala 54:25]
  wire [31:0] arbiter_io_in_0_bits_features_0; // @[Interconnect.scala 54:25]
  wire [31:0] arbiter_io_in_0_bits_features_1; // @[Interconnect.scala 54:25]
  wire [31:0] arbiter_io_in_0_bits_features_2; // @[Interconnect.scala 54:25]
  wire [31:0] arbiter_io_in_0_bits_features_3; // @[Interconnect.scala 54:25]
  wire [31:0] arbiter_io_in_0_bits_features_4; // @[Interconnect.scala 54:25]
  wire [9:0] arbiter_io_in_0_bits_offset; // @[Interconnect.scala 54:25]
  wire  arbiter_io_in_0_bits_shift; // @[Interconnect.scala 54:25]
  wire  arbiter_io_in_0_bits_search_for_root; // @[Interconnect.scala 54:25]
  wire [7:0] arbiter_io_in_0_bits_tree_to_exec; // @[Interconnect.scala 54:25]
  wire [15:0] arbiter_io_in_0_bits_scores_0; // @[Interconnect.scala 54:25]
  wire [15:0] arbiter_io_in_0_bits_scores_1; // @[Interconnect.scala 54:25]
  wire [15:0] arbiter_io_in_0_bits_scores_2; // @[Interconnect.scala 54:25]
  wire [15:0] arbiter_io_in_0_bits_scores_3; // @[Interconnect.scala 54:25]
  wire [15:0] arbiter_io_in_0_bits_scores_4; // @[Interconnect.scala 54:25]
  wire [15:0] arbiter_io_in_0_bits_scores_5; // @[Interconnect.scala 54:25]
  wire [15:0] arbiter_io_in_0_bits_weights_0; // @[Interconnect.scala 54:25]
  wire [15:0] arbiter_io_in_0_bits_weights_1; // @[Interconnect.scala 54:25]
  wire [15:0] arbiter_io_in_0_bits_weights_2; // @[Interconnect.scala 54:25]
  wire [15:0] arbiter_io_in_0_bits_weights_3; // @[Interconnect.scala 54:25]
  wire [15:0] arbiter_io_in_0_bits_weights_4; // @[Interconnect.scala 54:25]
  wire  arbiter_io_in_0_bits_last; // @[Interconnect.scala 54:25]
  wire  arbiter_io_in_1_ready; // @[Interconnect.scala 54:25]
  wire  arbiter_io_in_1_valid; // @[Interconnect.scala 54:25]
  wire [31:0] arbiter_io_in_1_bits_features_0; // @[Interconnect.scala 54:25]
  wire [31:0] arbiter_io_in_1_bits_features_1; // @[Interconnect.scala 54:25]
  wire [31:0] arbiter_io_in_1_bits_features_2; // @[Interconnect.scala 54:25]
  wire [31:0] arbiter_io_in_1_bits_features_3; // @[Interconnect.scala 54:25]
  wire [31:0] arbiter_io_in_1_bits_features_4; // @[Interconnect.scala 54:25]
  wire [9:0] arbiter_io_in_1_bits_offset; // @[Interconnect.scala 54:25]
  wire  arbiter_io_in_1_bits_shift; // @[Interconnect.scala 54:25]
  wire  arbiter_io_in_1_bits_search_for_root; // @[Interconnect.scala 54:25]
  wire [7:0] arbiter_io_in_1_bits_tree_to_exec; // @[Interconnect.scala 54:25]
  wire [15:0] arbiter_io_in_1_bits_scores_0; // @[Interconnect.scala 54:25]
  wire [15:0] arbiter_io_in_1_bits_scores_1; // @[Interconnect.scala 54:25]
  wire [15:0] arbiter_io_in_1_bits_scores_2; // @[Interconnect.scala 54:25]
  wire [15:0] arbiter_io_in_1_bits_scores_3; // @[Interconnect.scala 54:25]
  wire [15:0] arbiter_io_in_1_bits_scores_4; // @[Interconnect.scala 54:25]
  wire [15:0] arbiter_io_in_1_bits_scores_5; // @[Interconnect.scala 54:25]
  wire [15:0] arbiter_io_in_1_bits_weights_0; // @[Interconnect.scala 54:25]
  wire [15:0] arbiter_io_in_1_bits_weights_1; // @[Interconnect.scala 54:25]
  wire [15:0] arbiter_io_in_1_bits_weights_2; // @[Interconnect.scala 54:25]
  wire [15:0] arbiter_io_in_1_bits_weights_3; // @[Interconnect.scala 54:25]
  wire [15:0] arbiter_io_in_1_bits_weights_4; // @[Interconnect.scala 54:25]
  wire  arbiter_io_in_1_bits_last; // @[Interconnect.scala 54:25]
  wire  arbiter_io_out_ready; // @[Interconnect.scala 54:25]
  wire  arbiter_io_out_valid; // @[Interconnect.scala 54:25]
  wire [31:0] arbiter_io_out_bits_features_0; // @[Interconnect.scala 54:25]
  wire [31:0] arbiter_io_out_bits_features_1; // @[Interconnect.scala 54:25]
  wire [31:0] arbiter_io_out_bits_features_2; // @[Interconnect.scala 54:25]
  wire [31:0] arbiter_io_out_bits_features_3; // @[Interconnect.scala 54:25]
  wire [31:0] arbiter_io_out_bits_features_4; // @[Interconnect.scala 54:25]
  wire [9:0] arbiter_io_out_bits_offset; // @[Interconnect.scala 54:25]
  wire  arbiter_io_out_bits_shift; // @[Interconnect.scala 54:25]
  wire  arbiter_io_out_bits_search_for_root; // @[Interconnect.scala 54:25]
  wire [7:0] arbiter_io_out_bits_tree_to_exec; // @[Interconnect.scala 54:25]
  wire [15:0] arbiter_io_out_bits_scores_0; // @[Interconnect.scala 54:25]
  wire [15:0] arbiter_io_out_bits_scores_1; // @[Interconnect.scala 54:25]
  wire [15:0] arbiter_io_out_bits_scores_2; // @[Interconnect.scala 54:25]
  wire [15:0] arbiter_io_out_bits_scores_3; // @[Interconnect.scala 54:25]
  wire [15:0] arbiter_io_out_bits_scores_4; // @[Interconnect.scala 54:25]
  wire [15:0] arbiter_io_out_bits_scores_5; // @[Interconnect.scala 54:25]
  wire [15:0] arbiter_io_out_bits_weights_0; // @[Interconnect.scala 54:25]
  wire [15:0] arbiter_io_out_bits_weights_1; // @[Interconnect.scala 54:25]
  wire [15:0] arbiter_io_out_bits_weights_2; // @[Interconnect.scala 54:25]
  wire [15:0] arbiter_io_out_bits_weights_3; // @[Interconnect.scala 54:25]
  wire [15:0] arbiter_io_out_bits_weights_4; // @[Interconnect.scala 54:25]
  wire  arbiter_io_out_bits_last; // @[Interconnect.scala 54:25]
  wire  arbiter_io_chosen; // @[Interconnect.scala 54:25]
  Queue_2 queue_entering ( // @[Decoupled.scala 377:21]
    .clock(queue_entering_clock),
    .reset(queue_entering_reset),
    .io_enq_ready(queue_entering_io_enq_ready),
    .io_enq_valid(queue_entering_io_enq_valid),
    .io_enq_bits_features_0(queue_entering_io_enq_bits_features_0),
    .io_enq_bits_features_1(queue_entering_io_enq_bits_features_1),
    .io_enq_bits_features_2(queue_entering_io_enq_bits_features_2),
    .io_enq_bits_features_3(queue_entering_io_enq_bits_features_3),
    .io_enq_bits_features_4(queue_entering_io_enq_bits_features_4),
    .io_enq_bits_offset(queue_entering_io_enq_bits_offset),
    .io_enq_bits_shift(queue_entering_io_enq_bits_shift),
    .io_enq_bits_search_for_root(queue_entering_io_enq_bits_search_for_root),
    .io_enq_bits_tree_to_exec(queue_entering_io_enq_bits_tree_to_exec),
    .io_enq_bits_scores_0(queue_entering_io_enq_bits_scores_0),
    .io_enq_bits_scores_1(queue_entering_io_enq_bits_scores_1),
    .io_enq_bits_scores_2(queue_entering_io_enq_bits_scores_2),
    .io_enq_bits_scores_3(queue_entering_io_enq_bits_scores_3),
    .io_enq_bits_scores_4(queue_entering_io_enq_bits_scores_4),
    .io_enq_bits_scores_5(queue_entering_io_enq_bits_scores_5),
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
    .io_deq_bits_features_4(queue_entering_io_deq_bits_features_4),
    .io_deq_bits_offset(queue_entering_io_deq_bits_offset),
    .io_deq_bits_shift(queue_entering_io_deq_bits_shift),
    .io_deq_bits_search_for_root(queue_entering_io_deq_bits_search_for_root),
    .io_deq_bits_tree_to_exec(queue_entering_io_deq_bits_tree_to_exec),
    .io_deq_bits_scores_0(queue_entering_io_deq_bits_scores_0),
    .io_deq_bits_scores_1(queue_entering_io_deq_bits_scores_1),
    .io_deq_bits_scores_2(queue_entering_io_deq_bits_scores_2),
    .io_deq_bits_scores_3(queue_entering_io_deq_bits_scores_3),
    .io_deq_bits_scores_4(queue_entering_io_deq_bits_scores_4),
    .io_deq_bits_scores_5(queue_entering_io_deq_bits_scores_5),
    .io_deq_bits_weights_0(queue_entering_io_deq_bits_weights_0),
    .io_deq_bits_weights_1(queue_entering_io_deq_bits_weights_1),
    .io_deq_bits_weights_2(queue_entering_io_deq_bits_weights_2),
    .io_deq_bits_weights_3(queue_entering_io_deq_bits_weights_3),
    .io_deq_bits_weights_4(queue_entering_io_deq_bits_weights_4),
    .io_deq_bits_last(queue_entering_io_deq_bits_last)
  );
  Queue_2 queue_looping ( // @[Decoupled.scala 377:21]
    .clock(queue_looping_clock),
    .reset(queue_looping_reset),
    .io_enq_ready(queue_looping_io_enq_ready),
    .io_enq_valid(queue_looping_io_enq_valid),
    .io_enq_bits_features_0(queue_looping_io_enq_bits_features_0),
    .io_enq_bits_features_1(queue_looping_io_enq_bits_features_1),
    .io_enq_bits_features_2(queue_looping_io_enq_bits_features_2),
    .io_enq_bits_features_3(queue_looping_io_enq_bits_features_3),
    .io_enq_bits_features_4(queue_looping_io_enq_bits_features_4),
    .io_enq_bits_offset(queue_looping_io_enq_bits_offset),
    .io_enq_bits_shift(queue_looping_io_enq_bits_shift),
    .io_enq_bits_search_for_root(queue_looping_io_enq_bits_search_for_root),
    .io_enq_bits_tree_to_exec(queue_looping_io_enq_bits_tree_to_exec),
    .io_enq_bits_scores_0(queue_looping_io_enq_bits_scores_0),
    .io_enq_bits_scores_1(queue_looping_io_enq_bits_scores_1),
    .io_enq_bits_scores_2(queue_looping_io_enq_bits_scores_2),
    .io_enq_bits_scores_3(queue_looping_io_enq_bits_scores_3),
    .io_enq_bits_scores_4(queue_looping_io_enq_bits_scores_4),
    .io_enq_bits_scores_5(queue_looping_io_enq_bits_scores_5),
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
    .io_deq_bits_features_4(queue_looping_io_deq_bits_features_4),
    .io_deq_bits_offset(queue_looping_io_deq_bits_offset),
    .io_deq_bits_shift(queue_looping_io_deq_bits_shift),
    .io_deq_bits_search_for_root(queue_looping_io_deq_bits_search_for_root),
    .io_deq_bits_tree_to_exec(queue_looping_io_deq_bits_tree_to_exec),
    .io_deq_bits_scores_0(queue_looping_io_deq_bits_scores_0),
    .io_deq_bits_scores_1(queue_looping_io_deq_bits_scores_1),
    .io_deq_bits_scores_2(queue_looping_io_deq_bits_scores_2),
    .io_deq_bits_scores_3(queue_looping_io_deq_bits_scores_3),
    .io_deq_bits_scores_4(queue_looping_io_deq_bits_scores_4),
    .io_deq_bits_scores_5(queue_looping_io_deq_bits_scores_5),
    .io_deq_bits_weights_0(queue_looping_io_deq_bits_weights_0),
    .io_deq_bits_weights_1(queue_looping_io_deq_bits_weights_1),
    .io_deq_bits_weights_2(queue_looping_io_deq_bits_weights_2),
    .io_deq_bits_weights_3(queue_looping_io_deq_bits_weights_3),
    .io_deq_bits_weights_4(queue_looping_io_deq_bits_weights_4),
    .io_deq_bits_last(queue_looping_io_deq_bits_last)
  );
  RRArbiter arbiter ( // @[Interconnect.scala 54:25]
    .clock(arbiter_clock),
    .io_in_0_ready(arbiter_io_in_0_ready),
    .io_in_0_valid(arbiter_io_in_0_valid),
    .io_in_0_bits_features_0(arbiter_io_in_0_bits_features_0),
    .io_in_0_bits_features_1(arbiter_io_in_0_bits_features_1),
    .io_in_0_bits_features_2(arbiter_io_in_0_bits_features_2),
    .io_in_0_bits_features_3(arbiter_io_in_0_bits_features_3),
    .io_in_0_bits_features_4(arbiter_io_in_0_bits_features_4),
    .io_in_0_bits_offset(arbiter_io_in_0_bits_offset),
    .io_in_0_bits_shift(arbiter_io_in_0_bits_shift),
    .io_in_0_bits_search_for_root(arbiter_io_in_0_bits_search_for_root),
    .io_in_0_bits_tree_to_exec(arbiter_io_in_0_bits_tree_to_exec),
    .io_in_0_bits_scores_0(arbiter_io_in_0_bits_scores_0),
    .io_in_0_bits_scores_1(arbiter_io_in_0_bits_scores_1),
    .io_in_0_bits_scores_2(arbiter_io_in_0_bits_scores_2),
    .io_in_0_bits_scores_3(arbiter_io_in_0_bits_scores_3),
    .io_in_0_bits_scores_4(arbiter_io_in_0_bits_scores_4),
    .io_in_0_bits_scores_5(arbiter_io_in_0_bits_scores_5),
    .io_in_0_bits_weights_0(arbiter_io_in_0_bits_weights_0),
    .io_in_0_bits_weights_1(arbiter_io_in_0_bits_weights_1),
    .io_in_0_bits_weights_2(arbiter_io_in_0_bits_weights_2),
    .io_in_0_bits_weights_3(arbiter_io_in_0_bits_weights_3),
    .io_in_0_bits_weights_4(arbiter_io_in_0_bits_weights_4),
    .io_in_0_bits_last(arbiter_io_in_0_bits_last),
    .io_in_1_ready(arbiter_io_in_1_ready),
    .io_in_1_valid(arbiter_io_in_1_valid),
    .io_in_1_bits_features_0(arbiter_io_in_1_bits_features_0),
    .io_in_1_bits_features_1(arbiter_io_in_1_bits_features_1),
    .io_in_1_bits_features_2(arbiter_io_in_1_bits_features_2),
    .io_in_1_bits_features_3(arbiter_io_in_1_bits_features_3),
    .io_in_1_bits_features_4(arbiter_io_in_1_bits_features_4),
    .io_in_1_bits_offset(arbiter_io_in_1_bits_offset),
    .io_in_1_bits_shift(arbiter_io_in_1_bits_shift),
    .io_in_1_bits_search_for_root(arbiter_io_in_1_bits_search_for_root),
    .io_in_1_bits_tree_to_exec(arbiter_io_in_1_bits_tree_to_exec),
    .io_in_1_bits_scores_0(arbiter_io_in_1_bits_scores_0),
    .io_in_1_bits_scores_1(arbiter_io_in_1_bits_scores_1),
    .io_in_1_bits_scores_2(arbiter_io_in_1_bits_scores_2),
    .io_in_1_bits_scores_3(arbiter_io_in_1_bits_scores_3),
    .io_in_1_bits_scores_4(arbiter_io_in_1_bits_scores_4),
    .io_in_1_bits_scores_5(arbiter_io_in_1_bits_scores_5),
    .io_in_1_bits_weights_0(arbiter_io_in_1_bits_weights_0),
    .io_in_1_bits_weights_1(arbiter_io_in_1_bits_weights_1),
    .io_in_1_bits_weights_2(arbiter_io_in_1_bits_weights_2),
    .io_in_1_bits_weights_3(arbiter_io_in_1_bits_weights_3),
    .io_in_1_bits_weights_4(arbiter_io_in_1_bits_weights_4),
    .io_in_1_bits_last(arbiter_io_in_1_bits_last),
    .io_out_ready(arbiter_io_out_ready),
    .io_out_valid(arbiter_io_out_valid),
    .io_out_bits_features_0(arbiter_io_out_bits_features_0),
    .io_out_bits_features_1(arbiter_io_out_bits_features_1),
    .io_out_bits_features_2(arbiter_io_out_bits_features_2),
    .io_out_bits_features_3(arbiter_io_out_bits_features_3),
    .io_out_bits_features_4(arbiter_io_out_bits_features_4),
    .io_out_bits_offset(arbiter_io_out_bits_offset),
    .io_out_bits_shift(arbiter_io_out_bits_shift),
    .io_out_bits_search_for_root(arbiter_io_out_bits_search_for_root),
    .io_out_bits_tree_to_exec(arbiter_io_out_bits_tree_to_exec),
    .io_out_bits_scores_0(arbiter_io_out_bits_scores_0),
    .io_out_bits_scores_1(arbiter_io_out_bits_scores_1),
    .io_out_bits_scores_2(arbiter_io_out_bits_scores_2),
    .io_out_bits_scores_3(arbiter_io_out_bits_scores_3),
    .io_out_bits_scores_4(arbiter_io_out_bits_scores_4),
    .io_out_bits_scores_5(arbiter_io_out_bits_scores_5),
    .io_out_bits_weights_0(arbiter_io_out_bits_weights_0),
    .io_out_bits_weights_1(arbiter_io_out_bits_weights_1),
    .io_out_bits_weights_2(arbiter_io_out_bits_weights_2),
    .io_out_bits_weights_3(arbiter_io_out_bits_weights_3),
    .io_out_bits_weights_4(arbiter_io_out_bits_weights_4),
    .io_out_bits_last(arbiter_io_out_bits_last),
    .io_chosen(arbiter_io_chosen)
  );
  assign io_sample_entering_ready = queue_entering_io_enq_ready; // @[Decoupled.scala 381:17]
  assign io_sample_looping_ready = queue_looping_io_enq_ready; // @[Decoupled.scala 381:17]
  assign io_sample_out_valid = arbiter_io_out_valid; // @[Interconnect.scala 57:19]
  assign io_sample_out_bits_features_0 = arbiter_io_out_bits_features_0; // @[Interconnect.scala 57:19]
  assign io_sample_out_bits_features_1 = arbiter_io_out_bits_features_1; // @[Interconnect.scala 57:19]
  assign io_sample_out_bits_features_2 = arbiter_io_out_bits_features_2; // @[Interconnect.scala 57:19]
  assign io_sample_out_bits_features_3 = arbiter_io_out_bits_features_3; // @[Interconnect.scala 57:19]
  assign io_sample_out_bits_features_4 = arbiter_io_out_bits_features_4; // @[Interconnect.scala 57:19]
  assign io_sample_out_bits_offset = arbiter_io_out_bits_offset; // @[Interconnect.scala 57:19]
  assign io_sample_out_bits_shift = arbiter_io_out_bits_shift; // @[Interconnect.scala 57:19]
  assign io_sample_out_bits_search_for_root = arbiter_io_out_bits_search_for_root; // @[Interconnect.scala 57:19]
  assign io_sample_out_bits_tree_to_exec = arbiter_io_out_bits_tree_to_exec; // @[Interconnect.scala 57:19]
  assign io_sample_out_bits_scores_0 = arbiter_io_out_bits_scores_0; // @[Interconnect.scala 57:19]
  assign io_sample_out_bits_scores_1 = arbiter_io_out_bits_scores_1; // @[Interconnect.scala 57:19]
  assign io_sample_out_bits_scores_2 = arbiter_io_out_bits_scores_2; // @[Interconnect.scala 57:19]
  assign io_sample_out_bits_scores_3 = arbiter_io_out_bits_scores_3; // @[Interconnect.scala 57:19]
  assign io_sample_out_bits_scores_4 = arbiter_io_out_bits_scores_4; // @[Interconnect.scala 57:19]
  assign io_sample_out_bits_scores_5 = arbiter_io_out_bits_scores_5; // @[Interconnect.scala 57:19]
  assign io_sample_out_bits_weights_0 = arbiter_io_out_bits_weights_0; // @[Interconnect.scala 57:19]
  assign io_sample_out_bits_weights_1 = arbiter_io_out_bits_weights_1; // @[Interconnect.scala 57:19]
  assign io_sample_out_bits_weights_2 = arbiter_io_out_bits_weights_2; // @[Interconnect.scala 57:19]
  assign io_sample_out_bits_weights_3 = arbiter_io_out_bits_weights_3; // @[Interconnect.scala 57:19]
  assign io_sample_out_bits_weights_4 = arbiter_io_out_bits_weights_4; // @[Interconnect.scala 57:19]
  assign io_sample_out_bits_last = arbiter_io_out_bits_last; // @[Interconnect.scala 57:19]
  assign queue_entering_clock = clock;
  assign queue_entering_reset = reset;
  assign queue_entering_io_enq_valid = io_sample_entering_valid; // @[Decoupled.scala 379:22]
  assign queue_entering_io_enq_bits_features_0 = io_sample_entering_bits_features_0; // @[Decoupled.scala 380:21]
  assign queue_entering_io_enq_bits_features_1 = io_sample_entering_bits_features_1; // @[Decoupled.scala 380:21]
  assign queue_entering_io_enq_bits_features_2 = io_sample_entering_bits_features_2; // @[Decoupled.scala 380:21]
  assign queue_entering_io_enq_bits_features_3 = io_sample_entering_bits_features_3; // @[Decoupled.scala 380:21]
  assign queue_entering_io_enq_bits_features_4 = io_sample_entering_bits_features_4; // @[Decoupled.scala 380:21]
  assign queue_entering_io_enq_bits_offset = io_sample_entering_bits_offset; // @[Decoupled.scala 380:21]
  assign queue_entering_io_enq_bits_shift = io_sample_entering_bits_shift; // @[Decoupled.scala 380:21]
  assign queue_entering_io_enq_bits_search_for_root = io_sample_entering_bits_search_for_root; // @[Decoupled.scala 380:21]
  assign queue_entering_io_enq_bits_tree_to_exec = io_sample_entering_bits_tree_to_exec; // @[Decoupled.scala 380:21]
  assign queue_entering_io_enq_bits_scores_0 = io_sample_entering_bits_scores_0; // @[Decoupled.scala 380:21]
  assign queue_entering_io_enq_bits_scores_1 = io_sample_entering_bits_scores_1; // @[Decoupled.scala 380:21]
  assign queue_entering_io_enq_bits_scores_2 = io_sample_entering_bits_scores_2; // @[Decoupled.scala 380:21]
  assign queue_entering_io_enq_bits_scores_3 = io_sample_entering_bits_scores_3; // @[Decoupled.scala 380:21]
  assign queue_entering_io_enq_bits_scores_4 = io_sample_entering_bits_scores_4; // @[Decoupled.scala 380:21]
  assign queue_entering_io_enq_bits_scores_5 = io_sample_entering_bits_scores_5; // @[Decoupled.scala 380:21]
  assign queue_entering_io_enq_bits_weights_0 = io_sample_entering_bits_weights_0; // @[Decoupled.scala 380:21]
  assign queue_entering_io_enq_bits_weights_1 = io_sample_entering_bits_weights_1; // @[Decoupled.scala 380:21]
  assign queue_entering_io_enq_bits_weights_2 = io_sample_entering_bits_weights_2; // @[Decoupled.scala 380:21]
  assign queue_entering_io_enq_bits_weights_3 = io_sample_entering_bits_weights_3; // @[Decoupled.scala 380:21]
  assign queue_entering_io_enq_bits_weights_4 = io_sample_entering_bits_weights_4; // @[Decoupled.scala 380:21]
  assign queue_entering_io_enq_bits_last = io_sample_entering_bits_last; // @[Decoupled.scala 380:21]
  assign queue_entering_io_deq_ready = arbiter_io_in_0_ready; // @[Interconnect.scala 55:22]
  assign queue_looping_clock = clock;
  assign queue_looping_reset = reset;
  assign queue_looping_io_enq_valid = io_sample_looping_valid; // @[Decoupled.scala 379:22]
  assign queue_looping_io_enq_bits_features_0 = io_sample_looping_bits_features_0; // @[Decoupled.scala 380:21]
  assign queue_looping_io_enq_bits_features_1 = io_sample_looping_bits_features_1; // @[Decoupled.scala 380:21]
  assign queue_looping_io_enq_bits_features_2 = io_sample_looping_bits_features_2; // @[Decoupled.scala 380:21]
  assign queue_looping_io_enq_bits_features_3 = io_sample_looping_bits_features_3; // @[Decoupled.scala 380:21]
  assign queue_looping_io_enq_bits_features_4 = io_sample_looping_bits_features_4; // @[Decoupled.scala 380:21]
  assign queue_looping_io_enq_bits_offset = io_sample_looping_bits_offset; // @[Decoupled.scala 380:21]
  assign queue_looping_io_enq_bits_shift = io_sample_looping_bits_shift; // @[Decoupled.scala 380:21]
  assign queue_looping_io_enq_bits_search_for_root = io_sample_looping_bits_search_for_root; // @[Decoupled.scala 380:21]
  assign queue_looping_io_enq_bits_tree_to_exec = io_sample_looping_bits_tree_to_exec; // @[Decoupled.scala 380:21]
  assign queue_looping_io_enq_bits_scores_0 = io_sample_looping_bits_scores_0; // @[Decoupled.scala 380:21]
  assign queue_looping_io_enq_bits_scores_1 = io_sample_looping_bits_scores_1; // @[Decoupled.scala 380:21]
  assign queue_looping_io_enq_bits_scores_2 = io_sample_looping_bits_scores_2; // @[Decoupled.scala 380:21]
  assign queue_looping_io_enq_bits_scores_3 = io_sample_looping_bits_scores_3; // @[Decoupled.scala 380:21]
  assign queue_looping_io_enq_bits_scores_4 = io_sample_looping_bits_scores_4; // @[Decoupled.scala 380:21]
  assign queue_looping_io_enq_bits_scores_5 = io_sample_looping_bits_scores_5; // @[Decoupled.scala 380:21]
  assign queue_looping_io_enq_bits_weights_0 = io_sample_looping_bits_weights_0; // @[Decoupled.scala 380:21]
  assign queue_looping_io_enq_bits_weights_1 = io_sample_looping_bits_weights_1; // @[Decoupled.scala 380:21]
  assign queue_looping_io_enq_bits_weights_2 = io_sample_looping_bits_weights_2; // @[Decoupled.scala 380:21]
  assign queue_looping_io_enq_bits_weights_3 = io_sample_looping_bits_weights_3; // @[Decoupled.scala 380:21]
  assign queue_looping_io_enq_bits_weights_4 = io_sample_looping_bits_weights_4; // @[Decoupled.scala 380:21]
  assign queue_looping_io_enq_bits_last = io_sample_looping_bits_last; // @[Decoupled.scala 380:21]
  assign queue_looping_io_deq_ready = arbiter_io_in_1_ready; // @[Interconnect.scala 56:22]
  assign arbiter_clock = clock;
  assign arbiter_io_in_0_valid = queue_entering_io_deq_valid; // @[Interconnect.scala 55:22]
  assign arbiter_io_in_0_bits_features_0 = queue_entering_io_deq_bits_features_0; // @[Interconnect.scala 55:22]
  assign arbiter_io_in_0_bits_features_1 = queue_entering_io_deq_bits_features_1; // @[Interconnect.scala 55:22]
  assign arbiter_io_in_0_bits_features_2 = queue_entering_io_deq_bits_features_2; // @[Interconnect.scala 55:22]
  assign arbiter_io_in_0_bits_features_3 = queue_entering_io_deq_bits_features_3; // @[Interconnect.scala 55:22]
  assign arbiter_io_in_0_bits_features_4 = queue_entering_io_deq_bits_features_4; // @[Interconnect.scala 55:22]
  assign arbiter_io_in_0_bits_offset = queue_entering_io_deq_bits_offset; // @[Interconnect.scala 55:22]
  assign arbiter_io_in_0_bits_shift = queue_entering_io_deq_bits_shift; // @[Interconnect.scala 55:22]
  assign arbiter_io_in_0_bits_search_for_root = queue_entering_io_deq_bits_search_for_root; // @[Interconnect.scala 55:22]
  assign arbiter_io_in_0_bits_tree_to_exec = queue_entering_io_deq_bits_tree_to_exec; // @[Interconnect.scala 55:22]
  assign arbiter_io_in_0_bits_scores_0 = queue_entering_io_deq_bits_scores_0; // @[Interconnect.scala 55:22]
  assign arbiter_io_in_0_bits_scores_1 = queue_entering_io_deq_bits_scores_1; // @[Interconnect.scala 55:22]
  assign arbiter_io_in_0_bits_scores_2 = queue_entering_io_deq_bits_scores_2; // @[Interconnect.scala 55:22]
  assign arbiter_io_in_0_bits_scores_3 = queue_entering_io_deq_bits_scores_3; // @[Interconnect.scala 55:22]
  assign arbiter_io_in_0_bits_scores_4 = queue_entering_io_deq_bits_scores_4; // @[Interconnect.scala 55:22]
  assign arbiter_io_in_0_bits_scores_5 = queue_entering_io_deq_bits_scores_5; // @[Interconnect.scala 55:22]
  assign arbiter_io_in_0_bits_weights_0 = queue_entering_io_deq_bits_weights_0; // @[Interconnect.scala 55:22]
  assign arbiter_io_in_0_bits_weights_1 = queue_entering_io_deq_bits_weights_1; // @[Interconnect.scala 55:22]
  assign arbiter_io_in_0_bits_weights_2 = queue_entering_io_deq_bits_weights_2; // @[Interconnect.scala 55:22]
  assign arbiter_io_in_0_bits_weights_3 = queue_entering_io_deq_bits_weights_3; // @[Interconnect.scala 55:22]
  assign arbiter_io_in_0_bits_weights_4 = queue_entering_io_deq_bits_weights_4; // @[Interconnect.scala 55:22]
  assign arbiter_io_in_0_bits_last = queue_entering_io_deq_bits_last; // @[Interconnect.scala 55:22]
  assign arbiter_io_in_1_valid = queue_looping_io_deq_valid; // @[Interconnect.scala 56:22]
  assign arbiter_io_in_1_bits_features_0 = queue_looping_io_deq_bits_features_0; // @[Interconnect.scala 56:22]
  assign arbiter_io_in_1_bits_features_1 = queue_looping_io_deq_bits_features_1; // @[Interconnect.scala 56:22]
  assign arbiter_io_in_1_bits_features_2 = queue_looping_io_deq_bits_features_2; // @[Interconnect.scala 56:22]
  assign arbiter_io_in_1_bits_features_3 = queue_looping_io_deq_bits_features_3; // @[Interconnect.scala 56:22]
  assign arbiter_io_in_1_bits_features_4 = queue_looping_io_deq_bits_features_4; // @[Interconnect.scala 56:22]
  assign arbiter_io_in_1_bits_offset = queue_looping_io_deq_bits_offset; // @[Interconnect.scala 56:22]
  assign arbiter_io_in_1_bits_shift = queue_looping_io_deq_bits_shift; // @[Interconnect.scala 56:22]
  assign arbiter_io_in_1_bits_search_for_root = queue_looping_io_deq_bits_search_for_root; // @[Interconnect.scala 56:22]
  assign arbiter_io_in_1_bits_tree_to_exec = queue_looping_io_deq_bits_tree_to_exec; // @[Interconnect.scala 56:22]
  assign arbiter_io_in_1_bits_scores_0 = queue_looping_io_deq_bits_scores_0; // @[Interconnect.scala 56:22]
  assign arbiter_io_in_1_bits_scores_1 = queue_looping_io_deq_bits_scores_1; // @[Interconnect.scala 56:22]
  assign arbiter_io_in_1_bits_scores_2 = queue_looping_io_deq_bits_scores_2; // @[Interconnect.scala 56:22]
  assign arbiter_io_in_1_bits_scores_3 = queue_looping_io_deq_bits_scores_3; // @[Interconnect.scala 56:22]
  assign arbiter_io_in_1_bits_scores_4 = queue_looping_io_deq_bits_scores_4; // @[Interconnect.scala 56:22]
  assign arbiter_io_in_1_bits_scores_5 = queue_looping_io_deq_bits_scores_5; // @[Interconnect.scala 56:22]
  assign arbiter_io_in_1_bits_weights_0 = queue_looping_io_deq_bits_weights_0; // @[Interconnect.scala 56:22]
  assign arbiter_io_in_1_bits_weights_1 = queue_looping_io_deq_bits_weights_1; // @[Interconnect.scala 56:22]
  assign arbiter_io_in_1_bits_weights_2 = queue_looping_io_deq_bits_weights_2; // @[Interconnect.scala 56:22]
  assign arbiter_io_in_1_bits_weights_3 = queue_looping_io_deq_bits_weights_3; // @[Interconnect.scala 56:22]
  assign arbiter_io_in_1_bits_weights_4 = queue_looping_io_deq_bits_weights_4; // @[Interconnect.scala 56:22]
  assign arbiter_io_in_1_bits_last = queue_looping_io_deq_bits_last; // @[Interconnect.scala 56:22]
  assign arbiter_io_out_ready = io_sample_out_ready; // @[Interconnect.scala 57:19]
endmodule
module Queue_15(
  input         clock,
  input         reset,
  output        io_enq_ready,
  input         io_enq_valid,
  input  [31:0] io_enq_bits_features_0,
  input  [31:0] io_enq_bits_features_1,
  input  [31:0] io_enq_bits_features_2,
  input  [31:0] io_enq_bits_features_3,
  input  [31:0] io_enq_bits_features_4,
  input  [9:0]  io_enq_bits_offset,
  input         io_enq_bits_search_for_root,
  input  [7:0]  io_enq_bits_tree_to_exec,
  input  [15:0] io_enq_bits_scores_0,
  input  [15:0] io_enq_bits_scores_1,
  input  [15:0] io_enq_bits_scores_2,
  input  [15:0] io_enq_bits_scores_3,
  input  [15:0] io_enq_bits_scores_4,
  input  [15:0] io_enq_bits_scores_5,
  input  [15:0] io_enq_bits_weights_0,
  input  [15:0] io_enq_bits_weights_1,
  input  [15:0] io_enq_bits_weights_2,
  input  [15:0] io_enq_bits_weights_3,
  input  [15:0] io_enq_bits_weights_4,
  input         io_enq_bits_dest,
  input         io_enq_bits_last,
  input         io_deq_ready,
  output        io_deq_valid,
  output [31:0] io_deq_bits_features_0,
  output [31:0] io_deq_bits_features_1,
  output [31:0] io_deq_bits_features_2,
  output [31:0] io_deq_bits_features_3,
  output [31:0] io_deq_bits_features_4,
  output [9:0]  io_deq_bits_offset,
  output        io_deq_bits_shift,
  output        io_deq_bits_search_for_root,
  output [7:0]  io_deq_bits_tree_to_exec,
  output [15:0] io_deq_bits_scores_0,
  output [15:0] io_deq_bits_scores_1,
  output [15:0] io_deq_bits_scores_2,
  output [15:0] io_deq_bits_scores_3,
  output [15:0] io_deq_bits_scores_4,
  output [15:0] io_deq_bits_scores_5,
  output [15:0] io_deq_bits_weights_0,
  output [15:0] io_deq_bits_weights_1,
  output [15:0] io_deq_bits_weights_2,
  output [15:0] io_deq_bits_weights_3,
  output [15:0] io_deq_bits_weights_4,
  output        io_deq_bits_dest,
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
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] ram_features_0 [0:3]; // @[Decoupled.scala 275:95]
  wire  ram_features_0_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [1:0] ram_features_0_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire [31:0] ram_features_0_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire [31:0] ram_features_0_MPORT_data; // @[Decoupled.scala 275:95]
  wire [1:0] ram_features_0_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_features_0_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_features_0_MPORT_en; // @[Decoupled.scala 275:95]
  reg [31:0] ram_features_1 [0:3]; // @[Decoupled.scala 275:95]
  wire  ram_features_1_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [1:0] ram_features_1_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire [31:0] ram_features_1_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire [31:0] ram_features_1_MPORT_data; // @[Decoupled.scala 275:95]
  wire [1:0] ram_features_1_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_features_1_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_features_1_MPORT_en; // @[Decoupled.scala 275:95]
  reg [31:0] ram_features_2 [0:3]; // @[Decoupled.scala 275:95]
  wire  ram_features_2_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [1:0] ram_features_2_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire [31:0] ram_features_2_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire [31:0] ram_features_2_MPORT_data; // @[Decoupled.scala 275:95]
  wire [1:0] ram_features_2_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_features_2_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_features_2_MPORT_en; // @[Decoupled.scala 275:95]
  reg [31:0] ram_features_3 [0:3]; // @[Decoupled.scala 275:95]
  wire  ram_features_3_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [1:0] ram_features_3_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire [31:0] ram_features_3_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire [31:0] ram_features_3_MPORT_data; // @[Decoupled.scala 275:95]
  wire [1:0] ram_features_3_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_features_3_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_features_3_MPORT_en; // @[Decoupled.scala 275:95]
  reg [31:0] ram_features_4 [0:3]; // @[Decoupled.scala 275:95]
  wire  ram_features_4_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [1:0] ram_features_4_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire [31:0] ram_features_4_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire [31:0] ram_features_4_MPORT_data; // @[Decoupled.scala 275:95]
  wire [1:0] ram_features_4_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_features_4_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_features_4_MPORT_en; // @[Decoupled.scala 275:95]
  reg [9:0] ram_offset [0:3]; // @[Decoupled.scala 275:95]
  wire  ram_offset_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [1:0] ram_offset_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire [9:0] ram_offset_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire [9:0] ram_offset_MPORT_data; // @[Decoupled.scala 275:95]
  wire [1:0] ram_offset_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_offset_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_offset_MPORT_en; // @[Decoupled.scala 275:95]
  reg  ram_shift [0:3]; // @[Decoupled.scala 275:95]
  wire  ram_shift_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [1:0] ram_shift_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_shift_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire  ram_shift_MPORT_data; // @[Decoupled.scala 275:95]
  wire [1:0] ram_shift_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_shift_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_shift_MPORT_en; // @[Decoupled.scala 275:95]
  reg  ram_search_for_root [0:3]; // @[Decoupled.scala 275:95]
  wire  ram_search_for_root_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [1:0] ram_search_for_root_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_search_for_root_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire  ram_search_for_root_MPORT_data; // @[Decoupled.scala 275:95]
  wire [1:0] ram_search_for_root_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_search_for_root_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_search_for_root_MPORT_en; // @[Decoupled.scala 275:95]
  reg [7:0] ram_tree_to_exec [0:3]; // @[Decoupled.scala 275:95]
  wire  ram_tree_to_exec_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [1:0] ram_tree_to_exec_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire [7:0] ram_tree_to_exec_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire [7:0] ram_tree_to_exec_MPORT_data; // @[Decoupled.scala 275:95]
  wire [1:0] ram_tree_to_exec_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_tree_to_exec_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_tree_to_exec_MPORT_en; // @[Decoupled.scala 275:95]
  reg [15:0] ram_scores_0 [0:3]; // @[Decoupled.scala 275:95]
  wire  ram_scores_0_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [1:0] ram_scores_0_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire [15:0] ram_scores_0_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire [15:0] ram_scores_0_MPORT_data; // @[Decoupled.scala 275:95]
  wire [1:0] ram_scores_0_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_scores_0_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_scores_0_MPORT_en; // @[Decoupled.scala 275:95]
  reg [15:0] ram_scores_1 [0:3]; // @[Decoupled.scala 275:95]
  wire  ram_scores_1_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [1:0] ram_scores_1_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire [15:0] ram_scores_1_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire [15:0] ram_scores_1_MPORT_data; // @[Decoupled.scala 275:95]
  wire [1:0] ram_scores_1_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_scores_1_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_scores_1_MPORT_en; // @[Decoupled.scala 275:95]
  reg [15:0] ram_scores_2 [0:3]; // @[Decoupled.scala 275:95]
  wire  ram_scores_2_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [1:0] ram_scores_2_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire [15:0] ram_scores_2_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire [15:0] ram_scores_2_MPORT_data; // @[Decoupled.scala 275:95]
  wire [1:0] ram_scores_2_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_scores_2_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_scores_2_MPORT_en; // @[Decoupled.scala 275:95]
  reg [15:0] ram_scores_3 [0:3]; // @[Decoupled.scala 275:95]
  wire  ram_scores_3_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [1:0] ram_scores_3_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire [15:0] ram_scores_3_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire [15:0] ram_scores_3_MPORT_data; // @[Decoupled.scala 275:95]
  wire [1:0] ram_scores_3_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_scores_3_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_scores_3_MPORT_en; // @[Decoupled.scala 275:95]
  reg [15:0] ram_scores_4 [0:3]; // @[Decoupled.scala 275:95]
  wire  ram_scores_4_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [1:0] ram_scores_4_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire [15:0] ram_scores_4_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire [15:0] ram_scores_4_MPORT_data; // @[Decoupled.scala 275:95]
  wire [1:0] ram_scores_4_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_scores_4_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_scores_4_MPORT_en; // @[Decoupled.scala 275:95]
  reg [15:0] ram_scores_5 [0:3]; // @[Decoupled.scala 275:95]
  wire  ram_scores_5_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [1:0] ram_scores_5_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire [15:0] ram_scores_5_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire [15:0] ram_scores_5_MPORT_data; // @[Decoupled.scala 275:95]
  wire [1:0] ram_scores_5_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_scores_5_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_scores_5_MPORT_en; // @[Decoupled.scala 275:95]
  reg [15:0] ram_weights_0 [0:3]; // @[Decoupled.scala 275:95]
  wire  ram_weights_0_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [1:0] ram_weights_0_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire [15:0] ram_weights_0_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire [15:0] ram_weights_0_MPORT_data; // @[Decoupled.scala 275:95]
  wire [1:0] ram_weights_0_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_weights_0_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_weights_0_MPORT_en; // @[Decoupled.scala 275:95]
  reg [15:0] ram_weights_1 [0:3]; // @[Decoupled.scala 275:95]
  wire  ram_weights_1_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [1:0] ram_weights_1_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire [15:0] ram_weights_1_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire [15:0] ram_weights_1_MPORT_data; // @[Decoupled.scala 275:95]
  wire [1:0] ram_weights_1_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_weights_1_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_weights_1_MPORT_en; // @[Decoupled.scala 275:95]
  reg [15:0] ram_weights_2 [0:3]; // @[Decoupled.scala 275:95]
  wire  ram_weights_2_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [1:0] ram_weights_2_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire [15:0] ram_weights_2_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire [15:0] ram_weights_2_MPORT_data; // @[Decoupled.scala 275:95]
  wire [1:0] ram_weights_2_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_weights_2_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_weights_2_MPORT_en; // @[Decoupled.scala 275:95]
  reg [15:0] ram_weights_3 [0:3]; // @[Decoupled.scala 275:95]
  wire  ram_weights_3_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [1:0] ram_weights_3_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire [15:0] ram_weights_3_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire [15:0] ram_weights_3_MPORT_data; // @[Decoupled.scala 275:95]
  wire [1:0] ram_weights_3_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_weights_3_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_weights_3_MPORT_en; // @[Decoupled.scala 275:95]
  reg [15:0] ram_weights_4 [0:3]; // @[Decoupled.scala 275:95]
  wire  ram_weights_4_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [1:0] ram_weights_4_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire [15:0] ram_weights_4_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire [15:0] ram_weights_4_MPORT_data; // @[Decoupled.scala 275:95]
  wire [1:0] ram_weights_4_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_weights_4_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_weights_4_MPORT_en; // @[Decoupled.scala 275:95]
  reg  ram_dest [0:3]; // @[Decoupled.scala 275:95]
  wire  ram_dest_io_deq_bits_MPORT_en; // @[Decoupled.scala 275:95]
  wire [1:0] ram_dest_io_deq_bits_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_dest_io_deq_bits_MPORT_data; // @[Decoupled.scala 275:95]
  wire  ram_dest_MPORT_data; // @[Decoupled.scala 275:95]
  wire [1:0] ram_dest_MPORT_addr; // @[Decoupled.scala 275:95]
  wire  ram_dest_MPORT_mask; // @[Decoupled.scala 275:95]
  wire  ram_dest_MPORT_en; // @[Decoupled.scala 275:95]
  reg  ram_last [0:3]; // @[Decoupled.scala 275:95]
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
  wire [1:0] _value_T_1 = enq_ptr_value + 2'h1; // @[Counter.scala 77:24]
  wire [1:0] _value_T_3 = deq_ptr_value + 2'h1; // @[Counter.scala 77:24]
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
  assign ram_features_4_io_deq_bits_MPORT_en = 1'h1;
  assign ram_features_4_io_deq_bits_MPORT_addr = deq_ptr_value;
  assign ram_features_4_io_deq_bits_MPORT_data = ram_features_4[ram_features_4_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  assign ram_features_4_MPORT_data = io_enq_bits_features_4;
  assign ram_features_4_MPORT_addr = enq_ptr_value;
  assign ram_features_4_MPORT_mask = 1'h1;
  assign ram_features_4_MPORT_en = io_enq_ready & io_enq_valid;
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
  assign ram_shift_MPORT_data = 1'h0;
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
  assign ram_scores_4_io_deq_bits_MPORT_en = 1'h1;
  assign ram_scores_4_io_deq_bits_MPORT_addr = deq_ptr_value;
  assign ram_scores_4_io_deq_bits_MPORT_data = ram_scores_4[ram_scores_4_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  assign ram_scores_4_MPORT_data = io_enq_bits_scores_4;
  assign ram_scores_4_MPORT_addr = enq_ptr_value;
  assign ram_scores_4_MPORT_mask = 1'h1;
  assign ram_scores_4_MPORT_en = io_enq_ready & io_enq_valid;
  assign ram_scores_5_io_deq_bits_MPORT_en = 1'h1;
  assign ram_scores_5_io_deq_bits_MPORT_addr = deq_ptr_value;
  assign ram_scores_5_io_deq_bits_MPORT_data = ram_scores_5[ram_scores_5_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  assign ram_scores_5_MPORT_data = io_enq_bits_scores_5;
  assign ram_scores_5_MPORT_addr = enq_ptr_value;
  assign ram_scores_5_MPORT_mask = 1'h1;
  assign ram_scores_5_MPORT_en = io_enq_ready & io_enq_valid;
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
  assign ram_dest_io_deq_bits_MPORT_en = 1'h1;
  assign ram_dest_io_deq_bits_MPORT_addr = deq_ptr_value;
  assign ram_dest_io_deq_bits_MPORT_data = ram_dest[ram_dest_io_deq_bits_MPORT_addr]; // @[Decoupled.scala 275:95]
  assign ram_dest_MPORT_data = io_enq_bits_dest;
  assign ram_dest_MPORT_addr = enq_ptr_value;
  assign ram_dest_MPORT_mask = 1'h1;
  assign ram_dest_MPORT_en = io_enq_ready & io_enq_valid;
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
  assign io_deq_bits_features_4 = ram_features_4_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_offset = ram_offset_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_shift = ram_shift_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_search_for_root = ram_search_for_root_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_tree_to_exec = ram_tree_to_exec_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_scores_0 = ram_scores_0_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_scores_1 = ram_scores_1_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_scores_2 = ram_scores_2_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_scores_3 = ram_scores_3_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_scores_4 = ram_scores_4_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
  assign io_deq_bits_scores_5 = ram_scores_5_io_deq_bits_MPORT_data; // @[Decoupled.scala 312:17]
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
    if (ram_features_4_MPORT_en & ram_features_4_MPORT_mask) begin
      ram_features_4[ram_features_4_MPORT_addr] <= ram_features_4_MPORT_data; // @[Decoupled.scala 275:95]
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
    if (ram_scores_4_MPORT_en & ram_scores_4_MPORT_mask) begin
      ram_scores_4[ram_scores_4_MPORT_addr] <= ram_scores_4_MPORT_data; // @[Decoupled.scala 275:95]
    end
    if (ram_scores_5_MPORT_en & ram_scores_5_MPORT_mask) begin
      ram_scores_5[ram_scores_5_MPORT_addr] <= ram_scores_5_MPORT_data; // @[Decoupled.scala 275:95]
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
  _RAND_0 = {1{`RANDOM}};
  for (initvar = 0; initvar < 4; initvar = initvar+1)
    ram_features_0[initvar] = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  for (initvar = 0; initvar < 4; initvar = initvar+1)
    ram_features_1[initvar] = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  for (initvar = 0; initvar < 4; initvar = initvar+1)
    ram_features_2[initvar] = _RAND_2[31:0];
  _RAND_3 = {1{`RANDOM}};
  for (initvar = 0; initvar < 4; initvar = initvar+1)
    ram_features_3[initvar] = _RAND_3[31:0];
  _RAND_4 = {1{`RANDOM}};
  for (initvar = 0; initvar < 4; initvar = initvar+1)
    ram_features_4[initvar] = _RAND_4[31:0];
  _RAND_5 = {1{`RANDOM}};
  for (initvar = 0; initvar < 4; initvar = initvar+1)
    ram_offset[initvar] = _RAND_5[9:0];
  _RAND_6 = {1{`RANDOM}};
  for (initvar = 0; initvar < 4; initvar = initvar+1)
    ram_shift[initvar] = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  for (initvar = 0; initvar < 4; initvar = initvar+1)
    ram_search_for_root[initvar] = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  for (initvar = 0; initvar < 4; initvar = initvar+1)
    ram_tree_to_exec[initvar] = _RAND_8[7:0];
  _RAND_9 = {1{`RANDOM}};
  for (initvar = 0; initvar < 4; initvar = initvar+1)
    ram_scores_0[initvar] = _RAND_9[15:0];
  _RAND_10 = {1{`RANDOM}};
  for (initvar = 0; initvar < 4; initvar = initvar+1)
    ram_scores_1[initvar] = _RAND_10[15:0];
  _RAND_11 = {1{`RANDOM}};
  for (initvar = 0; initvar < 4; initvar = initvar+1)
    ram_scores_2[initvar] = _RAND_11[15:0];
  _RAND_12 = {1{`RANDOM}};
  for (initvar = 0; initvar < 4; initvar = initvar+1)
    ram_scores_3[initvar] = _RAND_12[15:0];
  _RAND_13 = {1{`RANDOM}};
  for (initvar = 0; initvar < 4; initvar = initvar+1)
    ram_scores_4[initvar] = _RAND_13[15:0];
  _RAND_14 = {1{`RANDOM}};
  for (initvar = 0; initvar < 4; initvar = initvar+1)
    ram_scores_5[initvar] = _RAND_14[15:0];
  _RAND_15 = {1{`RANDOM}};
  for (initvar = 0; initvar < 4; initvar = initvar+1)
    ram_weights_0[initvar] = _RAND_15[15:0];
  _RAND_16 = {1{`RANDOM}};
  for (initvar = 0; initvar < 4; initvar = initvar+1)
    ram_weights_1[initvar] = _RAND_16[15:0];
  _RAND_17 = {1{`RANDOM}};
  for (initvar = 0; initvar < 4; initvar = initvar+1)
    ram_weights_2[initvar] = _RAND_17[15:0];
  _RAND_18 = {1{`RANDOM}};
  for (initvar = 0; initvar < 4; initvar = initvar+1)
    ram_weights_3[initvar] = _RAND_18[15:0];
  _RAND_19 = {1{`RANDOM}};
  for (initvar = 0; initvar < 4; initvar = initvar+1)
    ram_weights_4[initvar] = _RAND_19[15:0];
  _RAND_20 = {1{`RANDOM}};
  for (initvar = 0; initvar < 4; initvar = initvar+1)
    ram_dest[initvar] = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  for (initvar = 0; initvar < 4; initvar = initvar+1)
    ram_last[initvar] = _RAND_21[0:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{`RANDOM}};
  enq_ptr_value = _RAND_22[1:0];
  _RAND_23 = {1{`RANDOM}};
  deq_ptr_value = _RAND_23[1:0];
  _RAND_24 = {1{`RANDOM}};
  maybe_full = _RAND_24[0:0];
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
  input  [31:0] io_sample_in_bits_features_0,
  input  [31:0] io_sample_in_bits_features_1,
  input  [31:0] io_sample_in_bits_features_2,
  input  [31:0] io_sample_in_bits_features_3,
  input  [31:0] io_sample_in_bits_features_4,
  input  [9:0]  io_sample_in_bits_offset,
  input         io_sample_in_bits_search_for_root,
  input  [7:0]  io_sample_in_bits_tree_to_exec,
  input  [15:0] io_sample_in_bits_scores_0,
  input  [15:0] io_sample_in_bits_scores_1,
  input  [15:0] io_sample_in_bits_scores_2,
  input  [15:0] io_sample_in_bits_scores_3,
  input  [15:0] io_sample_in_bits_scores_4,
  input  [15:0] io_sample_in_bits_scores_5,
  input  [15:0] io_sample_in_bits_weights_0,
  input  [15:0] io_sample_in_bits_weights_1,
  input  [15:0] io_sample_in_bits_weights_2,
  input  [15:0] io_sample_in_bits_weights_3,
  input  [15:0] io_sample_in_bits_weights_4,
  input         io_sample_in_bits_dest,
  input         io_sample_in_bits_last,
  input         io_sample_looping_ready,
  output        io_sample_looping_valid,
  output [31:0] io_sample_looping_bits_features_0,
  output [31:0] io_sample_looping_bits_features_1,
  output [31:0] io_sample_looping_bits_features_2,
  output [31:0] io_sample_looping_bits_features_3,
  output [31:0] io_sample_looping_bits_features_4,
  output [9:0]  io_sample_looping_bits_offset,
  output        io_sample_looping_bits_shift,
  output        io_sample_looping_bits_search_for_root,
  output [7:0]  io_sample_looping_bits_tree_to_exec,
  output [15:0] io_sample_looping_bits_scores_0,
  output [15:0] io_sample_looping_bits_scores_1,
  output [15:0] io_sample_looping_bits_scores_2,
  output [15:0] io_sample_looping_bits_scores_3,
  output [15:0] io_sample_looping_bits_scores_4,
  output [15:0] io_sample_looping_bits_scores_5,
  output [15:0] io_sample_looping_bits_weights_0,
  output [15:0] io_sample_looping_bits_weights_1,
  output [15:0] io_sample_looping_bits_weights_2,
  output [15:0] io_sample_looping_bits_weights_3,
  output [15:0] io_sample_looping_bits_weights_4,
  output        io_sample_looping_bits_last,
  input         io_sample_leaving_ready,
  output        io_sample_leaving_valid,
  output [31:0] io_sample_leaving_bits_features_0,
  output [31:0] io_sample_leaving_bits_features_1,
  output [31:0] io_sample_leaving_bits_features_2,
  output [31:0] io_sample_leaving_bits_features_3,
  output [31:0] io_sample_leaving_bits_features_4,
  output [9:0]  io_sample_leaving_bits_offset,
  output        io_sample_leaving_bits_shift,
  output        io_sample_leaving_bits_search_for_root,
  output [7:0]  io_sample_leaving_bits_tree_to_exec,
  output [15:0] io_sample_leaving_bits_scores_0,
  output [15:0] io_sample_leaving_bits_scores_1,
  output [15:0] io_sample_leaving_bits_scores_2,
  output [15:0] io_sample_leaving_bits_scores_3,
  output [15:0] io_sample_leaving_bits_scores_4,
  output [15:0] io_sample_leaving_bits_scores_5,
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
  wire [31:0] queue_io_enq_bits_features_0; // @[Decoupled.scala 377:21]
  wire [31:0] queue_io_enq_bits_features_1; // @[Decoupled.scala 377:21]
  wire [31:0] queue_io_enq_bits_features_2; // @[Decoupled.scala 377:21]
  wire [31:0] queue_io_enq_bits_features_3; // @[Decoupled.scala 377:21]
  wire [31:0] queue_io_enq_bits_features_4; // @[Decoupled.scala 377:21]
  wire [9:0] queue_io_enq_bits_offset; // @[Decoupled.scala 377:21]
  wire  queue_io_enq_bits_search_for_root; // @[Decoupled.scala 377:21]
  wire [7:0] queue_io_enq_bits_tree_to_exec; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_scores_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_scores_1; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_scores_2; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_scores_3; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_scores_4; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_scores_5; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_weights_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_weights_1; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_weights_2; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_weights_3; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_weights_4; // @[Decoupled.scala 377:21]
  wire  queue_io_enq_bits_dest; // @[Decoupled.scala 377:21]
  wire  queue_io_enq_bits_last; // @[Decoupled.scala 377:21]
  wire  queue_io_deq_ready; // @[Decoupled.scala 377:21]
  wire  queue_io_deq_valid; // @[Decoupled.scala 377:21]
  wire [31:0] queue_io_deq_bits_features_0; // @[Decoupled.scala 377:21]
  wire [31:0] queue_io_deq_bits_features_1; // @[Decoupled.scala 377:21]
  wire [31:0] queue_io_deq_bits_features_2; // @[Decoupled.scala 377:21]
  wire [31:0] queue_io_deq_bits_features_3; // @[Decoupled.scala 377:21]
  wire [31:0] queue_io_deq_bits_features_4; // @[Decoupled.scala 377:21]
  wire [9:0] queue_io_deq_bits_offset; // @[Decoupled.scala 377:21]
  wire  queue_io_deq_bits_shift; // @[Decoupled.scala 377:21]
  wire  queue_io_deq_bits_search_for_root; // @[Decoupled.scala 377:21]
  wire [7:0] queue_io_deq_bits_tree_to_exec; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_scores_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_scores_1; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_scores_2; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_scores_3; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_scores_4; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_scores_5; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_weights_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_weights_1; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_weights_2; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_weights_3; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_weights_4; // @[Decoupled.scala 377:21]
  wire  queue_io_deq_bits_dest; // @[Decoupled.scala 377:21]
  wire  queue_io_deq_bits_last; // @[Decoupled.scala 377:21]
  wire  _io_sample_looping_valid_T = ~queue_io_deq_bits_dest; // @[Interconnect.scala 28:46]
  Queue_15 queue ( // @[Decoupled.scala 377:21]
    .clock(queue_clock),
    .reset(queue_reset),
    .io_enq_ready(queue_io_enq_ready),
    .io_enq_valid(queue_io_enq_valid),
    .io_enq_bits_features_0(queue_io_enq_bits_features_0),
    .io_enq_bits_features_1(queue_io_enq_bits_features_1),
    .io_enq_bits_features_2(queue_io_enq_bits_features_2),
    .io_enq_bits_features_3(queue_io_enq_bits_features_3),
    .io_enq_bits_features_4(queue_io_enq_bits_features_4),
    .io_enq_bits_offset(queue_io_enq_bits_offset),
    .io_enq_bits_search_for_root(queue_io_enq_bits_search_for_root),
    .io_enq_bits_tree_to_exec(queue_io_enq_bits_tree_to_exec),
    .io_enq_bits_scores_0(queue_io_enq_bits_scores_0),
    .io_enq_bits_scores_1(queue_io_enq_bits_scores_1),
    .io_enq_bits_scores_2(queue_io_enq_bits_scores_2),
    .io_enq_bits_scores_3(queue_io_enq_bits_scores_3),
    .io_enq_bits_scores_4(queue_io_enq_bits_scores_4),
    .io_enq_bits_scores_5(queue_io_enq_bits_scores_5),
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
    .io_deq_bits_features_4(queue_io_deq_bits_features_4),
    .io_deq_bits_offset(queue_io_deq_bits_offset),
    .io_deq_bits_shift(queue_io_deq_bits_shift),
    .io_deq_bits_search_for_root(queue_io_deq_bits_search_for_root),
    .io_deq_bits_tree_to_exec(queue_io_deq_bits_tree_to_exec),
    .io_deq_bits_scores_0(queue_io_deq_bits_scores_0),
    .io_deq_bits_scores_1(queue_io_deq_bits_scores_1),
    .io_deq_bits_scores_2(queue_io_deq_bits_scores_2),
    .io_deq_bits_scores_3(queue_io_deq_bits_scores_3),
    .io_deq_bits_scores_4(queue_io_deq_bits_scores_4),
    .io_deq_bits_scores_5(queue_io_deq_bits_scores_5),
    .io_deq_bits_weights_0(queue_io_deq_bits_weights_0),
    .io_deq_bits_weights_1(queue_io_deq_bits_weights_1),
    .io_deq_bits_weights_2(queue_io_deq_bits_weights_2),
    .io_deq_bits_weights_3(queue_io_deq_bits_weights_3),
    .io_deq_bits_weights_4(queue_io_deq_bits_weights_4),
    .io_deq_bits_dest(queue_io_deq_bits_dest),
    .io_deq_bits_last(queue_io_deq_bits_last)
  );
  assign io_sample_in_ready = queue_io_enq_ready; // @[Decoupled.scala 381:17]
  assign io_sample_looping_valid = queue_io_deq_valid & ~queue_io_deq_bits_dest; // @[Interconnect.scala 28:44]
  assign io_sample_looping_bits_features_0 = queue_io_deq_bits_features_0; // @[Interconnect.scala 18:28]
  assign io_sample_looping_bits_features_1 = queue_io_deq_bits_features_1; // @[Interconnect.scala 18:28]
  assign io_sample_looping_bits_features_2 = queue_io_deq_bits_features_2; // @[Interconnect.scala 18:28]
  assign io_sample_looping_bits_features_3 = queue_io_deq_bits_features_3; // @[Interconnect.scala 18:28]
  assign io_sample_looping_bits_features_4 = queue_io_deq_bits_features_4; // @[Interconnect.scala 18:28]
  assign io_sample_looping_bits_offset = queue_io_deq_bits_offset; // @[Interconnect.scala 18:28]
  assign io_sample_looping_bits_shift = queue_io_deq_bits_shift; // @[Interconnect.scala 18:28]
  assign io_sample_looping_bits_search_for_root = queue_io_deq_bits_search_for_root; // @[Interconnect.scala 18:28]
  assign io_sample_looping_bits_tree_to_exec = queue_io_deq_bits_tree_to_exec; // @[Interconnect.scala 18:28]
  assign io_sample_looping_bits_scores_0 = queue_io_deq_bits_scores_0; // @[Interconnect.scala 18:28]
  assign io_sample_looping_bits_scores_1 = queue_io_deq_bits_scores_1; // @[Interconnect.scala 18:28]
  assign io_sample_looping_bits_scores_2 = queue_io_deq_bits_scores_2; // @[Interconnect.scala 18:28]
  assign io_sample_looping_bits_scores_3 = queue_io_deq_bits_scores_3; // @[Interconnect.scala 18:28]
  assign io_sample_looping_bits_scores_4 = queue_io_deq_bits_scores_4; // @[Interconnect.scala 18:28]
  assign io_sample_looping_bits_scores_5 = queue_io_deq_bits_scores_5; // @[Interconnect.scala 18:28]
  assign io_sample_looping_bits_weights_0 = queue_io_deq_bits_weights_0; // @[Interconnect.scala 18:28]
  assign io_sample_looping_bits_weights_1 = queue_io_deq_bits_weights_1; // @[Interconnect.scala 18:28]
  assign io_sample_looping_bits_weights_2 = queue_io_deq_bits_weights_2; // @[Interconnect.scala 18:28]
  assign io_sample_looping_bits_weights_3 = queue_io_deq_bits_weights_3; // @[Interconnect.scala 18:28]
  assign io_sample_looping_bits_weights_4 = queue_io_deq_bits_weights_4; // @[Interconnect.scala 18:28]
  assign io_sample_looping_bits_last = queue_io_deq_bits_last; // @[Interconnect.scala 18:28]
  assign io_sample_leaving_valid = queue_io_deq_valid & queue_io_deq_bits_dest; // @[Interconnect.scala 29:44]
  assign io_sample_leaving_bits_features_0 = queue_io_deq_bits_features_0; // @[Interconnect.scala 19:37]
  assign io_sample_leaving_bits_features_1 = queue_io_deq_bits_features_1; // @[Interconnect.scala 19:37]
  assign io_sample_leaving_bits_features_2 = queue_io_deq_bits_features_2; // @[Interconnect.scala 19:37]
  assign io_sample_leaving_bits_features_3 = queue_io_deq_bits_features_3; // @[Interconnect.scala 19:37]
  assign io_sample_leaving_bits_features_4 = queue_io_deq_bits_features_4; // @[Interconnect.scala 19:37]
  assign io_sample_leaving_bits_offset = queue_io_deq_bits_offset; // @[Interconnect.scala 20:35]
  assign io_sample_leaving_bits_shift = queue_io_deq_bits_shift; // @[Interconnect.scala 21:34]
  assign io_sample_leaving_bits_search_for_root = queue_io_deq_bits_search_for_root; // @[Interconnect.scala 22:44]
  assign io_sample_leaving_bits_tree_to_exec = queue_io_deq_bits_tree_to_exec; // @[Interconnect.scala 23:41]
  assign io_sample_leaving_bits_scores_0 = queue_io_deq_bits_scores_0; // @[Interconnect.scala 24:35]
  assign io_sample_leaving_bits_scores_1 = queue_io_deq_bits_scores_1; // @[Interconnect.scala 24:35]
  assign io_sample_leaving_bits_scores_2 = queue_io_deq_bits_scores_2; // @[Interconnect.scala 24:35]
  assign io_sample_leaving_bits_scores_3 = queue_io_deq_bits_scores_3; // @[Interconnect.scala 24:35]
  assign io_sample_leaving_bits_scores_4 = queue_io_deq_bits_scores_4; // @[Interconnect.scala 24:35]
  assign io_sample_leaving_bits_scores_5 = queue_io_deq_bits_scores_5; // @[Interconnect.scala 24:35]
  assign io_sample_leaving_bits_weights_0 = queue_io_deq_bits_weights_0; // @[Interconnect.scala 25:36]
  assign io_sample_leaving_bits_weights_1 = queue_io_deq_bits_weights_1; // @[Interconnect.scala 25:36]
  assign io_sample_leaving_bits_weights_2 = queue_io_deq_bits_weights_2; // @[Interconnect.scala 25:36]
  assign io_sample_leaving_bits_weights_3 = queue_io_deq_bits_weights_3; // @[Interconnect.scala 25:36]
  assign io_sample_leaving_bits_weights_4 = queue_io_deq_bits_weights_4; // @[Interconnect.scala 25:36]
  assign io_sample_leaving_bits_last = queue_io_deq_bits_last & queue_io_deq_bits_dest; // @[Interconnect.scala 27:52]
  assign queue_clock = clock;
  assign queue_reset = reset;
  assign queue_io_enq_valid = io_sample_in_valid; // @[Decoupled.scala 379:22]
  assign queue_io_enq_bits_features_0 = io_sample_in_bits_features_0; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_features_1 = io_sample_in_bits_features_1; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_features_2 = io_sample_in_bits_features_2; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_features_3 = io_sample_in_bits_features_3; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_features_4 = io_sample_in_bits_features_4; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_offset = io_sample_in_bits_offset; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_search_for_root = io_sample_in_bits_search_for_root; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_tree_to_exec = io_sample_in_bits_tree_to_exec; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_scores_0 = io_sample_in_bits_scores_0; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_scores_1 = io_sample_in_bits_scores_1; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_scores_2 = io_sample_in_bits_scores_2; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_scores_3 = io_sample_in_bits_scores_3; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_scores_4 = io_sample_in_bits_scores_4; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_scores_5 = io_sample_in_bits_scores_5; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_weights_0 = io_sample_in_bits_weights_0; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_weights_1 = io_sample_in_bits_weights_1; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_weights_2 = io_sample_in_bits_weights_2; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_weights_3 = io_sample_in_bits_weights_3; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_weights_4 = io_sample_in_bits_weights_4; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_dest = io_sample_in_bits_dest; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_last = io_sample_in_bits_last; // @[Decoupled.scala 380:21]
  assign queue_io_deq_ready = io_sample_leaving_ready & queue_io_deq_bits_dest | io_sample_looping_ready &
    _io_sample_looping_valid_T; // @[Interconnect.scala 32:64]
endmodule
module IncrementTreePE(
  input         clock,
  input         reset,
  output        io_sample_in_ready,
  input         io_sample_in_valid,
  input  [31:0] io_sample_in_bits_features_0,
  input  [31:0] io_sample_in_bits_features_1,
  input  [31:0] io_sample_in_bits_features_2,
  input  [31:0] io_sample_in_bits_features_3,
  input  [31:0] io_sample_in_bits_features_4,
  input  [9:0]  io_sample_in_bits_offset,
  input         io_sample_in_bits_shift,
  input         io_sample_in_bits_search_for_root,
  input  [7:0]  io_sample_in_bits_tree_to_exec,
  input  [15:0] io_sample_in_bits_scores_0,
  input  [15:0] io_sample_in_bits_scores_1,
  input  [15:0] io_sample_in_bits_scores_2,
  input  [15:0] io_sample_in_bits_scores_3,
  input  [15:0] io_sample_in_bits_scores_4,
  input  [15:0] io_sample_in_bits_scores_5,
  input  [15:0] io_sample_in_bits_weights_0,
  input  [15:0] io_sample_in_bits_weights_1,
  input  [15:0] io_sample_in_bits_weights_2,
  input  [15:0] io_sample_in_bits_weights_3,
  input  [15:0] io_sample_in_bits_weights_4,
  input         io_sample_in_bits_last,
  input         io_sample_out_ready,
  output        io_sample_out_valid,
  output [31:0] io_sample_out_bits_features_0,
  output [31:0] io_sample_out_bits_features_1,
  output [31:0] io_sample_out_bits_features_2,
  output [31:0] io_sample_out_bits_features_3,
  output [31:0] io_sample_out_bits_features_4,
  output [9:0]  io_sample_out_bits_offset,
  output        io_sample_out_bits_shift,
  output        io_sample_out_bits_search_for_root,
  output [7:0]  io_sample_out_bits_tree_to_exec,
  output [15:0] io_sample_out_bits_scores_0,
  output [15:0] io_sample_out_bits_scores_1,
  output [15:0] io_sample_out_bits_scores_2,
  output [15:0] io_sample_out_bits_scores_3,
  output [15:0] io_sample_out_bits_scores_4,
  output [15:0] io_sample_out_bits_scores_5,
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
  wire [31:0] queue_io_enq_bits_features_0; // @[Decoupled.scala 377:21]
  wire [31:0] queue_io_enq_bits_features_1; // @[Decoupled.scala 377:21]
  wire [31:0] queue_io_enq_bits_features_2; // @[Decoupled.scala 377:21]
  wire [31:0] queue_io_enq_bits_features_3; // @[Decoupled.scala 377:21]
  wire [31:0] queue_io_enq_bits_features_4; // @[Decoupled.scala 377:21]
  wire [9:0] queue_io_enq_bits_offset; // @[Decoupled.scala 377:21]
  wire  queue_io_enq_bits_shift; // @[Decoupled.scala 377:21]
  wire  queue_io_enq_bits_search_for_root; // @[Decoupled.scala 377:21]
  wire [7:0] queue_io_enq_bits_tree_to_exec; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_scores_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_scores_1; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_scores_2; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_scores_3; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_scores_4; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_scores_5; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_weights_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_weights_1; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_weights_2; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_weights_3; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_enq_bits_weights_4; // @[Decoupled.scala 377:21]
  wire  queue_io_enq_bits_last; // @[Decoupled.scala 377:21]
  wire  queue_io_deq_ready; // @[Decoupled.scala 377:21]
  wire  queue_io_deq_valid; // @[Decoupled.scala 377:21]
  wire [31:0] queue_io_deq_bits_features_0; // @[Decoupled.scala 377:21]
  wire [31:0] queue_io_deq_bits_features_1; // @[Decoupled.scala 377:21]
  wire [31:0] queue_io_deq_bits_features_2; // @[Decoupled.scala 377:21]
  wire [31:0] queue_io_deq_bits_features_3; // @[Decoupled.scala 377:21]
  wire [31:0] queue_io_deq_bits_features_4; // @[Decoupled.scala 377:21]
  wire [9:0] queue_io_deq_bits_offset; // @[Decoupled.scala 377:21]
  wire  queue_io_deq_bits_shift; // @[Decoupled.scala 377:21]
  wire  queue_io_deq_bits_search_for_root; // @[Decoupled.scala 377:21]
  wire [7:0] queue_io_deq_bits_tree_to_exec; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_scores_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_scores_1; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_scores_2; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_scores_3; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_scores_4; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_scores_5; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_weights_0; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_weights_1; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_weights_2; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_weights_3; // @[Decoupled.scala 377:21]
  wire [15:0] queue_io_deq_bits_weights_4; // @[Decoupled.scala 377:21]
  wire  queue_io_deq_bits_last; // @[Decoupled.scala 377:21]
  wire [7:0] _io_sample_out_bits_tree_to_exec_T_1 = queue_io_deq_bits_tree_to_exec + 8'h1; // @[IncrementTreePE.scala 19:64]
  Queue_3 queue ( // @[Decoupled.scala 377:21]
    .clock(queue_clock),
    .reset(queue_reset),
    .io_enq_ready(queue_io_enq_ready),
    .io_enq_valid(queue_io_enq_valid),
    .io_enq_bits_features_0(queue_io_enq_bits_features_0),
    .io_enq_bits_features_1(queue_io_enq_bits_features_1),
    .io_enq_bits_features_2(queue_io_enq_bits_features_2),
    .io_enq_bits_features_3(queue_io_enq_bits_features_3),
    .io_enq_bits_features_4(queue_io_enq_bits_features_4),
    .io_enq_bits_offset(queue_io_enq_bits_offset),
    .io_enq_bits_shift(queue_io_enq_bits_shift),
    .io_enq_bits_search_for_root(queue_io_enq_bits_search_for_root),
    .io_enq_bits_tree_to_exec(queue_io_enq_bits_tree_to_exec),
    .io_enq_bits_scores_0(queue_io_enq_bits_scores_0),
    .io_enq_bits_scores_1(queue_io_enq_bits_scores_1),
    .io_enq_bits_scores_2(queue_io_enq_bits_scores_2),
    .io_enq_bits_scores_3(queue_io_enq_bits_scores_3),
    .io_enq_bits_scores_4(queue_io_enq_bits_scores_4),
    .io_enq_bits_scores_5(queue_io_enq_bits_scores_5),
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
    .io_deq_bits_features_4(queue_io_deq_bits_features_4),
    .io_deq_bits_offset(queue_io_deq_bits_offset),
    .io_deq_bits_shift(queue_io_deq_bits_shift),
    .io_deq_bits_search_for_root(queue_io_deq_bits_search_for_root),
    .io_deq_bits_tree_to_exec(queue_io_deq_bits_tree_to_exec),
    .io_deq_bits_scores_0(queue_io_deq_bits_scores_0),
    .io_deq_bits_scores_1(queue_io_deq_bits_scores_1),
    .io_deq_bits_scores_2(queue_io_deq_bits_scores_2),
    .io_deq_bits_scores_3(queue_io_deq_bits_scores_3),
    .io_deq_bits_scores_4(queue_io_deq_bits_scores_4),
    .io_deq_bits_scores_5(queue_io_deq_bits_scores_5),
    .io_deq_bits_weights_0(queue_io_deq_bits_weights_0),
    .io_deq_bits_weights_1(queue_io_deq_bits_weights_1),
    .io_deq_bits_weights_2(queue_io_deq_bits_weights_2),
    .io_deq_bits_weights_3(queue_io_deq_bits_weights_3),
    .io_deq_bits_weights_4(queue_io_deq_bits_weights_4),
    .io_deq_bits_last(queue_io_deq_bits_last)
  );
  assign io_sample_in_ready = queue_io_enq_ready; // @[Decoupled.scala 381:17]
  assign io_sample_out_valid = queue_io_deq_valid; // @[IncrementTreePE.scala 28:25]
  assign io_sample_out_bits_features_0 = queue_io_deq_bits_features_0; // @[IncrementTreePE.scala 17:33]
  assign io_sample_out_bits_features_1 = queue_io_deq_bits_features_1; // @[IncrementTreePE.scala 17:33]
  assign io_sample_out_bits_features_2 = queue_io_deq_bits_features_2; // @[IncrementTreePE.scala 17:33]
  assign io_sample_out_bits_features_3 = queue_io_deq_bits_features_3; // @[IncrementTreePE.scala 17:33]
  assign io_sample_out_bits_features_4 = queue_io_deq_bits_features_4; // @[IncrementTreePE.scala 17:33]
  assign io_sample_out_bits_offset = {{2'd0}, _io_sample_out_bits_tree_to_exec_T_1}; // @[IncrementTreePE.scala 21:31]
  assign io_sample_out_bits_shift = queue_io_deq_bits_shift; // @[IncrementTreePE.scala 20:30]
  assign io_sample_out_bits_search_for_root = queue_io_deq_bits_search_for_root; // @[IncrementTreePE.scala 23:40]
  assign io_sample_out_bits_tree_to_exec = queue_io_deq_bits_tree_to_exec + 8'h1; // @[IncrementTreePE.scala 19:64]
  assign io_sample_out_bits_scores_0 = queue_io_deq_bits_scores_0; // @[IncrementTreePE.scala 22:31]
  assign io_sample_out_bits_scores_1 = queue_io_deq_bits_scores_1; // @[IncrementTreePE.scala 22:31]
  assign io_sample_out_bits_scores_2 = queue_io_deq_bits_scores_2; // @[IncrementTreePE.scala 22:31]
  assign io_sample_out_bits_scores_3 = queue_io_deq_bits_scores_3; // @[IncrementTreePE.scala 22:31]
  assign io_sample_out_bits_scores_4 = queue_io_deq_bits_scores_4; // @[IncrementTreePE.scala 22:31]
  assign io_sample_out_bits_scores_5 = queue_io_deq_bits_scores_5; // @[IncrementTreePE.scala 22:31]
  assign io_sample_out_bits_weights_0 = queue_io_deq_bits_weights_0; // @[IncrementTreePE.scala 18:32]
  assign io_sample_out_bits_weights_1 = queue_io_deq_bits_weights_1; // @[IncrementTreePE.scala 18:32]
  assign io_sample_out_bits_weights_2 = queue_io_deq_bits_weights_2; // @[IncrementTreePE.scala 18:32]
  assign io_sample_out_bits_weights_3 = queue_io_deq_bits_weights_3; // @[IncrementTreePE.scala 18:32]
  assign io_sample_out_bits_weights_4 = queue_io_deq_bits_weights_4; // @[IncrementTreePE.scala 18:32]
  assign io_sample_out_bits_last = queue_io_deq_bits_last; // @[IncrementTreePE.scala 25:29]
  assign queue_clock = clock;
  assign queue_reset = reset;
  assign queue_io_enq_valid = io_sample_in_valid; // @[Decoupled.scala 379:22]
  assign queue_io_enq_bits_features_0 = io_sample_in_bits_features_0; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_features_1 = io_sample_in_bits_features_1; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_features_2 = io_sample_in_bits_features_2; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_features_3 = io_sample_in_bits_features_3; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_features_4 = io_sample_in_bits_features_4; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_offset = io_sample_in_bits_offset; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_shift = io_sample_in_bits_shift; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_search_for_root = io_sample_in_bits_search_for_root; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_tree_to_exec = io_sample_in_bits_tree_to_exec; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_scores_0 = io_sample_in_bits_scores_0; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_scores_1 = io_sample_in_bits_scores_1; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_scores_2 = io_sample_in_bits_scores_2; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_scores_3 = io_sample_in_bits_scores_3; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_scores_4 = io_sample_in_bits_scores_4; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_scores_5 = io_sample_in_bits_scores_5; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_weights_0 = io_sample_in_bits_weights_0; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_weights_1 = io_sample_in_bits_weights_1; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_weights_2 = io_sample_in_bits_weights_2; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_weights_3 = io_sample_in_bits_weights_3; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_weights_4 = io_sample_in_bits_weights_4; // @[Decoupled.scala 380:21]
  assign queue_io_enq_bits_last = io_sample_in_bits_last; // @[Decoupled.scala 380:21]
  assign queue_io_deq_ready = io_sample_out_ready; // @[IncrementTreePE.scala 30:17]
endmodule
module TreePEsWrapper(
  input          clock,
  input          reset,
  input  [383:0] wrapper_io_sample_in_TDATA,
  input          wrapper_io_sample_in_TLAST,
  output         wrapper_io_sample_in_TREADY,
  input          wrapper_io_sample_in_TVALID,
  output [383:0] wrapper_io_sample_out_TDATA,
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
  input  [3:0]   brams_io_4_bram_we_a,
  input  [12:0]  brams_io_5_bram_addr_a,
  input          brams_io_5_bram_clk_a,
  input  [31:0]  brams_io_5_bram_wrdata_a,
  output [31:0]  brams_io_5_bram_rddata_a,
  input          brams_io_5_bram_en_a,
  input          brams_io_5_bram_rst_a,
  input  [3:0]   brams_io_5_bram_we_a,
  input  [12:0]  brams_io_6_bram_addr_a,
  input          brams_io_6_bram_clk_a,
  input  [31:0]  brams_io_6_bram_wrdata_a,
  output [31:0]  brams_io_6_bram_rddata_a,
  input          brams_io_6_bram_en_a,
  input          brams_io_6_bram_rst_a,
  input  [3:0]   brams_io_6_bram_we_a,
  input  [12:0]  brams_io_7_bram_addr_a,
  input          brams_io_7_bram_clk_a,
  input  [31:0]  brams_io_7_bram_wrdata_a,
  output [31:0]  brams_io_7_bram_rddata_a,
  input          brams_io_7_bram_en_a,
  input          brams_io_7_bram_rst_a,
  input  [3:0]   brams_io_7_bram_we_a,
  input  [12:0]  brams_io_8_bram_addr_a,
  input          brams_io_8_bram_clk_a,
  input  [31:0]  brams_io_8_bram_wrdata_a,
  output [31:0]  brams_io_8_bram_rddata_a,
  input          brams_io_8_bram_en_a,
  input          brams_io_8_bram_rst_a,
  input  [3:0]   brams_io_8_bram_we_a,
  input  [12:0]  brams_io_9_bram_addr_a,
  input          brams_io_9_bram_clk_a,
  input  [31:0]  brams_io_9_bram_wrdata_a,
  output [31:0]  brams_io_9_bram_rddata_a,
  input          brams_io_9_bram_en_a,
  input          brams_io_9_bram_rst_a,
  input  [3:0]   brams_io_9_bram_we_a
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  wire [383:0] forward_converter_io_sample_in_TDATA; // @[TreePEsWrapper.scala 47:39]
  wire  forward_converter_io_sample_in_TLAST; // @[TreePEsWrapper.scala 47:39]
  wire  forward_converter_io_sample_in_TREADY; // @[TreePEsWrapper.scala 47:39]
  wire  forward_converter_io_sample_in_TVALID; // @[TreePEsWrapper.scala 47:39]
  wire  forward_converter_io_sample_out_ready; // @[TreePEsWrapper.scala 47:39]
  wire  forward_converter_io_sample_out_valid; // @[TreePEsWrapper.scala 47:39]
  wire [31:0] forward_converter_io_sample_out_bits_features_0; // @[TreePEsWrapper.scala 47:39]
  wire [31:0] forward_converter_io_sample_out_bits_features_1; // @[TreePEsWrapper.scala 47:39]
  wire [31:0] forward_converter_io_sample_out_bits_features_2; // @[TreePEsWrapper.scala 47:39]
  wire [31:0] forward_converter_io_sample_out_bits_features_3; // @[TreePEsWrapper.scala 47:39]
  wire [31:0] forward_converter_io_sample_out_bits_features_4; // @[TreePEsWrapper.scala 47:39]
  wire [9:0] forward_converter_io_sample_out_bits_offset; // @[TreePEsWrapper.scala 47:39]
  wire  forward_converter_io_sample_out_bits_shift; // @[TreePEsWrapper.scala 47:39]
  wire  forward_converter_io_sample_out_bits_search_for_root; // @[TreePEsWrapper.scala 47:39]
  wire [7:0] forward_converter_io_sample_out_bits_tree_to_exec; // @[TreePEsWrapper.scala 47:39]
  wire [15:0] forward_converter_io_sample_out_bits_scores_0; // @[TreePEsWrapper.scala 47:39]
  wire [15:0] forward_converter_io_sample_out_bits_scores_1; // @[TreePEsWrapper.scala 47:39]
  wire [15:0] forward_converter_io_sample_out_bits_scores_2; // @[TreePEsWrapper.scala 47:39]
  wire [15:0] forward_converter_io_sample_out_bits_scores_3; // @[TreePEsWrapper.scala 47:39]
  wire [15:0] forward_converter_io_sample_out_bits_scores_4; // @[TreePEsWrapper.scala 47:39]
  wire [15:0] forward_converter_io_sample_out_bits_scores_5; // @[TreePEsWrapper.scala 47:39]
  wire [15:0] forward_converter_io_sample_out_bits_weights_0; // @[TreePEsWrapper.scala 47:39]
  wire [15:0] forward_converter_io_sample_out_bits_weights_1; // @[TreePEsWrapper.scala 47:39]
  wire [15:0] forward_converter_io_sample_out_bits_weights_2; // @[TreePEsWrapper.scala 47:39]
  wire [15:0] forward_converter_io_sample_out_bits_weights_3; // @[TreePEsWrapper.scala 47:39]
  wire [15:0] forward_converter_io_sample_out_bits_weights_4; // @[TreePEsWrapper.scala 47:39]
  wire  forward_converter_io_sample_out_bits_last; // @[TreePEsWrapper.scala 47:39]
  wire  backward_converter_clock; // @[TreePEsWrapper.scala 48:40]
  wire  backward_converter_reset; // @[TreePEsWrapper.scala 48:40]
  wire  backward_converter_io_sample_in_ready; // @[TreePEsWrapper.scala 48:40]
  wire  backward_converter_io_sample_in_valid; // @[TreePEsWrapper.scala 48:40]
  wire [31:0] backward_converter_io_sample_in_bits_features_0; // @[TreePEsWrapper.scala 48:40]
  wire [31:0] backward_converter_io_sample_in_bits_features_1; // @[TreePEsWrapper.scala 48:40]
  wire [31:0] backward_converter_io_sample_in_bits_features_2; // @[TreePEsWrapper.scala 48:40]
  wire [31:0] backward_converter_io_sample_in_bits_features_3; // @[TreePEsWrapper.scala 48:40]
  wire [31:0] backward_converter_io_sample_in_bits_features_4; // @[TreePEsWrapper.scala 48:40]
  wire [9:0] backward_converter_io_sample_in_bits_offset; // @[TreePEsWrapper.scala 48:40]
  wire  backward_converter_io_sample_in_bits_shift; // @[TreePEsWrapper.scala 48:40]
  wire  backward_converter_io_sample_in_bits_search_for_root; // @[TreePEsWrapper.scala 48:40]
  wire [7:0] backward_converter_io_sample_in_bits_tree_to_exec; // @[TreePEsWrapper.scala 48:40]
  wire [15:0] backward_converter_io_sample_in_bits_scores_0; // @[TreePEsWrapper.scala 48:40]
  wire [15:0] backward_converter_io_sample_in_bits_scores_1; // @[TreePEsWrapper.scala 48:40]
  wire [15:0] backward_converter_io_sample_in_bits_scores_2; // @[TreePEsWrapper.scala 48:40]
  wire [15:0] backward_converter_io_sample_in_bits_scores_3; // @[TreePEsWrapper.scala 48:40]
  wire [15:0] backward_converter_io_sample_in_bits_scores_4; // @[TreePEsWrapper.scala 48:40]
  wire [15:0] backward_converter_io_sample_in_bits_scores_5; // @[TreePEsWrapper.scala 48:40]
  wire  backward_converter_io_sample_in_bits_last; // @[TreePEsWrapper.scala 48:40]
  wire [31:0] backward_converter_io_sample_in_bits_clock_cycles; // @[TreePEsWrapper.scala 48:40]
  wire [383:0] backward_converter_io_sample_out_TDATA; // @[TreePEsWrapper.scala 48:40]
  wire  backward_converter_io_sample_out_TLAST; // @[TreePEsWrapper.scala 48:40]
  wire  backward_converter_io_sample_out_TREADY; // @[TreePEsWrapper.scala 48:40]
  wire  backward_converter_io_sample_out_TVALID; // @[TreePEsWrapper.scala 48:40]
  wire  dispatcher_clock; // @[TreePEsWrapper.scala 50:32]
  wire  dispatcher_reset; // @[TreePEsWrapper.scala 50:32]
  wire  dispatcher_io_sample_in_ready; // @[TreePEsWrapper.scala 50:32]
  wire  dispatcher_io_sample_in_valid; // @[TreePEsWrapper.scala 50:32]
  wire [31:0] dispatcher_io_sample_in_bits_features_0; // @[TreePEsWrapper.scala 50:32]
  wire [31:0] dispatcher_io_sample_in_bits_features_1; // @[TreePEsWrapper.scala 50:32]
  wire [31:0] dispatcher_io_sample_in_bits_features_2; // @[TreePEsWrapper.scala 50:32]
  wire [31:0] dispatcher_io_sample_in_bits_features_3; // @[TreePEsWrapper.scala 50:32]
  wire [31:0] dispatcher_io_sample_in_bits_features_4; // @[TreePEsWrapper.scala 50:32]
  wire [9:0] dispatcher_io_sample_in_bits_offset; // @[TreePEsWrapper.scala 50:32]
  wire  dispatcher_io_sample_in_bits_shift; // @[TreePEsWrapper.scala 50:32]
  wire  dispatcher_io_sample_in_bits_search_for_root; // @[TreePEsWrapper.scala 50:32]
  wire [7:0] dispatcher_io_sample_in_bits_tree_to_exec; // @[TreePEsWrapper.scala 50:32]
  wire [15:0] dispatcher_io_sample_in_bits_scores_0; // @[TreePEsWrapper.scala 50:32]
  wire [15:0] dispatcher_io_sample_in_bits_scores_1; // @[TreePEsWrapper.scala 50:32]
  wire [15:0] dispatcher_io_sample_in_bits_scores_2; // @[TreePEsWrapper.scala 50:32]
  wire [15:0] dispatcher_io_sample_in_bits_scores_3; // @[TreePEsWrapper.scala 50:32]
  wire [15:0] dispatcher_io_sample_in_bits_scores_4; // @[TreePEsWrapper.scala 50:32]
  wire [15:0] dispatcher_io_sample_in_bits_scores_5; // @[TreePEsWrapper.scala 50:32]
  wire [15:0] dispatcher_io_sample_in_bits_weights_0; // @[TreePEsWrapper.scala 50:32]
  wire [15:0] dispatcher_io_sample_in_bits_weights_1; // @[TreePEsWrapper.scala 50:32]
  wire [15:0] dispatcher_io_sample_in_bits_weights_2; // @[TreePEsWrapper.scala 50:32]
  wire [15:0] dispatcher_io_sample_in_bits_weights_3; // @[TreePEsWrapper.scala 50:32]
  wire [15:0] dispatcher_io_sample_in_bits_weights_4; // @[TreePEsWrapper.scala 50:32]
  wire  dispatcher_io_sample_in_bits_last; // @[TreePEsWrapper.scala 50:32]
  wire  dispatcher_io_samples_out_0_ready; // @[TreePEsWrapper.scala 50:32]
  wire  dispatcher_io_samples_out_0_valid; // @[TreePEsWrapper.scala 50:32]
  wire [31:0] dispatcher_io_samples_out_0_bits_features_0; // @[TreePEsWrapper.scala 50:32]
  wire [31:0] dispatcher_io_samples_out_0_bits_features_1; // @[TreePEsWrapper.scala 50:32]
  wire [31:0] dispatcher_io_samples_out_0_bits_features_2; // @[TreePEsWrapper.scala 50:32]
  wire [31:0] dispatcher_io_samples_out_0_bits_features_3; // @[TreePEsWrapper.scala 50:32]
  wire [31:0] dispatcher_io_samples_out_0_bits_features_4; // @[TreePEsWrapper.scala 50:32]
  wire [9:0] dispatcher_io_samples_out_0_bits_offset; // @[TreePEsWrapper.scala 50:32]
  wire  dispatcher_io_samples_out_0_bits_shift; // @[TreePEsWrapper.scala 50:32]
  wire  dispatcher_io_samples_out_0_bits_search_for_root; // @[TreePEsWrapper.scala 50:32]
  wire [7:0] dispatcher_io_samples_out_0_bits_tree_to_exec; // @[TreePEsWrapper.scala 50:32]
  wire [15:0] dispatcher_io_samples_out_0_bits_scores_0; // @[TreePEsWrapper.scala 50:32]
  wire [15:0] dispatcher_io_samples_out_0_bits_scores_1; // @[TreePEsWrapper.scala 50:32]
  wire [15:0] dispatcher_io_samples_out_0_bits_scores_2; // @[TreePEsWrapper.scala 50:32]
  wire [15:0] dispatcher_io_samples_out_0_bits_scores_3; // @[TreePEsWrapper.scala 50:32]
  wire [15:0] dispatcher_io_samples_out_0_bits_scores_4; // @[TreePEsWrapper.scala 50:32]
  wire [15:0] dispatcher_io_samples_out_0_bits_scores_5; // @[TreePEsWrapper.scala 50:32]
  wire [15:0] dispatcher_io_samples_out_0_bits_weights_0; // @[TreePEsWrapper.scala 50:32]
  wire [15:0] dispatcher_io_samples_out_0_bits_weights_1; // @[TreePEsWrapper.scala 50:32]
  wire [15:0] dispatcher_io_samples_out_0_bits_weights_2; // @[TreePEsWrapper.scala 50:32]
  wire [15:0] dispatcher_io_samples_out_0_bits_weights_3; // @[TreePEsWrapper.scala 50:32]
  wire [15:0] dispatcher_io_samples_out_0_bits_weights_4; // @[TreePEsWrapper.scala 50:32]
  wire  dispatcher_io_samples_out_0_bits_last; // @[TreePEsWrapper.scala 50:32]
  wire  voter_clock; // @[TreePEsWrapper.scala 51:27]
  wire  voter_reset; // @[TreePEsWrapper.scala 51:27]
  wire  voter_io_samples_in_0_ready; // @[TreePEsWrapper.scala 51:27]
  wire  voter_io_samples_in_0_valid; // @[TreePEsWrapper.scala 51:27]
  wire [31:0] voter_io_samples_in_0_bits_features_0; // @[TreePEsWrapper.scala 51:27]
  wire [31:0] voter_io_samples_in_0_bits_features_1; // @[TreePEsWrapper.scala 51:27]
  wire [31:0] voter_io_samples_in_0_bits_features_2; // @[TreePEsWrapper.scala 51:27]
  wire [31:0] voter_io_samples_in_0_bits_features_3; // @[TreePEsWrapper.scala 51:27]
  wire [31:0] voter_io_samples_in_0_bits_features_4; // @[TreePEsWrapper.scala 51:27]
  wire [9:0] voter_io_samples_in_0_bits_offset; // @[TreePEsWrapper.scala 51:27]
  wire  voter_io_samples_in_0_bits_shift; // @[TreePEsWrapper.scala 51:27]
  wire  voter_io_samples_in_0_bits_search_for_root; // @[TreePEsWrapper.scala 51:27]
  wire [7:0] voter_io_samples_in_0_bits_tree_to_exec; // @[TreePEsWrapper.scala 51:27]
  wire [15:0] voter_io_samples_in_0_bits_scores_0; // @[TreePEsWrapper.scala 51:27]
  wire [15:0] voter_io_samples_in_0_bits_scores_1; // @[TreePEsWrapper.scala 51:27]
  wire [15:0] voter_io_samples_in_0_bits_scores_2; // @[TreePEsWrapper.scala 51:27]
  wire [15:0] voter_io_samples_in_0_bits_scores_3; // @[TreePEsWrapper.scala 51:27]
  wire [15:0] voter_io_samples_in_0_bits_scores_4; // @[TreePEsWrapper.scala 51:27]
  wire [15:0] voter_io_samples_in_0_bits_scores_5; // @[TreePEsWrapper.scala 51:27]
  wire [15:0] voter_io_samples_in_0_bits_weights_0; // @[TreePEsWrapper.scala 51:27]
  wire [15:0] voter_io_samples_in_0_bits_weights_1; // @[TreePEsWrapper.scala 51:27]
  wire [15:0] voter_io_samples_in_0_bits_weights_2; // @[TreePEsWrapper.scala 51:27]
  wire [15:0] voter_io_samples_in_0_bits_weights_3; // @[TreePEsWrapper.scala 51:27]
  wire [15:0] voter_io_samples_in_0_bits_weights_4; // @[TreePEsWrapper.scala 51:27]
  wire  voter_io_samples_in_0_bits_last; // @[TreePEsWrapper.scala 51:27]
  wire  voter_io_sample_out_ready; // @[TreePEsWrapper.scala 51:27]
  wire  voter_io_sample_out_valid; // @[TreePEsWrapper.scala 51:27]
  wire [31:0] voter_io_sample_out_bits_features_0; // @[TreePEsWrapper.scala 51:27]
  wire [31:0] voter_io_sample_out_bits_features_1; // @[TreePEsWrapper.scala 51:27]
  wire [31:0] voter_io_sample_out_bits_features_2; // @[TreePEsWrapper.scala 51:27]
  wire [31:0] voter_io_sample_out_bits_features_3; // @[TreePEsWrapper.scala 51:27]
  wire [31:0] voter_io_sample_out_bits_features_4; // @[TreePEsWrapper.scala 51:27]
  wire [9:0] voter_io_sample_out_bits_offset; // @[TreePEsWrapper.scala 51:27]
  wire  voter_io_sample_out_bits_shift; // @[TreePEsWrapper.scala 51:27]
  wire  voter_io_sample_out_bits_search_for_root; // @[TreePEsWrapper.scala 51:27]
  wire [7:0] voter_io_sample_out_bits_tree_to_exec; // @[TreePEsWrapper.scala 51:27]
  wire [15:0] voter_io_sample_out_bits_scores_0; // @[TreePEsWrapper.scala 51:27]
  wire [15:0] voter_io_sample_out_bits_scores_1; // @[TreePEsWrapper.scala 51:27]
  wire [15:0] voter_io_sample_out_bits_scores_2; // @[TreePEsWrapper.scala 51:27]
  wire [15:0] voter_io_sample_out_bits_scores_3; // @[TreePEsWrapper.scala 51:27]
  wire [15:0] voter_io_sample_out_bits_scores_4; // @[TreePEsWrapper.scala 51:27]
  wire [15:0] voter_io_sample_out_bits_scores_5; // @[TreePEsWrapper.scala 51:27]
  wire  voter_io_sample_out_bits_last; // @[TreePEsWrapper.scala 51:27]
  wire  pes_0_clock; // @[TreePEsWrapper.scala 67:69]
  wire  pes_0_reset; // @[TreePEsWrapper.scala 67:69]
  wire  pes_0_pe_io_sample_in_ready; // @[TreePEsWrapper.scala 67:69]
  wire  pes_0_pe_io_sample_in_valid; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_0_pe_io_sample_in_bits_features_0; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_0_pe_io_sample_in_bits_features_1; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_0_pe_io_sample_in_bits_features_2; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_0_pe_io_sample_in_bits_features_3; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_0_pe_io_sample_in_bits_features_4; // @[TreePEsWrapper.scala 67:69]
  wire [9:0] pes_0_pe_io_sample_in_bits_offset; // @[TreePEsWrapper.scala 67:69]
  wire  pes_0_pe_io_sample_in_bits_shift; // @[TreePEsWrapper.scala 67:69]
  wire  pes_0_pe_io_sample_in_bits_search_for_root; // @[TreePEsWrapper.scala 67:69]
  wire [7:0] pes_0_pe_io_sample_in_bits_tree_to_exec; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_0_pe_io_sample_in_bits_scores_0; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_0_pe_io_sample_in_bits_scores_1; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_0_pe_io_sample_in_bits_scores_2; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_0_pe_io_sample_in_bits_scores_3; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_0_pe_io_sample_in_bits_scores_4; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_0_pe_io_sample_in_bits_scores_5; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_0_pe_io_sample_in_bits_weights_0; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_0_pe_io_sample_in_bits_weights_1; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_0_pe_io_sample_in_bits_weights_2; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_0_pe_io_sample_in_bits_weights_3; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_0_pe_io_sample_in_bits_weights_4; // @[TreePEsWrapper.scala 67:69]
  wire  pes_0_pe_io_sample_in_bits_last; // @[TreePEsWrapper.scala 67:69]
  wire [12:0] pes_0_pe_io_mem_addr_1; // @[TreePEsWrapper.scala 67:69]
  wire [63:0] pes_0_pe_io_mem_dataOut_1; // @[TreePEsWrapper.scala 67:69]
  wire  pes_0_pe_io_sample_out_ready; // @[TreePEsWrapper.scala 67:69]
  wire  pes_0_pe_io_sample_out_valid; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_0_pe_io_sample_out_bits_features_0; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_0_pe_io_sample_out_bits_features_1; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_0_pe_io_sample_out_bits_features_2; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_0_pe_io_sample_out_bits_features_3; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_0_pe_io_sample_out_bits_features_4; // @[TreePEsWrapper.scala 67:69]
  wire [9:0] pes_0_pe_io_sample_out_bits_offset; // @[TreePEsWrapper.scala 67:69]
  wire  pes_0_pe_io_sample_out_bits_search_for_root; // @[TreePEsWrapper.scala 67:69]
  wire [7:0] pes_0_pe_io_sample_out_bits_tree_to_exec; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_0_pe_io_sample_out_bits_scores_0; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_0_pe_io_sample_out_bits_scores_1; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_0_pe_io_sample_out_bits_scores_2; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_0_pe_io_sample_out_bits_scores_3; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_0_pe_io_sample_out_bits_scores_4; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_0_pe_io_sample_out_bits_scores_5; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_0_pe_io_sample_out_bits_weights_0; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_0_pe_io_sample_out_bits_weights_1; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_0_pe_io_sample_out_bits_weights_2; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_0_pe_io_sample_out_bits_weights_3; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_0_pe_io_sample_out_bits_weights_4; // @[TreePEsWrapper.scala 67:69]
  wire  pes_0_pe_io_sample_out_bits_last; // @[TreePEsWrapper.scala 67:69]
  wire  pes_1_clock; // @[TreePEsWrapper.scala 67:69]
  wire  pes_1_reset; // @[TreePEsWrapper.scala 67:69]
  wire  pes_1_pe_io_sample_in_ready; // @[TreePEsWrapper.scala 67:69]
  wire  pes_1_pe_io_sample_in_valid; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_1_pe_io_sample_in_bits_features_0; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_1_pe_io_sample_in_bits_features_1; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_1_pe_io_sample_in_bits_features_2; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_1_pe_io_sample_in_bits_features_3; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_1_pe_io_sample_in_bits_features_4; // @[TreePEsWrapper.scala 67:69]
  wire [9:0] pes_1_pe_io_sample_in_bits_offset; // @[TreePEsWrapper.scala 67:69]
  wire  pes_1_pe_io_sample_in_bits_search_for_root; // @[TreePEsWrapper.scala 67:69]
  wire [7:0] pes_1_pe_io_sample_in_bits_tree_to_exec; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_1_pe_io_sample_in_bits_scores_0; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_1_pe_io_sample_in_bits_scores_1; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_1_pe_io_sample_in_bits_scores_2; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_1_pe_io_sample_in_bits_scores_3; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_1_pe_io_sample_in_bits_scores_4; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_1_pe_io_sample_in_bits_scores_5; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_1_pe_io_sample_in_bits_weights_0; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_1_pe_io_sample_in_bits_weights_1; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_1_pe_io_sample_in_bits_weights_2; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_1_pe_io_sample_in_bits_weights_3; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_1_pe_io_sample_in_bits_weights_4; // @[TreePEsWrapper.scala 67:69]
  wire  pes_1_pe_io_sample_in_bits_last; // @[TreePEsWrapper.scala 67:69]
  wire [12:0] pes_1_pe_io_mem_addr_1; // @[TreePEsWrapper.scala 67:69]
  wire [63:0] pes_1_pe_io_mem_dataOut_1; // @[TreePEsWrapper.scala 67:69]
  wire  pes_1_pe_io_sample_out_ready; // @[TreePEsWrapper.scala 67:69]
  wire  pes_1_pe_io_sample_out_valid; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_1_pe_io_sample_out_bits_features_0; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_1_pe_io_sample_out_bits_features_1; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_1_pe_io_sample_out_bits_features_2; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_1_pe_io_sample_out_bits_features_3; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_1_pe_io_sample_out_bits_features_4; // @[TreePEsWrapper.scala 67:69]
  wire [9:0] pes_1_pe_io_sample_out_bits_offset; // @[TreePEsWrapper.scala 67:69]
  wire  pes_1_pe_io_sample_out_bits_search_for_root; // @[TreePEsWrapper.scala 67:69]
  wire [7:0] pes_1_pe_io_sample_out_bits_tree_to_exec; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_1_pe_io_sample_out_bits_scores_0; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_1_pe_io_sample_out_bits_scores_1; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_1_pe_io_sample_out_bits_scores_2; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_1_pe_io_sample_out_bits_scores_3; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_1_pe_io_sample_out_bits_scores_4; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_1_pe_io_sample_out_bits_scores_5; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_1_pe_io_sample_out_bits_weights_0; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_1_pe_io_sample_out_bits_weights_1; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_1_pe_io_sample_out_bits_weights_2; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_1_pe_io_sample_out_bits_weights_3; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_1_pe_io_sample_out_bits_weights_4; // @[TreePEsWrapper.scala 67:69]
  wire  pes_1_pe_io_sample_out_bits_dest; // @[TreePEsWrapper.scala 67:69]
  wire  pes_1_pe_io_sample_out_bits_last; // @[TreePEsWrapper.scala 67:69]
  wire  pes_2_clock; // @[TreePEsWrapper.scala 67:69]
  wire  pes_2_reset; // @[TreePEsWrapper.scala 67:69]
  wire  pes_2_pe_io_sample_in_ready; // @[TreePEsWrapper.scala 67:69]
  wire  pes_2_pe_io_sample_in_valid; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_2_pe_io_sample_in_bits_features_0; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_2_pe_io_sample_in_bits_features_1; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_2_pe_io_sample_in_bits_features_2; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_2_pe_io_sample_in_bits_features_3; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_2_pe_io_sample_in_bits_features_4; // @[TreePEsWrapper.scala 67:69]
  wire [9:0] pes_2_pe_io_sample_in_bits_offset; // @[TreePEsWrapper.scala 67:69]
  wire  pes_2_pe_io_sample_in_bits_search_for_root; // @[TreePEsWrapper.scala 67:69]
  wire [7:0] pes_2_pe_io_sample_in_bits_tree_to_exec; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_2_pe_io_sample_in_bits_scores_0; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_2_pe_io_sample_in_bits_scores_1; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_2_pe_io_sample_in_bits_scores_2; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_2_pe_io_sample_in_bits_scores_3; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_2_pe_io_sample_in_bits_scores_4; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_2_pe_io_sample_in_bits_scores_5; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_2_pe_io_sample_in_bits_weights_0; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_2_pe_io_sample_in_bits_weights_1; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_2_pe_io_sample_in_bits_weights_2; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_2_pe_io_sample_in_bits_weights_3; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_2_pe_io_sample_in_bits_weights_4; // @[TreePEsWrapper.scala 67:69]
  wire  pes_2_pe_io_sample_in_bits_last; // @[TreePEsWrapper.scala 67:69]
  wire [12:0] pes_2_pe_io_mem_addr_1; // @[TreePEsWrapper.scala 67:69]
  wire [63:0] pes_2_pe_io_mem_dataOut_1; // @[TreePEsWrapper.scala 67:69]
  wire  pes_2_pe_io_sample_out_ready; // @[TreePEsWrapper.scala 67:69]
  wire  pes_2_pe_io_sample_out_valid; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_2_pe_io_sample_out_bits_features_0; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_2_pe_io_sample_out_bits_features_1; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_2_pe_io_sample_out_bits_features_2; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_2_pe_io_sample_out_bits_features_3; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_2_pe_io_sample_out_bits_features_4; // @[TreePEsWrapper.scala 67:69]
  wire [9:0] pes_2_pe_io_sample_out_bits_offset; // @[TreePEsWrapper.scala 67:69]
  wire  pes_2_pe_io_sample_out_bits_search_for_root; // @[TreePEsWrapper.scala 67:69]
  wire [7:0] pes_2_pe_io_sample_out_bits_tree_to_exec; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_2_pe_io_sample_out_bits_scores_0; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_2_pe_io_sample_out_bits_scores_1; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_2_pe_io_sample_out_bits_scores_2; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_2_pe_io_sample_out_bits_scores_3; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_2_pe_io_sample_out_bits_scores_4; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_2_pe_io_sample_out_bits_scores_5; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_2_pe_io_sample_out_bits_weights_0; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_2_pe_io_sample_out_bits_weights_1; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_2_pe_io_sample_out_bits_weights_2; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_2_pe_io_sample_out_bits_weights_3; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_2_pe_io_sample_out_bits_weights_4; // @[TreePEsWrapper.scala 67:69]
  wire  pes_2_pe_io_sample_out_bits_dest; // @[TreePEsWrapper.scala 67:69]
  wire  pes_2_pe_io_sample_out_bits_last; // @[TreePEsWrapper.scala 67:69]
  wire  pes_3_clock; // @[TreePEsWrapper.scala 67:69]
  wire  pes_3_reset; // @[TreePEsWrapper.scala 67:69]
  wire  pes_3_pe_io_sample_in_ready; // @[TreePEsWrapper.scala 67:69]
  wire  pes_3_pe_io_sample_in_valid; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_3_pe_io_sample_in_bits_features_0; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_3_pe_io_sample_in_bits_features_1; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_3_pe_io_sample_in_bits_features_2; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_3_pe_io_sample_in_bits_features_3; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_3_pe_io_sample_in_bits_features_4; // @[TreePEsWrapper.scala 67:69]
  wire [9:0] pes_3_pe_io_sample_in_bits_offset; // @[TreePEsWrapper.scala 67:69]
  wire  pes_3_pe_io_sample_in_bits_search_for_root; // @[TreePEsWrapper.scala 67:69]
  wire [7:0] pes_3_pe_io_sample_in_bits_tree_to_exec; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_3_pe_io_sample_in_bits_scores_0; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_3_pe_io_sample_in_bits_scores_1; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_3_pe_io_sample_in_bits_scores_2; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_3_pe_io_sample_in_bits_scores_3; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_3_pe_io_sample_in_bits_scores_4; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_3_pe_io_sample_in_bits_scores_5; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_3_pe_io_sample_in_bits_weights_0; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_3_pe_io_sample_in_bits_weights_1; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_3_pe_io_sample_in_bits_weights_2; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_3_pe_io_sample_in_bits_weights_3; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_3_pe_io_sample_in_bits_weights_4; // @[TreePEsWrapper.scala 67:69]
  wire  pes_3_pe_io_sample_in_bits_last; // @[TreePEsWrapper.scala 67:69]
  wire [12:0] pes_3_pe_io_mem_addr_1; // @[TreePEsWrapper.scala 67:69]
  wire [63:0] pes_3_pe_io_mem_dataOut_1; // @[TreePEsWrapper.scala 67:69]
  wire  pes_3_pe_io_sample_out_ready; // @[TreePEsWrapper.scala 67:69]
  wire  pes_3_pe_io_sample_out_valid; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_3_pe_io_sample_out_bits_features_0; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_3_pe_io_sample_out_bits_features_1; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_3_pe_io_sample_out_bits_features_2; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_3_pe_io_sample_out_bits_features_3; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_3_pe_io_sample_out_bits_features_4; // @[TreePEsWrapper.scala 67:69]
  wire [9:0] pes_3_pe_io_sample_out_bits_offset; // @[TreePEsWrapper.scala 67:69]
  wire  pes_3_pe_io_sample_out_bits_search_for_root; // @[TreePEsWrapper.scala 67:69]
  wire [7:0] pes_3_pe_io_sample_out_bits_tree_to_exec; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_3_pe_io_sample_out_bits_scores_0; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_3_pe_io_sample_out_bits_scores_1; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_3_pe_io_sample_out_bits_scores_2; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_3_pe_io_sample_out_bits_scores_3; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_3_pe_io_sample_out_bits_scores_4; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_3_pe_io_sample_out_bits_scores_5; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_3_pe_io_sample_out_bits_weights_0; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_3_pe_io_sample_out_bits_weights_1; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_3_pe_io_sample_out_bits_weights_2; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_3_pe_io_sample_out_bits_weights_3; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_3_pe_io_sample_out_bits_weights_4; // @[TreePEsWrapper.scala 67:69]
  wire  pes_3_pe_io_sample_out_bits_dest; // @[TreePEsWrapper.scala 67:69]
  wire  pes_3_pe_io_sample_out_bits_last; // @[TreePEsWrapper.scala 67:69]
  wire  pes_4_clock; // @[TreePEsWrapper.scala 67:69]
  wire  pes_4_reset; // @[TreePEsWrapper.scala 67:69]
  wire  pes_4_pe_io_sample_in_ready; // @[TreePEsWrapper.scala 67:69]
  wire  pes_4_pe_io_sample_in_valid; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_4_pe_io_sample_in_bits_features_0; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_4_pe_io_sample_in_bits_features_1; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_4_pe_io_sample_in_bits_features_2; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_4_pe_io_sample_in_bits_features_3; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_4_pe_io_sample_in_bits_features_4; // @[TreePEsWrapper.scala 67:69]
  wire [9:0] pes_4_pe_io_sample_in_bits_offset; // @[TreePEsWrapper.scala 67:69]
  wire  pes_4_pe_io_sample_in_bits_search_for_root; // @[TreePEsWrapper.scala 67:69]
  wire [7:0] pes_4_pe_io_sample_in_bits_tree_to_exec; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_4_pe_io_sample_in_bits_scores_0; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_4_pe_io_sample_in_bits_scores_1; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_4_pe_io_sample_in_bits_scores_2; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_4_pe_io_sample_in_bits_scores_3; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_4_pe_io_sample_in_bits_scores_4; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_4_pe_io_sample_in_bits_scores_5; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_4_pe_io_sample_in_bits_weights_0; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_4_pe_io_sample_in_bits_weights_1; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_4_pe_io_sample_in_bits_weights_2; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_4_pe_io_sample_in_bits_weights_3; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_4_pe_io_sample_in_bits_weights_4; // @[TreePEsWrapper.scala 67:69]
  wire  pes_4_pe_io_sample_in_bits_last; // @[TreePEsWrapper.scala 67:69]
  wire [12:0] pes_4_pe_io_mem_addr_1; // @[TreePEsWrapper.scala 67:69]
  wire [63:0] pes_4_pe_io_mem_dataOut_1; // @[TreePEsWrapper.scala 67:69]
  wire  pes_4_pe_io_sample_out_ready; // @[TreePEsWrapper.scala 67:69]
  wire  pes_4_pe_io_sample_out_valid; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_4_pe_io_sample_out_bits_features_0; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_4_pe_io_sample_out_bits_features_1; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_4_pe_io_sample_out_bits_features_2; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_4_pe_io_sample_out_bits_features_3; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_4_pe_io_sample_out_bits_features_4; // @[TreePEsWrapper.scala 67:69]
  wire [9:0] pes_4_pe_io_sample_out_bits_offset; // @[TreePEsWrapper.scala 67:69]
  wire  pes_4_pe_io_sample_out_bits_search_for_root; // @[TreePEsWrapper.scala 67:69]
  wire [7:0] pes_4_pe_io_sample_out_bits_tree_to_exec; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_4_pe_io_sample_out_bits_scores_0; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_4_pe_io_sample_out_bits_scores_1; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_4_pe_io_sample_out_bits_scores_2; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_4_pe_io_sample_out_bits_scores_3; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_4_pe_io_sample_out_bits_scores_4; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_4_pe_io_sample_out_bits_scores_5; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_4_pe_io_sample_out_bits_weights_0; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_4_pe_io_sample_out_bits_weights_1; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_4_pe_io_sample_out_bits_weights_2; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_4_pe_io_sample_out_bits_weights_3; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_4_pe_io_sample_out_bits_weights_4; // @[TreePEsWrapper.scala 67:69]
  wire  pes_4_pe_io_sample_out_bits_dest; // @[TreePEsWrapper.scala 67:69]
  wire  pes_4_pe_io_sample_out_bits_last; // @[TreePEsWrapper.scala 67:69]
  wire  pes_5_clock; // @[TreePEsWrapper.scala 67:69]
  wire  pes_5_reset; // @[TreePEsWrapper.scala 67:69]
  wire  pes_5_pe_io_sample_in_ready; // @[TreePEsWrapper.scala 67:69]
  wire  pes_5_pe_io_sample_in_valid; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_5_pe_io_sample_in_bits_features_0; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_5_pe_io_sample_in_bits_features_1; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_5_pe_io_sample_in_bits_features_2; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_5_pe_io_sample_in_bits_features_3; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_5_pe_io_sample_in_bits_features_4; // @[TreePEsWrapper.scala 67:69]
  wire [9:0] pes_5_pe_io_sample_in_bits_offset; // @[TreePEsWrapper.scala 67:69]
  wire  pes_5_pe_io_sample_in_bits_shift; // @[TreePEsWrapper.scala 67:69]
  wire  pes_5_pe_io_sample_in_bits_search_for_root; // @[TreePEsWrapper.scala 67:69]
  wire [7:0] pes_5_pe_io_sample_in_bits_tree_to_exec; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_5_pe_io_sample_in_bits_scores_0; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_5_pe_io_sample_in_bits_scores_1; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_5_pe_io_sample_in_bits_scores_2; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_5_pe_io_sample_in_bits_scores_3; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_5_pe_io_sample_in_bits_scores_4; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_5_pe_io_sample_in_bits_scores_5; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_5_pe_io_sample_in_bits_weights_0; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_5_pe_io_sample_in_bits_weights_1; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_5_pe_io_sample_in_bits_weights_2; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_5_pe_io_sample_in_bits_weights_3; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_5_pe_io_sample_in_bits_weights_4; // @[TreePEsWrapper.scala 67:69]
  wire  pes_5_pe_io_sample_in_bits_last; // @[TreePEsWrapper.scala 67:69]
  wire [12:0] pes_5_pe_io_mem_addr_1; // @[TreePEsWrapper.scala 67:69]
  wire [63:0] pes_5_pe_io_mem_dataOut_1; // @[TreePEsWrapper.scala 67:69]
  wire  pes_5_pe_io_sample_out_ready; // @[TreePEsWrapper.scala 67:69]
  wire  pes_5_pe_io_sample_out_valid; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_5_pe_io_sample_out_bits_features_0; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_5_pe_io_sample_out_bits_features_1; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_5_pe_io_sample_out_bits_features_2; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_5_pe_io_sample_out_bits_features_3; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_5_pe_io_sample_out_bits_features_4; // @[TreePEsWrapper.scala 67:69]
  wire [9:0] pes_5_pe_io_sample_out_bits_offset; // @[TreePEsWrapper.scala 67:69]
  wire  pes_5_pe_io_sample_out_bits_search_for_root; // @[TreePEsWrapper.scala 67:69]
  wire [7:0] pes_5_pe_io_sample_out_bits_tree_to_exec; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_5_pe_io_sample_out_bits_scores_0; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_5_pe_io_sample_out_bits_scores_1; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_5_pe_io_sample_out_bits_scores_2; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_5_pe_io_sample_out_bits_scores_3; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_5_pe_io_sample_out_bits_scores_4; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_5_pe_io_sample_out_bits_scores_5; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_5_pe_io_sample_out_bits_weights_0; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_5_pe_io_sample_out_bits_weights_1; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_5_pe_io_sample_out_bits_weights_2; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_5_pe_io_sample_out_bits_weights_3; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_5_pe_io_sample_out_bits_weights_4; // @[TreePEsWrapper.scala 67:69]
  wire  pes_5_pe_io_sample_out_bits_last; // @[TreePEsWrapper.scala 67:69]
  wire  pes_6_clock; // @[TreePEsWrapper.scala 67:69]
  wire  pes_6_reset; // @[TreePEsWrapper.scala 67:69]
  wire  pes_6_pe_io_sample_in_ready; // @[TreePEsWrapper.scala 67:69]
  wire  pes_6_pe_io_sample_in_valid; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_6_pe_io_sample_in_bits_features_0; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_6_pe_io_sample_in_bits_features_1; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_6_pe_io_sample_in_bits_features_2; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_6_pe_io_sample_in_bits_features_3; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_6_pe_io_sample_in_bits_features_4; // @[TreePEsWrapper.scala 67:69]
  wire [9:0] pes_6_pe_io_sample_in_bits_offset; // @[TreePEsWrapper.scala 67:69]
  wire  pes_6_pe_io_sample_in_bits_search_for_root; // @[TreePEsWrapper.scala 67:69]
  wire [7:0] pes_6_pe_io_sample_in_bits_tree_to_exec; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_6_pe_io_sample_in_bits_scores_0; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_6_pe_io_sample_in_bits_scores_1; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_6_pe_io_sample_in_bits_scores_2; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_6_pe_io_sample_in_bits_scores_3; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_6_pe_io_sample_in_bits_scores_4; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_6_pe_io_sample_in_bits_scores_5; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_6_pe_io_sample_in_bits_weights_0; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_6_pe_io_sample_in_bits_weights_1; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_6_pe_io_sample_in_bits_weights_2; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_6_pe_io_sample_in_bits_weights_3; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_6_pe_io_sample_in_bits_weights_4; // @[TreePEsWrapper.scala 67:69]
  wire  pes_6_pe_io_sample_in_bits_last; // @[TreePEsWrapper.scala 67:69]
  wire [12:0] pes_6_pe_io_mem_addr_1; // @[TreePEsWrapper.scala 67:69]
  wire [63:0] pes_6_pe_io_mem_dataOut_1; // @[TreePEsWrapper.scala 67:69]
  wire  pes_6_pe_io_sample_out_ready; // @[TreePEsWrapper.scala 67:69]
  wire  pes_6_pe_io_sample_out_valid; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_6_pe_io_sample_out_bits_features_0; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_6_pe_io_sample_out_bits_features_1; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_6_pe_io_sample_out_bits_features_2; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_6_pe_io_sample_out_bits_features_3; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_6_pe_io_sample_out_bits_features_4; // @[TreePEsWrapper.scala 67:69]
  wire [9:0] pes_6_pe_io_sample_out_bits_offset; // @[TreePEsWrapper.scala 67:69]
  wire  pes_6_pe_io_sample_out_bits_search_for_root; // @[TreePEsWrapper.scala 67:69]
  wire [7:0] pes_6_pe_io_sample_out_bits_tree_to_exec; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_6_pe_io_sample_out_bits_scores_0; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_6_pe_io_sample_out_bits_scores_1; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_6_pe_io_sample_out_bits_scores_2; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_6_pe_io_sample_out_bits_scores_3; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_6_pe_io_sample_out_bits_scores_4; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_6_pe_io_sample_out_bits_scores_5; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_6_pe_io_sample_out_bits_weights_0; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_6_pe_io_sample_out_bits_weights_1; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_6_pe_io_sample_out_bits_weights_2; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_6_pe_io_sample_out_bits_weights_3; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_6_pe_io_sample_out_bits_weights_4; // @[TreePEsWrapper.scala 67:69]
  wire  pes_6_pe_io_sample_out_bits_dest; // @[TreePEsWrapper.scala 67:69]
  wire  pes_6_pe_io_sample_out_bits_last; // @[TreePEsWrapper.scala 67:69]
  wire  pes_7_clock; // @[TreePEsWrapper.scala 67:69]
  wire  pes_7_reset; // @[TreePEsWrapper.scala 67:69]
  wire  pes_7_pe_io_sample_in_ready; // @[TreePEsWrapper.scala 67:69]
  wire  pes_7_pe_io_sample_in_valid; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_7_pe_io_sample_in_bits_features_0; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_7_pe_io_sample_in_bits_features_1; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_7_pe_io_sample_in_bits_features_2; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_7_pe_io_sample_in_bits_features_3; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_7_pe_io_sample_in_bits_features_4; // @[TreePEsWrapper.scala 67:69]
  wire [9:0] pes_7_pe_io_sample_in_bits_offset; // @[TreePEsWrapper.scala 67:69]
  wire  pes_7_pe_io_sample_in_bits_search_for_root; // @[TreePEsWrapper.scala 67:69]
  wire [7:0] pes_7_pe_io_sample_in_bits_tree_to_exec; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_7_pe_io_sample_in_bits_scores_0; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_7_pe_io_sample_in_bits_scores_1; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_7_pe_io_sample_in_bits_scores_2; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_7_pe_io_sample_in_bits_scores_3; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_7_pe_io_sample_in_bits_scores_4; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_7_pe_io_sample_in_bits_scores_5; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_7_pe_io_sample_in_bits_weights_0; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_7_pe_io_sample_in_bits_weights_1; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_7_pe_io_sample_in_bits_weights_2; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_7_pe_io_sample_in_bits_weights_3; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_7_pe_io_sample_in_bits_weights_4; // @[TreePEsWrapper.scala 67:69]
  wire  pes_7_pe_io_sample_in_bits_last; // @[TreePEsWrapper.scala 67:69]
  wire [12:0] pes_7_pe_io_mem_addr_1; // @[TreePEsWrapper.scala 67:69]
  wire [63:0] pes_7_pe_io_mem_dataOut_1; // @[TreePEsWrapper.scala 67:69]
  wire  pes_7_pe_io_sample_out_ready; // @[TreePEsWrapper.scala 67:69]
  wire  pes_7_pe_io_sample_out_valid; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_7_pe_io_sample_out_bits_features_0; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_7_pe_io_sample_out_bits_features_1; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_7_pe_io_sample_out_bits_features_2; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_7_pe_io_sample_out_bits_features_3; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_7_pe_io_sample_out_bits_features_4; // @[TreePEsWrapper.scala 67:69]
  wire [9:0] pes_7_pe_io_sample_out_bits_offset; // @[TreePEsWrapper.scala 67:69]
  wire  pes_7_pe_io_sample_out_bits_search_for_root; // @[TreePEsWrapper.scala 67:69]
  wire [7:0] pes_7_pe_io_sample_out_bits_tree_to_exec; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_7_pe_io_sample_out_bits_scores_0; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_7_pe_io_sample_out_bits_scores_1; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_7_pe_io_sample_out_bits_scores_2; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_7_pe_io_sample_out_bits_scores_3; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_7_pe_io_sample_out_bits_scores_4; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_7_pe_io_sample_out_bits_scores_5; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_7_pe_io_sample_out_bits_weights_0; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_7_pe_io_sample_out_bits_weights_1; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_7_pe_io_sample_out_bits_weights_2; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_7_pe_io_sample_out_bits_weights_3; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_7_pe_io_sample_out_bits_weights_4; // @[TreePEsWrapper.scala 67:69]
  wire  pes_7_pe_io_sample_out_bits_dest; // @[TreePEsWrapper.scala 67:69]
  wire  pes_7_pe_io_sample_out_bits_last; // @[TreePEsWrapper.scala 67:69]
  wire  pes_8_clock; // @[TreePEsWrapper.scala 67:69]
  wire  pes_8_reset; // @[TreePEsWrapper.scala 67:69]
  wire  pes_8_pe_io_sample_in_ready; // @[TreePEsWrapper.scala 67:69]
  wire  pes_8_pe_io_sample_in_valid; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_8_pe_io_sample_in_bits_features_0; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_8_pe_io_sample_in_bits_features_1; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_8_pe_io_sample_in_bits_features_2; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_8_pe_io_sample_in_bits_features_3; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_8_pe_io_sample_in_bits_features_4; // @[TreePEsWrapper.scala 67:69]
  wire [9:0] pes_8_pe_io_sample_in_bits_offset; // @[TreePEsWrapper.scala 67:69]
  wire  pes_8_pe_io_sample_in_bits_search_for_root; // @[TreePEsWrapper.scala 67:69]
  wire [7:0] pes_8_pe_io_sample_in_bits_tree_to_exec; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_8_pe_io_sample_in_bits_scores_0; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_8_pe_io_sample_in_bits_scores_1; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_8_pe_io_sample_in_bits_scores_2; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_8_pe_io_sample_in_bits_scores_3; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_8_pe_io_sample_in_bits_scores_4; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_8_pe_io_sample_in_bits_scores_5; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_8_pe_io_sample_in_bits_weights_0; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_8_pe_io_sample_in_bits_weights_1; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_8_pe_io_sample_in_bits_weights_2; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_8_pe_io_sample_in_bits_weights_3; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_8_pe_io_sample_in_bits_weights_4; // @[TreePEsWrapper.scala 67:69]
  wire  pes_8_pe_io_sample_in_bits_last; // @[TreePEsWrapper.scala 67:69]
  wire [12:0] pes_8_pe_io_mem_addr_1; // @[TreePEsWrapper.scala 67:69]
  wire [63:0] pes_8_pe_io_mem_dataOut_1; // @[TreePEsWrapper.scala 67:69]
  wire  pes_8_pe_io_sample_out_ready; // @[TreePEsWrapper.scala 67:69]
  wire  pes_8_pe_io_sample_out_valid; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_8_pe_io_sample_out_bits_features_0; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_8_pe_io_sample_out_bits_features_1; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_8_pe_io_sample_out_bits_features_2; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_8_pe_io_sample_out_bits_features_3; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_8_pe_io_sample_out_bits_features_4; // @[TreePEsWrapper.scala 67:69]
  wire [9:0] pes_8_pe_io_sample_out_bits_offset; // @[TreePEsWrapper.scala 67:69]
  wire  pes_8_pe_io_sample_out_bits_search_for_root; // @[TreePEsWrapper.scala 67:69]
  wire [7:0] pes_8_pe_io_sample_out_bits_tree_to_exec; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_8_pe_io_sample_out_bits_scores_0; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_8_pe_io_sample_out_bits_scores_1; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_8_pe_io_sample_out_bits_scores_2; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_8_pe_io_sample_out_bits_scores_3; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_8_pe_io_sample_out_bits_scores_4; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_8_pe_io_sample_out_bits_scores_5; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_8_pe_io_sample_out_bits_weights_0; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_8_pe_io_sample_out_bits_weights_1; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_8_pe_io_sample_out_bits_weights_2; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_8_pe_io_sample_out_bits_weights_3; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_8_pe_io_sample_out_bits_weights_4; // @[TreePEsWrapper.scala 67:69]
  wire  pes_8_pe_io_sample_out_bits_dest; // @[TreePEsWrapper.scala 67:69]
  wire  pes_8_pe_io_sample_out_bits_last; // @[TreePEsWrapper.scala 67:69]
  wire  pes_9_clock; // @[TreePEsWrapper.scala 67:69]
  wire  pes_9_reset; // @[TreePEsWrapper.scala 67:69]
  wire  pes_9_pe_io_sample_in_ready; // @[TreePEsWrapper.scala 67:69]
  wire  pes_9_pe_io_sample_in_valid; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_9_pe_io_sample_in_bits_features_0; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_9_pe_io_sample_in_bits_features_1; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_9_pe_io_sample_in_bits_features_2; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_9_pe_io_sample_in_bits_features_3; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_9_pe_io_sample_in_bits_features_4; // @[TreePEsWrapper.scala 67:69]
  wire [9:0] pes_9_pe_io_sample_in_bits_offset; // @[TreePEsWrapper.scala 67:69]
  wire  pes_9_pe_io_sample_in_bits_search_for_root; // @[TreePEsWrapper.scala 67:69]
  wire [7:0] pes_9_pe_io_sample_in_bits_tree_to_exec; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_9_pe_io_sample_in_bits_scores_0; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_9_pe_io_sample_in_bits_scores_1; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_9_pe_io_sample_in_bits_scores_2; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_9_pe_io_sample_in_bits_scores_3; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_9_pe_io_sample_in_bits_scores_4; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_9_pe_io_sample_in_bits_scores_5; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_9_pe_io_sample_in_bits_weights_0; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_9_pe_io_sample_in_bits_weights_1; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_9_pe_io_sample_in_bits_weights_2; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_9_pe_io_sample_in_bits_weights_3; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_9_pe_io_sample_in_bits_weights_4; // @[TreePEsWrapper.scala 67:69]
  wire  pes_9_pe_io_sample_in_bits_last; // @[TreePEsWrapper.scala 67:69]
  wire [12:0] pes_9_pe_io_mem_addr_1; // @[TreePEsWrapper.scala 67:69]
  wire [63:0] pes_9_pe_io_mem_dataOut_1; // @[TreePEsWrapper.scala 67:69]
  wire  pes_9_pe_io_sample_out_ready; // @[TreePEsWrapper.scala 67:69]
  wire  pes_9_pe_io_sample_out_valid; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_9_pe_io_sample_out_bits_features_0; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_9_pe_io_sample_out_bits_features_1; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_9_pe_io_sample_out_bits_features_2; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_9_pe_io_sample_out_bits_features_3; // @[TreePEsWrapper.scala 67:69]
  wire [31:0] pes_9_pe_io_sample_out_bits_features_4; // @[TreePEsWrapper.scala 67:69]
  wire [9:0] pes_9_pe_io_sample_out_bits_offset; // @[TreePEsWrapper.scala 67:69]
  wire  pes_9_pe_io_sample_out_bits_search_for_root; // @[TreePEsWrapper.scala 67:69]
  wire [7:0] pes_9_pe_io_sample_out_bits_tree_to_exec; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_9_pe_io_sample_out_bits_scores_0; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_9_pe_io_sample_out_bits_scores_1; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_9_pe_io_sample_out_bits_scores_2; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_9_pe_io_sample_out_bits_scores_3; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_9_pe_io_sample_out_bits_scores_4; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_9_pe_io_sample_out_bits_scores_5; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_9_pe_io_sample_out_bits_weights_0; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_9_pe_io_sample_out_bits_weights_1; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_9_pe_io_sample_out_bits_weights_2; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_9_pe_io_sample_out_bits_weights_3; // @[TreePEsWrapper.scala 67:69]
  wire [15:0] pes_9_pe_io_sample_out_bits_weights_4; // @[TreePEsWrapper.scala 67:69]
  wire  pes_9_pe_io_sample_out_bits_dest; // @[TreePEsWrapper.scala 67:69]
  wire  pes_9_pe_io_sample_out_bits_last; // @[TreePEsWrapper.scala 67:69]
  wire  brams_0_io_clk; // @[TreePEsWrapper.scala 68:71]
  wire  brams_0_io_a_en; // @[TreePEsWrapper.scala 68:71]
  wire  brams_0_io_a_wr; // @[TreePEsWrapper.scala 68:71]
  wire [12:0] brams_0_io_a_addr; // @[TreePEsWrapper.scala 68:71]
  wire [31:0] brams_0_io_a_din; // @[TreePEsWrapper.scala 68:71]
  wire [31:0] brams_0_io_a_dout; // @[TreePEsWrapper.scala 68:71]
  wire [10:0] brams_0_io_b_addr; // @[TreePEsWrapper.scala 68:71]
  wire [63:0] brams_0_io_b_dout; // @[TreePEsWrapper.scala 68:71]
  wire  brams_1_io_clk; // @[TreePEsWrapper.scala 68:71]
  wire  brams_1_io_a_en; // @[TreePEsWrapper.scala 68:71]
  wire  brams_1_io_a_wr; // @[TreePEsWrapper.scala 68:71]
  wire [12:0] brams_1_io_a_addr; // @[TreePEsWrapper.scala 68:71]
  wire [31:0] brams_1_io_a_din; // @[TreePEsWrapper.scala 68:71]
  wire [31:0] brams_1_io_a_dout; // @[TreePEsWrapper.scala 68:71]
  wire [10:0] brams_1_io_b_addr; // @[TreePEsWrapper.scala 68:71]
  wire [63:0] brams_1_io_b_dout; // @[TreePEsWrapper.scala 68:71]
  wire  brams_2_io_clk; // @[TreePEsWrapper.scala 68:71]
  wire  brams_2_io_a_en; // @[TreePEsWrapper.scala 68:71]
  wire  brams_2_io_a_wr; // @[TreePEsWrapper.scala 68:71]
  wire [12:0] brams_2_io_a_addr; // @[TreePEsWrapper.scala 68:71]
  wire [31:0] brams_2_io_a_din; // @[TreePEsWrapper.scala 68:71]
  wire [31:0] brams_2_io_a_dout; // @[TreePEsWrapper.scala 68:71]
  wire [10:0] brams_2_io_b_addr; // @[TreePEsWrapper.scala 68:71]
  wire [63:0] brams_2_io_b_dout; // @[TreePEsWrapper.scala 68:71]
  wire  brams_3_io_clk; // @[TreePEsWrapper.scala 68:71]
  wire  brams_3_io_a_en; // @[TreePEsWrapper.scala 68:71]
  wire  brams_3_io_a_wr; // @[TreePEsWrapper.scala 68:71]
  wire [12:0] brams_3_io_a_addr; // @[TreePEsWrapper.scala 68:71]
  wire [31:0] brams_3_io_a_din; // @[TreePEsWrapper.scala 68:71]
  wire [31:0] brams_3_io_a_dout; // @[TreePEsWrapper.scala 68:71]
  wire [10:0] brams_3_io_b_addr; // @[TreePEsWrapper.scala 68:71]
  wire [63:0] brams_3_io_b_dout; // @[TreePEsWrapper.scala 68:71]
  wire  brams_4_io_clk; // @[TreePEsWrapper.scala 68:71]
  wire  brams_4_io_a_en; // @[TreePEsWrapper.scala 68:71]
  wire  brams_4_io_a_wr; // @[TreePEsWrapper.scala 68:71]
  wire [12:0] brams_4_io_a_addr; // @[TreePEsWrapper.scala 68:71]
  wire [31:0] brams_4_io_a_din; // @[TreePEsWrapper.scala 68:71]
  wire [31:0] brams_4_io_a_dout; // @[TreePEsWrapper.scala 68:71]
  wire [10:0] brams_4_io_b_addr; // @[TreePEsWrapper.scala 68:71]
  wire [63:0] brams_4_io_b_dout; // @[TreePEsWrapper.scala 68:71]
  wire  brams_5_io_clk; // @[TreePEsWrapper.scala 68:71]
  wire  brams_5_io_a_en; // @[TreePEsWrapper.scala 68:71]
  wire  brams_5_io_a_wr; // @[TreePEsWrapper.scala 68:71]
  wire [12:0] brams_5_io_a_addr; // @[TreePEsWrapper.scala 68:71]
  wire [31:0] brams_5_io_a_din; // @[TreePEsWrapper.scala 68:71]
  wire [31:0] brams_5_io_a_dout; // @[TreePEsWrapper.scala 68:71]
  wire [10:0] brams_5_io_b_addr; // @[TreePEsWrapper.scala 68:71]
  wire [63:0] brams_5_io_b_dout; // @[TreePEsWrapper.scala 68:71]
  wire  brams_6_io_clk; // @[TreePEsWrapper.scala 68:71]
  wire  brams_6_io_a_en; // @[TreePEsWrapper.scala 68:71]
  wire  brams_6_io_a_wr; // @[TreePEsWrapper.scala 68:71]
  wire [12:0] brams_6_io_a_addr; // @[TreePEsWrapper.scala 68:71]
  wire [31:0] brams_6_io_a_din; // @[TreePEsWrapper.scala 68:71]
  wire [31:0] brams_6_io_a_dout; // @[TreePEsWrapper.scala 68:71]
  wire [10:0] brams_6_io_b_addr; // @[TreePEsWrapper.scala 68:71]
  wire [63:0] brams_6_io_b_dout; // @[TreePEsWrapper.scala 68:71]
  wire  brams_7_io_clk; // @[TreePEsWrapper.scala 68:71]
  wire  brams_7_io_a_en; // @[TreePEsWrapper.scala 68:71]
  wire  brams_7_io_a_wr; // @[TreePEsWrapper.scala 68:71]
  wire [12:0] brams_7_io_a_addr; // @[TreePEsWrapper.scala 68:71]
  wire [31:0] brams_7_io_a_din; // @[TreePEsWrapper.scala 68:71]
  wire [31:0] brams_7_io_a_dout; // @[TreePEsWrapper.scala 68:71]
  wire [10:0] brams_7_io_b_addr; // @[TreePEsWrapper.scala 68:71]
  wire [63:0] brams_7_io_b_dout; // @[TreePEsWrapper.scala 68:71]
  wire  brams_8_io_clk; // @[TreePEsWrapper.scala 68:71]
  wire  brams_8_io_a_en; // @[TreePEsWrapper.scala 68:71]
  wire  brams_8_io_a_wr; // @[TreePEsWrapper.scala 68:71]
  wire [12:0] brams_8_io_a_addr; // @[TreePEsWrapper.scala 68:71]
  wire [31:0] brams_8_io_a_din; // @[TreePEsWrapper.scala 68:71]
  wire [31:0] brams_8_io_a_dout; // @[TreePEsWrapper.scala 68:71]
  wire [10:0] brams_8_io_b_addr; // @[TreePEsWrapper.scala 68:71]
  wire [63:0] brams_8_io_b_dout; // @[TreePEsWrapper.scala 68:71]
  wire  brams_9_io_clk; // @[TreePEsWrapper.scala 68:71]
  wire  brams_9_io_a_en; // @[TreePEsWrapper.scala 68:71]
  wire  brams_9_io_a_wr; // @[TreePEsWrapper.scala 68:71]
  wire [12:0] brams_9_io_a_addr; // @[TreePEsWrapper.scala 68:71]
  wire [31:0] brams_9_io_a_din; // @[TreePEsWrapper.scala 68:71]
  wire [31:0] brams_9_io_a_dout; // @[TreePEsWrapper.scala 68:71]
  wire [10:0] brams_9_io_b_addr; // @[TreePEsWrapper.scala 68:71]
  wire [63:0] brams_9_io_b_dout; // @[TreePEsWrapper.scala 68:71]
  wire  first_interconnect_clock; // @[TreePEsWrapper.scala 69:44]
  wire  first_interconnect_reset; // @[TreePEsWrapper.scala 69:44]
  wire  first_interconnect_io_sample_entering_ready; // @[TreePEsWrapper.scala 69:44]
  wire  first_interconnect_io_sample_entering_valid; // @[TreePEsWrapper.scala 69:44]
  wire [31:0] first_interconnect_io_sample_entering_bits_features_0; // @[TreePEsWrapper.scala 69:44]
  wire [31:0] first_interconnect_io_sample_entering_bits_features_1; // @[TreePEsWrapper.scala 69:44]
  wire [31:0] first_interconnect_io_sample_entering_bits_features_2; // @[TreePEsWrapper.scala 69:44]
  wire [31:0] first_interconnect_io_sample_entering_bits_features_3; // @[TreePEsWrapper.scala 69:44]
  wire [31:0] first_interconnect_io_sample_entering_bits_features_4; // @[TreePEsWrapper.scala 69:44]
  wire [9:0] first_interconnect_io_sample_entering_bits_offset; // @[TreePEsWrapper.scala 69:44]
  wire  first_interconnect_io_sample_entering_bits_shift; // @[TreePEsWrapper.scala 69:44]
  wire  first_interconnect_io_sample_entering_bits_search_for_root; // @[TreePEsWrapper.scala 69:44]
  wire [7:0] first_interconnect_io_sample_entering_bits_tree_to_exec; // @[TreePEsWrapper.scala 69:44]
  wire [15:0] first_interconnect_io_sample_entering_bits_scores_0; // @[TreePEsWrapper.scala 69:44]
  wire [15:0] first_interconnect_io_sample_entering_bits_scores_1; // @[TreePEsWrapper.scala 69:44]
  wire [15:0] first_interconnect_io_sample_entering_bits_scores_2; // @[TreePEsWrapper.scala 69:44]
  wire [15:0] first_interconnect_io_sample_entering_bits_scores_3; // @[TreePEsWrapper.scala 69:44]
  wire [15:0] first_interconnect_io_sample_entering_bits_scores_4; // @[TreePEsWrapper.scala 69:44]
  wire [15:0] first_interconnect_io_sample_entering_bits_scores_5; // @[TreePEsWrapper.scala 69:44]
  wire [15:0] first_interconnect_io_sample_entering_bits_weights_0; // @[TreePEsWrapper.scala 69:44]
  wire [15:0] first_interconnect_io_sample_entering_bits_weights_1; // @[TreePEsWrapper.scala 69:44]
  wire [15:0] first_interconnect_io_sample_entering_bits_weights_2; // @[TreePEsWrapper.scala 69:44]
  wire [15:0] first_interconnect_io_sample_entering_bits_weights_3; // @[TreePEsWrapper.scala 69:44]
  wire [15:0] first_interconnect_io_sample_entering_bits_weights_4; // @[TreePEsWrapper.scala 69:44]
  wire  first_interconnect_io_sample_entering_bits_last; // @[TreePEsWrapper.scala 69:44]
  wire  first_interconnect_io_sample_looping_ready; // @[TreePEsWrapper.scala 69:44]
  wire  first_interconnect_io_sample_looping_valid; // @[TreePEsWrapper.scala 69:44]
  wire [31:0] first_interconnect_io_sample_looping_bits_features_0; // @[TreePEsWrapper.scala 69:44]
  wire [31:0] first_interconnect_io_sample_looping_bits_features_1; // @[TreePEsWrapper.scala 69:44]
  wire [31:0] first_interconnect_io_sample_looping_bits_features_2; // @[TreePEsWrapper.scala 69:44]
  wire [31:0] first_interconnect_io_sample_looping_bits_features_3; // @[TreePEsWrapper.scala 69:44]
  wire [31:0] first_interconnect_io_sample_looping_bits_features_4; // @[TreePEsWrapper.scala 69:44]
  wire [9:0] first_interconnect_io_sample_looping_bits_offset; // @[TreePEsWrapper.scala 69:44]
  wire  first_interconnect_io_sample_looping_bits_shift; // @[TreePEsWrapper.scala 69:44]
  wire  first_interconnect_io_sample_looping_bits_search_for_root; // @[TreePEsWrapper.scala 69:44]
  wire [7:0] first_interconnect_io_sample_looping_bits_tree_to_exec; // @[TreePEsWrapper.scala 69:44]
  wire [15:0] first_interconnect_io_sample_looping_bits_scores_0; // @[TreePEsWrapper.scala 69:44]
  wire [15:0] first_interconnect_io_sample_looping_bits_scores_1; // @[TreePEsWrapper.scala 69:44]
  wire [15:0] first_interconnect_io_sample_looping_bits_scores_2; // @[TreePEsWrapper.scala 69:44]
  wire [15:0] first_interconnect_io_sample_looping_bits_scores_3; // @[TreePEsWrapper.scala 69:44]
  wire [15:0] first_interconnect_io_sample_looping_bits_scores_4; // @[TreePEsWrapper.scala 69:44]
  wire [15:0] first_interconnect_io_sample_looping_bits_scores_5; // @[TreePEsWrapper.scala 69:44]
  wire [15:0] first_interconnect_io_sample_looping_bits_weights_0; // @[TreePEsWrapper.scala 69:44]
  wire [15:0] first_interconnect_io_sample_looping_bits_weights_1; // @[TreePEsWrapper.scala 69:44]
  wire [15:0] first_interconnect_io_sample_looping_bits_weights_2; // @[TreePEsWrapper.scala 69:44]
  wire [15:0] first_interconnect_io_sample_looping_bits_weights_3; // @[TreePEsWrapper.scala 69:44]
  wire [15:0] first_interconnect_io_sample_looping_bits_weights_4; // @[TreePEsWrapper.scala 69:44]
  wire  first_interconnect_io_sample_looping_bits_last; // @[TreePEsWrapper.scala 69:44]
  wire  first_interconnect_io_sample_out_ready; // @[TreePEsWrapper.scala 69:44]
  wire  first_interconnect_io_sample_out_valid; // @[TreePEsWrapper.scala 69:44]
  wire [31:0] first_interconnect_io_sample_out_bits_features_0; // @[TreePEsWrapper.scala 69:44]
  wire [31:0] first_interconnect_io_sample_out_bits_features_1; // @[TreePEsWrapper.scala 69:44]
  wire [31:0] first_interconnect_io_sample_out_bits_features_2; // @[TreePEsWrapper.scala 69:44]
  wire [31:0] first_interconnect_io_sample_out_bits_features_3; // @[TreePEsWrapper.scala 69:44]
  wire [31:0] first_interconnect_io_sample_out_bits_features_4; // @[TreePEsWrapper.scala 69:44]
  wire [9:0] first_interconnect_io_sample_out_bits_offset; // @[TreePEsWrapper.scala 69:44]
  wire  first_interconnect_io_sample_out_bits_shift; // @[TreePEsWrapper.scala 69:44]
  wire  first_interconnect_io_sample_out_bits_search_for_root; // @[TreePEsWrapper.scala 69:44]
  wire [7:0] first_interconnect_io_sample_out_bits_tree_to_exec; // @[TreePEsWrapper.scala 69:44]
  wire [15:0] first_interconnect_io_sample_out_bits_scores_0; // @[TreePEsWrapper.scala 69:44]
  wire [15:0] first_interconnect_io_sample_out_bits_scores_1; // @[TreePEsWrapper.scala 69:44]
  wire [15:0] first_interconnect_io_sample_out_bits_scores_2; // @[TreePEsWrapper.scala 69:44]
  wire [15:0] first_interconnect_io_sample_out_bits_scores_3; // @[TreePEsWrapper.scala 69:44]
  wire [15:0] first_interconnect_io_sample_out_bits_scores_4; // @[TreePEsWrapper.scala 69:44]
  wire [15:0] first_interconnect_io_sample_out_bits_scores_5; // @[TreePEsWrapper.scala 69:44]
  wire [15:0] first_interconnect_io_sample_out_bits_weights_0; // @[TreePEsWrapper.scala 69:44]
  wire [15:0] first_interconnect_io_sample_out_bits_weights_1; // @[TreePEsWrapper.scala 69:44]
  wire [15:0] first_interconnect_io_sample_out_bits_weights_2; // @[TreePEsWrapper.scala 69:44]
  wire [15:0] first_interconnect_io_sample_out_bits_weights_3; // @[TreePEsWrapper.scala 69:44]
  wire [15:0] first_interconnect_io_sample_out_bits_weights_4; // @[TreePEsWrapper.scala 69:44]
  wire  first_interconnect_io_sample_out_bits_last; // @[TreePEsWrapper.scala 69:44]
  wire  last_interconnect_clock; // @[TreePEsWrapper.scala 70:43]
  wire  last_interconnect_reset; // @[TreePEsWrapper.scala 70:43]
  wire  last_interconnect_io_sample_in_ready; // @[TreePEsWrapper.scala 70:43]
  wire  last_interconnect_io_sample_in_valid; // @[TreePEsWrapper.scala 70:43]
  wire [31:0] last_interconnect_io_sample_in_bits_features_0; // @[TreePEsWrapper.scala 70:43]
  wire [31:0] last_interconnect_io_sample_in_bits_features_1; // @[TreePEsWrapper.scala 70:43]
  wire [31:0] last_interconnect_io_sample_in_bits_features_2; // @[TreePEsWrapper.scala 70:43]
  wire [31:0] last_interconnect_io_sample_in_bits_features_3; // @[TreePEsWrapper.scala 70:43]
  wire [31:0] last_interconnect_io_sample_in_bits_features_4; // @[TreePEsWrapper.scala 70:43]
  wire [9:0] last_interconnect_io_sample_in_bits_offset; // @[TreePEsWrapper.scala 70:43]
  wire  last_interconnect_io_sample_in_bits_search_for_root; // @[TreePEsWrapper.scala 70:43]
  wire [7:0] last_interconnect_io_sample_in_bits_tree_to_exec; // @[TreePEsWrapper.scala 70:43]
  wire [15:0] last_interconnect_io_sample_in_bits_scores_0; // @[TreePEsWrapper.scala 70:43]
  wire [15:0] last_interconnect_io_sample_in_bits_scores_1; // @[TreePEsWrapper.scala 70:43]
  wire [15:0] last_interconnect_io_sample_in_bits_scores_2; // @[TreePEsWrapper.scala 70:43]
  wire [15:0] last_interconnect_io_sample_in_bits_scores_3; // @[TreePEsWrapper.scala 70:43]
  wire [15:0] last_interconnect_io_sample_in_bits_scores_4; // @[TreePEsWrapper.scala 70:43]
  wire [15:0] last_interconnect_io_sample_in_bits_scores_5; // @[TreePEsWrapper.scala 70:43]
  wire [15:0] last_interconnect_io_sample_in_bits_weights_0; // @[TreePEsWrapper.scala 70:43]
  wire [15:0] last_interconnect_io_sample_in_bits_weights_1; // @[TreePEsWrapper.scala 70:43]
  wire [15:0] last_interconnect_io_sample_in_bits_weights_2; // @[TreePEsWrapper.scala 70:43]
  wire [15:0] last_interconnect_io_sample_in_bits_weights_3; // @[TreePEsWrapper.scala 70:43]
  wire [15:0] last_interconnect_io_sample_in_bits_weights_4; // @[TreePEsWrapper.scala 70:43]
  wire  last_interconnect_io_sample_in_bits_dest; // @[TreePEsWrapper.scala 70:43]
  wire  last_interconnect_io_sample_in_bits_last; // @[TreePEsWrapper.scala 70:43]
  wire  last_interconnect_io_sample_looping_ready; // @[TreePEsWrapper.scala 70:43]
  wire  last_interconnect_io_sample_looping_valid; // @[TreePEsWrapper.scala 70:43]
  wire [31:0] last_interconnect_io_sample_looping_bits_features_0; // @[TreePEsWrapper.scala 70:43]
  wire [31:0] last_interconnect_io_sample_looping_bits_features_1; // @[TreePEsWrapper.scala 70:43]
  wire [31:0] last_interconnect_io_sample_looping_bits_features_2; // @[TreePEsWrapper.scala 70:43]
  wire [31:0] last_interconnect_io_sample_looping_bits_features_3; // @[TreePEsWrapper.scala 70:43]
  wire [31:0] last_interconnect_io_sample_looping_bits_features_4; // @[TreePEsWrapper.scala 70:43]
  wire [9:0] last_interconnect_io_sample_looping_bits_offset; // @[TreePEsWrapper.scala 70:43]
  wire  last_interconnect_io_sample_looping_bits_shift; // @[TreePEsWrapper.scala 70:43]
  wire  last_interconnect_io_sample_looping_bits_search_for_root; // @[TreePEsWrapper.scala 70:43]
  wire [7:0] last_interconnect_io_sample_looping_bits_tree_to_exec; // @[TreePEsWrapper.scala 70:43]
  wire [15:0] last_interconnect_io_sample_looping_bits_scores_0; // @[TreePEsWrapper.scala 70:43]
  wire [15:0] last_interconnect_io_sample_looping_bits_scores_1; // @[TreePEsWrapper.scala 70:43]
  wire [15:0] last_interconnect_io_sample_looping_bits_scores_2; // @[TreePEsWrapper.scala 70:43]
  wire [15:0] last_interconnect_io_sample_looping_bits_scores_3; // @[TreePEsWrapper.scala 70:43]
  wire [15:0] last_interconnect_io_sample_looping_bits_scores_4; // @[TreePEsWrapper.scala 70:43]
  wire [15:0] last_interconnect_io_sample_looping_bits_scores_5; // @[TreePEsWrapper.scala 70:43]
  wire [15:0] last_interconnect_io_sample_looping_bits_weights_0; // @[TreePEsWrapper.scala 70:43]
  wire [15:0] last_interconnect_io_sample_looping_bits_weights_1; // @[TreePEsWrapper.scala 70:43]
  wire [15:0] last_interconnect_io_sample_looping_bits_weights_2; // @[TreePEsWrapper.scala 70:43]
  wire [15:0] last_interconnect_io_sample_looping_bits_weights_3; // @[TreePEsWrapper.scala 70:43]
  wire [15:0] last_interconnect_io_sample_looping_bits_weights_4; // @[TreePEsWrapper.scala 70:43]
  wire  last_interconnect_io_sample_looping_bits_last; // @[TreePEsWrapper.scala 70:43]
  wire  last_interconnect_io_sample_leaving_ready; // @[TreePEsWrapper.scala 70:43]
  wire  last_interconnect_io_sample_leaving_valid; // @[TreePEsWrapper.scala 70:43]
  wire [31:0] last_interconnect_io_sample_leaving_bits_features_0; // @[TreePEsWrapper.scala 70:43]
  wire [31:0] last_interconnect_io_sample_leaving_bits_features_1; // @[TreePEsWrapper.scala 70:43]
  wire [31:0] last_interconnect_io_sample_leaving_bits_features_2; // @[TreePEsWrapper.scala 70:43]
  wire [31:0] last_interconnect_io_sample_leaving_bits_features_3; // @[TreePEsWrapper.scala 70:43]
  wire [31:0] last_interconnect_io_sample_leaving_bits_features_4; // @[TreePEsWrapper.scala 70:43]
  wire [9:0] last_interconnect_io_sample_leaving_bits_offset; // @[TreePEsWrapper.scala 70:43]
  wire  last_interconnect_io_sample_leaving_bits_shift; // @[TreePEsWrapper.scala 70:43]
  wire  last_interconnect_io_sample_leaving_bits_search_for_root; // @[TreePEsWrapper.scala 70:43]
  wire [7:0] last_interconnect_io_sample_leaving_bits_tree_to_exec; // @[TreePEsWrapper.scala 70:43]
  wire [15:0] last_interconnect_io_sample_leaving_bits_scores_0; // @[TreePEsWrapper.scala 70:43]
  wire [15:0] last_interconnect_io_sample_leaving_bits_scores_1; // @[TreePEsWrapper.scala 70:43]
  wire [15:0] last_interconnect_io_sample_leaving_bits_scores_2; // @[TreePEsWrapper.scala 70:43]
  wire [15:0] last_interconnect_io_sample_leaving_bits_scores_3; // @[TreePEsWrapper.scala 70:43]
  wire [15:0] last_interconnect_io_sample_leaving_bits_scores_4; // @[TreePEsWrapper.scala 70:43]
  wire [15:0] last_interconnect_io_sample_leaving_bits_scores_5; // @[TreePEsWrapper.scala 70:43]
  wire [15:0] last_interconnect_io_sample_leaving_bits_weights_0; // @[TreePEsWrapper.scala 70:43]
  wire [15:0] last_interconnect_io_sample_leaving_bits_weights_1; // @[TreePEsWrapper.scala 70:43]
  wire [15:0] last_interconnect_io_sample_leaving_bits_weights_2; // @[TreePEsWrapper.scala 70:43]
  wire [15:0] last_interconnect_io_sample_leaving_bits_weights_3; // @[TreePEsWrapper.scala 70:43]
  wire [15:0] last_interconnect_io_sample_leaving_bits_weights_4; // @[TreePEsWrapper.scala 70:43]
  wire  last_interconnect_io_sample_leaving_bits_last; // @[TreePEsWrapper.scala 70:43]
  wire  increment_clock; // @[TreePEsWrapper.scala 71:35]
  wire  increment_reset; // @[TreePEsWrapper.scala 71:35]
  wire  increment_io_sample_in_ready; // @[TreePEsWrapper.scala 71:35]
  wire  increment_io_sample_in_valid; // @[TreePEsWrapper.scala 71:35]
  wire [31:0] increment_io_sample_in_bits_features_0; // @[TreePEsWrapper.scala 71:35]
  wire [31:0] increment_io_sample_in_bits_features_1; // @[TreePEsWrapper.scala 71:35]
  wire [31:0] increment_io_sample_in_bits_features_2; // @[TreePEsWrapper.scala 71:35]
  wire [31:0] increment_io_sample_in_bits_features_3; // @[TreePEsWrapper.scala 71:35]
  wire [31:0] increment_io_sample_in_bits_features_4; // @[TreePEsWrapper.scala 71:35]
  wire [9:0] increment_io_sample_in_bits_offset; // @[TreePEsWrapper.scala 71:35]
  wire  increment_io_sample_in_bits_shift; // @[TreePEsWrapper.scala 71:35]
  wire  increment_io_sample_in_bits_search_for_root; // @[TreePEsWrapper.scala 71:35]
  wire [7:0] increment_io_sample_in_bits_tree_to_exec; // @[TreePEsWrapper.scala 71:35]
  wire [15:0] increment_io_sample_in_bits_scores_0; // @[TreePEsWrapper.scala 71:35]
  wire [15:0] increment_io_sample_in_bits_scores_1; // @[TreePEsWrapper.scala 71:35]
  wire [15:0] increment_io_sample_in_bits_scores_2; // @[TreePEsWrapper.scala 71:35]
  wire [15:0] increment_io_sample_in_bits_scores_3; // @[TreePEsWrapper.scala 71:35]
  wire [15:0] increment_io_sample_in_bits_scores_4; // @[TreePEsWrapper.scala 71:35]
  wire [15:0] increment_io_sample_in_bits_scores_5; // @[TreePEsWrapper.scala 71:35]
  wire [15:0] increment_io_sample_in_bits_weights_0; // @[TreePEsWrapper.scala 71:35]
  wire [15:0] increment_io_sample_in_bits_weights_1; // @[TreePEsWrapper.scala 71:35]
  wire [15:0] increment_io_sample_in_bits_weights_2; // @[TreePEsWrapper.scala 71:35]
  wire [15:0] increment_io_sample_in_bits_weights_3; // @[TreePEsWrapper.scala 71:35]
  wire [15:0] increment_io_sample_in_bits_weights_4; // @[TreePEsWrapper.scala 71:35]
  wire  increment_io_sample_in_bits_last; // @[TreePEsWrapper.scala 71:35]
  wire  increment_io_sample_out_ready; // @[TreePEsWrapper.scala 71:35]
  wire  increment_io_sample_out_valid; // @[TreePEsWrapper.scala 71:35]
  wire [31:0] increment_io_sample_out_bits_features_0; // @[TreePEsWrapper.scala 71:35]
  wire [31:0] increment_io_sample_out_bits_features_1; // @[TreePEsWrapper.scala 71:35]
  wire [31:0] increment_io_sample_out_bits_features_2; // @[TreePEsWrapper.scala 71:35]
  wire [31:0] increment_io_sample_out_bits_features_3; // @[TreePEsWrapper.scala 71:35]
  wire [31:0] increment_io_sample_out_bits_features_4; // @[TreePEsWrapper.scala 71:35]
  wire [9:0] increment_io_sample_out_bits_offset; // @[TreePEsWrapper.scala 71:35]
  wire  increment_io_sample_out_bits_shift; // @[TreePEsWrapper.scala 71:35]
  wire  increment_io_sample_out_bits_search_for_root; // @[TreePEsWrapper.scala 71:35]
  wire [7:0] increment_io_sample_out_bits_tree_to_exec; // @[TreePEsWrapper.scala 71:35]
  wire [15:0] increment_io_sample_out_bits_scores_0; // @[TreePEsWrapper.scala 71:35]
  wire [15:0] increment_io_sample_out_bits_scores_1; // @[TreePEsWrapper.scala 71:35]
  wire [15:0] increment_io_sample_out_bits_scores_2; // @[TreePEsWrapper.scala 71:35]
  wire [15:0] increment_io_sample_out_bits_scores_3; // @[TreePEsWrapper.scala 71:35]
  wire [15:0] increment_io_sample_out_bits_scores_4; // @[TreePEsWrapper.scala 71:35]
  wire [15:0] increment_io_sample_out_bits_scores_5; // @[TreePEsWrapper.scala 71:35]
  wire [15:0] increment_io_sample_out_bits_weights_0; // @[TreePEsWrapper.scala 71:35]
  wire [15:0] increment_io_sample_out_bits_weights_1; // @[TreePEsWrapper.scala 71:35]
  wire [15:0] increment_io_sample_out_bits_weights_2; // @[TreePEsWrapper.scala 71:35]
  wire [15:0] increment_io_sample_out_bits_weights_3; // @[TreePEsWrapper.scala 71:35]
  wire [15:0] increment_io_sample_out_bits_weights_4; // @[TreePEsWrapper.scala 71:35]
  wire  increment_io_sample_out_bits_last; // @[TreePEsWrapper.scala 71:35]
  reg [31:0] cycles_counter; // @[TreePEsWrapper.scala 43:37]
  reg  counting; // @[TreePEsWrapper.scala 44:31]
  reg  stop_count; // @[TreePEsWrapper.scala 45:33]
  wire  _GEN_0 = voter_io_sample_out_valid & voter_io_sample_out_bits_last ? 1'h0 : counting; // @[TreePEsWrapper.scala 59:78 60:22 63:22]
  wire  _GEN_1 = voter_io_sample_out_valid & voter_io_sample_out_bits_last | stop_count; // @[TreePEsWrapper.scala 59:78 61:24 45:33]
  wire  _GEN_2 = wrapper_io_sample_in_TVALID & ~counting & ~stop_count | _GEN_0; // @[TreePEsWrapper.scala 57:68 58:22]
  wire [31:0] _cycles_counter_T_1 = cycles_counter + 32'h1; // @[TreePEsWrapper.scala 110:54]
  ForwardConverter forward_converter ( // @[TreePEsWrapper.scala 47:39]
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
    .io_sample_out_bits_features_4(forward_converter_io_sample_out_bits_features_4),
    .io_sample_out_bits_offset(forward_converter_io_sample_out_bits_offset),
    .io_sample_out_bits_shift(forward_converter_io_sample_out_bits_shift),
    .io_sample_out_bits_search_for_root(forward_converter_io_sample_out_bits_search_for_root),
    .io_sample_out_bits_tree_to_exec(forward_converter_io_sample_out_bits_tree_to_exec),
    .io_sample_out_bits_scores_0(forward_converter_io_sample_out_bits_scores_0),
    .io_sample_out_bits_scores_1(forward_converter_io_sample_out_bits_scores_1),
    .io_sample_out_bits_scores_2(forward_converter_io_sample_out_bits_scores_2),
    .io_sample_out_bits_scores_3(forward_converter_io_sample_out_bits_scores_3),
    .io_sample_out_bits_scores_4(forward_converter_io_sample_out_bits_scores_4),
    .io_sample_out_bits_scores_5(forward_converter_io_sample_out_bits_scores_5),
    .io_sample_out_bits_weights_0(forward_converter_io_sample_out_bits_weights_0),
    .io_sample_out_bits_weights_1(forward_converter_io_sample_out_bits_weights_1),
    .io_sample_out_bits_weights_2(forward_converter_io_sample_out_bits_weights_2),
    .io_sample_out_bits_weights_3(forward_converter_io_sample_out_bits_weights_3),
    .io_sample_out_bits_weights_4(forward_converter_io_sample_out_bits_weights_4),
    .io_sample_out_bits_last(forward_converter_io_sample_out_bits_last)
  );
  BackwardConverter backward_converter ( // @[TreePEsWrapper.scala 48:40]
    .clock(backward_converter_clock),
    .reset(backward_converter_reset),
    .io_sample_in_ready(backward_converter_io_sample_in_ready),
    .io_sample_in_valid(backward_converter_io_sample_in_valid),
    .io_sample_in_bits_features_0(backward_converter_io_sample_in_bits_features_0),
    .io_sample_in_bits_features_1(backward_converter_io_sample_in_bits_features_1),
    .io_sample_in_bits_features_2(backward_converter_io_sample_in_bits_features_2),
    .io_sample_in_bits_features_3(backward_converter_io_sample_in_bits_features_3),
    .io_sample_in_bits_features_4(backward_converter_io_sample_in_bits_features_4),
    .io_sample_in_bits_offset(backward_converter_io_sample_in_bits_offset),
    .io_sample_in_bits_shift(backward_converter_io_sample_in_bits_shift),
    .io_sample_in_bits_search_for_root(backward_converter_io_sample_in_bits_search_for_root),
    .io_sample_in_bits_tree_to_exec(backward_converter_io_sample_in_bits_tree_to_exec),
    .io_sample_in_bits_scores_0(backward_converter_io_sample_in_bits_scores_0),
    .io_sample_in_bits_scores_1(backward_converter_io_sample_in_bits_scores_1),
    .io_sample_in_bits_scores_2(backward_converter_io_sample_in_bits_scores_2),
    .io_sample_in_bits_scores_3(backward_converter_io_sample_in_bits_scores_3),
    .io_sample_in_bits_scores_4(backward_converter_io_sample_in_bits_scores_4),
    .io_sample_in_bits_scores_5(backward_converter_io_sample_in_bits_scores_5),
    .io_sample_in_bits_last(backward_converter_io_sample_in_bits_last),
    .io_sample_in_bits_clock_cycles(backward_converter_io_sample_in_bits_clock_cycles),
    .io_sample_out_TDATA(backward_converter_io_sample_out_TDATA),
    .io_sample_out_TLAST(backward_converter_io_sample_out_TLAST),
    .io_sample_out_TREADY(backward_converter_io_sample_out_TREADY),
    .io_sample_out_TVALID(backward_converter_io_sample_out_TVALID)
  );
  DispatcherPE dispatcher ( // @[TreePEsWrapper.scala 50:32]
    .clock(dispatcher_clock),
    .reset(dispatcher_reset),
    .io_sample_in_ready(dispatcher_io_sample_in_ready),
    .io_sample_in_valid(dispatcher_io_sample_in_valid),
    .io_sample_in_bits_features_0(dispatcher_io_sample_in_bits_features_0),
    .io_sample_in_bits_features_1(dispatcher_io_sample_in_bits_features_1),
    .io_sample_in_bits_features_2(dispatcher_io_sample_in_bits_features_2),
    .io_sample_in_bits_features_3(dispatcher_io_sample_in_bits_features_3),
    .io_sample_in_bits_features_4(dispatcher_io_sample_in_bits_features_4),
    .io_sample_in_bits_offset(dispatcher_io_sample_in_bits_offset),
    .io_sample_in_bits_shift(dispatcher_io_sample_in_bits_shift),
    .io_sample_in_bits_search_for_root(dispatcher_io_sample_in_bits_search_for_root),
    .io_sample_in_bits_tree_to_exec(dispatcher_io_sample_in_bits_tree_to_exec),
    .io_sample_in_bits_scores_0(dispatcher_io_sample_in_bits_scores_0),
    .io_sample_in_bits_scores_1(dispatcher_io_sample_in_bits_scores_1),
    .io_sample_in_bits_scores_2(dispatcher_io_sample_in_bits_scores_2),
    .io_sample_in_bits_scores_3(dispatcher_io_sample_in_bits_scores_3),
    .io_sample_in_bits_scores_4(dispatcher_io_sample_in_bits_scores_4),
    .io_sample_in_bits_scores_5(dispatcher_io_sample_in_bits_scores_5),
    .io_sample_in_bits_weights_0(dispatcher_io_sample_in_bits_weights_0),
    .io_sample_in_bits_weights_1(dispatcher_io_sample_in_bits_weights_1),
    .io_sample_in_bits_weights_2(dispatcher_io_sample_in_bits_weights_2),
    .io_sample_in_bits_weights_3(dispatcher_io_sample_in_bits_weights_3),
    .io_sample_in_bits_weights_4(dispatcher_io_sample_in_bits_weights_4),
    .io_sample_in_bits_last(dispatcher_io_sample_in_bits_last),
    .io_samples_out_0_ready(dispatcher_io_samples_out_0_ready),
    .io_samples_out_0_valid(dispatcher_io_samples_out_0_valid),
    .io_samples_out_0_bits_features_0(dispatcher_io_samples_out_0_bits_features_0),
    .io_samples_out_0_bits_features_1(dispatcher_io_samples_out_0_bits_features_1),
    .io_samples_out_0_bits_features_2(dispatcher_io_samples_out_0_bits_features_2),
    .io_samples_out_0_bits_features_3(dispatcher_io_samples_out_0_bits_features_3),
    .io_samples_out_0_bits_features_4(dispatcher_io_samples_out_0_bits_features_4),
    .io_samples_out_0_bits_offset(dispatcher_io_samples_out_0_bits_offset),
    .io_samples_out_0_bits_shift(dispatcher_io_samples_out_0_bits_shift),
    .io_samples_out_0_bits_search_for_root(dispatcher_io_samples_out_0_bits_search_for_root),
    .io_samples_out_0_bits_tree_to_exec(dispatcher_io_samples_out_0_bits_tree_to_exec),
    .io_samples_out_0_bits_scores_0(dispatcher_io_samples_out_0_bits_scores_0),
    .io_samples_out_0_bits_scores_1(dispatcher_io_samples_out_0_bits_scores_1),
    .io_samples_out_0_bits_scores_2(dispatcher_io_samples_out_0_bits_scores_2),
    .io_samples_out_0_bits_scores_3(dispatcher_io_samples_out_0_bits_scores_3),
    .io_samples_out_0_bits_scores_4(dispatcher_io_samples_out_0_bits_scores_4),
    .io_samples_out_0_bits_scores_5(dispatcher_io_samples_out_0_bits_scores_5),
    .io_samples_out_0_bits_weights_0(dispatcher_io_samples_out_0_bits_weights_0),
    .io_samples_out_0_bits_weights_1(dispatcher_io_samples_out_0_bits_weights_1),
    .io_samples_out_0_bits_weights_2(dispatcher_io_samples_out_0_bits_weights_2),
    .io_samples_out_0_bits_weights_3(dispatcher_io_samples_out_0_bits_weights_3),
    .io_samples_out_0_bits_weights_4(dispatcher_io_samples_out_0_bits_weights_4),
    .io_samples_out_0_bits_last(dispatcher_io_samples_out_0_bits_last)
  );
  VoterPE voter ( // @[TreePEsWrapper.scala 51:27]
    .clock(voter_clock),
    .reset(voter_reset),
    .io_samples_in_0_ready(voter_io_samples_in_0_ready),
    .io_samples_in_0_valid(voter_io_samples_in_0_valid),
    .io_samples_in_0_bits_features_0(voter_io_samples_in_0_bits_features_0),
    .io_samples_in_0_bits_features_1(voter_io_samples_in_0_bits_features_1),
    .io_samples_in_0_bits_features_2(voter_io_samples_in_0_bits_features_2),
    .io_samples_in_0_bits_features_3(voter_io_samples_in_0_bits_features_3),
    .io_samples_in_0_bits_features_4(voter_io_samples_in_0_bits_features_4),
    .io_samples_in_0_bits_offset(voter_io_samples_in_0_bits_offset),
    .io_samples_in_0_bits_shift(voter_io_samples_in_0_bits_shift),
    .io_samples_in_0_bits_search_for_root(voter_io_samples_in_0_bits_search_for_root),
    .io_samples_in_0_bits_tree_to_exec(voter_io_samples_in_0_bits_tree_to_exec),
    .io_samples_in_0_bits_scores_0(voter_io_samples_in_0_bits_scores_0),
    .io_samples_in_0_bits_scores_1(voter_io_samples_in_0_bits_scores_1),
    .io_samples_in_0_bits_scores_2(voter_io_samples_in_0_bits_scores_2),
    .io_samples_in_0_bits_scores_3(voter_io_samples_in_0_bits_scores_3),
    .io_samples_in_0_bits_scores_4(voter_io_samples_in_0_bits_scores_4),
    .io_samples_in_0_bits_scores_5(voter_io_samples_in_0_bits_scores_5),
    .io_samples_in_0_bits_weights_0(voter_io_samples_in_0_bits_weights_0),
    .io_samples_in_0_bits_weights_1(voter_io_samples_in_0_bits_weights_1),
    .io_samples_in_0_bits_weights_2(voter_io_samples_in_0_bits_weights_2),
    .io_samples_in_0_bits_weights_3(voter_io_samples_in_0_bits_weights_3),
    .io_samples_in_0_bits_weights_4(voter_io_samples_in_0_bits_weights_4),
    .io_samples_in_0_bits_last(voter_io_samples_in_0_bits_last),
    .io_sample_out_ready(voter_io_sample_out_ready),
    .io_sample_out_valid(voter_io_sample_out_valid),
    .io_sample_out_bits_features_0(voter_io_sample_out_bits_features_0),
    .io_sample_out_bits_features_1(voter_io_sample_out_bits_features_1),
    .io_sample_out_bits_features_2(voter_io_sample_out_bits_features_2),
    .io_sample_out_bits_features_3(voter_io_sample_out_bits_features_3),
    .io_sample_out_bits_features_4(voter_io_sample_out_bits_features_4),
    .io_sample_out_bits_offset(voter_io_sample_out_bits_offset),
    .io_sample_out_bits_shift(voter_io_sample_out_bits_shift),
    .io_sample_out_bits_search_for_root(voter_io_sample_out_bits_search_for_root),
    .io_sample_out_bits_tree_to_exec(voter_io_sample_out_bits_tree_to_exec),
    .io_sample_out_bits_scores_0(voter_io_sample_out_bits_scores_0),
    .io_sample_out_bits_scores_1(voter_io_sample_out_bits_scores_1),
    .io_sample_out_bits_scores_2(voter_io_sample_out_bits_scores_2),
    .io_sample_out_bits_scores_3(voter_io_sample_out_bits_scores_3),
    .io_sample_out_bits_scores_4(voter_io_sample_out_bits_scores_4),
    .io_sample_out_bits_scores_5(voter_io_sample_out_bits_scores_5),
    .io_sample_out_bits_last(voter_io_sample_out_bits_last)
  );
  TreePEwithBRAM pes_0 ( // @[TreePEsWrapper.scala 67:69]
    .clock(pes_0_clock),
    .reset(pes_0_reset),
    .pe_io_sample_in_ready(pes_0_pe_io_sample_in_ready),
    .pe_io_sample_in_valid(pes_0_pe_io_sample_in_valid),
    .pe_io_sample_in_bits_features_0(pes_0_pe_io_sample_in_bits_features_0),
    .pe_io_sample_in_bits_features_1(pes_0_pe_io_sample_in_bits_features_1),
    .pe_io_sample_in_bits_features_2(pes_0_pe_io_sample_in_bits_features_2),
    .pe_io_sample_in_bits_features_3(pes_0_pe_io_sample_in_bits_features_3),
    .pe_io_sample_in_bits_features_4(pes_0_pe_io_sample_in_bits_features_4),
    .pe_io_sample_in_bits_offset(pes_0_pe_io_sample_in_bits_offset),
    .pe_io_sample_in_bits_shift(pes_0_pe_io_sample_in_bits_shift),
    .pe_io_sample_in_bits_search_for_root(pes_0_pe_io_sample_in_bits_search_for_root),
    .pe_io_sample_in_bits_tree_to_exec(pes_0_pe_io_sample_in_bits_tree_to_exec),
    .pe_io_sample_in_bits_scores_0(pes_0_pe_io_sample_in_bits_scores_0),
    .pe_io_sample_in_bits_scores_1(pes_0_pe_io_sample_in_bits_scores_1),
    .pe_io_sample_in_bits_scores_2(pes_0_pe_io_sample_in_bits_scores_2),
    .pe_io_sample_in_bits_scores_3(pes_0_pe_io_sample_in_bits_scores_3),
    .pe_io_sample_in_bits_scores_4(pes_0_pe_io_sample_in_bits_scores_4),
    .pe_io_sample_in_bits_scores_5(pes_0_pe_io_sample_in_bits_scores_5),
    .pe_io_sample_in_bits_weights_0(pes_0_pe_io_sample_in_bits_weights_0),
    .pe_io_sample_in_bits_weights_1(pes_0_pe_io_sample_in_bits_weights_1),
    .pe_io_sample_in_bits_weights_2(pes_0_pe_io_sample_in_bits_weights_2),
    .pe_io_sample_in_bits_weights_3(pes_0_pe_io_sample_in_bits_weights_3),
    .pe_io_sample_in_bits_weights_4(pes_0_pe_io_sample_in_bits_weights_4),
    .pe_io_sample_in_bits_last(pes_0_pe_io_sample_in_bits_last),
    .pe_io_mem_addr_1(pes_0_pe_io_mem_addr_1),
    .pe_io_mem_dataOut_1(pes_0_pe_io_mem_dataOut_1),
    .pe_io_sample_out_ready(pes_0_pe_io_sample_out_ready),
    .pe_io_sample_out_valid(pes_0_pe_io_sample_out_valid),
    .pe_io_sample_out_bits_features_0(pes_0_pe_io_sample_out_bits_features_0),
    .pe_io_sample_out_bits_features_1(pes_0_pe_io_sample_out_bits_features_1),
    .pe_io_sample_out_bits_features_2(pes_0_pe_io_sample_out_bits_features_2),
    .pe_io_sample_out_bits_features_3(pes_0_pe_io_sample_out_bits_features_3),
    .pe_io_sample_out_bits_features_4(pes_0_pe_io_sample_out_bits_features_4),
    .pe_io_sample_out_bits_offset(pes_0_pe_io_sample_out_bits_offset),
    .pe_io_sample_out_bits_search_for_root(pes_0_pe_io_sample_out_bits_search_for_root),
    .pe_io_sample_out_bits_tree_to_exec(pes_0_pe_io_sample_out_bits_tree_to_exec),
    .pe_io_sample_out_bits_scores_0(pes_0_pe_io_sample_out_bits_scores_0),
    .pe_io_sample_out_bits_scores_1(pes_0_pe_io_sample_out_bits_scores_1),
    .pe_io_sample_out_bits_scores_2(pes_0_pe_io_sample_out_bits_scores_2),
    .pe_io_sample_out_bits_scores_3(pes_0_pe_io_sample_out_bits_scores_3),
    .pe_io_sample_out_bits_scores_4(pes_0_pe_io_sample_out_bits_scores_4),
    .pe_io_sample_out_bits_scores_5(pes_0_pe_io_sample_out_bits_scores_5),
    .pe_io_sample_out_bits_weights_0(pes_0_pe_io_sample_out_bits_weights_0),
    .pe_io_sample_out_bits_weights_1(pes_0_pe_io_sample_out_bits_weights_1),
    .pe_io_sample_out_bits_weights_2(pes_0_pe_io_sample_out_bits_weights_2),
    .pe_io_sample_out_bits_weights_3(pes_0_pe_io_sample_out_bits_weights_3),
    .pe_io_sample_out_bits_weights_4(pes_0_pe_io_sample_out_bits_weights_4),
    .pe_io_sample_out_bits_last(pes_0_pe_io_sample_out_bits_last)
  );
  TreePEwithBRAM_1 pes_1 ( // @[TreePEsWrapper.scala 67:69]
    .clock(pes_1_clock),
    .reset(pes_1_reset),
    .pe_io_sample_in_ready(pes_1_pe_io_sample_in_ready),
    .pe_io_sample_in_valid(pes_1_pe_io_sample_in_valid),
    .pe_io_sample_in_bits_features_0(pes_1_pe_io_sample_in_bits_features_0),
    .pe_io_sample_in_bits_features_1(pes_1_pe_io_sample_in_bits_features_1),
    .pe_io_sample_in_bits_features_2(pes_1_pe_io_sample_in_bits_features_2),
    .pe_io_sample_in_bits_features_3(pes_1_pe_io_sample_in_bits_features_3),
    .pe_io_sample_in_bits_features_4(pes_1_pe_io_sample_in_bits_features_4),
    .pe_io_sample_in_bits_offset(pes_1_pe_io_sample_in_bits_offset),
    .pe_io_sample_in_bits_search_for_root(pes_1_pe_io_sample_in_bits_search_for_root),
    .pe_io_sample_in_bits_tree_to_exec(pes_1_pe_io_sample_in_bits_tree_to_exec),
    .pe_io_sample_in_bits_scores_0(pes_1_pe_io_sample_in_bits_scores_0),
    .pe_io_sample_in_bits_scores_1(pes_1_pe_io_sample_in_bits_scores_1),
    .pe_io_sample_in_bits_scores_2(pes_1_pe_io_sample_in_bits_scores_2),
    .pe_io_sample_in_bits_scores_3(pes_1_pe_io_sample_in_bits_scores_3),
    .pe_io_sample_in_bits_scores_4(pes_1_pe_io_sample_in_bits_scores_4),
    .pe_io_sample_in_bits_scores_5(pes_1_pe_io_sample_in_bits_scores_5),
    .pe_io_sample_in_bits_weights_0(pes_1_pe_io_sample_in_bits_weights_0),
    .pe_io_sample_in_bits_weights_1(pes_1_pe_io_sample_in_bits_weights_1),
    .pe_io_sample_in_bits_weights_2(pes_1_pe_io_sample_in_bits_weights_2),
    .pe_io_sample_in_bits_weights_3(pes_1_pe_io_sample_in_bits_weights_3),
    .pe_io_sample_in_bits_weights_4(pes_1_pe_io_sample_in_bits_weights_4),
    .pe_io_sample_in_bits_last(pes_1_pe_io_sample_in_bits_last),
    .pe_io_mem_addr_1(pes_1_pe_io_mem_addr_1),
    .pe_io_mem_dataOut_1(pes_1_pe_io_mem_dataOut_1),
    .pe_io_sample_out_ready(pes_1_pe_io_sample_out_ready),
    .pe_io_sample_out_valid(pes_1_pe_io_sample_out_valid),
    .pe_io_sample_out_bits_features_0(pes_1_pe_io_sample_out_bits_features_0),
    .pe_io_sample_out_bits_features_1(pes_1_pe_io_sample_out_bits_features_1),
    .pe_io_sample_out_bits_features_2(pes_1_pe_io_sample_out_bits_features_2),
    .pe_io_sample_out_bits_features_3(pes_1_pe_io_sample_out_bits_features_3),
    .pe_io_sample_out_bits_features_4(pes_1_pe_io_sample_out_bits_features_4),
    .pe_io_sample_out_bits_offset(pes_1_pe_io_sample_out_bits_offset),
    .pe_io_sample_out_bits_search_for_root(pes_1_pe_io_sample_out_bits_search_for_root),
    .pe_io_sample_out_bits_tree_to_exec(pes_1_pe_io_sample_out_bits_tree_to_exec),
    .pe_io_sample_out_bits_scores_0(pes_1_pe_io_sample_out_bits_scores_0),
    .pe_io_sample_out_bits_scores_1(pes_1_pe_io_sample_out_bits_scores_1),
    .pe_io_sample_out_bits_scores_2(pes_1_pe_io_sample_out_bits_scores_2),
    .pe_io_sample_out_bits_scores_3(pes_1_pe_io_sample_out_bits_scores_3),
    .pe_io_sample_out_bits_scores_4(pes_1_pe_io_sample_out_bits_scores_4),
    .pe_io_sample_out_bits_scores_5(pes_1_pe_io_sample_out_bits_scores_5),
    .pe_io_sample_out_bits_weights_0(pes_1_pe_io_sample_out_bits_weights_0),
    .pe_io_sample_out_bits_weights_1(pes_1_pe_io_sample_out_bits_weights_1),
    .pe_io_sample_out_bits_weights_2(pes_1_pe_io_sample_out_bits_weights_2),
    .pe_io_sample_out_bits_weights_3(pes_1_pe_io_sample_out_bits_weights_3),
    .pe_io_sample_out_bits_weights_4(pes_1_pe_io_sample_out_bits_weights_4),
    .pe_io_sample_out_bits_dest(pes_1_pe_io_sample_out_bits_dest),
    .pe_io_sample_out_bits_last(pes_1_pe_io_sample_out_bits_last)
  );
  TreePEwithBRAM_1 pes_2 ( // @[TreePEsWrapper.scala 67:69]
    .clock(pes_2_clock),
    .reset(pes_2_reset),
    .pe_io_sample_in_ready(pes_2_pe_io_sample_in_ready),
    .pe_io_sample_in_valid(pes_2_pe_io_sample_in_valid),
    .pe_io_sample_in_bits_features_0(pes_2_pe_io_sample_in_bits_features_0),
    .pe_io_sample_in_bits_features_1(pes_2_pe_io_sample_in_bits_features_1),
    .pe_io_sample_in_bits_features_2(pes_2_pe_io_sample_in_bits_features_2),
    .pe_io_sample_in_bits_features_3(pes_2_pe_io_sample_in_bits_features_3),
    .pe_io_sample_in_bits_features_4(pes_2_pe_io_sample_in_bits_features_4),
    .pe_io_sample_in_bits_offset(pes_2_pe_io_sample_in_bits_offset),
    .pe_io_sample_in_bits_search_for_root(pes_2_pe_io_sample_in_bits_search_for_root),
    .pe_io_sample_in_bits_tree_to_exec(pes_2_pe_io_sample_in_bits_tree_to_exec),
    .pe_io_sample_in_bits_scores_0(pes_2_pe_io_sample_in_bits_scores_0),
    .pe_io_sample_in_bits_scores_1(pes_2_pe_io_sample_in_bits_scores_1),
    .pe_io_sample_in_bits_scores_2(pes_2_pe_io_sample_in_bits_scores_2),
    .pe_io_sample_in_bits_scores_3(pes_2_pe_io_sample_in_bits_scores_3),
    .pe_io_sample_in_bits_scores_4(pes_2_pe_io_sample_in_bits_scores_4),
    .pe_io_sample_in_bits_scores_5(pes_2_pe_io_sample_in_bits_scores_5),
    .pe_io_sample_in_bits_weights_0(pes_2_pe_io_sample_in_bits_weights_0),
    .pe_io_sample_in_bits_weights_1(pes_2_pe_io_sample_in_bits_weights_1),
    .pe_io_sample_in_bits_weights_2(pes_2_pe_io_sample_in_bits_weights_2),
    .pe_io_sample_in_bits_weights_3(pes_2_pe_io_sample_in_bits_weights_3),
    .pe_io_sample_in_bits_weights_4(pes_2_pe_io_sample_in_bits_weights_4),
    .pe_io_sample_in_bits_last(pes_2_pe_io_sample_in_bits_last),
    .pe_io_mem_addr_1(pes_2_pe_io_mem_addr_1),
    .pe_io_mem_dataOut_1(pes_2_pe_io_mem_dataOut_1),
    .pe_io_sample_out_ready(pes_2_pe_io_sample_out_ready),
    .pe_io_sample_out_valid(pes_2_pe_io_sample_out_valid),
    .pe_io_sample_out_bits_features_0(pes_2_pe_io_sample_out_bits_features_0),
    .pe_io_sample_out_bits_features_1(pes_2_pe_io_sample_out_bits_features_1),
    .pe_io_sample_out_bits_features_2(pes_2_pe_io_sample_out_bits_features_2),
    .pe_io_sample_out_bits_features_3(pes_2_pe_io_sample_out_bits_features_3),
    .pe_io_sample_out_bits_features_4(pes_2_pe_io_sample_out_bits_features_4),
    .pe_io_sample_out_bits_offset(pes_2_pe_io_sample_out_bits_offset),
    .pe_io_sample_out_bits_search_for_root(pes_2_pe_io_sample_out_bits_search_for_root),
    .pe_io_sample_out_bits_tree_to_exec(pes_2_pe_io_sample_out_bits_tree_to_exec),
    .pe_io_sample_out_bits_scores_0(pes_2_pe_io_sample_out_bits_scores_0),
    .pe_io_sample_out_bits_scores_1(pes_2_pe_io_sample_out_bits_scores_1),
    .pe_io_sample_out_bits_scores_2(pes_2_pe_io_sample_out_bits_scores_2),
    .pe_io_sample_out_bits_scores_3(pes_2_pe_io_sample_out_bits_scores_3),
    .pe_io_sample_out_bits_scores_4(pes_2_pe_io_sample_out_bits_scores_4),
    .pe_io_sample_out_bits_scores_5(pes_2_pe_io_sample_out_bits_scores_5),
    .pe_io_sample_out_bits_weights_0(pes_2_pe_io_sample_out_bits_weights_0),
    .pe_io_sample_out_bits_weights_1(pes_2_pe_io_sample_out_bits_weights_1),
    .pe_io_sample_out_bits_weights_2(pes_2_pe_io_sample_out_bits_weights_2),
    .pe_io_sample_out_bits_weights_3(pes_2_pe_io_sample_out_bits_weights_3),
    .pe_io_sample_out_bits_weights_4(pes_2_pe_io_sample_out_bits_weights_4),
    .pe_io_sample_out_bits_dest(pes_2_pe_io_sample_out_bits_dest),
    .pe_io_sample_out_bits_last(pes_2_pe_io_sample_out_bits_last)
  );
  TreePEwithBRAM_1 pes_3 ( // @[TreePEsWrapper.scala 67:69]
    .clock(pes_3_clock),
    .reset(pes_3_reset),
    .pe_io_sample_in_ready(pes_3_pe_io_sample_in_ready),
    .pe_io_sample_in_valid(pes_3_pe_io_sample_in_valid),
    .pe_io_sample_in_bits_features_0(pes_3_pe_io_sample_in_bits_features_0),
    .pe_io_sample_in_bits_features_1(pes_3_pe_io_sample_in_bits_features_1),
    .pe_io_sample_in_bits_features_2(pes_3_pe_io_sample_in_bits_features_2),
    .pe_io_sample_in_bits_features_3(pes_3_pe_io_sample_in_bits_features_3),
    .pe_io_sample_in_bits_features_4(pes_3_pe_io_sample_in_bits_features_4),
    .pe_io_sample_in_bits_offset(pes_3_pe_io_sample_in_bits_offset),
    .pe_io_sample_in_bits_search_for_root(pes_3_pe_io_sample_in_bits_search_for_root),
    .pe_io_sample_in_bits_tree_to_exec(pes_3_pe_io_sample_in_bits_tree_to_exec),
    .pe_io_sample_in_bits_scores_0(pes_3_pe_io_sample_in_bits_scores_0),
    .pe_io_sample_in_bits_scores_1(pes_3_pe_io_sample_in_bits_scores_1),
    .pe_io_sample_in_bits_scores_2(pes_3_pe_io_sample_in_bits_scores_2),
    .pe_io_sample_in_bits_scores_3(pes_3_pe_io_sample_in_bits_scores_3),
    .pe_io_sample_in_bits_scores_4(pes_3_pe_io_sample_in_bits_scores_4),
    .pe_io_sample_in_bits_scores_5(pes_3_pe_io_sample_in_bits_scores_5),
    .pe_io_sample_in_bits_weights_0(pes_3_pe_io_sample_in_bits_weights_0),
    .pe_io_sample_in_bits_weights_1(pes_3_pe_io_sample_in_bits_weights_1),
    .pe_io_sample_in_bits_weights_2(pes_3_pe_io_sample_in_bits_weights_2),
    .pe_io_sample_in_bits_weights_3(pes_3_pe_io_sample_in_bits_weights_3),
    .pe_io_sample_in_bits_weights_4(pes_3_pe_io_sample_in_bits_weights_4),
    .pe_io_sample_in_bits_last(pes_3_pe_io_sample_in_bits_last),
    .pe_io_mem_addr_1(pes_3_pe_io_mem_addr_1),
    .pe_io_mem_dataOut_1(pes_3_pe_io_mem_dataOut_1),
    .pe_io_sample_out_ready(pes_3_pe_io_sample_out_ready),
    .pe_io_sample_out_valid(pes_3_pe_io_sample_out_valid),
    .pe_io_sample_out_bits_features_0(pes_3_pe_io_sample_out_bits_features_0),
    .pe_io_sample_out_bits_features_1(pes_3_pe_io_sample_out_bits_features_1),
    .pe_io_sample_out_bits_features_2(pes_3_pe_io_sample_out_bits_features_2),
    .pe_io_sample_out_bits_features_3(pes_3_pe_io_sample_out_bits_features_3),
    .pe_io_sample_out_bits_features_4(pes_3_pe_io_sample_out_bits_features_4),
    .pe_io_sample_out_bits_offset(pes_3_pe_io_sample_out_bits_offset),
    .pe_io_sample_out_bits_search_for_root(pes_3_pe_io_sample_out_bits_search_for_root),
    .pe_io_sample_out_bits_tree_to_exec(pes_3_pe_io_sample_out_bits_tree_to_exec),
    .pe_io_sample_out_bits_scores_0(pes_3_pe_io_sample_out_bits_scores_0),
    .pe_io_sample_out_bits_scores_1(pes_3_pe_io_sample_out_bits_scores_1),
    .pe_io_sample_out_bits_scores_2(pes_3_pe_io_sample_out_bits_scores_2),
    .pe_io_sample_out_bits_scores_3(pes_3_pe_io_sample_out_bits_scores_3),
    .pe_io_sample_out_bits_scores_4(pes_3_pe_io_sample_out_bits_scores_4),
    .pe_io_sample_out_bits_scores_5(pes_3_pe_io_sample_out_bits_scores_5),
    .pe_io_sample_out_bits_weights_0(pes_3_pe_io_sample_out_bits_weights_0),
    .pe_io_sample_out_bits_weights_1(pes_3_pe_io_sample_out_bits_weights_1),
    .pe_io_sample_out_bits_weights_2(pes_3_pe_io_sample_out_bits_weights_2),
    .pe_io_sample_out_bits_weights_3(pes_3_pe_io_sample_out_bits_weights_3),
    .pe_io_sample_out_bits_weights_4(pes_3_pe_io_sample_out_bits_weights_4),
    .pe_io_sample_out_bits_dest(pes_3_pe_io_sample_out_bits_dest),
    .pe_io_sample_out_bits_last(pes_3_pe_io_sample_out_bits_last)
  );
  TreePEwithBRAM_1 pes_4 ( // @[TreePEsWrapper.scala 67:69]
    .clock(pes_4_clock),
    .reset(pes_4_reset),
    .pe_io_sample_in_ready(pes_4_pe_io_sample_in_ready),
    .pe_io_sample_in_valid(pes_4_pe_io_sample_in_valid),
    .pe_io_sample_in_bits_features_0(pes_4_pe_io_sample_in_bits_features_0),
    .pe_io_sample_in_bits_features_1(pes_4_pe_io_sample_in_bits_features_1),
    .pe_io_sample_in_bits_features_2(pes_4_pe_io_sample_in_bits_features_2),
    .pe_io_sample_in_bits_features_3(pes_4_pe_io_sample_in_bits_features_3),
    .pe_io_sample_in_bits_features_4(pes_4_pe_io_sample_in_bits_features_4),
    .pe_io_sample_in_bits_offset(pes_4_pe_io_sample_in_bits_offset),
    .pe_io_sample_in_bits_search_for_root(pes_4_pe_io_sample_in_bits_search_for_root),
    .pe_io_sample_in_bits_tree_to_exec(pes_4_pe_io_sample_in_bits_tree_to_exec),
    .pe_io_sample_in_bits_scores_0(pes_4_pe_io_sample_in_bits_scores_0),
    .pe_io_sample_in_bits_scores_1(pes_4_pe_io_sample_in_bits_scores_1),
    .pe_io_sample_in_bits_scores_2(pes_4_pe_io_sample_in_bits_scores_2),
    .pe_io_sample_in_bits_scores_3(pes_4_pe_io_sample_in_bits_scores_3),
    .pe_io_sample_in_bits_scores_4(pes_4_pe_io_sample_in_bits_scores_4),
    .pe_io_sample_in_bits_scores_5(pes_4_pe_io_sample_in_bits_scores_5),
    .pe_io_sample_in_bits_weights_0(pes_4_pe_io_sample_in_bits_weights_0),
    .pe_io_sample_in_bits_weights_1(pes_4_pe_io_sample_in_bits_weights_1),
    .pe_io_sample_in_bits_weights_2(pes_4_pe_io_sample_in_bits_weights_2),
    .pe_io_sample_in_bits_weights_3(pes_4_pe_io_sample_in_bits_weights_3),
    .pe_io_sample_in_bits_weights_4(pes_4_pe_io_sample_in_bits_weights_4),
    .pe_io_sample_in_bits_last(pes_4_pe_io_sample_in_bits_last),
    .pe_io_mem_addr_1(pes_4_pe_io_mem_addr_1),
    .pe_io_mem_dataOut_1(pes_4_pe_io_mem_dataOut_1),
    .pe_io_sample_out_ready(pes_4_pe_io_sample_out_ready),
    .pe_io_sample_out_valid(pes_4_pe_io_sample_out_valid),
    .pe_io_sample_out_bits_features_0(pes_4_pe_io_sample_out_bits_features_0),
    .pe_io_sample_out_bits_features_1(pes_4_pe_io_sample_out_bits_features_1),
    .pe_io_sample_out_bits_features_2(pes_4_pe_io_sample_out_bits_features_2),
    .pe_io_sample_out_bits_features_3(pes_4_pe_io_sample_out_bits_features_3),
    .pe_io_sample_out_bits_features_4(pes_4_pe_io_sample_out_bits_features_4),
    .pe_io_sample_out_bits_offset(pes_4_pe_io_sample_out_bits_offset),
    .pe_io_sample_out_bits_search_for_root(pes_4_pe_io_sample_out_bits_search_for_root),
    .pe_io_sample_out_bits_tree_to_exec(pes_4_pe_io_sample_out_bits_tree_to_exec),
    .pe_io_sample_out_bits_scores_0(pes_4_pe_io_sample_out_bits_scores_0),
    .pe_io_sample_out_bits_scores_1(pes_4_pe_io_sample_out_bits_scores_1),
    .pe_io_sample_out_bits_scores_2(pes_4_pe_io_sample_out_bits_scores_2),
    .pe_io_sample_out_bits_scores_3(pes_4_pe_io_sample_out_bits_scores_3),
    .pe_io_sample_out_bits_scores_4(pes_4_pe_io_sample_out_bits_scores_4),
    .pe_io_sample_out_bits_scores_5(pes_4_pe_io_sample_out_bits_scores_5),
    .pe_io_sample_out_bits_weights_0(pes_4_pe_io_sample_out_bits_weights_0),
    .pe_io_sample_out_bits_weights_1(pes_4_pe_io_sample_out_bits_weights_1),
    .pe_io_sample_out_bits_weights_2(pes_4_pe_io_sample_out_bits_weights_2),
    .pe_io_sample_out_bits_weights_3(pes_4_pe_io_sample_out_bits_weights_3),
    .pe_io_sample_out_bits_weights_4(pes_4_pe_io_sample_out_bits_weights_4),
    .pe_io_sample_out_bits_dest(pes_4_pe_io_sample_out_bits_dest),
    .pe_io_sample_out_bits_last(pes_4_pe_io_sample_out_bits_last)
  );
  TreePEwithBRAM pes_5 ( // @[TreePEsWrapper.scala 67:69]
    .clock(pes_5_clock),
    .reset(pes_5_reset),
    .pe_io_sample_in_ready(pes_5_pe_io_sample_in_ready),
    .pe_io_sample_in_valid(pes_5_pe_io_sample_in_valid),
    .pe_io_sample_in_bits_features_0(pes_5_pe_io_sample_in_bits_features_0),
    .pe_io_sample_in_bits_features_1(pes_5_pe_io_sample_in_bits_features_1),
    .pe_io_sample_in_bits_features_2(pes_5_pe_io_sample_in_bits_features_2),
    .pe_io_sample_in_bits_features_3(pes_5_pe_io_sample_in_bits_features_3),
    .pe_io_sample_in_bits_features_4(pes_5_pe_io_sample_in_bits_features_4),
    .pe_io_sample_in_bits_offset(pes_5_pe_io_sample_in_bits_offset),
    .pe_io_sample_in_bits_shift(pes_5_pe_io_sample_in_bits_shift),
    .pe_io_sample_in_bits_search_for_root(pes_5_pe_io_sample_in_bits_search_for_root),
    .pe_io_sample_in_bits_tree_to_exec(pes_5_pe_io_sample_in_bits_tree_to_exec),
    .pe_io_sample_in_bits_scores_0(pes_5_pe_io_sample_in_bits_scores_0),
    .pe_io_sample_in_bits_scores_1(pes_5_pe_io_sample_in_bits_scores_1),
    .pe_io_sample_in_bits_scores_2(pes_5_pe_io_sample_in_bits_scores_2),
    .pe_io_sample_in_bits_scores_3(pes_5_pe_io_sample_in_bits_scores_3),
    .pe_io_sample_in_bits_scores_4(pes_5_pe_io_sample_in_bits_scores_4),
    .pe_io_sample_in_bits_scores_5(pes_5_pe_io_sample_in_bits_scores_5),
    .pe_io_sample_in_bits_weights_0(pes_5_pe_io_sample_in_bits_weights_0),
    .pe_io_sample_in_bits_weights_1(pes_5_pe_io_sample_in_bits_weights_1),
    .pe_io_sample_in_bits_weights_2(pes_5_pe_io_sample_in_bits_weights_2),
    .pe_io_sample_in_bits_weights_3(pes_5_pe_io_sample_in_bits_weights_3),
    .pe_io_sample_in_bits_weights_4(pes_5_pe_io_sample_in_bits_weights_4),
    .pe_io_sample_in_bits_last(pes_5_pe_io_sample_in_bits_last),
    .pe_io_mem_addr_1(pes_5_pe_io_mem_addr_1),
    .pe_io_mem_dataOut_1(pes_5_pe_io_mem_dataOut_1),
    .pe_io_sample_out_ready(pes_5_pe_io_sample_out_ready),
    .pe_io_sample_out_valid(pes_5_pe_io_sample_out_valid),
    .pe_io_sample_out_bits_features_0(pes_5_pe_io_sample_out_bits_features_0),
    .pe_io_sample_out_bits_features_1(pes_5_pe_io_sample_out_bits_features_1),
    .pe_io_sample_out_bits_features_2(pes_5_pe_io_sample_out_bits_features_2),
    .pe_io_sample_out_bits_features_3(pes_5_pe_io_sample_out_bits_features_3),
    .pe_io_sample_out_bits_features_4(pes_5_pe_io_sample_out_bits_features_4),
    .pe_io_sample_out_bits_offset(pes_5_pe_io_sample_out_bits_offset),
    .pe_io_sample_out_bits_search_for_root(pes_5_pe_io_sample_out_bits_search_for_root),
    .pe_io_sample_out_bits_tree_to_exec(pes_5_pe_io_sample_out_bits_tree_to_exec),
    .pe_io_sample_out_bits_scores_0(pes_5_pe_io_sample_out_bits_scores_0),
    .pe_io_sample_out_bits_scores_1(pes_5_pe_io_sample_out_bits_scores_1),
    .pe_io_sample_out_bits_scores_2(pes_5_pe_io_sample_out_bits_scores_2),
    .pe_io_sample_out_bits_scores_3(pes_5_pe_io_sample_out_bits_scores_3),
    .pe_io_sample_out_bits_scores_4(pes_5_pe_io_sample_out_bits_scores_4),
    .pe_io_sample_out_bits_scores_5(pes_5_pe_io_sample_out_bits_scores_5),
    .pe_io_sample_out_bits_weights_0(pes_5_pe_io_sample_out_bits_weights_0),
    .pe_io_sample_out_bits_weights_1(pes_5_pe_io_sample_out_bits_weights_1),
    .pe_io_sample_out_bits_weights_2(pes_5_pe_io_sample_out_bits_weights_2),
    .pe_io_sample_out_bits_weights_3(pes_5_pe_io_sample_out_bits_weights_3),
    .pe_io_sample_out_bits_weights_4(pes_5_pe_io_sample_out_bits_weights_4),
    .pe_io_sample_out_bits_last(pes_5_pe_io_sample_out_bits_last)
  );
  TreePEwithBRAM_1 pes_6 ( // @[TreePEsWrapper.scala 67:69]
    .clock(pes_6_clock),
    .reset(pes_6_reset),
    .pe_io_sample_in_ready(pes_6_pe_io_sample_in_ready),
    .pe_io_sample_in_valid(pes_6_pe_io_sample_in_valid),
    .pe_io_sample_in_bits_features_0(pes_6_pe_io_sample_in_bits_features_0),
    .pe_io_sample_in_bits_features_1(pes_6_pe_io_sample_in_bits_features_1),
    .pe_io_sample_in_bits_features_2(pes_6_pe_io_sample_in_bits_features_2),
    .pe_io_sample_in_bits_features_3(pes_6_pe_io_sample_in_bits_features_3),
    .pe_io_sample_in_bits_features_4(pes_6_pe_io_sample_in_bits_features_4),
    .pe_io_sample_in_bits_offset(pes_6_pe_io_sample_in_bits_offset),
    .pe_io_sample_in_bits_search_for_root(pes_6_pe_io_sample_in_bits_search_for_root),
    .pe_io_sample_in_bits_tree_to_exec(pes_6_pe_io_sample_in_bits_tree_to_exec),
    .pe_io_sample_in_bits_scores_0(pes_6_pe_io_sample_in_bits_scores_0),
    .pe_io_sample_in_bits_scores_1(pes_6_pe_io_sample_in_bits_scores_1),
    .pe_io_sample_in_bits_scores_2(pes_6_pe_io_sample_in_bits_scores_2),
    .pe_io_sample_in_bits_scores_3(pes_6_pe_io_sample_in_bits_scores_3),
    .pe_io_sample_in_bits_scores_4(pes_6_pe_io_sample_in_bits_scores_4),
    .pe_io_sample_in_bits_scores_5(pes_6_pe_io_sample_in_bits_scores_5),
    .pe_io_sample_in_bits_weights_0(pes_6_pe_io_sample_in_bits_weights_0),
    .pe_io_sample_in_bits_weights_1(pes_6_pe_io_sample_in_bits_weights_1),
    .pe_io_sample_in_bits_weights_2(pes_6_pe_io_sample_in_bits_weights_2),
    .pe_io_sample_in_bits_weights_3(pes_6_pe_io_sample_in_bits_weights_3),
    .pe_io_sample_in_bits_weights_4(pes_6_pe_io_sample_in_bits_weights_4),
    .pe_io_sample_in_bits_last(pes_6_pe_io_sample_in_bits_last),
    .pe_io_mem_addr_1(pes_6_pe_io_mem_addr_1),
    .pe_io_mem_dataOut_1(pes_6_pe_io_mem_dataOut_1),
    .pe_io_sample_out_ready(pes_6_pe_io_sample_out_ready),
    .pe_io_sample_out_valid(pes_6_pe_io_sample_out_valid),
    .pe_io_sample_out_bits_features_0(pes_6_pe_io_sample_out_bits_features_0),
    .pe_io_sample_out_bits_features_1(pes_6_pe_io_sample_out_bits_features_1),
    .pe_io_sample_out_bits_features_2(pes_6_pe_io_sample_out_bits_features_2),
    .pe_io_sample_out_bits_features_3(pes_6_pe_io_sample_out_bits_features_3),
    .pe_io_sample_out_bits_features_4(pes_6_pe_io_sample_out_bits_features_4),
    .pe_io_sample_out_bits_offset(pes_6_pe_io_sample_out_bits_offset),
    .pe_io_sample_out_bits_search_for_root(pes_6_pe_io_sample_out_bits_search_for_root),
    .pe_io_sample_out_bits_tree_to_exec(pes_6_pe_io_sample_out_bits_tree_to_exec),
    .pe_io_sample_out_bits_scores_0(pes_6_pe_io_sample_out_bits_scores_0),
    .pe_io_sample_out_bits_scores_1(pes_6_pe_io_sample_out_bits_scores_1),
    .pe_io_sample_out_bits_scores_2(pes_6_pe_io_sample_out_bits_scores_2),
    .pe_io_sample_out_bits_scores_3(pes_6_pe_io_sample_out_bits_scores_3),
    .pe_io_sample_out_bits_scores_4(pes_6_pe_io_sample_out_bits_scores_4),
    .pe_io_sample_out_bits_scores_5(pes_6_pe_io_sample_out_bits_scores_5),
    .pe_io_sample_out_bits_weights_0(pes_6_pe_io_sample_out_bits_weights_0),
    .pe_io_sample_out_bits_weights_1(pes_6_pe_io_sample_out_bits_weights_1),
    .pe_io_sample_out_bits_weights_2(pes_6_pe_io_sample_out_bits_weights_2),
    .pe_io_sample_out_bits_weights_3(pes_6_pe_io_sample_out_bits_weights_3),
    .pe_io_sample_out_bits_weights_4(pes_6_pe_io_sample_out_bits_weights_4),
    .pe_io_sample_out_bits_dest(pes_6_pe_io_sample_out_bits_dest),
    .pe_io_sample_out_bits_last(pes_6_pe_io_sample_out_bits_last)
  );
  TreePEwithBRAM_1 pes_7 ( // @[TreePEsWrapper.scala 67:69]
    .clock(pes_7_clock),
    .reset(pes_7_reset),
    .pe_io_sample_in_ready(pes_7_pe_io_sample_in_ready),
    .pe_io_sample_in_valid(pes_7_pe_io_sample_in_valid),
    .pe_io_sample_in_bits_features_0(pes_7_pe_io_sample_in_bits_features_0),
    .pe_io_sample_in_bits_features_1(pes_7_pe_io_sample_in_bits_features_1),
    .pe_io_sample_in_bits_features_2(pes_7_pe_io_sample_in_bits_features_2),
    .pe_io_sample_in_bits_features_3(pes_7_pe_io_sample_in_bits_features_3),
    .pe_io_sample_in_bits_features_4(pes_7_pe_io_sample_in_bits_features_4),
    .pe_io_sample_in_bits_offset(pes_7_pe_io_sample_in_bits_offset),
    .pe_io_sample_in_bits_search_for_root(pes_7_pe_io_sample_in_bits_search_for_root),
    .pe_io_sample_in_bits_tree_to_exec(pes_7_pe_io_sample_in_bits_tree_to_exec),
    .pe_io_sample_in_bits_scores_0(pes_7_pe_io_sample_in_bits_scores_0),
    .pe_io_sample_in_bits_scores_1(pes_7_pe_io_sample_in_bits_scores_1),
    .pe_io_sample_in_bits_scores_2(pes_7_pe_io_sample_in_bits_scores_2),
    .pe_io_sample_in_bits_scores_3(pes_7_pe_io_sample_in_bits_scores_3),
    .pe_io_sample_in_bits_scores_4(pes_7_pe_io_sample_in_bits_scores_4),
    .pe_io_sample_in_bits_scores_5(pes_7_pe_io_sample_in_bits_scores_5),
    .pe_io_sample_in_bits_weights_0(pes_7_pe_io_sample_in_bits_weights_0),
    .pe_io_sample_in_bits_weights_1(pes_7_pe_io_sample_in_bits_weights_1),
    .pe_io_sample_in_bits_weights_2(pes_7_pe_io_sample_in_bits_weights_2),
    .pe_io_sample_in_bits_weights_3(pes_7_pe_io_sample_in_bits_weights_3),
    .pe_io_sample_in_bits_weights_4(pes_7_pe_io_sample_in_bits_weights_4),
    .pe_io_sample_in_bits_last(pes_7_pe_io_sample_in_bits_last),
    .pe_io_mem_addr_1(pes_7_pe_io_mem_addr_1),
    .pe_io_mem_dataOut_1(pes_7_pe_io_mem_dataOut_1),
    .pe_io_sample_out_ready(pes_7_pe_io_sample_out_ready),
    .pe_io_sample_out_valid(pes_7_pe_io_sample_out_valid),
    .pe_io_sample_out_bits_features_0(pes_7_pe_io_sample_out_bits_features_0),
    .pe_io_sample_out_bits_features_1(pes_7_pe_io_sample_out_bits_features_1),
    .pe_io_sample_out_bits_features_2(pes_7_pe_io_sample_out_bits_features_2),
    .pe_io_sample_out_bits_features_3(pes_7_pe_io_sample_out_bits_features_3),
    .pe_io_sample_out_bits_features_4(pes_7_pe_io_sample_out_bits_features_4),
    .pe_io_sample_out_bits_offset(pes_7_pe_io_sample_out_bits_offset),
    .pe_io_sample_out_bits_search_for_root(pes_7_pe_io_sample_out_bits_search_for_root),
    .pe_io_sample_out_bits_tree_to_exec(pes_7_pe_io_sample_out_bits_tree_to_exec),
    .pe_io_sample_out_bits_scores_0(pes_7_pe_io_sample_out_bits_scores_0),
    .pe_io_sample_out_bits_scores_1(pes_7_pe_io_sample_out_bits_scores_1),
    .pe_io_sample_out_bits_scores_2(pes_7_pe_io_sample_out_bits_scores_2),
    .pe_io_sample_out_bits_scores_3(pes_7_pe_io_sample_out_bits_scores_3),
    .pe_io_sample_out_bits_scores_4(pes_7_pe_io_sample_out_bits_scores_4),
    .pe_io_sample_out_bits_scores_5(pes_7_pe_io_sample_out_bits_scores_5),
    .pe_io_sample_out_bits_weights_0(pes_7_pe_io_sample_out_bits_weights_0),
    .pe_io_sample_out_bits_weights_1(pes_7_pe_io_sample_out_bits_weights_1),
    .pe_io_sample_out_bits_weights_2(pes_7_pe_io_sample_out_bits_weights_2),
    .pe_io_sample_out_bits_weights_3(pes_7_pe_io_sample_out_bits_weights_3),
    .pe_io_sample_out_bits_weights_4(pes_7_pe_io_sample_out_bits_weights_4),
    .pe_io_sample_out_bits_dest(pes_7_pe_io_sample_out_bits_dest),
    .pe_io_sample_out_bits_last(pes_7_pe_io_sample_out_bits_last)
  );
  TreePEwithBRAM_1 pes_8 ( // @[TreePEsWrapper.scala 67:69]
    .clock(pes_8_clock),
    .reset(pes_8_reset),
    .pe_io_sample_in_ready(pes_8_pe_io_sample_in_ready),
    .pe_io_sample_in_valid(pes_8_pe_io_sample_in_valid),
    .pe_io_sample_in_bits_features_0(pes_8_pe_io_sample_in_bits_features_0),
    .pe_io_sample_in_bits_features_1(pes_8_pe_io_sample_in_bits_features_1),
    .pe_io_sample_in_bits_features_2(pes_8_pe_io_sample_in_bits_features_2),
    .pe_io_sample_in_bits_features_3(pes_8_pe_io_sample_in_bits_features_3),
    .pe_io_sample_in_bits_features_4(pes_8_pe_io_sample_in_bits_features_4),
    .pe_io_sample_in_bits_offset(pes_8_pe_io_sample_in_bits_offset),
    .pe_io_sample_in_bits_search_for_root(pes_8_pe_io_sample_in_bits_search_for_root),
    .pe_io_sample_in_bits_tree_to_exec(pes_8_pe_io_sample_in_bits_tree_to_exec),
    .pe_io_sample_in_bits_scores_0(pes_8_pe_io_sample_in_bits_scores_0),
    .pe_io_sample_in_bits_scores_1(pes_8_pe_io_sample_in_bits_scores_1),
    .pe_io_sample_in_bits_scores_2(pes_8_pe_io_sample_in_bits_scores_2),
    .pe_io_sample_in_bits_scores_3(pes_8_pe_io_sample_in_bits_scores_3),
    .pe_io_sample_in_bits_scores_4(pes_8_pe_io_sample_in_bits_scores_4),
    .pe_io_sample_in_bits_scores_5(pes_8_pe_io_sample_in_bits_scores_5),
    .pe_io_sample_in_bits_weights_0(pes_8_pe_io_sample_in_bits_weights_0),
    .pe_io_sample_in_bits_weights_1(pes_8_pe_io_sample_in_bits_weights_1),
    .pe_io_sample_in_bits_weights_2(pes_8_pe_io_sample_in_bits_weights_2),
    .pe_io_sample_in_bits_weights_3(pes_8_pe_io_sample_in_bits_weights_3),
    .pe_io_sample_in_bits_weights_4(pes_8_pe_io_sample_in_bits_weights_4),
    .pe_io_sample_in_bits_last(pes_8_pe_io_sample_in_bits_last),
    .pe_io_mem_addr_1(pes_8_pe_io_mem_addr_1),
    .pe_io_mem_dataOut_1(pes_8_pe_io_mem_dataOut_1),
    .pe_io_sample_out_ready(pes_8_pe_io_sample_out_ready),
    .pe_io_sample_out_valid(pes_8_pe_io_sample_out_valid),
    .pe_io_sample_out_bits_features_0(pes_8_pe_io_sample_out_bits_features_0),
    .pe_io_sample_out_bits_features_1(pes_8_pe_io_sample_out_bits_features_1),
    .pe_io_sample_out_bits_features_2(pes_8_pe_io_sample_out_bits_features_2),
    .pe_io_sample_out_bits_features_3(pes_8_pe_io_sample_out_bits_features_3),
    .pe_io_sample_out_bits_features_4(pes_8_pe_io_sample_out_bits_features_4),
    .pe_io_sample_out_bits_offset(pes_8_pe_io_sample_out_bits_offset),
    .pe_io_sample_out_bits_search_for_root(pes_8_pe_io_sample_out_bits_search_for_root),
    .pe_io_sample_out_bits_tree_to_exec(pes_8_pe_io_sample_out_bits_tree_to_exec),
    .pe_io_sample_out_bits_scores_0(pes_8_pe_io_sample_out_bits_scores_0),
    .pe_io_sample_out_bits_scores_1(pes_8_pe_io_sample_out_bits_scores_1),
    .pe_io_sample_out_bits_scores_2(pes_8_pe_io_sample_out_bits_scores_2),
    .pe_io_sample_out_bits_scores_3(pes_8_pe_io_sample_out_bits_scores_3),
    .pe_io_sample_out_bits_scores_4(pes_8_pe_io_sample_out_bits_scores_4),
    .pe_io_sample_out_bits_scores_5(pes_8_pe_io_sample_out_bits_scores_5),
    .pe_io_sample_out_bits_weights_0(pes_8_pe_io_sample_out_bits_weights_0),
    .pe_io_sample_out_bits_weights_1(pes_8_pe_io_sample_out_bits_weights_1),
    .pe_io_sample_out_bits_weights_2(pes_8_pe_io_sample_out_bits_weights_2),
    .pe_io_sample_out_bits_weights_3(pes_8_pe_io_sample_out_bits_weights_3),
    .pe_io_sample_out_bits_weights_4(pes_8_pe_io_sample_out_bits_weights_4),
    .pe_io_sample_out_bits_dest(pes_8_pe_io_sample_out_bits_dest),
    .pe_io_sample_out_bits_last(pes_8_pe_io_sample_out_bits_last)
  );
  TreePEwithBRAM_1 pes_9 ( // @[TreePEsWrapper.scala 67:69]
    .clock(pes_9_clock),
    .reset(pes_9_reset),
    .pe_io_sample_in_ready(pes_9_pe_io_sample_in_ready),
    .pe_io_sample_in_valid(pes_9_pe_io_sample_in_valid),
    .pe_io_sample_in_bits_features_0(pes_9_pe_io_sample_in_bits_features_0),
    .pe_io_sample_in_bits_features_1(pes_9_pe_io_sample_in_bits_features_1),
    .pe_io_sample_in_bits_features_2(pes_9_pe_io_sample_in_bits_features_2),
    .pe_io_sample_in_bits_features_3(pes_9_pe_io_sample_in_bits_features_3),
    .pe_io_sample_in_bits_features_4(pes_9_pe_io_sample_in_bits_features_4),
    .pe_io_sample_in_bits_offset(pes_9_pe_io_sample_in_bits_offset),
    .pe_io_sample_in_bits_search_for_root(pes_9_pe_io_sample_in_bits_search_for_root),
    .pe_io_sample_in_bits_tree_to_exec(pes_9_pe_io_sample_in_bits_tree_to_exec),
    .pe_io_sample_in_bits_scores_0(pes_9_pe_io_sample_in_bits_scores_0),
    .pe_io_sample_in_bits_scores_1(pes_9_pe_io_sample_in_bits_scores_1),
    .pe_io_sample_in_bits_scores_2(pes_9_pe_io_sample_in_bits_scores_2),
    .pe_io_sample_in_bits_scores_3(pes_9_pe_io_sample_in_bits_scores_3),
    .pe_io_sample_in_bits_scores_4(pes_9_pe_io_sample_in_bits_scores_4),
    .pe_io_sample_in_bits_scores_5(pes_9_pe_io_sample_in_bits_scores_5),
    .pe_io_sample_in_bits_weights_0(pes_9_pe_io_sample_in_bits_weights_0),
    .pe_io_sample_in_bits_weights_1(pes_9_pe_io_sample_in_bits_weights_1),
    .pe_io_sample_in_bits_weights_2(pes_9_pe_io_sample_in_bits_weights_2),
    .pe_io_sample_in_bits_weights_3(pes_9_pe_io_sample_in_bits_weights_3),
    .pe_io_sample_in_bits_weights_4(pes_9_pe_io_sample_in_bits_weights_4),
    .pe_io_sample_in_bits_last(pes_9_pe_io_sample_in_bits_last),
    .pe_io_mem_addr_1(pes_9_pe_io_mem_addr_1),
    .pe_io_mem_dataOut_1(pes_9_pe_io_mem_dataOut_1),
    .pe_io_sample_out_ready(pes_9_pe_io_sample_out_ready),
    .pe_io_sample_out_valid(pes_9_pe_io_sample_out_valid),
    .pe_io_sample_out_bits_features_0(pes_9_pe_io_sample_out_bits_features_0),
    .pe_io_sample_out_bits_features_1(pes_9_pe_io_sample_out_bits_features_1),
    .pe_io_sample_out_bits_features_2(pes_9_pe_io_sample_out_bits_features_2),
    .pe_io_sample_out_bits_features_3(pes_9_pe_io_sample_out_bits_features_3),
    .pe_io_sample_out_bits_features_4(pes_9_pe_io_sample_out_bits_features_4),
    .pe_io_sample_out_bits_offset(pes_9_pe_io_sample_out_bits_offset),
    .pe_io_sample_out_bits_search_for_root(pes_9_pe_io_sample_out_bits_search_for_root),
    .pe_io_sample_out_bits_tree_to_exec(pes_9_pe_io_sample_out_bits_tree_to_exec),
    .pe_io_sample_out_bits_scores_0(pes_9_pe_io_sample_out_bits_scores_0),
    .pe_io_sample_out_bits_scores_1(pes_9_pe_io_sample_out_bits_scores_1),
    .pe_io_sample_out_bits_scores_2(pes_9_pe_io_sample_out_bits_scores_2),
    .pe_io_sample_out_bits_scores_3(pes_9_pe_io_sample_out_bits_scores_3),
    .pe_io_sample_out_bits_scores_4(pes_9_pe_io_sample_out_bits_scores_4),
    .pe_io_sample_out_bits_scores_5(pes_9_pe_io_sample_out_bits_scores_5),
    .pe_io_sample_out_bits_weights_0(pes_9_pe_io_sample_out_bits_weights_0),
    .pe_io_sample_out_bits_weights_1(pes_9_pe_io_sample_out_bits_weights_1),
    .pe_io_sample_out_bits_weights_2(pes_9_pe_io_sample_out_bits_weights_2),
    .pe_io_sample_out_bits_weights_3(pes_9_pe_io_sample_out_bits_weights_3),
    .pe_io_sample_out_bits_weights_4(pes_9_pe_io_sample_out_bits_weights_4),
    .pe_io_sample_out_bits_dest(pes_9_pe_io_sample_out_bits_dest),
    .pe_io_sample_out_bits_last(pes_9_pe_io_sample_out_bits_last)
  );
  BRAMBlackBoxAsymm brams_0 ( // @[TreePEsWrapper.scala 68:71]
    .io_clk(brams_0_io_clk),
    .io_a_en(brams_0_io_a_en),
    .io_a_wr(brams_0_io_a_wr),
    .io_a_addr(brams_0_io_a_addr),
    .io_a_din(brams_0_io_a_din),
    .io_a_dout(brams_0_io_a_dout),
    .io_b_addr(brams_0_io_b_addr),
    .io_b_dout(brams_0_io_b_dout)
  );
  BRAMBlackBoxAsymm brams_1 ( // @[TreePEsWrapper.scala 68:71]
    .io_clk(brams_1_io_clk),
    .io_a_en(brams_1_io_a_en),
    .io_a_wr(brams_1_io_a_wr),
    .io_a_addr(brams_1_io_a_addr),
    .io_a_din(brams_1_io_a_din),
    .io_a_dout(brams_1_io_a_dout),
    .io_b_addr(brams_1_io_b_addr),
    .io_b_dout(brams_1_io_b_dout)
  );
  BRAMBlackBoxAsymm brams_2 ( // @[TreePEsWrapper.scala 68:71]
    .io_clk(brams_2_io_clk),
    .io_a_en(brams_2_io_a_en),
    .io_a_wr(brams_2_io_a_wr),
    .io_a_addr(brams_2_io_a_addr),
    .io_a_din(brams_2_io_a_din),
    .io_a_dout(brams_2_io_a_dout),
    .io_b_addr(brams_2_io_b_addr),
    .io_b_dout(brams_2_io_b_dout)
  );
  BRAMBlackBoxAsymm brams_3 ( // @[TreePEsWrapper.scala 68:71]
    .io_clk(brams_3_io_clk),
    .io_a_en(brams_3_io_a_en),
    .io_a_wr(brams_3_io_a_wr),
    .io_a_addr(brams_3_io_a_addr),
    .io_a_din(brams_3_io_a_din),
    .io_a_dout(brams_3_io_a_dout),
    .io_b_addr(brams_3_io_b_addr),
    .io_b_dout(brams_3_io_b_dout)
  );
  BRAMBlackBoxAsymm brams_4 ( // @[TreePEsWrapper.scala 68:71]
    .io_clk(brams_4_io_clk),
    .io_a_en(brams_4_io_a_en),
    .io_a_wr(brams_4_io_a_wr),
    .io_a_addr(brams_4_io_a_addr),
    .io_a_din(brams_4_io_a_din),
    .io_a_dout(brams_4_io_a_dout),
    .io_b_addr(brams_4_io_b_addr),
    .io_b_dout(brams_4_io_b_dout)
  );
  BRAMBlackBoxAsymm brams_5 ( // @[TreePEsWrapper.scala 68:71]
    .io_clk(brams_5_io_clk),
    .io_a_en(brams_5_io_a_en),
    .io_a_wr(brams_5_io_a_wr),
    .io_a_addr(brams_5_io_a_addr),
    .io_a_din(brams_5_io_a_din),
    .io_a_dout(brams_5_io_a_dout),
    .io_b_addr(brams_5_io_b_addr),
    .io_b_dout(brams_5_io_b_dout)
  );
  BRAMBlackBoxAsymm brams_6 ( // @[TreePEsWrapper.scala 68:71]
    .io_clk(brams_6_io_clk),
    .io_a_en(brams_6_io_a_en),
    .io_a_wr(brams_6_io_a_wr),
    .io_a_addr(brams_6_io_a_addr),
    .io_a_din(brams_6_io_a_din),
    .io_a_dout(brams_6_io_a_dout),
    .io_b_addr(brams_6_io_b_addr),
    .io_b_dout(brams_6_io_b_dout)
  );
  BRAMBlackBoxAsymm brams_7 ( // @[TreePEsWrapper.scala 68:71]
    .io_clk(brams_7_io_clk),
    .io_a_en(brams_7_io_a_en),
    .io_a_wr(brams_7_io_a_wr),
    .io_a_addr(brams_7_io_a_addr),
    .io_a_din(brams_7_io_a_din),
    .io_a_dout(brams_7_io_a_dout),
    .io_b_addr(brams_7_io_b_addr),
    .io_b_dout(brams_7_io_b_dout)
  );
  BRAMBlackBoxAsymm brams_8 ( // @[TreePEsWrapper.scala 68:71]
    .io_clk(brams_8_io_clk),
    .io_a_en(brams_8_io_a_en),
    .io_a_wr(brams_8_io_a_wr),
    .io_a_addr(brams_8_io_a_addr),
    .io_a_din(brams_8_io_a_din),
    .io_a_dout(brams_8_io_a_dout),
    .io_b_addr(brams_8_io_b_addr),
    .io_b_dout(brams_8_io_b_dout)
  );
  BRAMBlackBoxAsymm brams_9 ( // @[TreePEsWrapper.scala 68:71]
    .io_clk(brams_9_io_clk),
    .io_a_en(brams_9_io_a_en),
    .io_a_wr(brams_9_io_a_wr),
    .io_a_addr(brams_9_io_a_addr),
    .io_a_din(brams_9_io_a_din),
    .io_a_dout(brams_9_io_a_dout),
    .io_b_addr(brams_9_io_b_addr),
    .io_b_dout(brams_9_io_b_dout)
  );
  FirstInterconnectPE first_interconnect ( // @[TreePEsWrapper.scala 69:44]
    .clock(first_interconnect_clock),
    .reset(first_interconnect_reset),
    .io_sample_entering_ready(first_interconnect_io_sample_entering_ready),
    .io_sample_entering_valid(first_interconnect_io_sample_entering_valid),
    .io_sample_entering_bits_features_0(first_interconnect_io_sample_entering_bits_features_0),
    .io_sample_entering_bits_features_1(first_interconnect_io_sample_entering_bits_features_1),
    .io_sample_entering_bits_features_2(first_interconnect_io_sample_entering_bits_features_2),
    .io_sample_entering_bits_features_3(first_interconnect_io_sample_entering_bits_features_3),
    .io_sample_entering_bits_features_4(first_interconnect_io_sample_entering_bits_features_4),
    .io_sample_entering_bits_offset(first_interconnect_io_sample_entering_bits_offset),
    .io_sample_entering_bits_shift(first_interconnect_io_sample_entering_bits_shift),
    .io_sample_entering_bits_search_for_root(first_interconnect_io_sample_entering_bits_search_for_root),
    .io_sample_entering_bits_tree_to_exec(first_interconnect_io_sample_entering_bits_tree_to_exec),
    .io_sample_entering_bits_scores_0(first_interconnect_io_sample_entering_bits_scores_0),
    .io_sample_entering_bits_scores_1(first_interconnect_io_sample_entering_bits_scores_1),
    .io_sample_entering_bits_scores_2(first_interconnect_io_sample_entering_bits_scores_2),
    .io_sample_entering_bits_scores_3(first_interconnect_io_sample_entering_bits_scores_3),
    .io_sample_entering_bits_scores_4(first_interconnect_io_sample_entering_bits_scores_4),
    .io_sample_entering_bits_scores_5(first_interconnect_io_sample_entering_bits_scores_5),
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
    .io_sample_looping_bits_features_4(first_interconnect_io_sample_looping_bits_features_4),
    .io_sample_looping_bits_offset(first_interconnect_io_sample_looping_bits_offset),
    .io_sample_looping_bits_shift(first_interconnect_io_sample_looping_bits_shift),
    .io_sample_looping_bits_search_for_root(first_interconnect_io_sample_looping_bits_search_for_root),
    .io_sample_looping_bits_tree_to_exec(first_interconnect_io_sample_looping_bits_tree_to_exec),
    .io_sample_looping_bits_scores_0(first_interconnect_io_sample_looping_bits_scores_0),
    .io_sample_looping_bits_scores_1(first_interconnect_io_sample_looping_bits_scores_1),
    .io_sample_looping_bits_scores_2(first_interconnect_io_sample_looping_bits_scores_2),
    .io_sample_looping_bits_scores_3(first_interconnect_io_sample_looping_bits_scores_3),
    .io_sample_looping_bits_scores_4(first_interconnect_io_sample_looping_bits_scores_4),
    .io_sample_looping_bits_scores_5(first_interconnect_io_sample_looping_bits_scores_5),
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
    .io_sample_out_bits_features_4(first_interconnect_io_sample_out_bits_features_4),
    .io_sample_out_bits_offset(first_interconnect_io_sample_out_bits_offset),
    .io_sample_out_bits_shift(first_interconnect_io_sample_out_bits_shift),
    .io_sample_out_bits_search_for_root(first_interconnect_io_sample_out_bits_search_for_root),
    .io_sample_out_bits_tree_to_exec(first_interconnect_io_sample_out_bits_tree_to_exec),
    .io_sample_out_bits_scores_0(first_interconnect_io_sample_out_bits_scores_0),
    .io_sample_out_bits_scores_1(first_interconnect_io_sample_out_bits_scores_1),
    .io_sample_out_bits_scores_2(first_interconnect_io_sample_out_bits_scores_2),
    .io_sample_out_bits_scores_3(first_interconnect_io_sample_out_bits_scores_3),
    .io_sample_out_bits_scores_4(first_interconnect_io_sample_out_bits_scores_4),
    .io_sample_out_bits_scores_5(first_interconnect_io_sample_out_bits_scores_5),
    .io_sample_out_bits_weights_0(first_interconnect_io_sample_out_bits_weights_0),
    .io_sample_out_bits_weights_1(first_interconnect_io_sample_out_bits_weights_1),
    .io_sample_out_bits_weights_2(first_interconnect_io_sample_out_bits_weights_2),
    .io_sample_out_bits_weights_3(first_interconnect_io_sample_out_bits_weights_3),
    .io_sample_out_bits_weights_4(first_interconnect_io_sample_out_bits_weights_4),
    .io_sample_out_bits_last(first_interconnect_io_sample_out_bits_last)
  );
  LastInterconnectPE last_interconnect ( // @[TreePEsWrapper.scala 70:43]
    .clock(last_interconnect_clock),
    .reset(last_interconnect_reset),
    .io_sample_in_ready(last_interconnect_io_sample_in_ready),
    .io_sample_in_valid(last_interconnect_io_sample_in_valid),
    .io_sample_in_bits_features_0(last_interconnect_io_sample_in_bits_features_0),
    .io_sample_in_bits_features_1(last_interconnect_io_sample_in_bits_features_1),
    .io_sample_in_bits_features_2(last_interconnect_io_sample_in_bits_features_2),
    .io_sample_in_bits_features_3(last_interconnect_io_sample_in_bits_features_3),
    .io_sample_in_bits_features_4(last_interconnect_io_sample_in_bits_features_4),
    .io_sample_in_bits_offset(last_interconnect_io_sample_in_bits_offset),
    .io_sample_in_bits_search_for_root(last_interconnect_io_sample_in_bits_search_for_root),
    .io_sample_in_bits_tree_to_exec(last_interconnect_io_sample_in_bits_tree_to_exec),
    .io_sample_in_bits_scores_0(last_interconnect_io_sample_in_bits_scores_0),
    .io_sample_in_bits_scores_1(last_interconnect_io_sample_in_bits_scores_1),
    .io_sample_in_bits_scores_2(last_interconnect_io_sample_in_bits_scores_2),
    .io_sample_in_bits_scores_3(last_interconnect_io_sample_in_bits_scores_3),
    .io_sample_in_bits_scores_4(last_interconnect_io_sample_in_bits_scores_4),
    .io_sample_in_bits_scores_5(last_interconnect_io_sample_in_bits_scores_5),
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
    .io_sample_looping_bits_features_4(last_interconnect_io_sample_looping_bits_features_4),
    .io_sample_looping_bits_offset(last_interconnect_io_sample_looping_bits_offset),
    .io_sample_looping_bits_shift(last_interconnect_io_sample_looping_bits_shift),
    .io_sample_looping_bits_search_for_root(last_interconnect_io_sample_looping_bits_search_for_root),
    .io_sample_looping_bits_tree_to_exec(last_interconnect_io_sample_looping_bits_tree_to_exec),
    .io_sample_looping_bits_scores_0(last_interconnect_io_sample_looping_bits_scores_0),
    .io_sample_looping_bits_scores_1(last_interconnect_io_sample_looping_bits_scores_1),
    .io_sample_looping_bits_scores_2(last_interconnect_io_sample_looping_bits_scores_2),
    .io_sample_looping_bits_scores_3(last_interconnect_io_sample_looping_bits_scores_3),
    .io_sample_looping_bits_scores_4(last_interconnect_io_sample_looping_bits_scores_4),
    .io_sample_looping_bits_scores_5(last_interconnect_io_sample_looping_bits_scores_5),
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
    .io_sample_leaving_bits_features_4(last_interconnect_io_sample_leaving_bits_features_4),
    .io_sample_leaving_bits_offset(last_interconnect_io_sample_leaving_bits_offset),
    .io_sample_leaving_bits_shift(last_interconnect_io_sample_leaving_bits_shift),
    .io_sample_leaving_bits_search_for_root(last_interconnect_io_sample_leaving_bits_search_for_root),
    .io_sample_leaving_bits_tree_to_exec(last_interconnect_io_sample_leaving_bits_tree_to_exec),
    .io_sample_leaving_bits_scores_0(last_interconnect_io_sample_leaving_bits_scores_0),
    .io_sample_leaving_bits_scores_1(last_interconnect_io_sample_leaving_bits_scores_1),
    .io_sample_leaving_bits_scores_2(last_interconnect_io_sample_leaving_bits_scores_2),
    .io_sample_leaving_bits_scores_3(last_interconnect_io_sample_leaving_bits_scores_3),
    .io_sample_leaving_bits_scores_4(last_interconnect_io_sample_leaving_bits_scores_4),
    .io_sample_leaving_bits_scores_5(last_interconnect_io_sample_leaving_bits_scores_5),
    .io_sample_leaving_bits_weights_0(last_interconnect_io_sample_leaving_bits_weights_0),
    .io_sample_leaving_bits_weights_1(last_interconnect_io_sample_leaving_bits_weights_1),
    .io_sample_leaving_bits_weights_2(last_interconnect_io_sample_leaving_bits_weights_2),
    .io_sample_leaving_bits_weights_3(last_interconnect_io_sample_leaving_bits_weights_3),
    .io_sample_leaving_bits_weights_4(last_interconnect_io_sample_leaving_bits_weights_4),
    .io_sample_leaving_bits_last(last_interconnect_io_sample_leaving_bits_last)
  );
  IncrementTreePE increment ( // @[TreePEsWrapper.scala 71:35]
    .clock(increment_clock),
    .reset(increment_reset),
    .io_sample_in_ready(increment_io_sample_in_ready),
    .io_sample_in_valid(increment_io_sample_in_valid),
    .io_sample_in_bits_features_0(increment_io_sample_in_bits_features_0),
    .io_sample_in_bits_features_1(increment_io_sample_in_bits_features_1),
    .io_sample_in_bits_features_2(increment_io_sample_in_bits_features_2),
    .io_sample_in_bits_features_3(increment_io_sample_in_bits_features_3),
    .io_sample_in_bits_features_4(increment_io_sample_in_bits_features_4),
    .io_sample_in_bits_offset(increment_io_sample_in_bits_offset),
    .io_sample_in_bits_shift(increment_io_sample_in_bits_shift),
    .io_sample_in_bits_search_for_root(increment_io_sample_in_bits_search_for_root),
    .io_sample_in_bits_tree_to_exec(increment_io_sample_in_bits_tree_to_exec),
    .io_sample_in_bits_scores_0(increment_io_sample_in_bits_scores_0),
    .io_sample_in_bits_scores_1(increment_io_sample_in_bits_scores_1),
    .io_sample_in_bits_scores_2(increment_io_sample_in_bits_scores_2),
    .io_sample_in_bits_scores_3(increment_io_sample_in_bits_scores_3),
    .io_sample_in_bits_scores_4(increment_io_sample_in_bits_scores_4),
    .io_sample_in_bits_scores_5(increment_io_sample_in_bits_scores_5),
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
    .io_sample_out_bits_features_4(increment_io_sample_out_bits_features_4),
    .io_sample_out_bits_offset(increment_io_sample_out_bits_offset),
    .io_sample_out_bits_shift(increment_io_sample_out_bits_shift),
    .io_sample_out_bits_search_for_root(increment_io_sample_out_bits_search_for_root),
    .io_sample_out_bits_tree_to_exec(increment_io_sample_out_bits_tree_to_exec),
    .io_sample_out_bits_scores_0(increment_io_sample_out_bits_scores_0),
    .io_sample_out_bits_scores_1(increment_io_sample_out_bits_scores_1),
    .io_sample_out_bits_scores_2(increment_io_sample_out_bits_scores_2),
    .io_sample_out_bits_scores_3(increment_io_sample_out_bits_scores_3),
    .io_sample_out_bits_scores_4(increment_io_sample_out_bits_scores_4),
    .io_sample_out_bits_scores_5(increment_io_sample_out_bits_scores_5),
    .io_sample_out_bits_weights_0(increment_io_sample_out_bits_weights_0),
    .io_sample_out_bits_weights_1(increment_io_sample_out_bits_weights_1),
    .io_sample_out_bits_weights_2(increment_io_sample_out_bits_weights_2),
    .io_sample_out_bits_weights_3(increment_io_sample_out_bits_weights_3),
    .io_sample_out_bits_weights_4(increment_io_sample_out_bits_weights_4),
    .io_sample_out_bits_last(increment_io_sample_out_bits_last)
  );
  assign wrapper_io_sample_in_TREADY = forward_converter_io_sample_in_TREADY; // @[TreePEsWrapper.scala 107:30]
  assign wrapper_io_sample_out_TDATA = backward_converter_io_sample_out_TDATA; // @[TreePEsWrapper.scala 108:31]
  assign wrapper_io_sample_out_TLAST = backward_converter_io_sample_out_TLAST; // @[TreePEsWrapper.scala 108:31]
  assign wrapper_io_sample_out_TVALID = backward_converter_io_sample_out_TVALID; // @[TreePEsWrapper.scala 108:31]
  assign brams_io_0_bram_rddata_a = brams_0_io_a_dout; // @[TreePEsWrapper.scala 85:49]
  assign brams_io_1_bram_rddata_a = brams_1_io_a_dout; // @[TreePEsWrapper.scala 85:49]
  assign brams_io_2_bram_rddata_a = brams_2_io_a_dout; // @[TreePEsWrapper.scala 85:49]
  assign brams_io_3_bram_rddata_a = brams_3_io_a_dout; // @[TreePEsWrapper.scala 85:49]
  assign brams_io_4_bram_rddata_a = brams_4_io_a_dout; // @[TreePEsWrapper.scala 85:49]
  assign brams_io_5_bram_rddata_a = brams_5_io_a_dout; // @[TreePEsWrapper.scala 85:49]
  assign brams_io_6_bram_rddata_a = brams_6_io_a_dout; // @[TreePEsWrapper.scala 85:49]
  assign brams_io_7_bram_rddata_a = brams_7_io_a_dout; // @[TreePEsWrapper.scala 85:49]
  assign brams_io_8_bram_rddata_a = brams_8_io_a_dout; // @[TreePEsWrapper.scala 85:49]
  assign brams_io_9_bram_rddata_a = brams_9_io_a_dout; // @[TreePEsWrapper.scala 85:49]
  assign forward_converter_io_sample_in_TDATA = wrapper_io_sample_in_TDATA; // @[TreePEsWrapper.scala 107:30]
  assign forward_converter_io_sample_in_TLAST = wrapper_io_sample_in_TLAST; // @[TreePEsWrapper.scala 107:30]
  assign forward_converter_io_sample_in_TVALID = wrapper_io_sample_in_TVALID; // @[TreePEsWrapper.scala 107:30]
  assign forward_converter_io_sample_out_ready = dispatcher_io_sample_in_ready; // @[Converter.scala 34:23]
  assign backward_converter_clock = clock;
  assign backward_converter_reset = reset;
  assign backward_converter_io_sample_in_valid = voter_io_sample_out_valid; // @[VoterPE.scala 61:47]
  assign backward_converter_io_sample_in_bits_features_0 = voter_io_sample_out_bits_features_0; // @[VoterPE.scala 52:55]
  assign backward_converter_io_sample_in_bits_features_1 = voter_io_sample_out_bits_features_1; // @[VoterPE.scala 52:55]
  assign backward_converter_io_sample_in_bits_features_2 = voter_io_sample_out_bits_features_2; // @[VoterPE.scala 52:55]
  assign backward_converter_io_sample_in_bits_features_3 = voter_io_sample_out_bits_features_3; // @[VoterPE.scala 52:55]
  assign backward_converter_io_sample_in_bits_features_4 = voter_io_sample_out_bits_features_4; // @[VoterPE.scala 52:55]
  assign backward_converter_io_sample_in_bits_offset = voter_io_sample_out_bits_offset; // @[VoterPE.scala 56:53]
  assign backward_converter_io_sample_in_bits_shift = voter_io_sample_out_bits_shift; // @[VoterPE.scala 55:52]
  assign backward_converter_io_sample_in_bits_search_for_root = voter_io_sample_out_bits_search_for_root; // @[VoterPE.scala 58:62]
  assign backward_converter_io_sample_in_bits_tree_to_exec = voter_io_sample_out_bits_tree_to_exec; // @[VoterPE.scala 54:59]
  assign backward_converter_io_sample_in_bits_scores_0 = voter_io_sample_out_bits_scores_0; // @[VoterPE.scala 57:53]
  assign backward_converter_io_sample_in_bits_scores_1 = voter_io_sample_out_bits_scores_1; // @[VoterPE.scala 57:53]
  assign backward_converter_io_sample_in_bits_scores_2 = voter_io_sample_out_bits_scores_2; // @[VoterPE.scala 57:53]
  assign backward_converter_io_sample_in_bits_scores_3 = voter_io_sample_out_bits_scores_3; // @[VoterPE.scala 57:53]
  assign backward_converter_io_sample_in_bits_scores_4 = voter_io_sample_out_bits_scores_4; // @[VoterPE.scala 57:53]
  assign backward_converter_io_sample_in_bits_scores_5 = voter_io_sample_out_bits_scores_5; // @[VoterPE.scala 57:53]
  assign backward_converter_io_sample_in_bits_last = voter_io_sample_out_bits_last; // @[VoterPE.scala 60:51]
  assign backward_converter_io_sample_in_bits_clock_cycles = cycles_counter; // @[Converter.scala 63:40]
  assign backward_converter_io_sample_out_TREADY = wrapper_io_sample_out_TREADY; // @[TreePEsWrapper.scala 108:31]
  assign dispatcher_clock = clock;
  assign dispatcher_reset = reset;
  assign dispatcher_io_sample_in_valid = forward_converter_io_sample_out_valid; // @[Converter.scala 34:23]
  assign dispatcher_io_sample_in_bits_features_0 = forward_converter_io_sample_out_bits_features_0; // @[Converter.scala 34:23]
  assign dispatcher_io_sample_in_bits_features_1 = forward_converter_io_sample_out_bits_features_1; // @[Converter.scala 34:23]
  assign dispatcher_io_sample_in_bits_features_2 = forward_converter_io_sample_out_bits_features_2; // @[Converter.scala 34:23]
  assign dispatcher_io_sample_in_bits_features_3 = forward_converter_io_sample_out_bits_features_3; // @[Converter.scala 34:23]
  assign dispatcher_io_sample_in_bits_features_4 = forward_converter_io_sample_out_bits_features_4; // @[Converter.scala 34:23]
  assign dispatcher_io_sample_in_bits_offset = forward_converter_io_sample_out_bits_offset; // @[Converter.scala 34:23]
  assign dispatcher_io_sample_in_bits_shift = forward_converter_io_sample_out_bits_shift; // @[Converter.scala 34:23]
  assign dispatcher_io_sample_in_bits_search_for_root = forward_converter_io_sample_out_bits_search_for_root; // @[Converter.scala 34:23]
  assign dispatcher_io_sample_in_bits_tree_to_exec = forward_converter_io_sample_out_bits_tree_to_exec; // @[Converter.scala 34:23]
  assign dispatcher_io_sample_in_bits_scores_0 = forward_converter_io_sample_out_bits_scores_0; // @[Converter.scala 34:23]
  assign dispatcher_io_sample_in_bits_scores_1 = forward_converter_io_sample_out_bits_scores_1; // @[Converter.scala 34:23]
  assign dispatcher_io_sample_in_bits_scores_2 = forward_converter_io_sample_out_bits_scores_2; // @[Converter.scala 34:23]
  assign dispatcher_io_sample_in_bits_scores_3 = forward_converter_io_sample_out_bits_scores_3; // @[Converter.scala 34:23]
  assign dispatcher_io_sample_in_bits_scores_4 = forward_converter_io_sample_out_bits_scores_4; // @[Converter.scala 34:23]
  assign dispatcher_io_sample_in_bits_scores_5 = forward_converter_io_sample_out_bits_scores_5; // @[Converter.scala 34:23]
  assign dispatcher_io_sample_in_bits_weights_0 = forward_converter_io_sample_out_bits_weights_0; // @[Converter.scala 34:23]
  assign dispatcher_io_sample_in_bits_weights_1 = forward_converter_io_sample_out_bits_weights_1; // @[Converter.scala 34:23]
  assign dispatcher_io_sample_in_bits_weights_2 = forward_converter_io_sample_out_bits_weights_2; // @[Converter.scala 34:23]
  assign dispatcher_io_sample_in_bits_weights_3 = forward_converter_io_sample_out_bits_weights_3; // @[Converter.scala 34:23]
  assign dispatcher_io_sample_in_bits_weights_4 = forward_converter_io_sample_out_bits_weights_4; // @[Converter.scala 34:23]
  assign dispatcher_io_sample_in_bits_last = forward_converter_io_sample_out_bits_last; // @[Converter.scala 34:23]
  assign dispatcher_io_samples_out_0_ready = first_interconnect_io_sample_entering_ready; // @[DispatcherPE.scala 25:27]
  assign voter_clock = clock;
  assign voter_reset = reset;
  assign voter_io_samples_in_0_valid = last_interconnect_io_sample_leaving_valid; // @[Interconnect.scala 39:27]
  assign voter_io_samples_in_0_bits_features_0 = last_interconnect_io_sample_leaving_bits_features_0; // @[Interconnect.scala 39:27]
  assign voter_io_samples_in_0_bits_features_1 = last_interconnect_io_sample_leaving_bits_features_1; // @[Interconnect.scala 39:27]
  assign voter_io_samples_in_0_bits_features_2 = last_interconnect_io_sample_leaving_bits_features_2; // @[Interconnect.scala 39:27]
  assign voter_io_samples_in_0_bits_features_3 = last_interconnect_io_sample_leaving_bits_features_3; // @[Interconnect.scala 39:27]
  assign voter_io_samples_in_0_bits_features_4 = last_interconnect_io_sample_leaving_bits_features_4; // @[Interconnect.scala 39:27]
  assign voter_io_samples_in_0_bits_offset = last_interconnect_io_sample_leaving_bits_offset; // @[Interconnect.scala 39:27]
  assign voter_io_samples_in_0_bits_shift = last_interconnect_io_sample_leaving_bits_shift; // @[Interconnect.scala 39:27]
  assign voter_io_samples_in_0_bits_search_for_root = last_interconnect_io_sample_leaving_bits_search_for_root; // @[Interconnect.scala 39:27]
  assign voter_io_samples_in_0_bits_tree_to_exec = last_interconnect_io_sample_leaving_bits_tree_to_exec; // @[Interconnect.scala 39:27]
  assign voter_io_samples_in_0_bits_scores_0 = last_interconnect_io_sample_leaving_bits_scores_0; // @[Interconnect.scala 39:27]
  assign voter_io_samples_in_0_bits_scores_1 = last_interconnect_io_sample_leaving_bits_scores_1; // @[Interconnect.scala 39:27]
  assign voter_io_samples_in_0_bits_scores_2 = last_interconnect_io_sample_leaving_bits_scores_2; // @[Interconnect.scala 39:27]
  assign voter_io_samples_in_0_bits_scores_3 = last_interconnect_io_sample_leaving_bits_scores_3; // @[Interconnect.scala 39:27]
  assign voter_io_samples_in_0_bits_scores_4 = last_interconnect_io_sample_leaving_bits_scores_4; // @[Interconnect.scala 39:27]
  assign voter_io_samples_in_0_bits_scores_5 = last_interconnect_io_sample_leaving_bits_scores_5; // @[Interconnect.scala 39:27]
  assign voter_io_samples_in_0_bits_weights_0 = last_interconnect_io_sample_leaving_bits_weights_0; // @[Interconnect.scala 39:27]
  assign voter_io_samples_in_0_bits_weights_1 = last_interconnect_io_sample_leaving_bits_weights_1; // @[Interconnect.scala 39:27]
  assign voter_io_samples_in_0_bits_weights_2 = last_interconnect_io_sample_leaving_bits_weights_2; // @[Interconnect.scala 39:27]
  assign voter_io_samples_in_0_bits_weights_3 = last_interconnect_io_sample_leaving_bits_weights_3; // @[Interconnect.scala 39:27]
  assign voter_io_samples_in_0_bits_weights_4 = last_interconnect_io_sample_leaving_bits_weights_4; // @[Interconnect.scala 39:27]
  assign voter_io_samples_in_0_bits_last = last_interconnect_io_sample_leaving_bits_last; // @[Interconnect.scala 39:27]
  assign voter_io_sample_out_ready = backward_converter_io_sample_in_ready; // @[VoterPE.scala 62:29]
  assign pes_0_clock = clock;
  assign pes_0_reset = reset;
  assign pes_0_pe_io_sample_in_valid = first_interconnect_io_sample_out_valid; // @[Interconnect.scala 60:24]
  assign pes_0_pe_io_sample_in_bits_features_0 = first_interconnect_io_sample_out_bits_features_0; // @[Interconnect.scala 60:24]
  assign pes_0_pe_io_sample_in_bits_features_1 = first_interconnect_io_sample_out_bits_features_1; // @[Interconnect.scala 60:24]
  assign pes_0_pe_io_sample_in_bits_features_2 = first_interconnect_io_sample_out_bits_features_2; // @[Interconnect.scala 60:24]
  assign pes_0_pe_io_sample_in_bits_features_3 = first_interconnect_io_sample_out_bits_features_3; // @[Interconnect.scala 60:24]
  assign pes_0_pe_io_sample_in_bits_features_4 = first_interconnect_io_sample_out_bits_features_4; // @[Interconnect.scala 60:24]
  assign pes_0_pe_io_sample_in_bits_offset = first_interconnect_io_sample_out_bits_offset; // @[Interconnect.scala 60:24]
  assign pes_0_pe_io_sample_in_bits_shift = first_interconnect_io_sample_out_bits_shift; // @[Interconnect.scala 60:24]
  assign pes_0_pe_io_sample_in_bits_search_for_root = first_interconnect_io_sample_out_bits_search_for_root; // @[Interconnect.scala 60:24]
  assign pes_0_pe_io_sample_in_bits_tree_to_exec = first_interconnect_io_sample_out_bits_tree_to_exec; // @[Interconnect.scala 60:24]
  assign pes_0_pe_io_sample_in_bits_scores_0 = first_interconnect_io_sample_out_bits_scores_0; // @[Interconnect.scala 60:24]
  assign pes_0_pe_io_sample_in_bits_scores_1 = first_interconnect_io_sample_out_bits_scores_1; // @[Interconnect.scala 60:24]
  assign pes_0_pe_io_sample_in_bits_scores_2 = first_interconnect_io_sample_out_bits_scores_2; // @[Interconnect.scala 60:24]
  assign pes_0_pe_io_sample_in_bits_scores_3 = first_interconnect_io_sample_out_bits_scores_3; // @[Interconnect.scala 60:24]
  assign pes_0_pe_io_sample_in_bits_scores_4 = first_interconnect_io_sample_out_bits_scores_4; // @[Interconnect.scala 60:24]
  assign pes_0_pe_io_sample_in_bits_scores_5 = first_interconnect_io_sample_out_bits_scores_5; // @[Interconnect.scala 60:24]
  assign pes_0_pe_io_sample_in_bits_weights_0 = first_interconnect_io_sample_out_bits_weights_0; // @[Interconnect.scala 60:24]
  assign pes_0_pe_io_sample_in_bits_weights_1 = first_interconnect_io_sample_out_bits_weights_1; // @[Interconnect.scala 60:24]
  assign pes_0_pe_io_sample_in_bits_weights_2 = first_interconnect_io_sample_out_bits_weights_2; // @[Interconnect.scala 60:24]
  assign pes_0_pe_io_sample_in_bits_weights_3 = first_interconnect_io_sample_out_bits_weights_3; // @[Interconnect.scala 60:24]
  assign pes_0_pe_io_sample_in_bits_weights_4 = first_interconnect_io_sample_out_bits_weights_4; // @[Interconnect.scala 60:24]
  assign pes_0_pe_io_sample_in_bits_last = first_interconnect_io_sample_out_bits_last; // @[Interconnect.scala 60:24]
  assign pes_0_pe_io_mem_dataOut_1 = brams_0_io_b_dout; // @[TreePEsWrapper.scala 79:44]
  assign pes_0_pe_io_sample_out_ready = pes_1_pe_io_sample_in_ready; // @[TreePE.scala 113:22]
  assign pes_1_clock = clock;
  assign pes_1_reset = reset;
  assign pes_1_pe_io_sample_in_valid = pes_0_pe_io_sample_out_valid; // @[TreePE.scala 113:22]
  assign pes_1_pe_io_sample_in_bits_features_0 = pes_0_pe_io_sample_out_bits_features_0; // @[TreePE.scala 113:22]
  assign pes_1_pe_io_sample_in_bits_features_1 = pes_0_pe_io_sample_out_bits_features_1; // @[TreePE.scala 113:22]
  assign pes_1_pe_io_sample_in_bits_features_2 = pes_0_pe_io_sample_out_bits_features_2; // @[TreePE.scala 113:22]
  assign pes_1_pe_io_sample_in_bits_features_3 = pes_0_pe_io_sample_out_bits_features_3; // @[TreePE.scala 113:22]
  assign pes_1_pe_io_sample_in_bits_features_4 = pes_0_pe_io_sample_out_bits_features_4; // @[TreePE.scala 113:22]
  assign pes_1_pe_io_sample_in_bits_offset = pes_0_pe_io_sample_out_bits_offset; // @[TreePE.scala 113:22]
  assign pes_1_pe_io_sample_in_bits_search_for_root = pes_0_pe_io_sample_out_bits_search_for_root; // @[TreePE.scala 113:22]
  assign pes_1_pe_io_sample_in_bits_tree_to_exec = pes_0_pe_io_sample_out_bits_tree_to_exec; // @[TreePE.scala 113:22]
  assign pes_1_pe_io_sample_in_bits_scores_0 = pes_0_pe_io_sample_out_bits_scores_0; // @[TreePE.scala 113:22]
  assign pes_1_pe_io_sample_in_bits_scores_1 = pes_0_pe_io_sample_out_bits_scores_1; // @[TreePE.scala 113:22]
  assign pes_1_pe_io_sample_in_bits_scores_2 = pes_0_pe_io_sample_out_bits_scores_2; // @[TreePE.scala 113:22]
  assign pes_1_pe_io_sample_in_bits_scores_3 = pes_0_pe_io_sample_out_bits_scores_3; // @[TreePE.scala 113:22]
  assign pes_1_pe_io_sample_in_bits_scores_4 = pes_0_pe_io_sample_out_bits_scores_4; // @[TreePE.scala 113:22]
  assign pes_1_pe_io_sample_in_bits_scores_5 = pes_0_pe_io_sample_out_bits_scores_5; // @[TreePE.scala 113:22]
  assign pes_1_pe_io_sample_in_bits_weights_0 = pes_0_pe_io_sample_out_bits_weights_0; // @[TreePE.scala 113:22]
  assign pes_1_pe_io_sample_in_bits_weights_1 = pes_0_pe_io_sample_out_bits_weights_1; // @[TreePE.scala 113:22]
  assign pes_1_pe_io_sample_in_bits_weights_2 = pes_0_pe_io_sample_out_bits_weights_2; // @[TreePE.scala 113:22]
  assign pes_1_pe_io_sample_in_bits_weights_3 = pes_0_pe_io_sample_out_bits_weights_3; // @[TreePE.scala 113:22]
  assign pes_1_pe_io_sample_in_bits_weights_4 = pes_0_pe_io_sample_out_bits_weights_4; // @[TreePE.scala 113:22]
  assign pes_1_pe_io_sample_in_bits_last = pes_0_pe_io_sample_out_bits_last; // @[TreePE.scala 113:22]
  assign pes_1_pe_io_mem_dataOut_1 = brams_1_io_b_dout; // @[TreePEsWrapper.scala 79:44]
  assign pes_1_pe_io_sample_out_ready = pes_2_pe_io_sample_in_ready; // @[TreePE.scala 113:22]
  assign pes_2_clock = clock;
  assign pes_2_reset = reset;
  assign pes_2_pe_io_sample_in_valid = pes_1_pe_io_sample_out_valid; // @[TreePE.scala 113:22]
  assign pes_2_pe_io_sample_in_bits_features_0 = pes_1_pe_io_sample_out_bits_features_0; // @[TreePE.scala 113:22]
  assign pes_2_pe_io_sample_in_bits_features_1 = pes_1_pe_io_sample_out_bits_features_1; // @[TreePE.scala 113:22]
  assign pes_2_pe_io_sample_in_bits_features_2 = pes_1_pe_io_sample_out_bits_features_2; // @[TreePE.scala 113:22]
  assign pes_2_pe_io_sample_in_bits_features_3 = pes_1_pe_io_sample_out_bits_features_3; // @[TreePE.scala 113:22]
  assign pes_2_pe_io_sample_in_bits_features_4 = pes_1_pe_io_sample_out_bits_features_4; // @[TreePE.scala 113:22]
  assign pes_2_pe_io_sample_in_bits_offset = pes_1_pe_io_sample_out_bits_offset; // @[TreePE.scala 113:22]
  assign pes_2_pe_io_sample_in_bits_search_for_root = pes_1_pe_io_sample_out_bits_search_for_root; // @[TreePE.scala 113:22]
  assign pes_2_pe_io_sample_in_bits_tree_to_exec = pes_1_pe_io_sample_out_bits_tree_to_exec; // @[TreePE.scala 113:22]
  assign pes_2_pe_io_sample_in_bits_scores_0 = pes_1_pe_io_sample_out_bits_scores_0; // @[TreePE.scala 113:22]
  assign pes_2_pe_io_sample_in_bits_scores_1 = pes_1_pe_io_sample_out_bits_scores_1; // @[TreePE.scala 113:22]
  assign pes_2_pe_io_sample_in_bits_scores_2 = pes_1_pe_io_sample_out_bits_scores_2; // @[TreePE.scala 113:22]
  assign pes_2_pe_io_sample_in_bits_scores_3 = pes_1_pe_io_sample_out_bits_scores_3; // @[TreePE.scala 113:22]
  assign pes_2_pe_io_sample_in_bits_scores_4 = pes_1_pe_io_sample_out_bits_scores_4; // @[TreePE.scala 113:22]
  assign pes_2_pe_io_sample_in_bits_scores_5 = pes_1_pe_io_sample_out_bits_scores_5; // @[TreePE.scala 113:22]
  assign pes_2_pe_io_sample_in_bits_weights_0 = pes_1_pe_io_sample_out_bits_weights_0; // @[TreePE.scala 113:22]
  assign pes_2_pe_io_sample_in_bits_weights_1 = pes_1_pe_io_sample_out_bits_weights_1; // @[TreePE.scala 113:22]
  assign pes_2_pe_io_sample_in_bits_weights_2 = pes_1_pe_io_sample_out_bits_weights_2; // @[TreePE.scala 113:22]
  assign pes_2_pe_io_sample_in_bits_weights_3 = pes_1_pe_io_sample_out_bits_weights_3; // @[TreePE.scala 113:22]
  assign pes_2_pe_io_sample_in_bits_weights_4 = pes_1_pe_io_sample_out_bits_weights_4; // @[TreePE.scala 113:22]
  assign pes_2_pe_io_sample_in_bits_last = pes_1_pe_io_sample_out_bits_last; // @[TreePE.scala 113:22]
  assign pes_2_pe_io_mem_dataOut_1 = brams_2_io_b_dout; // @[TreePEsWrapper.scala 79:44]
  assign pes_2_pe_io_sample_out_ready = pes_3_pe_io_sample_in_ready; // @[TreePE.scala 113:22]
  assign pes_3_clock = clock;
  assign pes_3_reset = reset;
  assign pes_3_pe_io_sample_in_valid = pes_2_pe_io_sample_out_valid; // @[TreePE.scala 113:22]
  assign pes_3_pe_io_sample_in_bits_features_0 = pes_2_pe_io_sample_out_bits_features_0; // @[TreePE.scala 113:22]
  assign pes_3_pe_io_sample_in_bits_features_1 = pes_2_pe_io_sample_out_bits_features_1; // @[TreePE.scala 113:22]
  assign pes_3_pe_io_sample_in_bits_features_2 = pes_2_pe_io_sample_out_bits_features_2; // @[TreePE.scala 113:22]
  assign pes_3_pe_io_sample_in_bits_features_3 = pes_2_pe_io_sample_out_bits_features_3; // @[TreePE.scala 113:22]
  assign pes_3_pe_io_sample_in_bits_features_4 = pes_2_pe_io_sample_out_bits_features_4; // @[TreePE.scala 113:22]
  assign pes_3_pe_io_sample_in_bits_offset = pes_2_pe_io_sample_out_bits_offset; // @[TreePE.scala 113:22]
  assign pes_3_pe_io_sample_in_bits_search_for_root = pes_2_pe_io_sample_out_bits_search_for_root; // @[TreePE.scala 113:22]
  assign pes_3_pe_io_sample_in_bits_tree_to_exec = pes_2_pe_io_sample_out_bits_tree_to_exec; // @[TreePE.scala 113:22]
  assign pes_3_pe_io_sample_in_bits_scores_0 = pes_2_pe_io_sample_out_bits_scores_0; // @[TreePE.scala 113:22]
  assign pes_3_pe_io_sample_in_bits_scores_1 = pes_2_pe_io_sample_out_bits_scores_1; // @[TreePE.scala 113:22]
  assign pes_3_pe_io_sample_in_bits_scores_2 = pes_2_pe_io_sample_out_bits_scores_2; // @[TreePE.scala 113:22]
  assign pes_3_pe_io_sample_in_bits_scores_3 = pes_2_pe_io_sample_out_bits_scores_3; // @[TreePE.scala 113:22]
  assign pes_3_pe_io_sample_in_bits_scores_4 = pes_2_pe_io_sample_out_bits_scores_4; // @[TreePE.scala 113:22]
  assign pes_3_pe_io_sample_in_bits_scores_5 = pes_2_pe_io_sample_out_bits_scores_5; // @[TreePE.scala 113:22]
  assign pes_3_pe_io_sample_in_bits_weights_0 = pes_2_pe_io_sample_out_bits_weights_0; // @[TreePE.scala 113:22]
  assign pes_3_pe_io_sample_in_bits_weights_1 = pes_2_pe_io_sample_out_bits_weights_1; // @[TreePE.scala 113:22]
  assign pes_3_pe_io_sample_in_bits_weights_2 = pes_2_pe_io_sample_out_bits_weights_2; // @[TreePE.scala 113:22]
  assign pes_3_pe_io_sample_in_bits_weights_3 = pes_2_pe_io_sample_out_bits_weights_3; // @[TreePE.scala 113:22]
  assign pes_3_pe_io_sample_in_bits_weights_4 = pes_2_pe_io_sample_out_bits_weights_4; // @[TreePE.scala 113:22]
  assign pes_3_pe_io_sample_in_bits_last = pes_2_pe_io_sample_out_bits_last; // @[TreePE.scala 113:22]
  assign pes_3_pe_io_mem_dataOut_1 = brams_3_io_b_dout; // @[TreePEsWrapper.scala 79:44]
  assign pes_3_pe_io_sample_out_ready = pes_4_pe_io_sample_in_ready; // @[TreePE.scala 113:22]
  assign pes_4_clock = clock;
  assign pes_4_reset = reset;
  assign pes_4_pe_io_sample_in_valid = pes_3_pe_io_sample_out_valid; // @[TreePE.scala 113:22]
  assign pes_4_pe_io_sample_in_bits_features_0 = pes_3_pe_io_sample_out_bits_features_0; // @[TreePE.scala 113:22]
  assign pes_4_pe_io_sample_in_bits_features_1 = pes_3_pe_io_sample_out_bits_features_1; // @[TreePE.scala 113:22]
  assign pes_4_pe_io_sample_in_bits_features_2 = pes_3_pe_io_sample_out_bits_features_2; // @[TreePE.scala 113:22]
  assign pes_4_pe_io_sample_in_bits_features_3 = pes_3_pe_io_sample_out_bits_features_3; // @[TreePE.scala 113:22]
  assign pes_4_pe_io_sample_in_bits_features_4 = pes_3_pe_io_sample_out_bits_features_4; // @[TreePE.scala 113:22]
  assign pes_4_pe_io_sample_in_bits_offset = pes_3_pe_io_sample_out_bits_offset; // @[TreePE.scala 113:22]
  assign pes_4_pe_io_sample_in_bits_search_for_root = pes_3_pe_io_sample_out_bits_search_for_root; // @[TreePE.scala 113:22]
  assign pes_4_pe_io_sample_in_bits_tree_to_exec = pes_3_pe_io_sample_out_bits_tree_to_exec; // @[TreePE.scala 113:22]
  assign pes_4_pe_io_sample_in_bits_scores_0 = pes_3_pe_io_sample_out_bits_scores_0; // @[TreePE.scala 113:22]
  assign pes_4_pe_io_sample_in_bits_scores_1 = pes_3_pe_io_sample_out_bits_scores_1; // @[TreePE.scala 113:22]
  assign pes_4_pe_io_sample_in_bits_scores_2 = pes_3_pe_io_sample_out_bits_scores_2; // @[TreePE.scala 113:22]
  assign pes_4_pe_io_sample_in_bits_scores_3 = pes_3_pe_io_sample_out_bits_scores_3; // @[TreePE.scala 113:22]
  assign pes_4_pe_io_sample_in_bits_scores_4 = pes_3_pe_io_sample_out_bits_scores_4; // @[TreePE.scala 113:22]
  assign pes_4_pe_io_sample_in_bits_scores_5 = pes_3_pe_io_sample_out_bits_scores_5; // @[TreePE.scala 113:22]
  assign pes_4_pe_io_sample_in_bits_weights_0 = pes_3_pe_io_sample_out_bits_weights_0; // @[TreePE.scala 113:22]
  assign pes_4_pe_io_sample_in_bits_weights_1 = pes_3_pe_io_sample_out_bits_weights_1; // @[TreePE.scala 113:22]
  assign pes_4_pe_io_sample_in_bits_weights_2 = pes_3_pe_io_sample_out_bits_weights_2; // @[TreePE.scala 113:22]
  assign pes_4_pe_io_sample_in_bits_weights_3 = pes_3_pe_io_sample_out_bits_weights_3; // @[TreePE.scala 113:22]
  assign pes_4_pe_io_sample_in_bits_weights_4 = pes_3_pe_io_sample_out_bits_weights_4; // @[TreePE.scala 113:22]
  assign pes_4_pe_io_sample_in_bits_last = pes_3_pe_io_sample_out_bits_last; // @[TreePE.scala 113:22]
  assign pes_4_pe_io_mem_dataOut_1 = brams_4_io_b_dout; // @[TreePEsWrapper.scala 79:44]
  assign pes_4_pe_io_sample_out_ready = pes_5_pe_io_sample_in_ready; // @[TreePE.scala 113:22]
  assign pes_5_clock = clock;
  assign pes_5_reset = reset;
  assign pes_5_pe_io_sample_in_valid = pes_4_pe_io_sample_out_valid; // @[TreePE.scala 113:22]
  assign pes_5_pe_io_sample_in_bits_features_0 = pes_4_pe_io_sample_out_bits_features_0; // @[TreePE.scala 113:22]
  assign pes_5_pe_io_sample_in_bits_features_1 = pes_4_pe_io_sample_out_bits_features_1; // @[TreePE.scala 113:22]
  assign pes_5_pe_io_sample_in_bits_features_2 = pes_4_pe_io_sample_out_bits_features_2; // @[TreePE.scala 113:22]
  assign pes_5_pe_io_sample_in_bits_features_3 = pes_4_pe_io_sample_out_bits_features_3; // @[TreePE.scala 113:22]
  assign pes_5_pe_io_sample_in_bits_features_4 = pes_4_pe_io_sample_out_bits_features_4; // @[TreePE.scala 113:22]
  assign pes_5_pe_io_sample_in_bits_offset = pes_4_pe_io_sample_out_bits_offset; // @[TreePE.scala 113:22]
  assign pes_5_pe_io_sample_in_bits_shift = 1'h0; // @[TreePE.scala 113:22]
  assign pes_5_pe_io_sample_in_bits_search_for_root = pes_4_pe_io_sample_out_bits_search_for_root; // @[TreePE.scala 113:22]
  assign pes_5_pe_io_sample_in_bits_tree_to_exec = pes_4_pe_io_sample_out_bits_tree_to_exec; // @[TreePE.scala 113:22]
  assign pes_5_pe_io_sample_in_bits_scores_0 = pes_4_pe_io_sample_out_bits_scores_0; // @[TreePE.scala 113:22]
  assign pes_5_pe_io_sample_in_bits_scores_1 = pes_4_pe_io_sample_out_bits_scores_1; // @[TreePE.scala 113:22]
  assign pes_5_pe_io_sample_in_bits_scores_2 = pes_4_pe_io_sample_out_bits_scores_2; // @[TreePE.scala 113:22]
  assign pes_5_pe_io_sample_in_bits_scores_3 = pes_4_pe_io_sample_out_bits_scores_3; // @[TreePE.scala 113:22]
  assign pes_5_pe_io_sample_in_bits_scores_4 = pes_4_pe_io_sample_out_bits_scores_4; // @[TreePE.scala 113:22]
  assign pes_5_pe_io_sample_in_bits_scores_5 = pes_4_pe_io_sample_out_bits_scores_5; // @[TreePE.scala 113:22]
  assign pes_5_pe_io_sample_in_bits_weights_0 = pes_4_pe_io_sample_out_bits_weights_0; // @[TreePE.scala 113:22]
  assign pes_5_pe_io_sample_in_bits_weights_1 = pes_4_pe_io_sample_out_bits_weights_1; // @[TreePE.scala 113:22]
  assign pes_5_pe_io_sample_in_bits_weights_2 = pes_4_pe_io_sample_out_bits_weights_2; // @[TreePE.scala 113:22]
  assign pes_5_pe_io_sample_in_bits_weights_3 = pes_4_pe_io_sample_out_bits_weights_3; // @[TreePE.scala 113:22]
  assign pes_5_pe_io_sample_in_bits_weights_4 = pes_4_pe_io_sample_out_bits_weights_4; // @[TreePE.scala 113:22]
  assign pes_5_pe_io_sample_in_bits_last = pes_4_pe_io_sample_out_bits_last; // @[TreePE.scala 113:22]
  assign pes_5_pe_io_mem_dataOut_1 = brams_5_io_b_dout; // @[TreePEsWrapper.scala 79:44]
  assign pes_5_pe_io_sample_out_ready = pes_6_pe_io_sample_in_ready; // @[TreePE.scala 113:22]
  assign pes_6_clock = clock;
  assign pes_6_reset = reset;
  assign pes_6_pe_io_sample_in_valid = pes_5_pe_io_sample_out_valid; // @[TreePE.scala 113:22]
  assign pes_6_pe_io_sample_in_bits_features_0 = pes_5_pe_io_sample_out_bits_features_0; // @[TreePE.scala 113:22]
  assign pes_6_pe_io_sample_in_bits_features_1 = pes_5_pe_io_sample_out_bits_features_1; // @[TreePE.scala 113:22]
  assign pes_6_pe_io_sample_in_bits_features_2 = pes_5_pe_io_sample_out_bits_features_2; // @[TreePE.scala 113:22]
  assign pes_6_pe_io_sample_in_bits_features_3 = pes_5_pe_io_sample_out_bits_features_3; // @[TreePE.scala 113:22]
  assign pes_6_pe_io_sample_in_bits_features_4 = pes_5_pe_io_sample_out_bits_features_4; // @[TreePE.scala 113:22]
  assign pes_6_pe_io_sample_in_bits_offset = pes_5_pe_io_sample_out_bits_offset; // @[TreePE.scala 113:22]
  assign pes_6_pe_io_sample_in_bits_search_for_root = pes_5_pe_io_sample_out_bits_search_for_root; // @[TreePE.scala 113:22]
  assign pes_6_pe_io_sample_in_bits_tree_to_exec = pes_5_pe_io_sample_out_bits_tree_to_exec; // @[TreePE.scala 113:22]
  assign pes_6_pe_io_sample_in_bits_scores_0 = pes_5_pe_io_sample_out_bits_scores_0; // @[TreePE.scala 113:22]
  assign pes_6_pe_io_sample_in_bits_scores_1 = pes_5_pe_io_sample_out_bits_scores_1; // @[TreePE.scala 113:22]
  assign pes_6_pe_io_sample_in_bits_scores_2 = pes_5_pe_io_sample_out_bits_scores_2; // @[TreePE.scala 113:22]
  assign pes_6_pe_io_sample_in_bits_scores_3 = pes_5_pe_io_sample_out_bits_scores_3; // @[TreePE.scala 113:22]
  assign pes_6_pe_io_sample_in_bits_scores_4 = pes_5_pe_io_sample_out_bits_scores_4; // @[TreePE.scala 113:22]
  assign pes_6_pe_io_sample_in_bits_scores_5 = pes_5_pe_io_sample_out_bits_scores_5; // @[TreePE.scala 113:22]
  assign pes_6_pe_io_sample_in_bits_weights_0 = pes_5_pe_io_sample_out_bits_weights_0; // @[TreePE.scala 113:22]
  assign pes_6_pe_io_sample_in_bits_weights_1 = pes_5_pe_io_sample_out_bits_weights_1; // @[TreePE.scala 113:22]
  assign pes_6_pe_io_sample_in_bits_weights_2 = pes_5_pe_io_sample_out_bits_weights_2; // @[TreePE.scala 113:22]
  assign pes_6_pe_io_sample_in_bits_weights_3 = pes_5_pe_io_sample_out_bits_weights_3; // @[TreePE.scala 113:22]
  assign pes_6_pe_io_sample_in_bits_weights_4 = pes_5_pe_io_sample_out_bits_weights_4; // @[TreePE.scala 113:22]
  assign pes_6_pe_io_sample_in_bits_last = pes_5_pe_io_sample_out_bits_last; // @[TreePE.scala 113:22]
  assign pes_6_pe_io_mem_dataOut_1 = brams_6_io_b_dout; // @[TreePEsWrapper.scala 79:44]
  assign pes_6_pe_io_sample_out_ready = pes_7_pe_io_sample_in_ready; // @[TreePE.scala 113:22]
  assign pes_7_clock = clock;
  assign pes_7_reset = reset;
  assign pes_7_pe_io_sample_in_valid = pes_6_pe_io_sample_out_valid; // @[TreePE.scala 113:22]
  assign pes_7_pe_io_sample_in_bits_features_0 = pes_6_pe_io_sample_out_bits_features_0; // @[TreePE.scala 113:22]
  assign pes_7_pe_io_sample_in_bits_features_1 = pes_6_pe_io_sample_out_bits_features_1; // @[TreePE.scala 113:22]
  assign pes_7_pe_io_sample_in_bits_features_2 = pes_6_pe_io_sample_out_bits_features_2; // @[TreePE.scala 113:22]
  assign pes_7_pe_io_sample_in_bits_features_3 = pes_6_pe_io_sample_out_bits_features_3; // @[TreePE.scala 113:22]
  assign pes_7_pe_io_sample_in_bits_features_4 = pes_6_pe_io_sample_out_bits_features_4; // @[TreePE.scala 113:22]
  assign pes_7_pe_io_sample_in_bits_offset = pes_6_pe_io_sample_out_bits_offset; // @[TreePE.scala 113:22]
  assign pes_7_pe_io_sample_in_bits_search_for_root = pes_6_pe_io_sample_out_bits_search_for_root; // @[TreePE.scala 113:22]
  assign pes_7_pe_io_sample_in_bits_tree_to_exec = pes_6_pe_io_sample_out_bits_tree_to_exec; // @[TreePE.scala 113:22]
  assign pes_7_pe_io_sample_in_bits_scores_0 = pes_6_pe_io_sample_out_bits_scores_0; // @[TreePE.scala 113:22]
  assign pes_7_pe_io_sample_in_bits_scores_1 = pes_6_pe_io_sample_out_bits_scores_1; // @[TreePE.scala 113:22]
  assign pes_7_pe_io_sample_in_bits_scores_2 = pes_6_pe_io_sample_out_bits_scores_2; // @[TreePE.scala 113:22]
  assign pes_7_pe_io_sample_in_bits_scores_3 = pes_6_pe_io_sample_out_bits_scores_3; // @[TreePE.scala 113:22]
  assign pes_7_pe_io_sample_in_bits_scores_4 = pes_6_pe_io_sample_out_bits_scores_4; // @[TreePE.scala 113:22]
  assign pes_7_pe_io_sample_in_bits_scores_5 = pes_6_pe_io_sample_out_bits_scores_5; // @[TreePE.scala 113:22]
  assign pes_7_pe_io_sample_in_bits_weights_0 = pes_6_pe_io_sample_out_bits_weights_0; // @[TreePE.scala 113:22]
  assign pes_7_pe_io_sample_in_bits_weights_1 = pes_6_pe_io_sample_out_bits_weights_1; // @[TreePE.scala 113:22]
  assign pes_7_pe_io_sample_in_bits_weights_2 = pes_6_pe_io_sample_out_bits_weights_2; // @[TreePE.scala 113:22]
  assign pes_7_pe_io_sample_in_bits_weights_3 = pes_6_pe_io_sample_out_bits_weights_3; // @[TreePE.scala 113:22]
  assign pes_7_pe_io_sample_in_bits_weights_4 = pes_6_pe_io_sample_out_bits_weights_4; // @[TreePE.scala 113:22]
  assign pes_7_pe_io_sample_in_bits_last = pes_6_pe_io_sample_out_bits_last; // @[TreePE.scala 113:22]
  assign pes_7_pe_io_mem_dataOut_1 = brams_7_io_b_dout; // @[TreePEsWrapper.scala 79:44]
  assign pes_7_pe_io_sample_out_ready = pes_8_pe_io_sample_in_ready; // @[TreePE.scala 113:22]
  assign pes_8_clock = clock;
  assign pes_8_reset = reset;
  assign pes_8_pe_io_sample_in_valid = pes_7_pe_io_sample_out_valid; // @[TreePE.scala 113:22]
  assign pes_8_pe_io_sample_in_bits_features_0 = pes_7_pe_io_sample_out_bits_features_0; // @[TreePE.scala 113:22]
  assign pes_8_pe_io_sample_in_bits_features_1 = pes_7_pe_io_sample_out_bits_features_1; // @[TreePE.scala 113:22]
  assign pes_8_pe_io_sample_in_bits_features_2 = pes_7_pe_io_sample_out_bits_features_2; // @[TreePE.scala 113:22]
  assign pes_8_pe_io_sample_in_bits_features_3 = pes_7_pe_io_sample_out_bits_features_3; // @[TreePE.scala 113:22]
  assign pes_8_pe_io_sample_in_bits_features_4 = pes_7_pe_io_sample_out_bits_features_4; // @[TreePE.scala 113:22]
  assign pes_8_pe_io_sample_in_bits_offset = pes_7_pe_io_sample_out_bits_offset; // @[TreePE.scala 113:22]
  assign pes_8_pe_io_sample_in_bits_search_for_root = pes_7_pe_io_sample_out_bits_search_for_root; // @[TreePE.scala 113:22]
  assign pes_8_pe_io_sample_in_bits_tree_to_exec = pes_7_pe_io_sample_out_bits_tree_to_exec; // @[TreePE.scala 113:22]
  assign pes_8_pe_io_sample_in_bits_scores_0 = pes_7_pe_io_sample_out_bits_scores_0; // @[TreePE.scala 113:22]
  assign pes_8_pe_io_sample_in_bits_scores_1 = pes_7_pe_io_sample_out_bits_scores_1; // @[TreePE.scala 113:22]
  assign pes_8_pe_io_sample_in_bits_scores_2 = pes_7_pe_io_sample_out_bits_scores_2; // @[TreePE.scala 113:22]
  assign pes_8_pe_io_sample_in_bits_scores_3 = pes_7_pe_io_sample_out_bits_scores_3; // @[TreePE.scala 113:22]
  assign pes_8_pe_io_sample_in_bits_scores_4 = pes_7_pe_io_sample_out_bits_scores_4; // @[TreePE.scala 113:22]
  assign pes_8_pe_io_sample_in_bits_scores_5 = pes_7_pe_io_sample_out_bits_scores_5; // @[TreePE.scala 113:22]
  assign pes_8_pe_io_sample_in_bits_weights_0 = pes_7_pe_io_sample_out_bits_weights_0; // @[TreePE.scala 113:22]
  assign pes_8_pe_io_sample_in_bits_weights_1 = pes_7_pe_io_sample_out_bits_weights_1; // @[TreePE.scala 113:22]
  assign pes_8_pe_io_sample_in_bits_weights_2 = pes_7_pe_io_sample_out_bits_weights_2; // @[TreePE.scala 113:22]
  assign pes_8_pe_io_sample_in_bits_weights_3 = pes_7_pe_io_sample_out_bits_weights_3; // @[TreePE.scala 113:22]
  assign pes_8_pe_io_sample_in_bits_weights_4 = pes_7_pe_io_sample_out_bits_weights_4; // @[TreePE.scala 113:22]
  assign pes_8_pe_io_sample_in_bits_last = pes_7_pe_io_sample_out_bits_last; // @[TreePE.scala 113:22]
  assign pes_8_pe_io_mem_dataOut_1 = brams_8_io_b_dout; // @[TreePEsWrapper.scala 79:44]
  assign pes_8_pe_io_sample_out_ready = pes_9_pe_io_sample_in_ready; // @[TreePE.scala 113:22]
  assign pes_9_clock = clock;
  assign pes_9_reset = reset;
  assign pes_9_pe_io_sample_in_valid = pes_8_pe_io_sample_out_valid; // @[TreePE.scala 113:22]
  assign pes_9_pe_io_sample_in_bits_features_0 = pes_8_pe_io_sample_out_bits_features_0; // @[TreePE.scala 113:22]
  assign pes_9_pe_io_sample_in_bits_features_1 = pes_8_pe_io_sample_out_bits_features_1; // @[TreePE.scala 113:22]
  assign pes_9_pe_io_sample_in_bits_features_2 = pes_8_pe_io_sample_out_bits_features_2; // @[TreePE.scala 113:22]
  assign pes_9_pe_io_sample_in_bits_features_3 = pes_8_pe_io_sample_out_bits_features_3; // @[TreePE.scala 113:22]
  assign pes_9_pe_io_sample_in_bits_features_4 = pes_8_pe_io_sample_out_bits_features_4; // @[TreePE.scala 113:22]
  assign pes_9_pe_io_sample_in_bits_offset = pes_8_pe_io_sample_out_bits_offset; // @[TreePE.scala 113:22]
  assign pes_9_pe_io_sample_in_bits_search_for_root = pes_8_pe_io_sample_out_bits_search_for_root; // @[TreePE.scala 113:22]
  assign pes_9_pe_io_sample_in_bits_tree_to_exec = pes_8_pe_io_sample_out_bits_tree_to_exec; // @[TreePE.scala 113:22]
  assign pes_9_pe_io_sample_in_bits_scores_0 = pes_8_pe_io_sample_out_bits_scores_0; // @[TreePE.scala 113:22]
  assign pes_9_pe_io_sample_in_bits_scores_1 = pes_8_pe_io_sample_out_bits_scores_1; // @[TreePE.scala 113:22]
  assign pes_9_pe_io_sample_in_bits_scores_2 = pes_8_pe_io_sample_out_bits_scores_2; // @[TreePE.scala 113:22]
  assign pes_9_pe_io_sample_in_bits_scores_3 = pes_8_pe_io_sample_out_bits_scores_3; // @[TreePE.scala 113:22]
  assign pes_9_pe_io_sample_in_bits_scores_4 = pes_8_pe_io_sample_out_bits_scores_4; // @[TreePE.scala 113:22]
  assign pes_9_pe_io_sample_in_bits_scores_5 = pes_8_pe_io_sample_out_bits_scores_5; // @[TreePE.scala 113:22]
  assign pes_9_pe_io_sample_in_bits_weights_0 = pes_8_pe_io_sample_out_bits_weights_0; // @[TreePE.scala 113:22]
  assign pes_9_pe_io_sample_in_bits_weights_1 = pes_8_pe_io_sample_out_bits_weights_1; // @[TreePE.scala 113:22]
  assign pes_9_pe_io_sample_in_bits_weights_2 = pes_8_pe_io_sample_out_bits_weights_2; // @[TreePE.scala 113:22]
  assign pes_9_pe_io_sample_in_bits_weights_3 = pes_8_pe_io_sample_out_bits_weights_3; // @[TreePE.scala 113:22]
  assign pes_9_pe_io_sample_in_bits_weights_4 = pes_8_pe_io_sample_out_bits_weights_4; // @[TreePE.scala 113:22]
  assign pes_9_pe_io_sample_in_bits_last = pes_8_pe_io_sample_out_bits_last; // @[TreePE.scala 113:22]
  assign pes_9_pe_io_mem_dataOut_1 = brams_9_io_b_dout; // @[TreePEsWrapper.scala 79:44]
  assign pes_9_pe_io_sample_out_ready = last_interconnect_io_sample_in_ready; // @[TreePE.scala 109:22]
  assign brams_0_io_clk = brams_io_0_bram_clk_a; // @[TreePEsWrapper.scala 86:33]
  assign brams_0_io_a_en = brams_io_0_bram_en_a; // @[TreePEsWrapper.scala 81:34]
  assign brams_0_io_a_wr = brams_io_0_bram_we_a[0]; // @[TreePEsWrapper.scala 82:64]
  assign brams_0_io_a_addr = brams_io_0_bram_addr_a; // @[TreePEsWrapper.scala 83:36]
  assign brams_0_io_a_din = brams_io_0_bram_wrdata_a; // @[TreePEsWrapper.scala 84:35]
  assign brams_0_io_b_addr = pes_0_pe_io_mem_addr_1[10:0]; // @[TreePEsWrapper.scala 77:36]
  assign brams_1_io_clk = brams_io_1_bram_clk_a; // @[TreePEsWrapper.scala 86:33]
  assign brams_1_io_a_en = brams_io_1_bram_en_a; // @[TreePEsWrapper.scala 81:34]
  assign brams_1_io_a_wr = brams_io_1_bram_we_a[0]; // @[TreePEsWrapper.scala 82:64]
  assign brams_1_io_a_addr = brams_io_1_bram_addr_a; // @[TreePEsWrapper.scala 83:36]
  assign brams_1_io_a_din = brams_io_1_bram_wrdata_a; // @[TreePEsWrapper.scala 84:35]
  assign brams_1_io_b_addr = pes_1_pe_io_mem_addr_1[10:0]; // @[TreePEsWrapper.scala 77:36]
  assign brams_2_io_clk = brams_io_2_bram_clk_a; // @[TreePEsWrapper.scala 86:33]
  assign brams_2_io_a_en = brams_io_2_bram_en_a; // @[TreePEsWrapper.scala 81:34]
  assign brams_2_io_a_wr = brams_io_2_bram_we_a[0]; // @[TreePEsWrapper.scala 82:64]
  assign brams_2_io_a_addr = brams_io_2_bram_addr_a; // @[TreePEsWrapper.scala 83:36]
  assign brams_2_io_a_din = brams_io_2_bram_wrdata_a; // @[TreePEsWrapper.scala 84:35]
  assign brams_2_io_b_addr = pes_2_pe_io_mem_addr_1[10:0]; // @[TreePEsWrapper.scala 77:36]
  assign brams_3_io_clk = brams_io_3_bram_clk_a; // @[TreePEsWrapper.scala 86:33]
  assign brams_3_io_a_en = brams_io_3_bram_en_a; // @[TreePEsWrapper.scala 81:34]
  assign brams_3_io_a_wr = brams_io_3_bram_we_a[0]; // @[TreePEsWrapper.scala 82:64]
  assign brams_3_io_a_addr = brams_io_3_bram_addr_a; // @[TreePEsWrapper.scala 83:36]
  assign brams_3_io_a_din = brams_io_3_bram_wrdata_a; // @[TreePEsWrapper.scala 84:35]
  assign brams_3_io_b_addr = pes_3_pe_io_mem_addr_1[10:0]; // @[TreePEsWrapper.scala 77:36]
  assign brams_4_io_clk = brams_io_4_bram_clk_a; // @[TreePEsWrapper.scala 86:33]
  assign brams_4_io_a_en = brams_io_4_bram_en_a; // @[TreePEsWrapper.scala 81:34]
  assign brams_4_io_a_wr = brams_io_4_bram_we_a[0]; // @[TreePEsWrapper.scala 82:64]
  assign brams_4_io_a_addr = brams_io_4_bram_addr_a; // @[TreePEsWrapper.scala 83:36]
  assign brams_4_io_a_din = brams_io_4_bram_wrdata_a; // @[TreePEsWrapper.scala 84:35]
  assign brams_4_io_b_addr = pes_4_pe_io_mem_addr_1[10:0]; // @[TreePEsWrapper.scala 77:36]
  assign brams_5_io_clk = brams_io_5_bram_clk_a; // @[TreePEsWrapper.scala 86:33]
  assign brams_5_io_a_en = brams_io_5_bram_en_a; // @[TreePEsWrapper.scala 81:34]
  assign brams_5_io_a_wr = brams_io_5_bram_we_a[0]; // @[TreePEsWrapper.scala 82:64]
  assign brams_5_io_a_addr = brams_io_5_bram_addr_a; // @[TreePEsWrapper.scala 83:36]
  assign brams_5_io_a_din = brams_io_5_bram_wrdata_a; // @[TreePEsWrapper.scala 84:35]
  assign brams_5_io_b_addr = pes_5_pe_io_mem_addr_1[10:0]; // @[TreePEsWrapper.scala 77:36]
  assign brams_6_io_clk = brams_io_6_bram_clk_a; // @[TreePEsWrapper.scala 86:33]
  assign brams_6_io_a_en = brams_io_6_bram_en_a; // @[TreePEsWrapper.scala 81:34]
  assign brams_6_io_a_wr = brams_io_6_bram_we_a[0]; // @[TreePEsWrapper.scala 82:64]
  assign brams_6_io_a_addr = brams_io_6_bram_addr_a; // @[TreePEsWrapper.scala 83:36]
  assign brams_6_io_a_din = brams_io_6_bram_wrdata_a; // @[TreePEsWrapper.scala 84:35]
  assign brams_6_io_b_addr = pes_6_pe_io_mem_addr_1[10:0]; // @[TreePEsWrapper.scala 77:36]
  assign brams_7_io_clk = brams_io_7_bram_clk_a; // @[TreePEsWrapper.scala 86:33]
  assign brams_7_io_a_en = brams_io_7_bram_en_a; // @[TreePEsWrapper.scala 81:34]
  assign brams_7_io_a_wr = brams_io_7_bram_we_a[0]; // @[TreePEsWrapper.scala 82:64]
  assign brams_7_io_a_addr = brams_io_7_bram_addr_a; // @[TreePEsWrapper.scala 83:36]
  assign brams_7_io_a_din = brams_io_7_bram_wrdata_a; // @[TreePEsWrapper.scala 84:35]
  assign brams_7_io_b_addr = pes_7_pe_io_mem_addr_1[10:0]; // @[TreePEsWrapper.scala 77:36]
  assign brams_8_io_clk = brams_io_8_bram_clk_a; // @[TreePEsWrapper.scala 86:33]
  assign brams_8_io_a_en = brams_io_8_bram_en_a; // @[TreePEsWrapper.scala 81:34]
  assign brams_8_io_a_wr = brams_io_8_bram_we_a[0]; // @[TreePEsWrapper.scala 82:64]
  assign brams_8_io_a_addr = brams_io_8_bram_addr_a; // @[TreePEsWrapper.scala 83:36]
  assign brams_8_io_a_din = brams_io_8_bram_wrdata_a; // @[TreePEsWrapper.scala 84:35]
  assign brams_8_io_b_addr = pes_8_pe_io_mem_addr_1[10:0]; // @[TreePEsWrapper.scala 77:36]
  assign brams_9_io_clk = brams_io_9_bram_clk_a; // @[TreePEsWrapper.scala 86:33]
  assign brams_9_io_a_en = brams_io_9_bram_en_a; // @[TreePEsWrapper.scala 81:34]
  assign brams_9_io_a_wr = brams_io_9_bram_we_a[0]; // @[TreePEsWrapper.scala 82:64]
  assign brams_9_io_a_addr = brams_io_9_bram_addr_a; // @[TreePEsWrapper.scala 83:36]
  assign brams_9_io_a_din = brams_io_9_bram_wrdata_a; // @[TreePEsWrapper.scala 84:35]
  assign brams_9_io_b_addr = pes_9_pe_io_mem_addr_1[10:0]; // @[TreePEsWrapper.scala 77:36]
  assign first_interconnect_clock = clock;
  assign first_interconnect_reset = reset;
  assign first_interconnect_io_sample_entering_valid = dispatcher_io_samples_out_0_valid; // @[DispatcherPE.scala 25:27]
  assign first_interconnect_io_sample_entering_bits_features_0 = dispatcher_io_samples_out_0_bits_features_0; // @[DispatcherPE.scala 25:27]
  assign first_interconnect_io_sample_entering_bits_features_1 = dispatcher_io_samples_out_0_bits_features_1; // @[DispatcherPE.scala 25:27]
  assign first_interconnect_io_sample_entering_bits_features_2 = dispatcher_io_samples_out_0_bits_features_2; // @[DispatcherPE.scala 25:27]
  assign first_interconnect_io_sample_entering_bits_features_3 = dispatcher_io_samples_out_0_bits_features_3; // @[DispatcherPE.scala 25:27]
  assign first_interconnect_io_sample_entering_bits_features_4 = dispatcher_io_samples_out_0_bits_features_4; // @[DispatcherPE.scala 25:27]
  assign first_interconnect_io_sample_entering_bits_offset = dispatcher_io_samples_out_0_bits_offset; // @[DispatcherPE.scala 25:27]
  assign first_interconnect_io_sample_entering_bits_shift = dispatcher_io_samples_out_0_bits_shift; // @[DispatcherPE.scala 25:27]
  assign first_interconnect_io_sample_entering_bits_search_for_root = dispatcher_io_samples_out_0_bits_search_for_root; // @[DispatcherPE.scala 25:27]
  assign first_interconnect_io_sample_entering_bits_tree_to_exec = dispatcher_io_samples_out_0_bits_tree_to_exec; // @[DispatcherPE.scala 25:27]
  assign first_interconnect_io_sample_entering_bits_scores_0 = dispatcher_io_samples_out_0_bits_scores_0; // @[DispatcherPE.scala 25:27]
  assign first_interconnect_io_sample_entering_bits_scores_1 = dispatcher_io_samples_out_0_bits_scores_1; // @[DispatcherPE.scala 25:27]
  assign first_interconnect_io_sample_entering_bits_scores_2 = dispatcher_io_samples_out_0_bits_scores_2; // @[DispatcherPE.scala 25:27]
  assign first_interconnect_io_sample_entering_bits_scores_3 = dispatcher_io_samples_out_0_bits_scores_3; // @[DispatcherPE.scala 25:27]
  assign first_interconnect_io_sample_entering_bits_scores_4 = dispatcher_io_samples_out_0_bits_scores_4; // @[DispatcherPE.scala 25:27]
  assign first_interconnect_io_sample_entering_bits_scores_5 = dispatcher_io_samples_out_0_bits_scores_5; // @[DispatcherPE.scala 25:27]
  assign first_interconnect_io_sample_entering_bits_weights_0 = dispatcher_io_samples_out_0_bits_weights_0; // @[DispatcherPE.scala 25:27]
  assign first_interconnect_io_sample_entering_bits_weights_1 = dispatcher_io_samples_out_0_bits_weights_1; // @[DispatcherPE.scala 25:27]
  assign first_interconnect_io_sample_entering_bits_weights_2 = dispatcher_io_samples_out_0_bits_weights_2; // @[DispatcherPE.scala 25:27]
  assign first_interconnect_io_sample_entering_bits_weights_3 = dispatcher_io_samples_out_0_bits_weights_3; // @[DispatcherPE.scala 25:27]
  assign first_interconnect_io_sample_entering_bits_weights_4 = dispatcher_io_samples_out_0_bits_weights_4; // @[DispatcherPE.scala 25:27]
  assign first_interconnect_io_sample_entering_bits_last = dispatcher_io_samples_out_0_bits_last; // @[DispatcherPE.scala 25:27]
  assign first_interconnect_io_sample_looping_valid = increment_io_sample_out_valid; // @[IncrementTreePE.scala 33:23]
  assign first_interconnect_io_sample_looping_bits_features_0 = increment_io_sample_out_bits_features_0; // @[IncrementTreePE.scala 33:23]
  assign first_interconnect_io_sample_looping_bits_features_1 = increment_io_sample_out_bits_features_1; // @[IncrementTreePE.scala 33:23]
  assign first_interconnect_io_sample_looping_bits_features_2 = increment_io_sample_out_bits_features_2; // @[IncrementTreePE.scala 33:23]
  assign first_interconnect_io_sample_looping_bits_features_3 = increment_io_sample_out_bits_features_3; // @[IncrementTreePE.scala 33:23]
  assign first_interconnect_io_sample_looping_bits_features_4 = increment_io_sample_out_bits_features_4; // @[IncrementTreePE.scala 33:23]
  assign first_interconnect_io_sample_looping_bits_offset = increment_io_sample_out_bits_offset; // @[IncrementTreePE.scala 33:23]
  assign first_interconnect_io_sample_looping_bits_shift = increment_io_sample_out_bits_shift; // @[IncrementTreePE.scala 33:23]
  assign first_interconnect_io_sample_looping_bits_search_for_root = increment_io_sample_out_bits_search_for_root; // @[IncrementTreePE.scala 33:23]
  assign first_interconnect_io_sample_looping_bits_tree_to_exec = increment_io_sample_out_bits_tree_to_exec; // @[IncrementTreePE.scala 33:23]
  assign first_interconnect_io_sample_looping_bits_scores_0 = increment_io_sample_out_bits_scores_0; // @[IncrementTreePE.scala 33:23]
  assign first_interconnect_io_sample_looping_bits_scores_1 = increment_io_sample_out_bits_scores_1; // @[IncrementTreePE.scala 33:23]
  assign first_interconnect_io_sample_looping_bits_scores_2 = increment_io_sample_out_bits_scores_2; // @[IncrementTreePE.scala 33:23]
  assign first_interconnect_io_sample_looping_bits_scores_3 = increment_io_sample_out_bits_scores_3; // @[IncrementTreePE.scala 33:23]
  assign first_interconnect_io_sample_looping_bits_scores_4 = increment_io_sample_out_bits_scores_4; // @[IncrementTreePE.scala 33:23]
  assign first_interconnect_io_sample_looping_bits_scores_5 = increment_io_sample_out_bits_scores_5; // @[IncrementTreePE.scala 33:23]
  assign first_interconnect_io_sample_looping_bits_weights_0 = increment_io_sample_out_bits_weights_0; // @[IncrementTreePE.scala 33:23]
  assign first_interconnect_io_sample_looping_bits_weights_1 = increment_io_sample_out_bits_weights_1; // @[IncrementTreePE.scala 33:23]
  assign first_interconnect_io_sample_looping_bits_weights_2 = increment_io_sample_out_bits_weights_2; // @[IncrementTreePE.scala 33:23]
  assign first_interconnect_io_sample_looping_bits_weights_3 = increment_io_sample_out_bits_weights_3; // @[IncrementTreePE.scala 33:23]
  assign first_interconnect_io_sample_looping_bits_weights_4 = increment_io_sample_out_bits_weights_4; // @[IncrementTreePE.scala 33:23]
  assign first_interconnect_io_sample_looping_bits_last = increment_io_sample_out_bits_last; // @[IncrementTreePE.scala 33:23]
  assign first_interconnect_io_sample_out_ready = pes_0_pe_io_sample_in_ready; // @[Interconnect.scala 60:24]
  assign last_interconnect_clock = clock;
  assign last_interconnect_reset = reset;
  assign last_interconnect_io_sample_in_valid = pes_9_pe_io_sample_out_valid; // @[TreePE.scala 109:22]
  assign last_interconnect_io_sample_in_bits_features_0 = pes_9_pe_io_sample_out_bits_features_0; // @[TreePE.scala 109:22]
  assign last_interconnect_io_sample_in_bits_features_1 = pes_9_pe_io_sample_out_bits_features_1; // @[TreePE.scala 109:22]
  assign last_interconnect_io_sample_in_bits_features_2 = pes_9_pe_io_sample_out_bits_features_2; // @[TreePE.scala 109:22]
  assign last_interconnect_io_sample_in_bits_features_3 = pes_9_pe_io_sample_out_bits_features_3; // @[TreePE.scala 109:22]
  assign last_interconnect_io_sample_in_bits_features_4 = pes_9_pe_io_sample_out_bits_features_4; // @[TreePE.scala 109:22]
  assign last_interconnect_io_sample_in_bits_offset = pes_9_pe_io_sample_out_bits_offset; // @[TreePE.scala 109:22]
  assign last_interconnect_io_sample_in_bits_search_for_root = pes_9_pe_io_sample_out_bits_search_for_root; // @[TreePE.scala 109:22]
  assign last_interconnect_io_sample_in_bits_tree_to_exec = pes_9_pe_io_sample_out_bits_tree_to_exec; // @[TreePE.scala 109:22]
  assign last_interconnect_io_sample_in_bits_scores_0 = pes_9_pe_io_sample_out_bits_scores_0; // @[TreePE.scala 109:22]
  assign last_interconnect_io_sample_in_bits_scores_1 = pes_9_pe_io_sample_out_bits_scores_1; // @[TreePE.scala 109:22]
  assign last_interconnect_io_sample_in_bits_scores_2 = pes_9_pe_io_sample_out_bits_scores_2; // @[TreePE.scala 109:22]
  assign last_interconnect_io_sample_in_bits_scores_3 = pes_9_pe_io_sample_out_bits_scores_3; // @[TreePE.scala 109:22]
  assign last_interconnect_io_sample_in_bits_scores_4 = pes_9_pe_io_sample_out_bits_scores_4; // @[TreePE.scala 109:22]
  assign last_interconnect_io_sample_in_bits_scores_5 = pes_9_pe_io_sample_out_bits_scores_5; // @[TreePE.scala 109:22]
  assign last_interconnect_io_sample_in_bits_weights_0 = pes_9_pe_io_sample_out_bits_weights_0; // @[TreePE.scala 109:22]
  assign last_interconnect_io_sample_in_bits_weights_1 = pes_9_pe_io_sample_out_bits_weights_1; // @[TreePE.scala 109:22]
  assign last_interconnect_io_sample_in_bits_weights_2 = pes_9_pe_io_sample_out_bits_weights_2; // @[TreePE.scala 109:22]
  assign last_interconnect_io_sample_in_bits_weights_3 = pes_9_pe_io_sample_out_bits_weights_3; // @[TreePE.scala 109:22]
  assign last_interconnect_io_sample_in_bits_weights_4 = pes_9_pe_io_sample_out_bits_weights_4; // @[TreePE.scala 109:22]
  assign last_interconnect_io_sample_in_bits_dest = pes_9_pe_io_sample_out_bits_dest; // @[TreePE.scala 109:22]
  assign last_interconnect_io_sample_in_bits_last = pes_9_pe_io_sample_out_bits_last; // @[TreePE.scala 109:22]
  assign last_interconnect_io_sample_looping_ready = increment_io_sample_in_ready; // @[Interconnect.scala 35:27]
  assign last_interconnect_io_sample_leaving_ready = voter_io_samples_in_0_ready; // @[Interconnect.scala 39:27]
  assign increment_clock = clock;
  assign increment_reset = reset;
  assign increment_io_sample_in_valid = last_interconnect_io_sample_looping_valid; // @[Interconnect.scala 35:27]
  assign increment_io_sample_in_bits_features_0 = last_interconnect_io_sample_looping_bits_features_0; // @[Interconnect.scala 35:27]
  assign increment_io_sample_in_bits_features_1 = last_interconnect_io_sample_looping_bits_features_1; // @[Interconnect.scala 35:27]
  assign increment_io_sample_in_bits_features_2 = last_interconnect_io_sample_looping_bits_features_2; // @[Interconnect.scala 35:27]
  assign increment_io_sample_in_bits_features_3 = last_interconnect_io_sample_looping_bits_features_3; // @[Interconnect.scala 35:27]
  assign increment_io_sample_in_bits_features_4 = last_interconnect_io_sample_looping_bits_features_4; // @[Interconnect.scala 35:27]
  assign increment_io_sample_in_bits_offset = last_interconnect_io_sample_looping_bits_offset; // @[Interconnect.scala 35:27]
  assign increment_io_sample_in_bits_shift = last_interconnect_io_sample_looping_bits_shift; // @[Interconnect.scala 35:27]
  assign increment_io_sample_in_bits_search_for_root = last_interconnect_io_sample_looping_bits_search_for_root; // @[Interconnect.scala 35:27]
  assign increment_io_sample_in_bits_tree_to_exec = last_interconnect_io_sample_looping_bits_tree_to_exec; // @[Interconnect.scala 35:27]
  assign increment_io_sample_in_bits_scores_0 = last_interconnect_io_sample_looping_bits_scores_0; // @[Interconnect.scala 35:27]
  assign increment_io_sample_in_bits_scores_1 = last_interconnect_io_sample_looping_bits_scores_1; // @[Interconnect.scala 35:27]
  assign increment_io_sample_in_bits_scores_2 = last_interconnect_io_sample_looping_bits_scores_2; // @[Interconnect.scala 35:27]
  assign increment_io_sample_in_bits_scores_3 = last_interconnect_io_sample_looping_bits_scores_3; // @[Interconnect.scala 35:27]
  assign increment_io_sample_in_bits_scores_4 = last_interconnect_io_sample_looping_bits_scores_4; // @[Interconnect.scala 35:27]
  assign increment_io_sample_in_bits_scores_5 = last_interconnect_io_sample_looping_bits_scores_5; // @[Interconnect.scala 35:27]
  assign increment_io_sample_in_bits_weights_0 = last_interconnect_io_sample_looping_bits_weights_0; // @[Interconnect.scala 35:27]
  assign increment_io_sample_in_bits_weights_1 = last_interconnect_io_sample_looping_bits_weights_1; // @[Interconnect.scala 35:27]
  assign increment_io_sample_in_bits_weights_2 = last_interconnect_io_sample_looping_bits_weights_2; // @[Interconnect.scala 35:27]
  assign increment_io_sample_in_bits_weights_3 = last_interconnect_io_sample_looping_bits_weights_3; // @[Interconnect.scala 35:27]
  assign increment_io_sample_in_bits_weights_4 = last_interconnect_io_sample_looping_bits_weights_4; // @[Interconnect.scala 35:27]
  assign increment_io_sample_in_bits_last = last_interconnect_io_sample_looping_bits_last; // @[Interconnect.scala 35:27]
  assign increment_io_sample_out_ready = first_interconnect_io_sample_looping_ready; // @[IncrementTreePE.scala 33:23]
  always @(posedge clock) begin
    if (reset) begin // @[TreePEsWrapper.scala 43:37]
      cycles_counter <= 32'h0; // @[TreePEsWrapper.scala 43:37]
    end else if (counting) begin // @[TreePEsWrapper.scala 110:30]
      cycles_counter <= _cycles_counter_T_1;
    end
    if (reset) begin // @[TreePEsWrapper.scala 44:31]
      counting <= 1'h0; // @[TreePEsWrapper.scala 44:31]
    end else begin
      counting <= _GEN_2;
    end
    if (reset) begin // @[TreePEsWrapper.scala 45:33]
      stop_count <= 1'h0; // @[TreePEsWrapper.scala 45:33]
    end else if (!(wrapper_io_sample_in_TVALID & ~counting & ~stop_count)) begin // @[TreePEsWrapper.scala 57:68]
      stop_count <= _GEN_1;
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
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  cycles_counter = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  counting = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  stop_count = _RAND_2[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
