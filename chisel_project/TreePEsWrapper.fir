circuit TreePEsWrapper :
  module ForwardConverter :
    input clock : Clock
    input reset : Reset
    output io : { sample_in : { flip TDATA : UInt<384>, flip TLAST : UInt<1>, TREADY : UInt<1>, flip TVALID : UInt<1>}, sample_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}}

    node _io_sample_out_bits_features_0_T = bits(io.sample_in.TDATA, 31, 0) @[Converter.scala 15:61]
    node _io_sample_out_bits_features_0_T_1 = asFixedPoint(_io_sample_out_bits_features_0_T, 16) @[Converter.scala 15:91]
    io.sample_out.bits.features[0] <= _io_sample_out_bits_features_0_T_1 @[Converter.scala 15:40]
    node _io_sample_out_bits_features_1_T = bits(io.sample_in.TDATA, 63, 32) @[Converter.scala 15:61]
    node _io_sample_out_bits_features_1_T_1 = asFixedPoint(_io_sample_out_bits_features_1_T, 16) @[Converter.scala 15:91]
    io.sample_out.bits.features[1] <= _io_sample_out_bits_features_1_T_1 @[Converter.scala 15:40]
    node _io_sample_out_bits_features_2_T = bits(io.sample_in.TDATA, 95, 64) @[Converter.scala 15:61]
    node _io_sample_out_bits_features_2_T_1 = asFixedPoint(_io_sample_out_bits_features_2_T, 16) @[Converter.scala 15:91]
    io.sample_out.bits.features[2] <= _io_sample_out_bits_features_2_T_1 @[Converter.scala 15:40]
    node _io_sample_out_bits_features_3_T = bits(io.sample_in.TDATA, 127, 96) @[Converter.scala 15:61]
    node _io_sample_out_bits_features_3_T_1 = asFixedPoint(_io_sample_out_bits_features_3_T, 16) @[Converter.scala 15:91]
    io.sample_out.bits.features[3] <= _io_sample_out_bits_features_3_T_1 @[Converter.scala 15:40]
    node _io_sample_out_bits_features_4_T = bits(io.sample_in.TDATA, 159, 128) @[Converter.scala 15:61]
    node _io_sample_out_bits_features_4_T_1 = asFixedPoint(_io_sample_out_bits_features_4_T, 16) @[Converter.scala 15:91]
    io.sample_out.bits.features[4] <= _io_sample_out_bits_features_4_T_1 @[Converter.scala 15:40]
    node _io_sample_out_bits_offset_T = bits(io.sample_in.TDATA, 175, 160) @[Converter.scala 17:52]
    io.sample_out.bits.offset <= _io_sample_out_bits_offset_T @[Converter.scala 17:31]
    node _io_sample_out_bits_shift_T = bits(io.sample_in.TDATA, 183, 176) @[Converter.scala 18:51]
    io.sample_out.bits.shift <= _io_sample_out_bits_shift_T @[Converter.scala 18:30]
    node _io_sample_out_bits_search_for_root_T = bits(io.sample_in.TDATA, 191, 184) @[Converter.scala 19:61]
    io.sample_out.bits.search_for_root <= _io_sample_out_bits_search_for_root_T @[Converter.scala 19:40]
    node _io_sample_out_bits_tree_to_exec_T = bits(io.sample_in.TDATA, 199, 192) @[Converter.scala 20:58]
    io.sample_out.bits.tree_to_exec <= _io_sample_out_bits_tree_to_exec_T @[Converter.scala 20:37]
    node _io_sample_out_bits_scores_0_T = bits(io.sample_in.TDATA, 223, 208) @[Converter.scala 22:59]
    node _io_sample_out_bits_scores_0_T_1 = asFixedPoint(_io_sample_out_bits_scores_0_T, 8) @[Converter.scala 22:115]
    io.sample_out.bits.scores[0] <= _io_sample_out_bits_scores_0_T_1 @[Converter.scala 22:38]
    node _io_sample_out_bits_scores_1_T = bits(io.sample_in.TDATA, 239, 224) @[Converter.scala 22:59]
    node _io_sample_out_bits_scores_1_T_1 = asFixedPoint(_io_sample_out_bits_scores_1_T, 8) @[Converter.scala 22:115]
    io.sample_out.bits.scores[1] <= _io_sample_out_bits_scores_1_T_1 @[Converter.scala 22:38]
    node _io_sample_out_bits_scores_2_T = bits(io.sample_in.TDATA, 255, 240) @[Converter.scala 22:59]
    node _io_sample_out_bits_scores_2_T_1 = asFixedPoint(_io_sample_out_bits_scores_2_T, 8) @[Converter.scala 22:115]
    io.sample_out.bits.scores[2] <= _io_sample_out_bits_scores_2_T_1 @[Converter.scala 22:38]
    node _io_sample_out_bits_scores_3_T = bits(io.sample_in.TDATA, 271, 256) @[Converter.scala 22:59]
    node _io_sample_out_bits_scores_3_T_1 = asFixedPoint(_io_sample_out_bits_scores_3_T, 8) @[Converter.scala 22:115]
    io.sample_out.bits.scores[3] <= _io_sample_out_bits_scores_3_T_1 @[Converter.scala 22:38]
    node _io_sample_out_bits_scores_4_T = bits(io.sample_in.TDATA, 287, 272) @[Converter.scala 22:59]
    node _io_sample_out_bits_scores_4_T_1 = asFixedPoint(_io_sample_out_bits_scores_4_T, 8) @[Converter.scala 22:115]
    io.sample_out.bits.scores[4] <= _io_sample_out_bits_scores_4_T_1 @[Converter.scala 22:38]
    node _io_sample_out_bits_scores_5_T = bits(io.sample_in.TDATA, 303, 288) @[Converter.scala 22:59]
    node _io_sample_out_bits_scores_5_T_1 = asFixedPoint(_io_sample_out_bits_scores_5_T, 8) @[Converter.scala 22:115]
    io.sample_out.bits.scores[5] <= _io_sample_out_bits_scores_5_T_1 @[Converter.scala 22:38]
    node _io_sample_out_bits_weights_0_T = bits(io.sample_in.TDATA, 319, 304) @[Converter.scala 25:60]
    node _io_sample_out_bits_weights_0_T_1 = asFixedPoint(_io_sample_out_bits_weights_0_T, 8) @[Converter.scala 25:142]
    io.sample_out.bits.weights[0] <= _io_sample_out_bits_weights_0_T_1 @[Converter.scala 25:39]
    node _io_sample_out_bits_weights_1_T = bits(io.sample_in.TDATA, 335, 320) @[Converter.scala 25:60]
    node _io_sample_out_bits_weights_1_T_1 = asFixedPoint(_io_sample_out_bits_weights_1_T, 8) @[Converter.scala 25:142]
    io.sample_out.bits.weights[1] <= _io_sample_out_bits_weights_1_T_1 @[Converter.scala 25:39]
    node _io_sample_out_bits_weights_2_T = bits(io.sample_in.TDATA, 351, 336) @[Converter.scala 25:60]
    node _io_sample_out_bits_weights_2_T_1 = asFixedPoint(_io_sample_out_bits_weights_2_T, 8) @[Converter.scala 25:142]
    io.sample_out.bits.weights[2] <= _io_sample_out_bits_weights_2_T_1 @[Converter.scala 25:39]
    node _io_sample_out_bits_weights_3_T = bits(io.sample_in.TDATA, 367, 352) @[Converter.scala 25:60]
    node _io_sample_out_bits_weights_3_T_1 = asFixedPoint(_io_sample_out_bits_weights_3_T, 8) @[Converter.scala 25:142]
    io.sample_out.bits.weights[3] <= _io_sample_out_bits_weights_3_T_1 @[Converter.scala 25:39]
    node _io_sample_out_bits_weights_4_T = bits(io.sample_in.TDATA, 383, 368) @[Converter.scala 25:60]
    node _io_sample_out_bits_weights_4_T_1 = asFixedPoint(_io_sample_out_bits_weights_4_T, 8) @[Converter.scala 25:142]
    io.sample_out.bits.weights[4] <= _io_sample_out_bits_weights_4_T_1 @[Converter.scala 25:39]
    io.sample_out.valid <= io.sample_in.TVALID @[Converter.scala 27:25]
    io.sample_out.bits.dest <= UInt<1>("h0") @[Converter.scala 28:29]
    io.sample_out.bits.last <= io.sample_in.TLAST @[Converter.scala 29:29]
    io.sample_out.bits.clock_cycles <= UInt<1>("h0") @[Converter.scala 30:37]
    io.sample_in.TREADY <= io.sample_out.ready @[Converter.scala 31:25]

  module Queue :
    input clock : Clock
    input reset : Reset
    output io : { flip enq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, deq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, count : UInt<8>}

    cmem ram : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>} [128] @[Decoupled.scala 275:95]
    reg enq_ptr_value : UInt<7>, clock with :
      reset => (reset, UInt<7>("h0")) @[Counter.scala 61:40]
    reg deq_ptr_value : UInt<7>, clock with :
      reset => (reset, UInt<7>("h0")) @[Counter.scala 61:40]
    reg maybe_full : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[Decoupled.scala 278:27]
    node ptr_match = eq(enq_ptr_value, deq_ptr_value) @[Decoupled.scala 279:33]
    node _empty_T = eq(maybe_full, UInt<1>("h0")) @[Decoupled.scala 280:28]
    node empty = and(ptr_match, _empty_T) @[Decoupled.scala 280:25]
    node full = and(ptr_match, maybe_full) @[Decoupled.scala 281:24]
    node _do_enq_T = and(io.enq.ready, io.enq.valid) @[Decoupled.scala 52:35]
    wire do_enq : UInt<1>
    do_enq <= _do_enq_T
    node _do_deq_T = and(io.deq.ready, io.deq.valid) @[Decoupled.scala 52:35]
    wire do_deq : UInt<1>
    do_deq <= _do_deq_T
    when do_enq : @[Decoupled.scala 288:16]
      infer mport MPORT = ram[enq_ptr_value], clock @[Decoupled.scala 289:8]
      MPORT <= io.enq.bits @[Decoupled.scala 289:24]
      node wrap = eq(enq_ptr_value, UInt<7>("h7f")) @[Counter.scala 73:24]
      node _value_T = add(enq_ptr_value, UInt<1>("h1")) @[Counter.scala 77:24]
      node _value_T_1 = tail(_value_T, 1) @[Counter.scala 77:24]
      enq_ptr_value <= _value_T_1 @[Counter.scala 77:15]
    when do_deq : @[Decoupled.scala 292:16]
      node wrap_1 = eq(deq_ptr_value, UInt<7>("h7f")) @[Counter.scala 73:24]
      node _value_T_2 = add(deq_ptr_value, UInt<1>("h1")) @[Counter.scala 77:24]
      node _value_T_3 = tail(_value_T_2, 1) @[Counter.scala 77:24]
      deq_ptr_value <= _value_T_3 @[Counter.scala 77:15]
    node _T = neq(do_enq, do_deq) @[Decoupled.scala 295:15]
    when _T : @[Decoupled.scala 295:27]
      maybe_full <= do_enq @[Decoupled.scala 296:16]
    when UInt<1>("h0") : @[Decoupled.scala 298:15]
      enq_ptr_value <= UInt<1>("h0") @[Counter.scala 98:11]
      deq_ptr_value <= UInt<1>("h0") @[Counter.scala 98:11]
      maybe_full <= UInt<1>("h0") @[Decoupled.scala 301:16]
    node _io_deq_valid_T = eq(empty, UInt<1>("h0")) @[Decoupled.scala 304:19]
    io.deq.valid <= _io_deq_valid_T @[Decoupled.scala 304:16]
    node _io_enq_ready_T = eq(full, UInt<1>("h0")) @[Decoupled.scala 305:19]
    io.enq.ready <= _io_enq_ready_T @[Decoupled.scala 305:16]
    infer mport io_deq_bits_MPORT = ram[deq_ptr_value], clock @[Decoupled.scala 312:23]
    io.deq.bits <= io_deq_bits_MPORT @[Decoupled.scala 312:17]
    node _ptr_diff_T = sub(enq_ptr_value, deq_ptr_value) @[Decoupled.scala 328:32]
    node ptr_diff = tail(_ptr_diff_T, 1) @[Decoupled.scala 328:32]
    node _io_count_T = and(maybe_full, ptr_match) @[Decoupled.scala 331:32]
    node _io_count_T_1 = mux(_io_count_T, UInt<8>("h80"), UInt<1>("h0")) @[Decoupled.scala 331:20]
    node _io_count_T_2 = or(_io_count_T_1, ptr_diff) @[Decoupled.scala 331:62]
    io.count <= _io_count_T_2 @[Decoupled.scala 331:14]

  module BackwardConverter :
    input clock : Clock
    input reset : Reset
    output io : { flip sample_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, flip sample_out : { flip TDATA : UInt<384>, flip TLAST : UInt<1>, TREADY : UInt<1>, flip TVALID : UInt<1>}}

    inst queue of Queue @[Decoupled.scala 377:21]
    queue.clock <= clock
    queue.reset <= reset
    queue.io.enq.valid <= io.sample_in.valid @[Decoupled.scala 379:22]
    queue.io.enq.bits.clock_cycles <= io.sample_in.bits.clock_cycles @[Decoupled.scala 380:21]
    queue.io.enq.bits.last <= io.sample_in.bits.last @[Decoupled.scala 380:21]
    queue.io.enq.bits.dest <= io.sample_in.bits.dest @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[0] <= io.sample_in.bits.weights[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[1] <= io.sample_in.bits.weights[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[2] <= io.sample_in.bits.weights[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[3] <= io.sample_in.bits.weights[3] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[4] <= io.sample_in.bits.weights[4] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[0] <= io.sample_in.bits.scores[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[1] <= io.sample_in.bits.scores[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[2] <= io.sample_in.bits.scores[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[3] <= io.sample_in.bits.scores[3] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[4] <= io.sample_in.bits.scores[4] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[5] <= io.sample_in.bits.scores[5] @[Decoupled.scala 380:21]
    queue.io.enq.bits.tree_to_exec <= io.sample_in.bits.tree_to_exec @[Decoupled.scala 380:21]
    queue.io.enq.bits.search_for_root <= io.sample_in.bits.search_for_root @[Decoupled.scala 380:21]
    queue.io.enq.bits.shift <= io.sample_in.bits.shift @[Decoupled.scala 380:21]
    queue.io.enq.bits.offset <= io.sample_in.bits.offset @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[0] <= io.sample_in.bits.features[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[1] <= io.sample_in.bits.features[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[2] <= io.sample_in.bits.features[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[3] <= io.sample_in.bits.features[3] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[4] <= io.sample_in.bits.features[4] @[Decoupled.scala 380:21]
    io.sample_in.ready <= queue.io.enq.ready @[Decoupled.scala 381:17]
    queue.io.deq.ready <= io.sample_out.TREADY @[Converter.scala 47:17]
    io.sample_out.TLAST <= queue.io.deq.bits.last @[Converter.scala 50:25]
    io.sample_out.TVALID <= queue.io.deq.valid @[Converter.scala 51:26]
    node io_sample_out_TDATA_lo_lo = asUInt(queue.io.deq.bits.scores[0]) @[Cat.scala 33:92]
    node io_sample_out_TDATA_lo_hi_lo = asUInt(queue.io.deq.bits.scores[1]) @[Cat.scala 33:92]
    node io_sample_out_TDATA_lo_hi_hi = asUInt(queue.io.deq.bits.scores[2]) @[Cat.scala 33:92]
    node io_sample_out_TDATA_lo_hi = cat(io_sample_out_TDATA_lo_hi_hi, io_sample_out_TDATA_lo_hi_lo) @[Cat.scala 33:92]
    node io_sample_out_TDATA_lo = cat(io_sample_out_TDATA_lo_hi, io_sample_out_TDATA_lo_lo) @[Cat.scala 33:92]
    node io_sample_out_TDATA_hi_lo = asUInt(queue.io.deq.bits.scores[3]) @[Cat.scala 33:92]
    node io_sample_out_TDATA_hi_hi_lo = asUInt(queue.io.deq.bits.scores[4]) @[Cat.scala 33:92]
    node io_sample_out_TDATA_hi_hi_hi = asUInt(queue.io.deq.bits.scores[5]) @[Cat.scala 33:92]
    node io_sample_out_TDATA_hi_hi = cat(io_sample_out_TDATA_hi_hi_hi, io_sample_out_TDATA_hi_hi_lo) @[Cat.scala 33:92]
    node io_sample_out_TDATA_hi = cat(io_sample_out_TDATA_hi_hi, io_sample_out_TDATA_hi_lo) @[Cat.scala 33:92]
    node _io_sample_out_TDATA_T = cat(io_sample_out_TDATA_hi, io_sample_out_TDATA_lo) @[Cat.scala 33:92]
    node _io_sample_out_TDATA_T_1 = mux(UInt<1>("h0"), UInt<8>("hff"), UInt<8>("h0")) @[Bitwise.scala 77:12]
    node _io_sample_out_TDATA_T_2 = cat(_io_sample_out_TDATA_T_1, queue.io.deq.bits.tree_to_exec) @[Cat.scala 33:92]
    node _io_sample_out_TDATA_T_3 = mux(UInt<1>("h0"), UInt<7>("h7f"), UInt<7>("h0")) @[Bitwise.scala 77:12]
    node _io_sample_out_TDATA_T_4 = cat(_io_sample_out_TDATA_T_3, queue.io.deq.bits.search_for_root) @[Cat.scala 33:92]
    node _io_sample_out_TDATA_T_5 = mux(UInt<1>("h0"), UInt<7>("h7f"), UInt<7>("h0")) @[Bitwise.scala 77:12]
    node _io_sample_out_TDATA_T_6 = cat(_io_sample_out_TDATA_T_5, queue.io.deq.bits.shift) @[Cat.scala 33:92]
    node _io_sample_out_TDATA_T_7 = mux(UInt<1>("h0"), UInt<6>("h3f"), UInt<6>("h0")) @[Bitwise.scala 77:12]
    node _io_sample_out_TDATA_T_8 = cat(_io_sample_out_TDATA_T_7, queue.io.deq.bits.offset) @[Cat.scala 33:92]
    node io_sample_out_TDATA_lo_lo_1 = asUInt(queue.io.deq.bits.features[0]) @[Cat.scala 33:92]
    node io_sample_out_TDATA_lo_hi_1 = asUInt(queue.io.deq.bits.features[1]) @[Cat.scala 33:92]
    node io_sample_out_TDATA_lo_1 = cat(io_sample_out_TDATA_lo_hi_1, io_sample_out_TDATA_lo_lo_1) @[Cat.scala 33:92]
    node io_sample_out_TDATA_hi_lo_1 = asUInt(queue.io.deq.bits.features[2]) @[Cat.scala 33:92]
    node io_sample_out_TDATA_hi_hi_lo_1 = asUInt(queue.io.deq.bits.features[3]) @[Cat.scala 33:92]
    node io_sample_out_TDATA_hi_hi_hi_1 = asUInt(queue.io.deq.bits.features[4]) @[Cat.scala 33:92]
    node io_sample_out_TDATA_hi_hi_1 = cat(io_sample_out_TDATA_hi_hi_hi_1, io_sample_out_TDATA_hi_hi_lo_1) @[Cat.scala 33:92]
    node io_sample_out_TDATA_hi_1 = cat(io_sample_out_TDATA_hi_hi_1, io_sample_out_TDATA_hi_lo_1) @[Cat.scala 33:92]
    node _io_sample_out_TDATA_T_9 = cat(io_sample_out_TDATA_hi_1, io_sample_out_TDATA_lo_1) @[Cat.scala 33:92]
    node io_sample_out_TDATA_lo_hi_2 = cat(_io_sample_out_TDATA_T_6, _io_sample_out_TDATA_T_8) @[Cat.scala 33:92]
    node io_sample_out_TDATA_lo_2 = cat(io_sample_out_TDATA_lo_hi_2, _io_sample_out_TDATA_T_9) @[Cat.scala 33:92]
    node io_sample_out_TDATA_hi_lo_2 = cat(_io_sample_out_TDATA_T_2, _io_sample_out_TDATA_T_4) @[Cat.scala 33:92]
    node io_sample_out_TDATA_hi_hi_2 = cat(queue.io.deq.bits.clock_cycles, _io_sample_out_TDATA_T) @[Cat.scala 33:92]
    node io_sample_out_TDATA_hi_2 = cat(io_sample_out_TDATA_hi_hi_2, io_sample_out_TDATA_hi_lo_2) @[Cat.scala 33:92]
    node _io_sample_out_TDATA_T_10 = cat(io_sample_out_TDATA_hi_2, io_sample_out_TDATA_lo_2) @[Cat.scala 33:92]
    io.sample_out.TDATA <= _io_sample_out_TDATA_T_10 @[Converter.scala 58:25]

  module Queue_1 :
    input clock : Clock
    input reset : Reset
    output io : { flip enq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, deq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, count : UInt<2>}

    cmem ram : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>} [3] @[Decoupled.scala 275:95]
    reg enq_ptr_value : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[Counter.scala 61:40]
    reg deq_ptr_value : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[Counter.scala 61:40]
    reg maybe_full : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[Decoupled.scala 278:27]
    node ptr_match = eq(enq_ptr_value, deq_ptr_value) @[Decoupled.scala 279:33]
    node _empty_T = eq(maybe_full, UInt<1>("h0")) @[Decoupled.scala 280:28]
    node empty = and(ptr_match, _empty_T) @[Decoupled.scala 280:25]
    node full = and(ptr_match, maybe_full) @[Decoupled.scala 281:24]
    node _do_enq_T = and(io.enq.ready, io.enq.valid) @[Decoupled.scala 52:35]
    wire do_enq : UInt<1>
    do_enq <= _do_enq_T
    node _do_deq_T = and(io.deq.ready, io.deq.valid) @[Decoupled.scala 52:35]
    wire do_deq : UInt<1>
    do_deq <= _do_deq_T
    when do_enq : @[Decoupled.scala 288:16]
      infer mport MPORT = ram[enq_ptr_value], clock @[Decoupled.scala 289:8]
      MPORT <= io.enq.bits @[Decoupled.scala 289:24]
      node wrap = eq(enq_ptr_value, UInt<2>("h2")) @[Counter.scala 73:24]
      node _value_T = add(enq_ptr_value, UInt<1>("h1")) @[Counter.scala 77:24]
      node _value_T_1 = tail(_value_T, 1) @[Counter.scala 77:24]
      enq_ptr_value <= _value_T_1 @[Counter.scala 77:15]
      when wrap : @[Counter.scala 87:20]
        enq_ptr_value <= UInt<1>("h0") @[Counter.scala 87:28]
    when do_deq : @[Decoupled.scala 292:16]
      node wrap_1 = eq(deq_ptr_value, UInt<2>("h2")) @[Counter.scala 73:24]
      node _value_T_2 = add(deq_ptr_value, UInt<1>("h1")) @[Counter.scala 77:24]
      node _value_T_3 = tail(_value_T_2, 1) @[Counter.scala 77:24]
      deq_ptr_value <= _value_T_3 @[Counter.scala 77:15]
      when wrap_1 : @[Counter.scala 87:20]
        deq_ptr_value <= UInt<1>("h0") @[Counter.scala 87:28]
    node _T = neq(do_enq, do_deq) @[Decoupled.scala 295:15]
    when _T : @[Decoupled.scala 295:27]
      maybe_full <= do_enq @[Decoupled.scala 296:16]
    when UInt<1>("h0") : @[Decoupled.scala 298:15]
      enq_ptr_value <= UInt<1>("h0") @[Counter.scala 98:11]
      deq_ptr_value <= UInt<1>("h0") @[Counter.scala 98:11]
      maybe_full <= UInt<1>("h0") @[Decoupled.scala 301:16]
    node _io_deq_valid_T = eq(empty, UInt<1>("h0")) @[Decoupled.scala 304:19]
    io.deq.valid <= _io_deq_valid_T @[Decoupled.scala 304:16]
    node _io_enq_ready_T = eq(full, UInt<1>("h0")) @[Decoupled.scala 305:19]
    io.enq.ready <= _io_enq_ready_T @[Decoupled.scala 305:16]
    infer mport io_deq_bits_MPORT = ram[deq_ptr_value], clock @[Decoupled.scala 312:23]
    io.deq.bits <= io_deq_bits_MPORT @[Decoupled.scala 312:17]
    node _ptr_diff_T = sub(enq_ptr_value, deq_ptr_value) @[Decoupled.scala 328:32]
    node ptr_diff = tail(_ptr_diff_T, 1) @[Decoupled.scala 328:32]
    node _io_count_T = mux(maybe_full, UInt<2>("h3"), UInt<1>("h0")) @[Decoupled.scala 335:10]
    node _io_count_T_1 = gt(deq_ptr_value, enq_ptr_value) @[Decoupled.scala 336:25]
    node _io_count_T_2 = add(UInt<2>("h3"), ptr_diff) @[Decoupled.scala 336:57]
    node _io_count_T_3 = tail(_io_count_T_2, 1) @[Decoupled.scala 336:57]
    node _io_count_T_4 = mux(_io_count_T_1, _io_count_T_3, ptr_diff) @[Decoupled.scala 336:10]
    node _io_count_T_5 = mux(ptr_match, _io_count_T, _io_count_T_4) @[Decoupled.scala 333:20]
    io.count <= _io_count_T_5 @[Decoupled.scala 333:14]

  module DispatcherPE :
    input clock : Clock
    input reset : Reset
    output io : { flip sample_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, samples_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}[5]}

    inst queue of Queue_1 @[Decoupled.scala 377:21]
    queue.clock <= clock
    queue.reset <= reset
    queue.io.enq.valid <= io.sample_in.valid @[Decoupled.scala 379:22]
    queue.io.enq.bits.clock_cycles <= io.sample_in.bits.clock_cycles @[Decoupled.scala 380:21]
    queue.io.enq.bits.last <= io.sample_in.bits.last @[Decoupled.scala 380:21]
    queue.io.enq.bits.dest <= io.sample_in.bits.dest @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[0] <= io.sample_in.bits.weights[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[1] <= io.sample_in.bits.weights[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[2] <= io.sample_in.bits.weights[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[3] <= io.sample_in.bits.weights[3] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[4] <= io.sample_in.bits.weights[4] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[0] <= io.sample_in.bits.scores[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[1] <= io.sample_in.bits.scores[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[2] <= io.sample_in.bits.scores[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[3] <= io.sample_in.bits.scores[3] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[4] <= io.sample_in.bits.scores[4] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[5] <= io.sample_in.bits.scores[5] @[Decoupled.scala 380:21]
    queue.io.enq.bits.tree_to_exec <= io.sample_in.bits.tree_to_exec @[Decoupled.scala 380:21]
    queue.io.enq.bits.search_for_root <= io.sample_in.bits.search_for_root @[Decoupled.scala 380:21]
    queue.io.enq.bits.shift <= io.sample_in.bits.shift @[Decoupled.scala 380:21]
    queue.io.enq.bits.offset <= io.sample_in.bits.offset @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[0] <= io.sample_in.bits.features[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[1] <= io.sample_in.bits.features[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[2] <= io.sample_in.bits.features[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[3] <= io.sample_in.bits.features[3] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[4] <= io.sample_in.bits.features[4] @[Decoupled.scala 380:21]
    io.sample_in.ready <= queue.io.enq.ready @[Decoupled.scala 381:17]
    io.samples_out[0].bits <= queue.io.deq.bits @[DispatcherPE.scala 18:32]
    io.samples_out[0].valid <= queue.io.deq.valid @[DispatcherPE.scala 19:33]
    io.samples_out[1].bits <= queue.io.deq.bits @[DispatcherPE.scala 18:32]
    io.samples_out[1].valid <= queue.io.deq.valid @[DispatcherPE.scala 19:33]
    io.samples_out[2].bits <= queue.io.deq.bits @[DispatcherPE.scala 18:32]
    io.samples_out[2].valid <= queue.io.deq.valid @[DispatcherPE.scala 19:33]
    io.samples_out[3].bits <= queue.io.deq.bits @[DispatcherPE.scala 18:32]
    io.samples_out[3].valid <= queue.io.deq.valid @[DispatcherPE.scala 19:33]
    io.samples_out[4].bits <= queue.io.deq.bits @[DispatcherPE.scala 18:32]
    io.samples_out[4].valid <= queue.io.deq.valid @[DispatcherPE.scala 19:33]
    queue.io.deq.ready <= io.samples_out[0].ready @[DispatcherPE.scala 22:17]

  module Queue_2 :
    input clock : Clock
    input reset : Reset
    output io : { flip enq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, deq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, count : UInt<8>}

    cmem ram : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>} [128] @[Decoupled.scala 275:95]
    reg enq_ptr_value : UInt<7>, clock with :
      reset => (reset, UInt<7>("h0")) @[Counter.scala 61:40]
    reg deq_ptr_value : UInt<7>, clock with :
      reset => (reset, UInt<7>("h0")) @[Counter.scala 61:40]
    reg maybe_full : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[Decoupled.scala 278:27]
    node ptr_match = eq(enq_ptr_value, deq_ptr_value) @[Decoupled.scala 279:33]
    node _empty_T = eq(maybe_full, UInt<1>("h0")) @[Decoupled.scala 280:28]
    node empty = and(ptr_match, _empty_T) @[Decoupled.scala 280:25]
    node full = and(ptr_match, maybe_full) @[Decoupled.scala 281:24]
    node _do_enq_T = and(io.enq.ready, io.enq.valid) @[Decoupled.scala 52:35]
    wire do_enq : UInt<1>
    do_enq <= _do_enq_T
    node _do_deq_T = and(io.deq.ready, io.deq.valid) @[Decoupled.scala 52:35]
    wire do_deq : UInt<1>
    do_deq <= _do_deq_T
    when do_enq : @[Decoupled.scala 288:16]
      infer mport MPORT = ram[enq_ptr_value], clock @[Decoupled.scala 289:8]
      MPORT <= io.enq.bits @[Decoupled.scala 289:24]
      node wrap = eq(enq_ptr_value, UInt<7>("h7f")) @[Counter.scala 73:24]
      node _value_T = add(enq_ptr_value, UInt<1>("h1")) @[Counter.scala 77:24]
      node _value_T_1 = tail(_value_T, 1) @[Counter.scala 77:24]
      enq_ptr_value <= _value_T_1 @[Counter.scala 77:15]
    when do_deq : @[Decoupled.scala 292:16]
      node wrap_1 = eq(deq_ptr_value, UInt<7>("h7f")) @[Counter.scala 73:24]
      node _value_T_2 = add(deq_ptr_value, UInt<1>("h1")) @[Counter.scala 77:24]
      node _value_T_3 = tail(_value_T_2, 1) @[Counter.scala 77:24]
      deq_ptr_value <= _value_T_3 @[Counter.scala 77:15]
    node _T = neq(do_enq, do_deq) @[Decoupled.scala 295:15]
    when _T : @[Decoupled.scala 295:27]
      maybe_full <= do_enq @[Decoupled.scala 296:16]
    when UInt<1>("h0") : @[Decoupled.scala 298:15]
      enq_ptr_value <= UInt<1>("h0") @[Counter.scala 98:11]
      deq_ptr_value <= UInt<1>("h0") @[Counter.scala 98:11]
      maybe_full <= UInt<1>("h0") @[Decoupled.scala 301:16]
    node _io_deq_valid_T = eq(empty, UInt<1>("h0")) @[Decoupled.scala 304:19]
    io.deq.valid <= _io_deq_valid_T @[Decoupled.scala 304:16]
    node _io_enq_ready_T = eq(full, UInt<1>("h0")) @[Decoupled.scala 305:19]
    io.enq.ready <= _io_enq_ready_T @[Decoupled.scala 305:16]
    infer mport io_deq_bits_MPORT = ram[deq_ptr_value], clock @[Decoupled.scala 312:23]
    io.deq.bits <= io_deq_bits_MPORT @[Decoupled.scala 312:17]
    node _ptr_diff_T = sub(enq_ptr_value, deq_ptr_value) @[Decoupled.scala 328:32]
    node ptr_diff = tail(_ptr_diff_T, 1) @[Decoupled.scala 328:32]
    node _io_count_T = and(maybe_full, ptr_match) @[Decoupled.scala 331:32]
    node _io_count_T_1 = mux(_io_count_T, UInt<8>("h80"), UInt<1>("h0")) @[Decoupled.scala 331:20]
    node _io_count_T_2 = or(_io_count_T_1, ptr_diff) @[Decoupled.scala 331:62]
    io.count <= _io_count_T_2 @[Decoupled.scala 331:14]

  module Queue_3 :
    input clock : Clock
    input reset : Reset
    output io : { flip enq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, deq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, count : UInt<8>}

    cmem ram : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>} [128] @[Decoupled.scala 275:95]
    reg enq_ptr_value : UInt<7>, clock with :
      reset => (reset, UInt<7>("h0")) @[Counter.scala 61:40]
    reg deq_ptr_value : UInt<7>, clock with :
      reset => (reset, UInt<7>("h0")) @[Counter.scala 61:40]
    reg maybe_full : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[Decoupled.scala 278:27]
    node ptr_match = eq(enq_ptr_value, deq_ptr_value) @[Decoupled.scala 279:33]
    node _empty_T = eq(maybe_full, UInt<1>("h0")) @[Decoupled.scala 280:28]
    node empty = and(ptr_match, _empty_T) @[Decoupled.scala 280:25]
    node full = and(ptr_match, maybe_full) @[Decoupled.scala 281:24]
    node _do_enq_T = and(io.enq.ready, io.enq.valid) @[Decoupled.scala 52:35]
    wire do_enq : UInt<1>
    do_enq <= _do_enq_T
    node _do_deq_T = and(io.deq.ready, io.deq.valid) @[Decoupled.scala 52:35]
    wire do_deq : UInt<1>
    do_deq <= _do_deq_T
    when do_enq : @[Decoupled.scala 288:16]
      infer mport MPORT = ram[enq_ptr_value], clock @[Decoupled.scala 289:8]
      MPORT <= io.enq.bits @[Decoupled.scala 289:24]
      node wrap = eq(enq_ptr_value, UInt<7>("h7f")) @[Counter.scala 73:24]
      node _value_T = add(enq_ptr_value, UInt<1>("h1")) @[Counter.scala 77:24]
      node _value_T_1 = tail(_value_T, 1) @[Counter.scala 77:24]
      enq_ptr_value <= _value_T_1 @[Counter.scala 77:15]
    when do_deq : @[Decoupled.scala 292:16]
      node wrap_1 = eq(deq_ptr_value, UInt<7>("h7f")) @[Counter.scala 73:24]
      node _value_T_2 = add(deq_ptr_value, UInt<1>("h1")) @[Counter.scala 77:24]
      node _value_T_3 = tail(_value_T_2, 1) @[Counter.scala 77:24]
      deq_ptr_value <= _value_T_3 @[Counter.scala 77:15]
    node _T = neq(do_enq, do_deq) @[Decoupled.scala 295:15]
    when _T : @[Decoupled.scala 295:27]
      maybe_full <= do_enq @[Decoupled.scala 296:16]
    when UInt<1>("h0") : @[Decoupled.scala 298:15]
      enq_ptr_value <= UInt<1>("h0") @[Counter.scala 98:11]
      deq_ptr_value <= UInt<1>("h0") @[Counter.scala 98:11]
      maybe_full <= UInt<1>("h0") @[Decoupled.scala 301:16]
    node _io_deq_valid_T = eq(empty, UInt<1>("h0")) @[Decoupled.scala 304:19]
    io.deq.valid <= _io_deq_valid_T @[Decoupled.scala 304:16]
    node _io_enq_ready_T = eq(full, UInt<1>("h0")) @[Decoupled.scala 305:19]
    io.enq.ready <= _io_enq_ready_T @[Decoupled.scala 305:16]
    infer mport io_deq_bits_MPORT = ram[deq_ptr_value], clock @[Decoupled.scala 312:23]
    io.deq.bits <= io_deq_bits_MPORT @[Decoupled.scala 312:17]
    node _ptr_diff_T = sub(enq_ptr_value, deq_ptr_value) @[Decoupled.scala 328:32]
    node ptr_diff = tail(_ptr_diff_T, 1) @[Decoupled.scala 328:32]
    node _io_count_T = and(maybe_full, ptr_match) @[Decoupled.scala 331:32]
    node _io_count_T_1 = mux(_io_count_T, UInt<8>("h80"), UInt<1>("h0")) @[Decoupled.scala 331:20]
    node _io_count_T_2 = or(_io_count_T_1, ptr_diff) @[Decoupled.scala 331:62]
    io.count <= _io_count_T_2 @[Decoupled.scala 331:14]

  module Queue_4 :
    input clock : Clock
    input reset : Reset
    output io : { flip enq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, deq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, count : UInt<8>}

    cmem ram : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>} [128] @[Decoupled.scala 275:95]
    reg enq_ptr_value : UInt<7>, clock with :
      reset => (reset, UInt<7>("h0")) @[Counter.scala 61:40]
    reg deq_ptr_value : UInt<7>, clock with :
      reset => (reset, UInt<7>("h0")) @[Counter.scala 61:40]
    reg maybe_full : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[Decoupled.scala 278:27]
    node ptr_match = eq(enq_ptr_value, deq_ptr_value) @[Decoupled.scala 279:33]
    node _empty_T = eq(maybe_full, UInt<1>("h0")) @[Decoupled.scala 280:28]
    node empty = and(ptr_match, _empty_T) @[Decoupled.scala 280:25]
    node full = and(ptr_match, maybe_full) @[Decoupled.scala 281:24]
    node _do_enq_T = and(io.enq.ready, io.enq.valid) @[Decoupled.scala 52:35]
    wire do_enq : UInt<1>
    do_enq <= _do_enq_T
    node _do_deq_T = and(io.deq.ready, io.deq.valid) @[Decoupled.scala 52:35]
    wire do_deq : UInt<1>
    do_deq <= _do_deq_T
    when do_enq : @[Decoupled.scala 288:16]
      infer mport MPORT = ram[enq_ptr_value], clock @[Decoupled.scala 289:8]
      MPORT <= io.enq.bits @[Decoupled.scala 289:24]
      node wrap = eq(enq_ptr_value, UInt<7>("h7f")) @[Counter.scala 73:24]
      node _value_T = add(enq_ptr_value, UInt<1>("h1")) @[Counter.scala 77:24]
      node _value_T_1 = tail(_value_T, 1) @[Counter.scala 77:24]
      enq_ptr_value <= _value_T_1 @[Counter.scala 77:15]
    when do_deq : @[Decoupled.scala 292:16]
      node wrap_1 = eq(deq_ptr_value, UInt<7>("h7f")) @[Counter.scala 73:24]
      node _value_T_2 = add(deq_ptr_value, UInt<1>("h1")) @[Counter.scala 77:24]
      node _value_T_3 = tail(_value_T_2, 1) @[Counter.scala 77:24]
      deq_ptr_value <= _value_T_3 @[Counter.scala 77:15]
    node _T = neq(do_enq, do_deq) @[Decoupled.scala 295:15]
    when _T : @[Decoupled.scala 295:27]
      maybe_full <= do_enq @[Decoupled.scala 296:16]
    when UInt<1>("h0") : @[Decoupled.scala 298:15]
      enq_ptr_value <= UInt<1>("h0") @[Counter.scala 98:11]
      deq_ptr_value <= UInt<1>("h0") @[Counter.scala 98:11]
      maybe_full <= UInt<1>("h0") @[Decoupled.scala 301:16]
    node _io_deq_valid_T = eq(empty, UInt<1>("h0")) @[Decoupled.scala 304:19]
    io.deq.valid <= _io_deq_valid_T @[Decoupled.scala 304:16]
    node _io_enq_ready_T = eq(full, UInt<1>("h0")) @[Decoupled.scala 305:19]
    io.enq.ready <= _io_enq_ready_T @[Decoupled.scala 305:16]
    infer mport io_deq_bits_MPORT = ram[deq_ptr_value], clock @[Decoupled.scala 312:23]
    io.deq.bits <= io_deq_bits_MPORT @[Decoupled.scala 312:17]
    node _ptr_diff_T = sub(enq_ptr_value, deq_ptr_value) @[Decoupled.scala 328:32]
    node ptr_diff = tail(_ptr_diff_T, 1) @[Decoupled.scala 328:32]
    node _io_count_T = and(maybe_full, ptr_match) @[Decoupled.scala 331:32]
    node _io_count_T_1 = mux(_io_count_T, UInt<8>("h80"), UInt<1>("h0")) @[Decoupled.scala 331:20]
    node _io_count_T_2 = or(_io_count_T_1, ptr_diff) @[Decoupled.scala 331:62]
    io.count <= _io_count_T_2 @[Decoupled.scala 331:14]

  module Queue_5 :
    input clock : Clock
    input reset : Reset
    output io : { flip enq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, deq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, count : UInt<8>}

    cmem ram : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>} [128] @[Decoupled.scala 275:95]
    reg enq_ptr_value : UInt<7>, clock with :
      reset => (reset, UInt<7>("h0")) @[Counter.scala 61:40]
    reg deq_ptr_value : UInt<7>, clock with :
      reset => (reset, UInt<7>("h0")) @[Counter.scala 61:40]
    reg maybe_full : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[Decoupled.scala 278:27]
    node ptr_match = eq(enq_ptr_value, deq_ptr_value) @[Decoupled.scala 279:33]
    node _empty_T = eq(maybe_full, UInt<1>("h0")) @[Decoupled.scala 280:28]
    node empty = and(ptr_match, _empty_T) @[Decoupled.scala 280:25]
    node full = and(ptr_match, maybe_full) @[Decoupled.scala 281:24]
    node _do_enq_T = and(io.enq.ready, io.enq.valid) @[Decoupled.scala 52:35]
    wire do_enq : UInt<1>
    do_enq <= _do_enq_T
    node _do_deq_T = and(io.deq.ready, io.deq.valid) @[Decoupled.scala 52:35]
    wire do_deq : UInt<1>
    do_deq <= _do_deq_T
    when do_enq : @[Decoupled.scala 288:16]
      infer mport MPORT = ram[enq_ptr_value], clock @[Decoupled.scala 289:8]
      MPORT <= io.enq.bits @[Decoupled.scala 289:24]
      node wrap = eq(enq_ptr_value, UInt<7>("h7f")) @[Counter.scala 73:24]
      node _value_T = add(enq_ptr_value, UInt<1>("h1")) @[Counter.scala 77:24]
      node _value_T_1 = tail(_value_T, 1) @[Counter.scala 77:24]
      enq_ptr_value <= _value_T_1 @[Counter.scala 77:15]
    when do_deq : @[Decoupled.scala 292:16]
      node wrap_1 = eq(deq_ptr_value, UInt<7>("h7f")) @[Counter.scala 73:24]
      node _value_T_2 = add(deq_ptr_value, UInt<1>("h1")) @[Counter.scala 77:24]
      node _value_T_3 = tail(_value_T_2, 1) @[Counter.scala 77:24]
      deq_ptr_value <= _value_T_3 @[Counter.scala 77:15]
    node _T = neq(do_enq, do_deq) @[Decoupled.scala 295:15]
    when _T : @[Decoupled.scala 295:27]
      maybe_full <= do_enq @[Decoupled.scala 296:16]
    when UInt<1>("h0") : @[Decoupled.scala 298:15]
      enq_ptr_value <= UInt<1>("h0") @[Counter.scala 98:11]
      deq_ptr_value <= UInt<1>("h0") @[Counter.scala 98:11]
      maybe_full <= UInt<1>("h0") @[Decoupled.scala 301:16]
    node _io_deq_valid_T = eq(empty, UInt<1>("h0")) @[Decoupled.scala 304:19]
    io.deq.valid <= _io_deq_valid_T @[Decoupled.scala 304:16]
    node _io_enq_ready_T = eq(full, UInt<1>("h0")) @[Decoupled.scala 305:19]
    io.enq.ready <= _io_enq_ready_T @[Decoupled.scala 305:16]
    infer mport io_deq_bits_MPORT = ram[deq_ptr_value], clock @[Decoupled.scala 312:23]
    io.deq.bits <= io_deq_bits_MPORT @[Decoupled.scala 312:17]
    node _ptr_diff_T = sub(enq_ptr_value, deq_ptr_value) @[Decoupled.scala 328:32]
    node ptr_diff = tail(_ptr_diff_T, 1) @[Decoupled.scala 328:32]
    node _io_count_T = and(maybe_full, ptr_match) @[Decoupled.scala 331:32]
    node _io_count_T_1 = mux(_io_count_T, UInt<8>("h80"), UInt<1>("h0")) @[Decoupled.scala 331:20]
    node _io_count_T_2 = or(_io_count_T_1, ptr_diff) @[Decoupled.scala 331:62]
    io.count <= _io_count_T_2 @[Decoupled.scala 331:14]

  module Queue_6 :
    input clock : Clock
    input reset : Reset
    output io : { flip enq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, deq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, count : UInt<8>}

    cmem ram : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>} [128] @[Decoupled.scala 275:95]
    reg enq_ptr_value : UInt<7>, clock with :
      reset => (reset, UInt<7>("h0")) @[Counter.scala 61:40]
    reg deq_ptr_value : UInt<7>, clock with :
      reset => (reset, UInt<7>("h0")) @[Counter.scala 61:40]
    reg maybe_full : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[Decoupled.scala 278:27]
    node ptr_match = eq(enq_ptr_value, deq_ptr_value) @[Decoupled.scala 279:33]
    node _empty_T = eq(maybe_full, UInt<1>("h0")) @[Decoupled.scala 280:28]
    node empty = and(ptr_match, _empty_T) @[Decoupled.scala 280:25]
    node full = and(ptr_match, maybe_full) @[Decoupled.scala 281:24]
    node _do_enq_T = and(io.enq.ready, io.enq.valid) @[Decoupled.scala 52:35]
    wire do_enq : UInt<1>
    do_enq <= _do_enq_T
    node _do_deq_T = and(io.deq.ready, io.deq.valid) @[Decoupled.scala 52:35]
    wire do_deq : UInt<1>
    do_deq <= _do_deq_T
    when do_enq : @[Decoupled.scala 288:16]
      infer mport MPORT = ram[enq_ptr_value], clock @[Decoupled.scala 289:8]
      MPORT <= io.enq.bits @[Decoupled.scala 289:24]
      node wrap = eq(enq_ptr_value, UInt<7>("h7f")) @[Counter.scala 73:24]
      node _value_T = add(enq_ptr_value, UInt<1>("h1")) @[Counter.scala 77:24]
      node _value_T_1 = tail(_value_T, 1) @[Counter.scala 77:24]
      enq_ptr_value <= _value_T_1 @[Counter.scala 77:15]
    when do_deq : @[Decoupled.scala 292:16]
      node wrap_1 = eq(deq_ptr_value, UInt<7>("h7f")) @[Counter.scala 73:24]
      node _value_T_2 = add(deq_ptr_value, UInt<1>("h1")) @[Counter.scala 77:24]
      node _value_T_3 = tail(_value_T_2, 1) @[Counter.scala 77:24]
      deq_ptr_value <= _value_T_3 @[Counter.scala 77:15]
    node _T = neq(do_enq, do_deq) @[Decoupled.scala 295:15]
    when _T : @[Decoupled.scala 295:27]
      maybe_full <= do_enq @[Decoupled.scala 296:16]
    when UInt<1>("h0") : @[Decoupled.scala 298:15]
      enq_ptr_value <= UInt<1>("h0") @[Counter.scala 98:11]
      deq_ptr_value <= UInt<1>("h0") @[Counter.scala 98:11]
      maybe_full <= UInt<1>("h0") @[Decoupled.scala 301:16]
    node _io_deq_valid_T = eq(empty, UInt<1>("h0")) @[Decoupled.scala 304:19]
    io.deq.valid <= _io_deq_valid_T @[Decoupled.scala 304:16]
    node _io_enq_ready_T = eq(full, UInt<1>("h0")) @[Decoupled.scala 305:19]
    io.enq.ready <= _io_enq_ready_T @[Decoupled.scala 305:16]
    infer mport io_deq_bits_MPORT = ram[deq_ptr_value], clock @[Decoupled.scala 312:23]
    io.deq.bits <= io_deq_bits_MPORT @[Decoupled.scala 312:17]
    node _ptr_diff_T = sub(enq_ptr_value, deq_ptr_value) @[Decoupled.scala 328:32]
    node ptr_diff = tail(_ptr_diff_T, 1) @[Decoupled.scala 328:32]
    node _io_count_T = and(maybe_full, ptr_match) @[Decoupled.scala 331:32]
    node _io_count_T_1 = mux(_io_count_T, UInt<8>("h80"), UInt<1>("h0")) @[Decoupled.scala 331:20]
    node _io_count_T_2 = or(_io_count_T_1, ptr_diff) @[Decoupled.scala 331:62]
    io.count <= _io_count_T_2 @[Decoupled.scala 331:14]

  module VoterPE :
    input clock : Clock
    input reset : Reset
    output io : { flip samples_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}[5], sample_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}}

    inst queues_q of Queue_2 @[Decoupled.scala 377:21]
    queues_q.clock <= clock
    queues_q.reset <= reset
    queues_q.io.enq.valid <= io.samples_in[0].valid @[Decoupled.scala 379:22]
    queues_q.io.enq.bits.clock_cycles <= io.samples_in[0].bits.clock_cycles @[Decoupled.scala 380:21]
    queues_q.io.enq.bits.last <= io.samples_in[0].bits.last @[Decoupled.scala 380:21]
    queues_q.io.enq.bits.dest <= io.samples_in[0].bits.dest @[Decoupled.scala 380:21]
    queues_q.io.enq.bits.weights[0] <= io.samples_in[0].bits.weights[0] @[Decoupled.scala 380:21]
    queues_q.io.enq.bits.weights[1] <= io.samples_in[0].bits.weights[1] @[Decoupled.scala 380:21]
    queues_q.io.enq.bits.weights[2] <= io.samples_in[0].bits.weights[2] @[Decoupled.scala 380:21]
    queues_q.io.enq.bits.weights[3] <= io.samples_in[0].bits.weights[3] @[Decoupled.scala 380:21]
    queues_q.io.enq.bits.weights[4] <= io.samples_in[0].bits.weights[4] @[Decoupled.scala 380:21]
    queues_q.io.enq.bits.scores[0] <= io.samples_in[0].bits.scores[0] @[Decoupled.scala 380:21]
    queues_q.io.enq.bits.scores[1] <= io.samples_in[0].bits.scores[1] @[Decoupled.scala 380:21]
    queues_q.io.enq.bits.scores[2] <= io.samples_in[0].bits.scores[2] @[Decoupled.scala 380:21]
    queues_q.io.enq.bits.scores[3] <= io.samples_in[0].bits.scores[3] @[Decoupled.scala 380:21]
    queues_q.io.enq.bits.scores[4] <= io.samples_in[0].bits.scores[4] @[Decoupled.scala 380:21]
    queues_q.io.enq.bits.scores[5] <= io.samples_in[0].bits.scores[5] @[Decoupled.scala 380:21]
    queues_q.io.enq.bits.tree_to_exec <= io.samples_in[0].bits.tree_to_exec @[Decoupled.scala 380:21]
    queues_q.io.enq.bits.search_for_root <= io.samples_in[0].bits.search_for_root @[Decoupled.scala 380:21]
    queues_q.io.enq.bits.shift <= io.samples_in[0].bits.shift @[Decoupled.scala 380:21]
    queues_q.io.enq.bits.offset <= io.samples_in[0].bits.offset @[Decoupled.scala 380:21]
    queues_q.io.enq.bits.features[0] <= io.samples_in[0].bits.features[0] @[Decoupled.scala 380:21]
    queues_q.io.enq.bits.features[1] <= io.samples_in[0].bits.features[1] @[Decoupled.scala 380:21]
    queues_q.io.enq.bits.features[2] <= io.samples_in[0].bits.features[2] @[Decoupled.scala 380:21]
    queues_q.io.enq.bits.features[3] <= io.samples_in[0].bits.features[3] @[Decoupled.scala 380:21]
    queues_q.io.enq.bits.features[4] <= io.samples_in[0].bits.features[4] @[Decoupled.scala 380:21]
    io.samples_in[0].ready <= queues_q.io.enq.ready @[Decoupled.scala 381:17]
    inst queues_q_1 of Queue_3 @[Decoupled.scala 377:21]
    queues_q_1.clock <= clock
    queues_q_1.reset <= reset
    queues_q_1.io.enq.valid <= io.samples_in[1].valid @[Decoupled.scala 379:22]
    queues_q_1.io.enq.bits.clock_cycles <= io.samples_in[1].bits.clock_cycles @[Decoupled.scala 380:21]
    queues_q_1.io.enq.bits.last <= io.samples_in[1].bits.last @[Decoupled.scala 380:21]
    queues_q_1.io.enq.bits.dest <= io.samples_in[1].bits.dest @[Decoupled.scala 380:21]
    queues_q_1.io.enq.bits.weights[0] <= io.samples_in[1].bits.weights[0] @[Decoupled.scala 380:21]
    queues_q_1.io.enq.bits.weights[1] <= io.samples_in[1].bits.weights[1] @[Decoupled.scala 380:21]
    queues_q_1.io.enq.bits.weights[2] <= io.samples_in[1].bits.weights[2] @[Decoupled.scala 380:21]
    queues_q_1.io.enq.bits.weights[3] <= io.samples_in[1].bits.weights[3] @[Decoupled.scala 380:21]
    queues_q_1.io.enq.bits.weights[4] <= io.samples_in[1].bits.weights[4] @[Decoupled.scala 380:21]
    queues_q_1.io.enq.bits.scores[0] <= io.samples_in[1].bits.scores[0] @[Decoupled.scala 380:21]
    queues_q_1.io.enq.bits.scores[1] <= io.samples_in[1].bits.scores[1] @[Decoupled.scala 380:21]
    queues_q_1.io.enq.bits.scores[2] <= io.samples_in[1].bits.scores[2] @[Decoupled.scala 380:21]
    queues_q_1.io.enq.bits.scores[3] <= io.samples_in[1].bits.scores[3] @[Decoupled.scala 380:21]
    queues_q_1.io.enq.bits.scores[4] <= io.samples_in[1].bits.scores[4] @[Decoupled.scala 380:21]
    queues_q_1.io.enq.bits.scores[5] <= io.samples_in[1].bits.scores[5] @[Decoupled.scala 380:21]
    queues_q_1.io.enq.bits.tree_to_exec <= io.samples_in[1].bits.tree_to_exec @[Decoupled.scala 380:21]
    queues_q_1.io.enq.bits.search_for_root <= io.samples_in[1].bits.search_for_root @[Decoupled.scala 380:21]
    queues_q_1.io.enq.bits.shift <= io.samples_in[1].bits.shift @[Decoupled.scala 380:21]
    queues_q_1.io.enq.bits.offset <= io.samples_in[1].bits.offset @[Decoupled.scala 380:21]
    queues_q_1.io.enq.bits.features[0] <= io.samples_in[1].bits.features[0] @[Decoupled.scala 380:21]
    queues_q_1.io.enq.bits.features[1] <= io.samples_in[1].bits.features[1] @[Decoupled.scala 380:21]
    queues_q_1.io.enq.bits.features[2] <= io.samples_in[1].bits.features[2] @[Decoupled.scala 380:21]
    queues_q_1.io.enq.bits.features[3] <= io.samples_in[1].bits.features[3] @[Decoupled.scala 380:21]
    queues_q_1.io.enq.bits.features[4] <= io.samples_in[1].bits.features[4] @[Decoupled.scala 380:21]
    io.samples_in[1].ready <= queues_q_1.io.enq.ready @[Decoupled.scala 381:17]
    inst queues_q_2 of Queue_4 @[Decoupled.scala 377:21]
    queues_q_2.clock <= clock
    queues_q_2.reset <= reset
    queues_q_2.io.enq.valid <= io.samples_in[2].valid @[Decoupled.scala 379:22]
    queues_q_2.io.enq.bits.clock_cycles <= io.samples_in[2].bits.clock_cycles @[Decoupled.scala 380:21]
    queues_q_2.io.enq.bits.last <= io.samples_in[2].bits.last @[Decoupled.scala 380:21]
    queues_q_2.io.enq.bits.dest <= io.samples_in[2].bits.dest @[Decoupled.scala 380:21]
    queues_q_2.io.enq.bits.weights[0] <= io.samples_in[2].bits.weights[0] @[Decoupled.scala 380:21]
    queues_q_2.io.enq.bits.weights[1] <= io.samples_in[2].bits.weights[1] @[Decoupled.scala 380:21]
    queues_q_2.io.enq.bits.weights[2] <= io.samples_in[2].bits.weights[2] @[Decoupled.scala 380:21]
    queues_q_2.io.enq.bits.weights[3] <= io.samples_in[2].bits.weights[3] @[Decoupled.scala 380:21]
    queues_q_2.io.enq.bits.weights[4] <= io.samples_in[2].bits.weights[4] @[Decoupled.scala 380:21]
    queues_q_2.io.enq.bits.scores[0] <= io.samples_in[2].bits.scores[0] @[Decoupled.scala 380:21]
    queues_q_2.io.enq.bits.scores[1] <= io.samples_in[2].bits.scores[1] @[Decoupled.scala 380:21]
    queues_q_2.io.enq.bits.scores[2] <= io.samples_in[2].bits.scores[2] @[Decoupled.scala 380:21]
    queues_q_2.io.enq.bits.scores[3] <= io.samples_in[2].bits.scores[3] @[Decoupled.scala 380:21]
    queues_q_2.io.enq.bits.scores[4] <= io.samples_in[2].bits.scores[4] @[Decoupled.scala 380:21]
    queues_q_2.io.enq.bits.scores[5] <= io.samples_in[2].bits.scores[5] @[Decoupled.scala 380:21]
    queues_q_2.io.enq.bits.tree_to_exec <= io.samples_in[2].bits.tree_to_exec @[Decoupled.scala 380:21]
    queues_q_2.io.enq.bits.search_for_root <= io.samples_in[2].bits.search_for_root @[Decoupled.scala 380:21]
    queues_q_2.io.enq.bits.shift <= io.samples_in[2].bits.shift @[Decoupled.scala 380:21]
    queues_q_2.io.enq.bits.offset <= io.samples_in[2].bits.offset @[Decoupled.scala 380:21]
    queues_q_2.io.enq.bits.features[0] <= io.samples_in[2].bits.features[0] @[Decoupled.scala 380:21]
    queues_q_2.io.enq.bits.features[1] <= io.samples_in[2].bits.features[1] @[Decoupled.scala 380:21]
    queues_q_2.io.enq.bits.features[2] <= io.samples_in[2].bits.features[2] @[Decoupled.scala 380:21]
    queues_q_2.io.enq.bits.features[3] <= io.samples_in[2].bits.features[3] @[Decoupled.scala 380:21]
    queues_q_2.io.enq.bits.features[4] <= io.samples_in[2].bits.features[4] @[Decoupled.scala 380:21]
    io.samples_in[2].ready <= queues_q_2.io.enq.ready @[Decoupled.scala 381:17]
    inst queues_q_3 of Queue_5 @[Decoupled.scala 377:21]
    queues_q_3.clock <= clock
    queues_q_3.reset <= reset
    queues_q_3.io.enq.valid <= io.samples_in[3].valid @[Decoupled.scala 379:22]
    queues_q_3.io.enq.bits.clock_cycles <= io.samples_in[3].bits.clock_cycles @[Decoupled.scala 380:21]
    queues_q_3.io.enq.bits.last <= io.samples_in[3].bits.last @[Decoupled.scala 380:21]
    queues_q_3.io.enq.bits.dest <= io.samples_in[3].bits.dest @[Decoupled.scala 380:21]
    queues_q_3.io.enq.bits.weights[0] <= io.samples_in[3].bits.weights[0] @[Decoupled.scala 380:21]
    queues_q_3.io.enq.bits.weights[1] <= io.samples_in[3].bits.weights[1] @[Decoupled.scala 380:21]
    queues_q_3.io.enq.bits.weights[2] <= io.samples_in[3].bits.weights[2] @[Decoupled.scala 380:21]
    queues_q_3.io.enq.bits.weights[3] <= io.samples_in[3].bits.weights[3] @[Decoupled.scala 380:21]
    queues_q_3.io.enq.bits.weights[4] <= io.samples_in[3].bits.weights[4] @[Decoupled.scala 380:21]
    queues_q_3.io.enq.bits.scores[0] <= io.samples_in[3].bits.scores[0] @[Decoupled.scala 380:21]
    queues_q_3.io.enq.bits.scores[1] <= io.samples_in[3].bits.scores[1] @[Decoupled.scala 380:21]
    queues_q_3.io.enq.bits.scores[2] <= io.samples_in[3].bits.scores[2] @[Decoupled.scala 380:21]
    queues_q_3.io.enq.bits.scores[3] <= io.samples_in[3].bits.scores[3] @[Decoupled.scala 380:21]
    queues_q_3.io.enq.bits.scores[4] <= io.samples_in[3].bits.scores[4] @[Decoupled.scala 380:21]
    queues_q_3.io.enq.bits.scores[5] <= io.samples_in[3].bits.scores[5] @[Decoupled.scala 380:21]
    queues_q_3.io.enq.bits.tree_to_exec <= io.samples_in[3].bits.tree_to_exec @[Decoupled.scala 380:21]
    queues_q_3.io.enq.bits.search_for_root <= io.samples_in[3].bits.search_for_root @[Decoupled.scala 380:21]
    queues_q_3.io.enq.bits.shift <= io.samples_in[3].bits.shift @[Decoupled.scala 380:21]
    queues_q_3.io.enq.bits.offset <= io.samples_in[3].bits.offset @[Decoupled.scala 380:21]
    queues_q_3.io.enq.bits.features[0] <= io.samples_in[3].bits.features[0] @[Decoupled.scala 380:21]
    queues_q_3.io.enq.bits.features[1] <= io.samples_in[3].bits.features[1] @[Decoupled.scala 380:21]
    queues_q_3.io.enq.bits.features[2] <= io.samples_in[3].bits.features[2] @[Decoupled.scala 380:21]
    queues_q_3.io.enq.bits.features[3] <= io.samples_in[3].bits.features[3] @[Decoupled.scala 380:21]
    queues_q_3.io.enq.bits.features[4] <= io.samples_in[3].bits.features[4] @[Decoupled.scala 380:21]
    io.samples_in[3].ready <= queues_q_3.io.enq.ready @[Decoupled.scala 381:17]
    inst queues_q_4 of Queue_6 @[Decoupled.scala 377:21]
    queues_q_4.clock <= clock
    queues_q_4.reset <= reset
    queues_q_4.io.enq.valid <= io.samples_in[4].valid @[Decoupled.scala 379:22]
    queues_q_4.io.enq.bits.clock_cycles <= io.samples_in[4].bits.clock_cycles @[Decoupled.scala 380:21]
    queues_q_4.io.enq.bits.last <= io.samples_in[4].bits.last @[Decoupled.scala 380:21]
    queues_q_4.io.enq.bits.dest <= io.samples_in[4].bits.dest @[Decoupled.scala 380:21]
    queues_q_4.io.enq.bits.weights[0] <= io.samples_in[4].bits.weights[0] @[Decoupled.scala 380:21]
    queues_q_4.io.enq.bits.weights[1] <= io.samples_in[4].bits.weights[1] @[Decoupled.scala 380:21]
    queues_q_4.io.enq.bits.weights[2] <= io.samples_in[4].bits.weights[2] @[Decoupled.scala 380:21]
    queues_q_4.io.enq.bits.weights[3] <= io.samples_in[4].bits.weights[3] @[Decoupled.scala 380:21]
    queues_q_4.io.enq.bits.weights[4] <= io.samples_in[4].bits.weights[4] @[Decoupled.scala 380:21]
    queues_q_4.io.enq.bits.scores[0] <= io.samples_in[4].bits.scores[0] @[Decoupled.scala 380:21]
    queues_q_4.io.enq.bits.scores[1] <= io.samples_in[4].bits.scores[1] @[Decoupled.scala 380:21]
    queues_q_4.io.enq.bits.scores[2] <= io.samples_in[4].bits.scores[2] @[Decoupled.scala 380:21]
    queues_q_4.io.enq.bits.scores[3] <= io.samples_in[4].bits.scores[3] @[Decoupled.scala 380:21]
    queues_q_4.io.enq.bits.scores[4] <= io.samples_in[4].bits.scores[4] @[Decoupled.scala 380:21]
    queues_q_4.io.enq.bits.scores[5] <= io.samples_in[4].bits.scores[5] @[Decoupled.scala 380:21]
    queues_q_4.io.enq.bits.tree_to_exec <= io.samples_in[4].bits.tree_to_exec @[Decoupled.scala 380:21]
    queues_q_4.io.enq.bits.search_for_root <= io.samples_in[4].bits.search_for_root @[Decoupled.scala 380:21]
    queues_q_4.io.enq.bits.shift <= io.samples_in[4].bits.shift @[Decoupled.scala 380:21]
    queues_q_4.io.enq.bits.offset <= io.samples_in[4].bits.offset @[Decoupled.scala 380:21]
    queues_q_4.io.enq.bits.features[0] <= io.samples_in[4].bits.features[0] @[Decoupled.scala 380:21]
    queues_q_4.io.enq.bits.features[1] <= io.samples_in[4].bits.features[1] @[Decoupled.scala 380:21]
    queues_q_4.io.enq.bits.features[2] <= io.samples_in[4].bits.features[2] @[Decoupled.scala 380:21]
    queues_q_4.io.enq.bits.features[3] <= io.samples_in[4].bits.features[3] @[Decoupled.scala 380:21]
    queues_q_4.io.enq.bits.features[4] <= io.samples_in[4].bits.features[4] @[Decoupled.scala 380:21]
    io.samples_in[4].ready <= queues_q_4.io.enq.ready @[Decoupled.scala 381:17]
    wire queues : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}[5] @[VoterPE.scala 15:25]
    queues[0].bits <= queues_q.io.deq.bits @[VoterPE.scala 15:25]
    queues[0].valid <= queues_q.io.deq.valid @[VoterPE.scala 15:25]
    queues_q.io.deq.ready <= queues[0].ready @[VoterPE.scala 15:25]
    queues[1].bits <= queues_q_1.io.deq.bits @[VoterPE.scala 15:25]
    queues[1].valid <= queues_q_1.io.deq.valid @[VoterPE.scala 15:25]
    queues_q_1.io.deq.ready <= queues[1].ready @[VoterPE.scala 15:25]
    queues[2].bits <= queues_q_2.io.deq.bits @[VoterPE.scala 15:25]
    queues[2].valid <= queues_q_2.io.deq.valid @[VoterPE.scala 15:25]
    queues_q_2.io.deq.ready <= queues[2].ready @[VoterPE.scala 15:25]
    queues[3].bits <= queues_q_3.io.deq.bits @[VoterPE.scala 15:25]
    queues[3].valid <= queues_q_3.io.deq.valid @[VoterPE.scala 15:25]
    queues_q_3.io.deq.ready <= queues[3].ready @[VoterPE.scala 15:25]
    queues[4].bits <= queues_q_4.io.deq.bits @[VoterPE.scala 15:25]
    queues[4].valid <= queues_q_4.io.deq.valid @[VoterPE.scala 15:25]
    queues_q_4.io.deq.ready <= queues[4].ready @[VoterPE.scala 15:25]
    node _valid_T = and(queues[0].valid, queues[1].valid) @[VoterPE.scala 16:46]
    node _valid_T_1 = and(_valid_T, queues[2].valid) @[VoterPE.scala 16:46]
    node _valid_T_2 = and(_valid_T_1, queues[3].valid) @[VoterPE.scala 16:46]
    node valid = and(_valid_T_2, queues[4].valid) @[VoterPE.scala 16:46]
    when valid : @[VoterPE.scala 18:16]
      io.sample_out.valid <= UInt<1>("h1") @[VoterPE.scala 19:29]
      io.sample_out.bits.features <= queues[0].bits.features @[VoterPE.scala 20:37]
      io.sample_out.bits.weights <= queues[0].bits.weights @[VoterPE.scala 21:36]
      io.sample_out.bits.tree_to_exec <= queues[0].bits.tree_to_exec @[VoterPE.scala 22:41]
      io.sample_out.bits.shift <= queues[0].bits.shift @[VoterPE.scala 23:34]
      io.sample_out.bits.offset <= queues[0].bits.offset @[VoterPE.scala 24:35]
      io.sample_out.bits.dest <= queues[0].bits.dest @[VoterPE.scala 25:33]
      io.sample_out.bits.search_for_root <= queues[0].bits.search_for_root @[VoterPE.scala 26:44]
      io.sample_out.bits.last <= queues[0].bits.last @[VoterPE.scala 27:33]
      io.sample_out.bits.clock_cycles <= queues[0].bits.clock_cycles @[VoterPE.scala 28:41]
      node _sum_T = add(queues[0].bits.scores[0], queues[1].bits.scores[0]) @[VoterPE.scala 30:61]
      node _sum_T_1 = add(_sum_T, queues[2].bits.scores[0]) @[VoterPE.scala 30:61]
      node _sum_T_2 = add(_sum_T_1, queues[3].bits.scores[0]) @[VoterPE.scala 30:61]
      node sum = add(_sum_T_2, queues[4].bits.scores[0]) @[VoterPE.scala 30:61]
      io.sample_out.bits.scores[0] <= sum @[VoterPE.scala 31:42]
      node _sum_T_3 = add(queues[0].bits.scores[1], queues[1].bits.scores[1]) @[VoterPE.scala 30:61]
      node _sum_T_4 = add(_sum_T_3, queues[2].bits.scores[1]) @[VoterPE.scala 30:61]
      node _sum_T_5 = add(_sum_T_4, queues[3].bits.scores[1]) @[VoterPE.scala 30:61]
      node sum_1 = add(_sum_T_5, queues[4].bits.scores[1]) @[VoterPE.scala 30:61]
      io.sample_out.bits.scores[1] <= sum_1 @[VoterPE.scala 31:42]
      node _sum_T_6 = add(queues[0].bits.scores[2], queues[1].bits.scores[2]) @[VoterPE.scala 30:61]
      node _sum_T_7 = add(_sum_T_6, queues[2].bits.scores[2]) @[VoterPE.scala 30:61]
      node _sum_T_8 = add(_sum_T_7, queues[3].bits.scores[2]) @[VoterPE.scala 30:61]
      node sum_2 = add(_sum_T_8, queues[4].bits.scores[2]) @[VoterPE.scala 30:61]
      io.sample_out.bits.scores[2] <= sum_2 @[VoterPE.scala 31:42]
      node _sum_T_9 = add(queues[0].bits.scores[3], queues[1].bits.scores[3]) @[VoterPE.scala 30:61]
      node _sum_T_10 = add(_sum_T_9, queues[2].bits.scores[3]) @[VoterPE.scala 30:61]
      node _sum_T_11 = add(_sum_T_10, queues[3].bits.scores[3]) @[VoterPE.scala 30:61]
      node sum_3 = add(_sum_T_11, queues[4].bits.scores[3]) @[VoterPE.scala 30:61]
      io.sample_out.bits.scores[3] <= sum_3 @[VoterPE.scala 31:42]
      node _sum_T_12 = add(queues[0].bits.scores[4], queues[1].bits.scores[4]) @[VoterPE.scala 30:61]
      node _sum_T_13 = add(_sum_T_12, queues[2].bits.scores[4]) @[VoterPE.scala 30:61]
      node _sum_T_14 = add(_sum_T_13, queues[3].bits.scores[4]) @[VoterPE.scala 30:61]
      node sum_4 = add(_sum_T_14, queues[4].bits.scores[4]) @[VoterPE.scala 30:61]
      io.sample_out.bits.scores[4] <= sum_4 @[VoterPE.scala 31:42]
      node _sum_T_15 = add(queues[0].bits.scores[5], queues[1].bits.scores[5]) @[VoterPE.scala 30:61]
      node _sum_T_16 = add(_sum_T_15, queues[2].bits.scores[5]) @[VoterPE.scala 30:61]
      node _sum_T_17 = add(_sum_T_16, queues[3].bits.scores[5]) @[VoterPE.scala 30:61]
      node sum_5 = add(_sum_T_17, queues[4].bits.scores[5]) @[VoterPE.scala 30:61]
      io.sample_out.bits.scores[5] <= sum_5 @[VoterPE.scala 31:42]
    else :
      io.sample_out.valid <= UInt<1>("h0") @[VoterPE.scala 35:29]
      io.sample_out.bits.clock_cycles is invalid @[VoterPE.scala 36:28]
      io.sample_out.bits.last is invalid @[VoterPE.scala 36:28]
      io.sample_out.bits.dest is invalid @[VoterPE.scala 36:28]
      io.sample_out.bits.weights[0] is invalid @[VoterPE.scala 36:28]
      io.sample_out.bits.weights[1] is invalid @[VoterPE.scala 36:28]
      io.sample_out.bits.weights[2] is invalid @[VoterPE.scala 36:28]
      io.sample_out.bits.weights[3] is invalid @[VoterPE.scala 36:28]
      io.sample_out.bits.weights[4] is invalid @[VoterPE.scala 36:28]
      io.sample_out.bits.scores[0] is invalid @[VoterPE.scala 36:28]
      io.sample_out.bits.scores[1] is invalid @[VoterPE.scala 36:28]
      io.sample_out.bits.scores[2] is invalid @[VoterPE.scala 36:28]
      io.sample_out.bits.scores[3] is invalid @[VoterPE.scala 36:28]
      io.sample_out.bits.scores[4] is invalid @[VoterPE.scala 36:28]
      io.sample_out.bits.scores[5] is invalid @[VoterPE.scala 36:28]
      io.sample_out.bits.tree_to_exec is invalid @[VoterPE.scala 36:28]
      io.sample_out.bits.search_for_root is invalid @[VoterPE.scala 36:28]
      io.sample_out.bits.shift is invalid @[VoterPE.scala 36:28]
      io.sample_out.bits.offset is invalid @[VoterPE.scala 36:28]
      io.sample_out.bits.features[0] is invalid @[VoterPE.scala 36:28]
      io.sample_out.bits.features[1] is invalid @[VoterPE.scala 36:28]
      io.sample_out.bits.features[2] is invalid @[VoterPE.scala 36:28]
      io.sample_out.bits.features[3] is invalid @[VoterPE.scala 36:28]
      io.sample_out.bits.features[4] is invalid @[VoterPE.scala 36:28]
    node _queues_0_ready_T = and(queues[1].valid, queues[2].valid) @[VoterPE.scala 43:113]
    node _queues_0_ready_T_1 = and(_queues_0_ready_T, queues[3].valid) @[VoterPE.scala 43:113]
    node _queues_0_ready_T_2 = and(_queues_0_ready_T_1, queues[4].valid) @[VoterPE.scala 43:113]
    node _queues_0_ready_T_3 = and(io.sample_out.ready, _queues_0_ready_T_2) @[VoterPE.scala 43:52]
    queues[0].ready <= _queues_0_ready_T_3 @[VoterPE.scala 43:29]
    node _queues_1_ready_T = and(queues[0].valid, queues[2].valid) @[VoterPE.scala 43:113]
    node _queues_1_ready_T_1 = and(_queues_1_ready_T, queues[3].valid) @[VoterPE.scala 43:113]
    node _queues_1_ready_T_2 = and(_queues_1_ready_T_1, queues[4].valid) @[VoterPE.scala 43:113]
    node _queues_1_ready_T_3 = and(io.sample_out.ready, _queues_1_ready_T_2) @[VoterPE.scala 43:52]
    queues[1].ready <= _queues_1_ready_T_3 @[VoterPE.scala 43:29]
    node _queues_2_ready_T = and(queues[0].valid, queues[1].valid) @[VoterPE.scala 43:113]
    node _queues_2_ready_T_1 = and(_queues_2_ready_T, queues[3].valid) @[VoterPE.scala 43:113]
    node _queues_2_ready_T_2 = and(_queues_2_ready_T_1, queues[4].valid) @[VoterPE.scala 43:113]
    node _queues_2_ready_T_3 = and(io.sample_out.ready, _queues_2_ready_T_2) @[VoterPE.scala 43:52]
    queues[2].ready <= _queues_2_ready_T_3 @[VoterPE.scala 43:29]
    node _queues_3_ready_T = and(queues[0].valid, queues[1].valid) @[VoterPE.scala 43:113]
    node _queues_3_ready_T_1 = and(_queues_3_ready_T, queues[2].valid) @[VoterPE.scala 43:113]
    node _queues_3_ready_T_2 = and(_queues_3_ready_T_1, queues[4].valid) @[VoterPE.scala 43:113]
    node _queues_3_ready_T_3 = and(io.sample_out.ready, _queues_3_ready_T_2) @[VoterPE.scala 43:52]
    queues[3].ready <= _queues_3_ready_T_3 @[VoterPE.scala 43:29]
    node _queues_4_ready_T = and(queues[0].valid, queues[1].valid) @[VoterPE.scala 43:113]
    node _queues_4_ready_T_1 = and(_queues_4_ready_T, queues[2].valid) @[VoterPE.scala 43:113]
    node _queues_4_ready_T_2 = and(_queues_4_ready_T_1, queues[3].valid) @[VoterPE.scala 43:113]
    node _queues_4_ready_T_3 = and(io.sample_out.ready, _queues_4_ready_T_2) @[VoterPE.scala 43:52]
    queues[4].ready <= _queues_4_ready_T_3 @[VoterPE.scala 43:29]

  module Queue_7 :
    input clock : Clock
    input reset : Reset
    output io : { flip enq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, deq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, count : UInt<2>}

    cmem ram : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>} [3] @[Decoupled.scala 275:95]
    reg enq_ptr_value : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[Counter.scala 61:40]
    reg deq_ptr_value : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[Counter.scala 61:40]
    reg maybe_full : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[Decoupled.scala 278:27]
    node ptr_match = eq(enq_ptr_value, deq_ptr_value) @[Decoupled.scala 279:33]
    node _empty_T = eq(maybe_full, UInt<1>("h0")) @[Decoupled.scala 280:28]
    node empty = and(ptr_match, _empty_T) @[Decoupled.scala 280:25]
    node full = and(ptr_match, maybe_full) @[Decoupled.scala 281:24]
    node _do_enq_T = and(io.enq.ready, io.enq.valid) @[Decoupled.scala 52:35]
    wire do_enq : UInt<1>
    do_enq <= _do_enq_T
    node _do_deq_T = and(io.deq.ready, io.deq.valid) @[Decoupled.scala 52:35]
    wire do_deq : UInt<1>
    do_deq <= _do_deq_T
    when do_enq : @[Decoupled.scala 288:16]
      infer mport MPORT = ram[enq_ptr_value], clock @[Decoupled.scala 289:8]
      MPORT <= io.enq.bits @[Decoupled.scala 289:24]
      node wrap = eq(enq_ptr_value, UInt<2>("h2")) @[Counter.scala 73:24]
      node _value_T = add(enq_ptr_value, UInt<1>("h1")) @[Counter.scala 77:24]
      node _value_T_1 = tail(_value_T, 1) @[Counter.scala 77:24]
      enq_ptr_value <= _value_T_1 @[Counter.scala 77:15]
      when wrap : @[Counter.scala 87:20]
        enq_ptr_value <= UInt<1>("h0") @[Counter.scala 87:28]
    when do_deq : @[Decoupled.scala 292:16]
      node wrap_1 = eq(deq_ptr_value, UInt<2>("h2")) @[Counter.scala 73:24]
      node _value_T_2 = add(deq_ptr_value, UInt<1>("h1")) @[Counter.scala 77:24]
      node _value_T_3 = tail(_value_T_2, 1) @[Counter.scala 77:24]
      deq_ptr_value <= _value_T_3 @[Counter.scala 77:15]
      when wrap_1 : @[Counter.scala 87:20]
        deq_ptr_value <= UInt<1>("h0") @[Counter.scala 87:28]
    node _T = neq(do_enq, do_deq) @[Decoupled.scala 295:15]
    when _T : @[Decoupled.scala 295:27]
      maybe_full <= do_enq @[Decoupled.scala 296:16]
    when UInt<1>("h0") : @[Decoupled.scala 298:15]
      enq_ptr_value <= UInt<1>("h0") @[Counter.scala 98:11]
      deq_ptr_value <= UInt<1>("h0") @[Counter.scala 98:11]
      maybe_full <= UInt<1>("h0") @[Decoupled.scala 301:16]
    node _io_deq_valid_T = eq(empty, UInt<1>("h0")) @[Decoupled.scala 304:19]
    io.deq.valid <= _io_deq_valid_T @[Decoupled.scala 304:16]
    node _io_enq_ready_T = eq(full, UInt<1>("h0")) @[Decoupled.scala 305:19]
    io.enq.ready <= _io_enq_ready_T @[Decoupled.scala 305:16]
    infer mport io_deq_bits_MPORT = ram[deq_ptr_value], clock @[Decoupled.scala 312:23]
    io.deq.bits <= io_deq_bits_MPORT @[Decoupled.scala 312:17]
    node _ptr_diff_T = sub(enq_ptr_value, deq_ptr_value) @[Decoupled.scala 328:32]
    node ptr_diff = tail(_ptr_diff_T, 1) @[Decoupled.scala 328:32]
    node _io_count_T = mux(maybe_full, UInt<2>("h3"), UInt<1>("h0")) @[Decoupled.scala 335:10]
    node _io_count_T_1 = gt(deq_ptr_value, enq_ptr_value) @[Decoupled.scala 336:25]
    node _io_count_T_2 = add(UInt<2>("h3"), ptr_diff) @[Decoupled.scala 336:57]
    node _io_count_T_3 = tail(_io_count_T_2, 1) @[Decoupled.scala 336:57]
    node _io_count_T_4 = mux(_io_count_T_1, _io_count_T_3, ptr_diff) @[Decoupled.scala 336:10]
    node _io_count_T_5 = mux(ptr_match, _io_count_T, _io_count_T_4) @[Decoupled.scala 333:20]
    io.count <= _io_count_T_5 @[Decoupled.scala 333:14]

  module TreePE :
    input clock : Clock
    input reset : Reset
    output io : { flip sample_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, flip mem : { flip enable_1 : UInt<1>, flip write_1 : UInt<1>, flip addr_1 : UInt<13>, flip dataIn_1 : UInt<64>, dataOut_1 : UInt<64>, flip enable_2 : UInt<1>, flip write_2 : UInt<1>, flip addr_2 : UInt<13>, flip dataIn_2 : UInt<64>, dataOut_2 : UInt<64>}, sample_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}}

    inst queue of Queue_7 @[Decoupled.scala 377:21]
    queue.clock <= clock
    queue.reset <= reset
    queue.io.enq.valid <= io.sample_in.valid @[Decoupled.scala 379:22]
    queue.io.enq.bits.clock_cycles <= io.sample_in.bits.clock_cycles @[Decoupled.scala 380:21]
    queue.io.enq.bits.last <= io.sample_in.bits.last @[Decoupled.scala 380:21]
    queue.io.enq.bits.dest <= io.sample_in.bits.dest @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[0] <= io.sample_in.bits.weights[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[1] <= io.sample_in.bits.weights[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[2] <= io.sample_in.bits.weights[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[3] <= io.sample_in.bits.weights[3] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[4] <= io.sample_in.bits.weights[4] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[0] <= io.sample_in.bits.scores[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[1] <= io.sample_in.bits.scores[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[2] <= io.sample_in.bits.scores[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[3] <= io.sample_in.bits.scores[3] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[4] <= io.sample_in.bits.scores[4] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[5] <= io.sample_in.bits.scores[5] @[Decoupled.scala 380:21]
    queue.io.enq.bits.tree_to_exec <= io.sample_in.bits.tree_to_exec @[Decoupled.scala 380:21]
    queue.io.enq.bits.search_for_root <= io.sample_in.bits.search_for_root @[Decoupled.scala 380:21]
    queue.io.enq.bits.shift <= io.sample_in.bits.shift @[Decoupled.scala 380:21]
    queue.io.enq.bits.offset <= io.sample_in.bits.offset @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[0] <= io.sample_in.bits.features[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[1] <= io.sample_in.bits.features[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[2] <= io.sample_in.bits.features[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[3] <= io.sample_in.bits.features[3] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[4] <= io.sample_in.bits.features[4] @[Decoupled.scala 380:21]
    io.sample_in.ready <= queue.io.enq.ready @[Decoupled.scala 381:17]
    io.mem.enable_1 <= UInt<1>("h1") @[TreePE.scala 23:21]
    io.mem.addr_1 <= queue.io.deq.bits.offset @[TreePE.scala 24:19]
    io.mem.write_1 <= UInt<1>("h0") @[TreePE.scala 25:20]
    io.mem.dataIn_1 <= UInt<1>("h0") @[TreePE.scala 26:21]
    io.mem.enable_2 is invalid @[TreePE.scala 28:21]
    io.mem.addr_2 is invalid @[TreePE.scala 29:19]
    io.mem.write_2 is invalid @[TreePE.scala 30:20]
    io.mem.dataIn_2 is invalid @[TreePE.scala 31:21]
    reg REG : UInt<1>, clock with :
      reset => (UInt<1>("h0"), REG) @[TreePE.scala 35:17]
    REG <= queue.io.deq.valid @[TreePE.scala 35:17]
    when REG : @[TreePE.scala 35:31]
      node attr_id = bits(io.mem.dataOut_1, 34, 32) @[TreePE.scala 37:37]
      node threshold = bits(io.mem.dataOut_1, 15, 0) @[TreePE.scala 38:39]
      node nodeRA = bits(io.mem.dataOut_1, 31, 16) @[TreePE.scala 39:36]
      node leftChildInfo = bits(io.mem.dataOut_1, 44, 35) @[TreePE.scala 40:43]
      node rightChildInfo = bits(io.mem.dataOut_1, 54, 45) @[TreePE.scala 41:44]
      node leftChildType = bits(io.mem.dataOut_1, 55, 55) @[TreePE.scala 42:43]
      node rightChildType = bits(io.mem.dataOut_1, 56, 56) @[TreePE.scala 43:44]
      node is_valid = bits(io.mem.dataOut_1, 57, 57) @[TreePE.scala 44:38]
      node depth_indicator = bits(io.mem.dataOut_1, 60, 58) @[TreePE.scala 45:45]
      reg REG_1 : Fixed<32><<16>>[5], clock with :
        reset => (UInt<1>("h0"), REG_1) @[TreePE.scala 47:45]
      REG_1 <= queue.io.deq.bits.features @[TreePE.scala 47:45]
      io.sample_out.bits.features <= REG_1 @[TreePE.scala 47:35]
      reg REG_2 : Fixed<16><<8>>[5], clock with :
        reset => (UInt<1>("h0"), REG_2) @[TreePE.scala 48:44]
      REG_2 <= queue.io.deq.bits.weights @[TreePE.scala 48:44]
      io.sample_out.bits.weights <= REG_2 @[TreePE.scala 48:34]
      reg io_sample_out_bits_tree_to_exec_REG : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_tree_to_exec_REG) @[TreePE.scala 49:49]
      io_sample_out_bits_tree_to_exec_REG <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 49:49]
      io.sample_out.bits.tree_to_exec <= io_sample_out_bits_tree_to_exec_REG @[TreePE.scala 49:39]
      reg REG_3 : Fixed<16><<8>>[6], clock with :
        reset => (UInt<1>("h0"), REG_3) @[TreePE.scala 50:43]
      REG_3 <= queue.io.deq.bits.scores @[TreePE.scala 50:43]
      io.sample_out.bits.scores <= REG_3 @[TreePE.scala 50:33]
      io.sample_out.valid <= UInt<1>("h1") @[TreePE.scala 51:27]
      reg io_sample_out_bits_clock_cycles_REG : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_clock_cycles_REG) @[TreePE.scala 52:49]
      io_sample_out_bits_clock_cycles_REG <= queue.io.deq.bits.clock_cycles @[TreePE.scala 52:49]
      io.sample_out.bits.clock_cycles <= io_sample_out_bits_clock_cycles_REG @[TreePE.scala 52:39]
      wire offset : UInt<10> @[TreePE.scala 55:26]
      wire shift : UInt<1> @[TreePE.scala 56:25]
      reg features_bits : Fixed<32><<16>>[5], clock with :
        reset => (UInt<1>("h0"), features_bits) @[TreePE.scala 57:36]
      features_bits <= queue.io.deq.bits.features @[TreePE.scala 57:36]
      reg scores_bits : Fixed<16><<8>>[6], clock with :
        reset => (UInt<1>("h0"), scores_bits) @[TreePE.scala 58:34]
      scores_bits <= queue.io.deq.bits.scores @[TreePE.scala 58:34]
      reg weights_bits : Fixed<16><<8>>[5], clock with :
        reset => (UInt<1>("h0"), weights_bits) @[TreePE.scala 59:35]
      weights_bits <= queue.io.deq.bits.weights @[TreePE.scala 59:35]
      node _shift_T = asFixedPoint(threshold, 8) @[TreePE.scala 60:69]
      node _shift_T_1 = lt(features_bits[attr_id], _shift_T) @[TreePE.scala 60:45]
      node _shift_T_2 = mux(_shift_T_1, leftChildType, rightChildType) @[TreePE.scala 60:21]
      shift <= _shift_T_2 @[TreePE.scala 60:15]
      node _offset_T = asFixedPoint(threshold, 8) @[TreePE.scala 61:70]
      node _offset_T_1 = lt(features_bits[attr_id], _offset_T) @[TreePE.scala 61:46]
      node _offset_T_2 = mux(_offset_T_1, leftChildInfo, rightChildInfo) @[TreePE.scala 61:22]
      offset <= _offset_T_2 @[TreePE.scala 61:16]
      node _io_sample_out_bits_offset_T = eq(shift, UInt<1>("h0")) @[TreePE.scala 62:48]
      reg io_sample_out_bits_offset_REG : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_offset_REG) @[TreePE.scala 62:67]
      io_sample_out_bits_offset_REG <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 62:67]
      node _io_sample_out_bits_offset_T_1 = mux(_io_sample_out_bits_offset_T, io_sample_out_bits_offset_REG, offset) @[TreePE.scala 62:41]
      io.sample_out.bits.offset <= _io_sample_out_bits_offset_T_1 @[TreePE.scala 62:35]
      io.sample_out.bits.shift <= UInt<1>("h0") @[TreePE.scala 63:34]
      node _io_sample_out_bits_search_for_root_T = eq(shift, UInt<1>("h0")) @[TreePE.scala 64:47]
      io.sample_out.bits.search_for_root <= _io_sample_out_bits_search_for_root_T @[TreePE.scala 64:44]
      node _io_sample_out_bits_scores_0_T = eq(shift, UInt<1>("h0")) @[TreePE.scala 66:72]
      node _io_sample_out_bits_scores_0_T_1 = and(_io_sample_out_bits_scores_0_T, is_valid) @[TreePE.scala 66:84]
      node _io_sample_out_bits_scores_0_T_2 = eq(UInt<1>("h0"), offset) @[TreePE.scala 66:102]
      node _io_sample_out_bits_scores_0_T_3 = and(_io_sample_out_bits_scores_0_T_1, _io_sample_out_bits_scores_0_T_2) @[TreePE.scala 66:95]
      node _io_sample_out_bits_scores_0_T_4 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 66:151]
      node _io_sample_out_bits_scores_0_T_5 = mux(_io_sample_out_bits_scores_0_T_3, _io_sample_out_bits_scores_0_T_4, UInt<16>("h0")) @[TreePE.scala 66:64]
      node _io_sample_out_bits_scores_0_T_6 = asFixedPoint(_io_sample_out_bits_scores_0_T_5, 8) @[TreePE.scala 66:178]
      node _io_sample_out_bits_scores_0_T_7 = add(scores_bits[0], _io_sample_out_bits_scores_0_T_6) @[TreePE.scala 66:58]
      node _io_sample_out_bits_scores_0_T_8 = tail(_io_sample_out_bits_scores_0_T_7, 1) @[TreePE.scala 66:58]
      node _io_sample_out_bits_scores_0_T_9 = asFixedPoint(_io_sample_out_bits_scores_0_T_8, 8) @[TreePE.scala 66:58]
      io.sample_out.bits.scores[0] <= _io_sample_out_bits_scores_0_T_9 @[TreePE.scala 66:40]
      node _io_sample_out_bits_scores_1_T = eq(shift, UInt<1>("h0")) @[TreePE.scala 66:72]
      node _io_sample_out_bits_scores_1_T_1 = and(_io_sample_out_bits_scores_1_T, is_valid) @[TreePE.scala 66:84]
      node _io_sample_out_bits_scores_1_T_2 = eq(UInt<1>("h1"), offset) @[TreePE.scala 66:102]
      node _io_sample_out_bits_scores_1_T_3 = and(_io_sample_out_bits_scores_1_T_1, _io_sample_out_bits_scores_1_T_2) @[TreePE.scala 66:95]
      node _io_sample_out_bits_scores_1_T_4 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 66:151]
      node _io_sample_out_bits_scores_1_T_5 = mux(_io_sample_out_bits_scores_1_T_3, _io_sample_out_bits_scores_1_T_4, UInt<16>("h0")) @[TreePE.scala 66:64]
      node _io_sample_out_bits_scores_1_T_6 = asFixedPoint(_io_sample_out_bits_scores_1_T_5, 8) @[TreePE.scala 66:178]
      node _io_sample_out_bits_scores_1_T_7 = add(scores_bits[1], _io_sample_out_bits_scores_1_T_6) @[TreePE.scala 66:58]
      node _io_sample_out_bits_scores_1_T_8 = tail(_io_sample_out_bits_scores_1_T_7, 1) @[TreePE.scala 66:58]
      node _io_sample_out_bits_scores_1_T_9 = asFixedPoint(_io_sample_out_bits_scores_1_T_8, 8) @[TreePE.scala 66:58]
      io.sample_out.bits.scores[1] <= _io_sample_out_bits_scores_1_T_9 @[TreePE.scala 66:40]
      node _io_sample_out_bits_scores_2_T = eq(shift, UInt<1>("h0")) @[TreePE.scala 66:72]
      node _io_sample_out_bits_scores_2_T_1 = and(_io_sample_out_bits_scores_2_T, is_valid) @[TreePE.scala 66:84]
      node _io_sample_out_bits_scores_2_T_2 = eq(UInt<2>("h2"), offset) @[TreePE.scala 66:102]
      node _io_sample_out_bits_scores_2_T_3 = and(_io_sample_out_bits_scores_2_T_1, _io_sample_out_bits_scores_2_T_2) @[TreePE.scala 66:95]
      node _io_sample_out_bits_scores_2_T_4 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 66:151]
      node _io_sample_out_bits_scores_2_T_5 = mux(_io_sample_out_bits_scores_2_T_3, _io_sample_out_bits_scores_2_T_4, UInt<16>("h0")) @[TreePE.scala 66:64]
      node _io_sample_out_bits_scores_2_T_6 = asFixedPoint(_io_sample_out_bits_scores_2_T_5, 8) @[TreePE.scala 66:178]
      node _io_sample_out_bits_scores_2_T_7 = add(scores_bits[2], _io_sample_out_bits_scores_2_T_6) @[TreePE.scala 66:58]
      node _io_sample_out_bits_scores_2_T_8 = tail(_io_sample_out_bits_scores_2_T_7, 1) @[TreePE.scala 66:58]
      node _io_sample_out_bits_scores_2_T_9 = asFixedPoint(_io_sample_out_bits_scores_2_T_8, 8) @[TreePE.scala 66:58]
      io.sample_out.bits.scores[2] <= _io_sample_out_bits_scores_2_T_9 @[TreePE.scala 66:40]
      node _io_sample_out_bits_scores_3_T = eq(shift, UInt<1>("h0")) @[TreePE.scala 66:72]
      node _io_sample_out_bits_scores_3_T_1 = and(_io_sample_out_bits_scores_3_T, is_valid) @[TreePE.scala 66:84]
      node _io_sample_out_bits_scores_3_T_2 = eq(UInt<2>("h3"), offset) @[TreePE.scala 66:102]
      node _io_sample_out_bits_scores_3_T_3 = and(_io_sample_out_bits_scores_3_T_1, _io_sample_out_bits_scores_3_T_2) @[TreePE.scala 66:95]
      node _io_sample_out_bits_scores_3_T_4 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 66:151]
      node _io_sample_out_bits_scores_3_T_5 = mux(_io_sample_out_bits_scores_3_T_3, _io_sample_out_bits_scores_3_T_4, UInt<16>("h0")) @[TreePE.scala 66:64]
      node _io_sample_out_bits_scores_3_T_6 = asFixedPoint(_io_sample_out_bits_scores_3_T_5, 8) @[TreePE.scala 66:178]
      node _io_sample_out_bits_scores_3_T_7 = add(scores_bits[3], _io_sample_out_bits_scores_3_T_6) @[TreePE.scala 66:58]
      node _io_sample_out_bits_scores_3_T_8 = tail(_io_sample_out_bits_scores_3_T_7, 1) @[TreePE.scala 66:58]
      node _io_sample_out_bits_scores_3_T_9 = asFixedPoint(_io_sample_out_bits_scores_3_T_8, 8) @[TreePE.scala 66:58]
      io.sample_out.bits.scores[3] <= _io_sample_out_bits_scores_3_T_9 @[TreePE.scala 66:40]
      node _io_sample_out_bits_scores_4_T = eq(shift, UInt<1>("h0")) @[TreePE.scala 66:72]
      node _io_sample_out_bits_scores_4_T_1 = and(_io_sample_out_bits_scores_4_T, is_valid) @[TreePE.scala 66:84]
      node _io_sample_out_bits_scores_4_T_2 = eq(UInt<3>("h4"), offset) @[TreePE.scala 66:102]
      node _io_sample_out_bits_scores_4_T_3 = and(_io_sample_out_bits_scores_4_T_1, _io_sample_out_bits_scores_4_T_2) @[TreePE.scala 66:95]
      node _io_sample_out_bits_scores_4_T_4 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 66:151]
      node _io_sample_out_bits_scores_4_T_5 = mux(_io_sample_out_bits_scores_4_T_3, _io_sample_out_bits_scores_4_T_4, UInt<16>("h0")) @[TreePE.scala 66:64]
      node _io_sample_out_bits_scores_4_T_6 = asFixedPoint(_io_sample_out_bits_scores_4_T_5, 8) @[TreePE.scala 66:178]
      node _io_sample_out_bits_scores_4_T_7 = add(scores_bits[4], _io_sample_out_bits_scores_4_T_6) @[TreePE.scala 66:58]
      node _io_sample_out_bits_scores_4_T_8 = tail(_io_sample_out_bits_scores_4_T_7, 1) @[TreePE.scala 66:58]
      node _io_sample_out_bits_scores_4_T_9 = asFixedPoint(_io_sample_out_bits_scores_4_T_8, 8) @[TreePE.scala 66:58]
      io.sample_out.bits.scores[4] <= _io_sample_out_bits_scores_4_T_9 @[TreePE.scala 66:40]
      node _io_sample_out_bits_scores_5_T = eq(shift, UInt<1>("h0")) @[TreePE.scala 66:72]
      node _io_sample_out_bits_scores_5_T_1 = and(_io_sample_out_bits_scores_5_T, is_valid) @[TreePE.scala 66:84]
      node _io_sample_out_bits_scores_5_T_2 = eq(UInt<3>("h5"), offset) @[TreePE.scala 66:102]
      node _io_sample_out_bits_scores_5_T_3 = and(_io_sample_out_bits_scores_5_T_1, _io_sample_out_bits_scores_5_T_2) @[TreePE.scala 66:95]
      node _io_sample_out_bits_scores_5_T_4 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 66:151]
      node _io_sample_out_bits_scores_5_T_5 = mux(_io_sample_out_bits_scores_5_T_3, _io_sample_out_bits_scores_5_T_4, UInt<16>("h0")) @[TreePE.scala 66:64]
      node _io_sample_out_bits_scores_5_T_6 = asFixedPoint(_io_sample_out_bits_scores_5_T_5, 8) @[TreePE.scala 66:178]
      node _io_sample_out_bits_scores_5_T_7 = add(scores_bits[5], _io_sample_out_bits_scores_5_T_6) @[TreePE.scala 66:58]
      node _io_sample_out_bits_scores_5_T_8 = tail(_io_sample_out_bits_scores_5_T_7, 1) @[TreePE.scala 66:58]
      node _io_sample_out_bits_scores_5_T_9 = asFixedPoint(_io_sample_out_bits_scores_5_T_8, 8) @[TreePE.scala 66:58]
      io.sample_out.bits.scores[5] <= _io_sample_out_bits_scores_5_T_9 @[TreePE.scala 66:40]
      reg io_sample_out_bits_dest_REG : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_dest_REG) @[TreePE.scala 68:43]
      io_sample_out_bits_dest_REG <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 68:43]
      node _io_sample_out_bits_dest_T = eq(io_sample_out_bits_dest_REG, UInt<1>("h1")) @[TreePE.scala 68:69]
      io.sample_out.bits.dest <= _io_sample_out_bits_dest_T @[TreePE.scala 68:33]
      reg io_sample_out_bits_last_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_last_REG) @[TreePE.scala 69:43]
      io_sample_out_bits_last_REG <= queue.io.deq.bits.last @[TreePE.scala 69:43]
      io.sample_out.bits.last <= io_sample_out_bits_last_REG @[TreePE.scala 69:33]
    else :
      io.sample_out.bits.clock_cycles is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.last is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.dest is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[0] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[1] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[2] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[3] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[4] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[0] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[1] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[2] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[3] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[4] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[5] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.tree_to_exec is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.search_for_root is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.shift is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.offset is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[0] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[1] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[2] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[3] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[4] is invalid @[TreePE.scala 88:26]
      io.sample_out.valid <= UInt<1>("h0") @[TreePE.scala 89:27]
    queue.io.deq.ready <= io.sample_out.ready @[TreePE.scala 92:17]

  module TreePEwithBRAM :
    input clock : Clock
    input reset : Reset
    output pe_io : { flip sample_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, flip mem : { flip enable_1 : UInt<1>, flip write_1 : UInt<1>, flip addr_1 : UInt<13>, flip dataIn_1 : UInt<64>, dataOut_1 : UInt<64>, flip enable_2 : UInt<1>, flip write_2 : UInt<1>, flip addr_2 : UInt<13>, flip dataIn_2 : UInt<64>, dataOut_2 : UInt<64>}, sample_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}}

    inst pe of TreePE @[TreePE.scala 104:18]
    pe.clock <= clock
    pe.reset <= reset
    pe_io.sample_out.bits <= pe.io.sample_out.bits @[TreePE.scala 106:9]
    pe_io.sample_out.valid <= pe.io.sample_out.valid @[TreePE.scala 106:9]
    pe.io.sample_out.ready <= pe_io.sample_out.ready @[TreePE.scala 106:9]
    pe.io.mem <= pe_io.mem @[TreePE.scala 106:9]
    pe.io.sample_in <= pe_io.sample_in @[TreePE.scala 106:9]

  extmodule BRAMBlackBoxSingle :
    input clk : Clock
    input a_wr : UInt<1>
    input a_addr : UInt<11>
    input a_din : UInt<32>
    output a_dout : UInt<32>
    input b_wr : UInt<1>
    input b_addr : UInt<11>
    input b_din : UInt<32>
    output b_dout : UInt<32>
    defname = BRAMBlackBoxSingle
    parameter DATA = 32
    parameter ADDR = 11

  module BRAMBlackBoxAsymm :
    input clock : Clock
    input reset : Reset
    output io : { flip clk : Clock, flip a_en : UInt<1>, flip a_wr : UInt<1>, flip a_addr : UInt<13>, flip a_din : UInt<32>, a_dout : UInt<32>, flip b_en : UInt<1>, flip b_wr : UInt<1>, flip b_addr : UInt<11>, flip b_din : UInt<64>, b_dout : UInt<64>}

    inst bram_1 of BRAMBlackBoxSingle @[ME.scala 202:24]
    bram_1.b_dout is invalid
    bram_1.b_din is invalid
    bram_1.b_addr is invalid
    bram_1.b_wr is invalid
    bram_1.a_dout is invalid
    bram_1.a_din is invalid
    bram_1.a_addr is invalid
    bram_1.a_wr is invalid
    bram_1.clk is invalid
    node _bram_1_io_a_wr_T = mux(io.a_en, io.a_wr, io.b_wr) @[ME.scala 204:26]
    bram_1.a_wr <= _bram_1_io_a_wr_T @[ME.scala 204:20]
    node _bram_1_io_a_addr_T = shr(io.a_addr, 2) @[ME.scala 205:49]
    node _bram_1_io_a_addr_T_1 = shl(io.b_addr, 1) @[ME.scala 205:67]
    node _bram_1_io_a_addr_T_2 = mux(io.a_en, _bram_1_io_a_addr_T, _bram_1_io_a_addr_T_1) @[ME.scala 205:28]
    bram_1.a_addr <= _bram_1_io_a_addr_T_2 @[ME.scala 205:22]
    node _bram_1_io_a_din_T = bits(io.b_din, 31, 0) @[ME.scala 206:55]
    node _bram_1_io_a_din_T_1 = mux(io.a_en, io.a_din, _bram_1_io_a_din_T) @[ME.scala 206:27]
    bram_1.a_din <= _bram_1_io_a_din_T_1 @[ME.scala 206:21]
    node _io_b_dout_T = cat(bram_1.b_dout, bram_1.a_dout) @[Cat.scala 33:92]
    io.b_dout <= _io_b_dout_T @[ME.scala 207:15]
    node _bram_1_io_b_wr_T = mux(io.a_en, UInt<1>("h0"), io.b_wr) @[ME.scala 208:26]
    bram_1.b_wr <= _bram_1_io_b_wr_T @[ME.scala 208:20]
    node _bram_1_io_b_addr_T = shl(io.b_addr, 1) @[ME.scala 209:36]
    node _bram_1_io_b_addr_T_1 = add(_bram_1_io_b_addr_T, UInt<1>("h1")) @[ME.scala 209:42]
    node _bram_1_io_b_addr_T_2 = tail(_bram_1_io_b_addr_T_1, 1) @[ME.scala 209:42]
    bram_1.b_addr <= _bram_1_io_b_addr_T_2 @[ME.scala 209:22]
    node _bram_1_io_b_din_T = bits(io.b_din, 63, 32) @[ME.scala 210:32]
    bram_1.b_din <= _bram_1_io_b_din_T @[ME.scala 210:21]
    io.a_dout <= bram_1.a_dout @[ME.scala 211:15]
    bram_1.clk <= io.clk @[ME.scala 212:19]

  module Queue_8 :
    input clock : Clock
    input reset : Reset
    output io : { flip enq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, deq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, count : UInt<8>}

    cmem ram : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>} [128] @[Decoupled.scala 275:95]
    reg enq_ptr_value : UInt<7>, clock with :
      reset => (reset, UInt<7>("h0")) @[Counter.scala 61:40]
    reg deq_ptr_value : UInt<7>, clock with :
      reset => (reset, UInt<7>("h0")) @[Counter.scala 61:40]
    reg maybe_full : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[Decoupled.scala 278:27]
    node ptr_match = eq(enq_ptr_value, deq_ptr_value) @[Decoupled.scala 279:33]
    node _empty_T = eq(maybe_full, UInt<1>("h0")) @[Decoupled.scala 280:28]
    node empty = and(ptr_match, _empty_T) @[Decoupled.scala 280:25]
    node full = and(ptr_match, maybe_full) @[Decoupled.scala 281:24]
    node _do_enq_T = and(io.enq.ready, io.enq.valid) @[Decoupled.scala 52:35]
    wire do_enq : UInt<1>
    do_enq <= _do_enq_T
    node _do_deq_T = and(io.deq.ready, io.deq.valid) @[Decoupled.scala 52:35]
    wire do_deq : UInt<1>
    do_deq <= _do_deq_T
    when do_enq : @[Decoupled.scala 288:16]
      infer mport MPORT = ram[enq_ptr_value], clock @[Decoupled.scala 289:8]
      MPORT <= io.enq.bits @[Decoupled.scala 289:24]
      node wrap = eq(enq_ptr_value, UInt<7>("h7f")) @[Counter.scala 73:24]
      node _value_T = add(enq_ptr_value, UInt<1>("h1")) @[Counter.scala 77:24]
      node _value_T_1 = tail(_value_T, 1) @[Counter.scala 77:24]
      enq_ptr_value <= _value_T_1 @[Counter.scala 77:15]
    when do_deq : @[Decoupled.scala 292:16]
      node wrap_1 = eq(deq_ptr_value, UInt<7>("h7f")) @[Counter.scala 73:24]
      node _value_T_2 = add(deq_ptr_value, UInt<1>("h1")) @[Counter.scala 77:24]
      node _value_T_3 = tail(_value_T_2, 1) @[Counter.scala 77:24]
      deq_ptr_value <= _value_T_3 @[Counter.scala 77:15]
    node _T = neq(do_enq, do_deq) @[Decoupled.scala 295:15]
    when _T : @[Decoupled.scala 295:27]
      maybe_full <= do_enq @[Decoupled.scala 296:16]
    when UInt<1>("h0") : @[Decoupled.scala 298:15]
      enq_ptr_value <= UInt<1>("h0") @[Counter.scala 98:11]
      deq_ptr_value <= UInt<1>("h0") @[Counter.scala 98:11]
      maybe_full <= UInt<1>("h0") @[Decoupled.scala 301:16]
    node _io_deq_valid_T = eq(empty, UInt<1>("h0")) @[Decoupled.scala 304:19]
    io.deq.valid <= _io_deq_valid_T @[Decoupled.scala 304:16]
    node _io_enq_ready_T = eq(full, UInt<1>("h0")) @[Decoupled.scala 305:19]
    io.enq.ready <= _io_enq_ready_T @[Decoupled.scala 305:16]
    infer mport io_deq_bits_MPORT = ram[deq_ptr_value], clock @[Decoupled.scala 312:23]
    io.deq.bits <= io_deq_bits_MPORT @[Decoupled.scala 312:17]
    node _ptr_diff_T = sub(enq_ptr_value, deq_ptr_value) @[Decoupled.scala 328:32]
    node ptr_diff = tail(_ptr_diff_T, 1) @[Decoupled.scala 328:32]
    node _io_count_T = and(maybe_full, ptr_match) @[Decoupled.scala 331:32]
    node _io_count_T_1 = mux(_io_count_T, UInt<8>("h80"), UInt<1>("h0")) @[Decoupled.scala 331:20]
    node _io_count_T_2 = or(_io_count_T_1, ptr_diff) @[Decoupled.scala 331:62]
    io.count <= _io_count_T_2 @[Decoupled.scala 331:14]

  module Queue_9 :
    input clock : Clock
    input reset : Reset
    output io : { flip enq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, deq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, count : UInt<8>}

    cmem ram : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>} [128] @[Decoupled.scala 275:95]
    reg enq_ptr_value : UInt<7>, clock with :
      reset => (reset, UInt<7>("h0")) @[Counter.scala 61:40]
    reg deq_ptr_value : UInt<7>, clock with :
      reset => (reset, UInt<7>("h0")) @[Counter.scala 61:40]
    reg maybe_full : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[Decoupled.scala 278:27]
    node ptr_match = eq(enq_ptr_value, deq_ptr_value) @[Decoupled.scala 279:33]
    node _empty_T = eq(maybe_full, UInt<1>("h0")) @[Decoupled.scala 280:28]
    node empty = and(ptr_match, _empty_T) @[Decoupled.scala 280:25]
    node full = and(ptr_match, maybe_full) @[Decoupled.scala 281:24]
    node _do_enq_T = and(io.enq.ready, io.enq.valid) @[Decoupled.scala 52:35]
    wire do_enq : UInt<1>
    do_enq <= _do_enq_T
    node _do_deq_T = and(io.deq.ready, io.deq.valid) @[Decoupled.scala 52:35]
    wire do_deq : UInt<1>
    do_deq <= _do_deq_T
    when do_enq : @[Decoupled.scala 288:16]
      infer mport MPORT = ram[enq_ptr_value], clock @[Decoupled.scala 289:8]
      MPORT <= io.enq.bits @[Decoupled.scala 289:24]
      node wrap = eq(enq_ptr_value, UInt<7>("h7f")) @[Counter.scala 73:24]
      node _value_T = add(enq_ptr_value, UInt<1>("h1")) @[Counter.scala 77:24]
      node _value_T_1 = tail(_value_T, 1) @[Counter.scala 77:24]
      enq_ptr_value <= _value_T_1 @[Counter.scala 77:15]
    when do_deq : @[Decoupled.scala 292:16]
      node wrap_1 = eq(deq_ptr_value, UInt<7>("h7f")) @[Counter.scala 73:24]
      node _value_T_2 = add(deq_ptr_value, UInt<1>("h1")) @[Counter.scala 77:24]
      node _value_T_3 = tail(_value_T_2, 1) @[Counter.scala 77:24]
      deq_ptr_value <= _value_T_3 @[Counter.scala 77:15]
    node _T = neq(do_enq, do_deq) @[Decoupled.scala 295:15]
    when _T : @[Decoupled.scala 295:27]
      maybe_full <= do_enq @[Decoupled.scala 296:16]
    when UInt<1>("h0") : @[Decoupled.scala 298:15]
      enq_ptr_value <= UInt<1>("h0") @[Counter.scala 98:11]
      deq_ptr_value <= UInt<1>("h0") @[Counter.scala 98:11]
      maybe_full <= UInt<1>("h0") @[Decoupled.scala 301:16]
    node _io_deq_valid_T = eq(empty, UInt<1>("h0")) @[Decoupled.scala 304:19]
    io.deq.valid <= _io_deq_valid_T @[Decoupled.scala 304:16]
    node _io_enq_ready_T = eq(full, UInt<1>("h0")) @[Decoupled.scala 305:19]
    io.enq.ready <= _io_enq_ready_T @[Decoupled.scala 305:16]
    infer mport io_deq_bits_MPORT = ram[deq_ptr_value], clock @[Decoupled.scala 312:23]
    io.deq.bits <= io_deq_bits_MPORT @[Decoupled.scala 312:17]
    node _ptr_diff_T = sub(enq_ptr_value, deq_ptr_value) @[Decoupled.scala 328:32]
    node ptr_diff = tail(_ptr_diff_T, 1) @[Decoupled.scala 328:32]
    node _io_count_T = and(maybe_full, ptr_match) @[Decoupled.scala 331:32]
    node _io_count_T_1 = mux(_io_count_T, UInt<8>("h80"), UInt<1>("h0")) @[Decoupled.scala 331:20]
    node _io_count_T_2 = or(_io_count_T_1, ptr_diff) @[Decoupled.scala 331:62]
    io.count <= _io_count_T_2 @[Decoupled.scala 331:14]

  module RRArbiter :
    input clock : Clock
    input reset : Reset
    output io : { flip in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}[2], out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, chosen : UInt<1>}

    wire choice : UInt
    choice <= UInt<1>("h1")
    io.chosen <= choice @[Arbiter.scala 54:13]
    io.out.valid <= io.in[io.chosen].valid @[Arbiter.scala 55:16]
    io.out.bits <= io.in[io.chosen].bits @[Arbiter.scala 56:15]
    node _ctrl_validMask_grantMask_lastGrant_T = and(io.out.ready, io.out.valid) @[Decoupled.scala 52:35]
    reg lastGrant : UInt<1>, clock with :
      reset => (UInt<1>("h0"), lastGrant) @[Reg.scala 19:16]
    when _ctrl_validMask_grantMask_lastGrant_T : @[Reg.scala 20:18]
      lastGrant <= io.chosen @[Reg.scala 20:22]
    node grantMask_0 = gt(UInt<1>("h0"), lastGrant) @[Arbiter.scala 81:49]
    node grantMask_1 = gt(UInt<1>("h1"), lastGrant) @[Arbiter.scala 81:49]
    node validMask_0 = and(io.in[0].valid, grantMask_0) @[Arbiter.scala 82:76]
    node validMask_1 = and(io.in[1].valid, grantMask_1) @[Arbiter.scala 82:76]
    node _ctrl_T = or(validMask_0, validMask_1) @[Arbiter.scala 45:68]
    node _ctrl_T_1 = or(_ctrl_T, io.in[0].valid) @[Arbiter.scala 45:68]
    node ctrl_1 = eq(validMask_0, UInt<1>("h0")) @[Arbiter.scala 45:78]
    node ctrl_2 = eq(_ctrl_T, UInt<1>("h0")) @[Arbiter.scala 45:78]
    node ctrl_3 = eq(_ctrl_T_1, UInt<1>("h0")) @[Arbiter.scala 45:78]
    node _T = and(UInt<1>("h1"), grantMask_0) @[Arbiter.scala 86:34]
    node _T_1 = or(_T, ctrl_2) @[Arbiter.scala 86:50]
    node _T_2 = and(ctrl_1, grantMask_1) @[Arbiter.scala 86:34]
    node _T_3 = or(_T_2, ctrl_3) @[Arbiter.scala 86:50]
    node _io_in_0_ready_T = and(_T_1, io.out.ready) @[Arbiter.scala 74:21]
    io.in[0].ready <= _io_in_0_ready_T @[Arbiter.scala 74:16]
    node _io_in_1_ready_T = and(_T_3, io.out.ready) @[Arbiter.scala 74:21]
    io.in[1].ready <= _io_in_1_ready_T @[Arbiter.scala 74:16]
    when io.in[0].valid : @[Arbiter.scala 91:26]
      choice <= UInt<1>("h0") @[Arbiter.scala 91:35]
    when validMask_1 : @[Arbiter.scala 93:24]
      choice <= UInt<1>("h1") @[Arbiter.scala 93:33]

  module FirstInterconnectPE :
    input clock : Clock
    input reset : Reset
    output io : { flip sample_entering : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, flip sample_looping : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, sample_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}}

    inst queue_entering of Queue_8 @[Decoupled.scala 377:21]
    queue_entering.clock <= clock
    queue_entering.reset <= reset
    queue_entering.io.enq.valid <= io.sample_entering.valid @[Decoupled.scala 379:22]
    queue_entering.io.enq.bits.clock_cycles <= io.sample_entering.bits.clock_cycles @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.last <= io.sample_entering.bits.last @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.dest <= io.sample_entering.bits.dest @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.weights[0] <= io.sample_entering.bits.weights[0] @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.weights[1] <= io.sample_entering.bits.weights[1] @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.weights[2] <= io.sample_entering.bits.weights[2] @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.weights[3] <= io.sample_entering.bits.weights[3] @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.weights[4] <= io.sample_entering.bits.weights[4] @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.scores[0] <= io.sample_entering.bits.scores[0] @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.scores[1] <= io.sample_entering.bits.scores[1] @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.scores[2] <= io.sample_entering.bits.scores[2] @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.scores[3] <= io.sample_entering.bits.scores[3] @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.scores[4] <= io.sample_entering.bits.scores[4] @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.scores[5] <= io.sample_entering.bits.scores[5] @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.tree_to_exec <= io.sample_entering.bits.tree_to_exec @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.search_for_root <= io.sample_entering.bits.search_for_root @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.shift <= io.sample_entering.bits.shift @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.offset <= io.sample_entering.bits.offset @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.features[0] <= io.sample_entering.bits.features[0] @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.features[1] <= io.sample_entering.bits.features[1] @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.features[2] <= io.sample_entering.bits.features[2] @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.features[3] <= io.sample_entering.bits.features[3] @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.features[4] <= io.sample_entering.bits.features[4] @[Decoupled.scala 380:21]
    io.sample_entering.ready <= queue_entering.io.enq.ready @[Decoupled.scala 381:17]
    inst queue_looping of Queue_9 @[Decoupled.scala 377:21]
    queue_looping.clock <= clock
    queue_looping.reset <= reset
    queue_looping.io.enq.valid <= io.sample_looping.valid @[Decoupled.scala 379:22]
    queue_looping.io.enq.bits.clock_cycles <= io.sample_looping.bits.clock_cycles @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.last <= io.sample_looping.bits.last @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.dest <= io.sample_looping.bits.dest @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.weights[0] <= io.sample_looping.bits.weights[0] @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.weights[1] <= io.sample_looping.bits.weights[1] @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.weights[2] <= io.sample_looping.bits.weights[2] @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.weights[3] <= io.sample_looping.bits.weights[3] @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.weights[4] <= io.sample_looping.bits.weights[4] @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.scores[0] <= io.sample_looping.bits.scores[0] @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.scores[1] <= io.sample_looping.bits.scores[1] @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.scores[2] <= io.sample_looping.bits.scores[2] @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.scores[3] <= io.sample_looping.bits.scores[3] @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.scores[4] <= io.sample_looping.bits.scores[4] @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.scores[5] <= io.sample_looping.bits.scores[5] @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.tree_to_exec <= io.sample_looping.bits.tree_to_exec @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.search_for_root <= io.sample_looping.bits.search_for_root @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.shift <= io.sample_looping.bits.shift @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.offset <= io.sample_looping.bits.offset @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.features[0] <= io.sample_looping.bits.features[0] @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.features[1] <= io.sample_looping.bits.features[1] @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.features[2] <= io.sample_looping.bits.features[2] @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.features[3] <= io.sample_looping.bits.features[3] @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.features[4] <= io.sample_looping.bits.features[4] @[Decoupled.scala 380:21]
    io.sample_looping.ready <= queue_looping.io.enq.ready @[Decoupled.scala 381:17]
    inst arbiter of RRArbiter @[Interconnect.scala 54:25]
    arbiter.clock <= clock
    arbiter.reset <= reset
    arbiter.io.in[0] <= queue_entering.io.deq @[Interconnect.scala 55:22]
    arbiter.io.in[1] <= queue_looping.io.deq @[Interconnect.scala 56:22]
    io.sample_out.bits <= arbiter.io.out.bits @[Interconnect.scala 57:19]
    io.sample_out.valid <= arbiter.io.out.valid @[Interconnect.scala 57:19]
    arbiter.io.out.ready <= io.sample_out.ready @[Interconnect.scala 57:19]

  module Queue_10 :
    input clock : Clock
    input reset : Reset
    output io : { flip enq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, deq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, count : UInt<3>}

    cmem ram : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>} [4] @[Decoupled.scala 275:95]
    reg enq_ptr_value : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[Counter.scala 61:40]
    reg deq_ptr_value : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[Counter.scala 61:40]
    reg maybe_full : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[Decoupled.scala 278:27]
    node ptr_match = eq(enq_ptr_value, deq_ptr_value) @[Decoupled.scala 279:33]
    node _empty_T = eq(maybe_full, UInt<1>("h0")) @[Decoupled.scala 280:28]
    node empty = and(ptr_match, _empty_T) @[Decoupled.scala 280:25]
    node full = and(ptr_match, maybe_full) @[Decoupled.scala 281:24]
    node _do_enq_T = and(io.enq.ready, io.enq.valid) @[Decoupled.scala 52:35]
    wire do_enq : UInt<1>
    do_enq <= _do_enq_T
    node _do_deq_T = and(io.deq.ready, io.deq.valid) @[Decoupled.scala 52:35]
    wire do_deq : UInt<1>
    do_deq <= _do_deq_T
    when do_enq : @[Decoupled.scala 288:16]
      infer mport MPORT = ram[enq_ptr_value], clock @[Decoupled.scala 289:8]
      MPORT <= io.enq.bits @[Decoupled.scala 289:24]
      node wrap = eq(enq_ptr_value, UInt<2>("h3")) @[Counter.scala 73:24]
      node _value_T = add(enq_ptr_value, UInt<1>("h1")) @[Counter.scala 77:24]
      node _value_T_1 = tail(_value_T, 1) @[Counter.scala 77:24]
      enq_ptr_value <= _value_T_1 @[Counter.scala 77:15]
    when do_deq : @[Decoupled.scala 292:16]
      node wrap_1 = eq(deq_ptr_value, UInt<2>("h3")) @[Counter.scala 73:24]
      node _value_T_2 = add(deq_ptr_value, UInt<1>("h1")) @[Counter.scala 77:24]
      node _value_T_3 = tail(_value_T_2, 1) @[Counter.scala 77:24]
      deq_ptr_value <= _value_T_3 @[Counter.scala 77:15]
    node _T = neq(do_enq, do_deq) @[Decoupled.scala 295:15]
    when _T : @[Decoupled.scala 295:27]
      maybe_full <= do_enq @[Decoupled.scala 296:16]
    when UInt<1>("h0") : @[Decoupled.scala 298:15]
      enq_ptr_value <= UInt<1>("h0") @[Counter.scala 98:11]
      deq_ptr_value <= UInt<1>("h0") @[Counter.scala 98:11]
      maybe_full <= UInt<1>("h0") @[Decoupled.scala 301:16]
    node _io_deq_valid_T = eq(empty, UInt<1>("h0")) @[Decoupled.scala 304:19]
    io.deq.valid <= _io_deq_valid_T @[Decoupled.scala 304:16]
    node _io_enq_ready_T = eq(full, UInt<1>("h0")) @[Decoupled.scala 305:19]
    io.enq.ready <= _io_enq_ready_T @[Decoupled.scala 305:16]
    infer mport io_deq_bits_MPORT = ram[deq_ptr_value], clock @[Decoupled.scala 312:23]
    io.deq.bits <= io_deq_bits_MPORT @[Decoupled.scala 312:17]
    node _ptr_diff_T = sub(enq_ptr_value, deq_ptr_value) @[Decoupled.scala 328:32]
    node ptr_diff = tail(_ptr_diff_T, 1) @[Decoupled.scala 328:32]
    node _io_count_T = and(maybe_full, ptr_match) @[Decoupled.scala 331:32]
    node _io_count_T_1 = mux(_io_count_T, UInt<3>("h4"), UInt<1>("h0")) @[Decoupled.scala 331:20]
    node _io_count_T_2 = or(_io_count_T_1, ptr_diff) @[Decoupled.scala 331:62]
    io.count <= _io_count_T_2 @[Decoupled.scala 331:14]

  module LastInterconnectPE :
    input clock : Clock
    input reset : Reset
    output io : { flip sample_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, sample_looping : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, sample_leaving : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}}

    inst queue of Queue_10 @[Decoupled.scala 377:21]
    queue.clock <= clock
    queue.reset <= reset
    queue.io.enq.valid <= io.sample_in.valid @[Decoupled.scala 379:22]
    queue.io.enq.bits.clock_cycles <= io.sample_in.bits.clock_cycles @[Decoupled.scala 380:21]
    queue.io.enq.bits.last <= io.sample_in.bits.last @[Decoupled.scala 380:21]
    queue.io.enq.bits.dest <= io.sample_in.bits.dest @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[0] <= io.sample_in.bits.weights[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[1] <= io.sample_in.bits.weights[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[2] <= io.sample_in.bits.weights[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[3] <= io.sample_in.bits.weights[3] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[4] <= io.sample_in.bits.weights[4] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[0] <= io.sample_in.bits.scores[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[1] <= io.sample_in.bits.scores[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[2] <= io.sample_in.bits.scores[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[3] <= io.sample_in.bits.scores[3] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[4] <= io.sample_in.bits.scores[4] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[5] <= io.sample_in.bits.scores[5] @[Decoupled.scala 380:21]
    queue.io.enq.bits.tree_to_exec <= io.sample_in.bits.tree_to_exec @[Decoupled.scala 380:21]
    queue.io.enq.bits.search_for_root <= io.sample_in.bits.search_for_root @[Decoupled.scala 380:21]
    queue.io.enq.bits.shift <= io.sample_in.bits.shift @[Decoupled.scala 380:21]
    queue.io.enq.bits.offset <= io.sample_in.bits.offset @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[0] <= io.sample_in.bits.features[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[1] <= io.sample_in.bits.features[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[2] <= io.sample_in.bits.features[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[3] <= io.sample_in.bits.features[3] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[4] <= io.sample_in.bits.features[4] @[Decoupled.scala 380:21]
    io.sample_in.ready <= queue.io.enq.ready @[Decoupled.scala 381:17]
    io.sample_looping.bits <= queue.io.deq.bits @[Interconnect.scala 18:28]
    io.sample_leaving.bits.features <= queue.io.deq.bits.features @[Interconnect.scala 19:37]
    io.sample_leaving.bits.offset <= queue.io.deq.bits.offset @[Interconnect.scala 20:35]
    io.sample_leaving.bits.shift <= queue.io.deq.bits.shift @[Interconnect.scala 21:34]
    io.sample_leaving.bits.search_for_root <= queue.io.deq.bits.search_for_root @[Interconnect.scala 22:44]
    io.sample_leaving.bits.tree_to_exec <= queue.io.deq.bits.tree_to_exec @[Interconnect.scala 23:41]
    io.sample_leaving.bits.scores <= queue.io.deq.bits.scores @[Interconnect.scala 24:35]
    io.sample_leaving.bits.weights <= queue.io.deq.bits.weights @[Interconnect.scala 25:36]
    io.sample_leaving.bits.dest <= queue.io.deq.bits.dest @[Interconnect.scala 26:33]
    node _io_sample_leaving_bits_last_T = and(queue.io.deq.bits.last, queue.io.deq.bits.dest) @[Interconnect.scala 27:52]
    io.sample_leaving.bits.last <= _io_sample_leaving_bits_last_T @[Interconnect.scala 27:33]
    node _io_sample_looping_valid_T = eq(queue.io.deq.bits.dest, UInt<1>("h0")) @[Interconnect.scala 28:46]
    node _io_sample_looping_valid_T_1 = and(queue.io.deq.valid, _io_sample_looping_valid_T) @[Interconnect.scala 28:44]
    io.sample_looping.valid <= _io_sample_looping_valid_T_1 @[Interconnect.scala 28:29]
    node _io_sample_leaving_valid_T = and(queue.io.deq.valid, queue.io.deq.bits.dest) @[Interconnect.scala 29:44]
    io.sample_leaving.valid <= _io_sample_leaving_valid_T @[Interconnect.scala 29:29]
    io.sample_leaving.bits.clock_cycles <= queue.io.deq.bits.clock_cycles @[Interconnect.scala 30:41]
    node _queue_io_deq_ready_T = and(io.sample_leaving.ready, queue.io.deq.bits.dest) @[Interconnect.scala 32:45]
    node _queue_io_deq_ready_T_1 = eq(queue.io.deq.bits.dest, UInt<1>("h0")) @[Interconnect.scala 32:93]
    node _queue_io_deq_ready_T_2 = and(io.sample_looping.ready, _queue_io_deq_ready_T_1) @[Interconnect.scala 32:91]
    node _queue_io_deq_ready_T_3 = or(_queue_io_deq_ready_T, _queue_io_deq_ready_T_2) @[Interconnect.scala 32:64]
    queue.io.deq.ready <= _queue_io_deq_ready_T_3 @[Interconnect.scala 32:17]

  module Queue_11 :
    input clock : Clock
    input reset : Reset
    output io : { flip enq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, deq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, count : UInt<2>}

    cmem ram : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>} [3] @[Decoupled.scala 275:95]
    reg enq_ptr_value : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[Counter.scala 61:40]
    reg deq_ptr_value : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[Counter.scala 61:40]
    reg maybe_full : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[Decoupled.scala 278:27]
    node ptr_match = eq(enq_ptr_value, deq_ptr_value) @[Decoupled.scala 279:33]
    node _empty_T = eq(maybe_full, UInt<1>("h0")) @[Decoupled.scala 280:28]
    node empty = and(ptr_match, _empty_T) @[Decoupled.scala 280:25]
    node full = and(ptr_match, maybe_full) @[Decoupled.scala 281:24]
    node _do_enq_T = and(io.enq.ready, io.enq.valid) @[Decoupled.scala 52:35]
    wire do_enq : UInt<1>
    do_enq <= _do_enq_T
    node _do_deq_T = and(io.deq.ready, io.deq.valid) @[Decoupled.scala 52:35]
    wire do_deq : UInt<1>
    do_deq <= _do_deq_T
    when do_enq : @[Decoupled.scala 288:16]
      infer mport MPORT = ram[enq_ptr_value], clock @[Decoupled.scala 289:8]
      MPORT <= io.enq.bits @[Decoupled.scala 289:24]
      node wrap = eq(enq_ptr_value, UInt<2>("h2")) @[Counter.scala 73:24]
      node _value_T = add(enq_ptr_value, UInt<1>("h1")) @[Counter.scala 77:24]
      node _value_T_1 = tail(_value_T, 1) @[Counter.scala 77:24]
      enq_ptr_value <= _value_T_1 @[Counter.scala 77:15]
      when wrap : @[Counter.scala 87:20]
        enq_ptr_value <= UInt<1>("h0") @[Counter.scala 87:28]
    when do_deq : @[Decoupled.scala 292:16]
      node wrap_1 = eq(deq_ptr_value, UInt<2>("h2")) @[Counter.scala 73:24]
      node _value_T_2 = add(deq_ptr_value, UInt<1>("h1")) @[Counter.scala 77:24]
      node _value_T_3 = tail(_value_T_2, 1) @[Counter.scala 77:24]
      deq_ptr_value <= _value_T_3 @[Counter.scala 77:15]
      when wrap_1 : @[Counter.scala 87:20]
        deq_ptr_value <= UInt<1>("h0") @[Counter.scala 87:28]
    node _T = neq(do_enq, do_deq) @[Decoupled.scala 295:15]
    when _T : @[Decoupled.scala 295:27]
      maybe_full <= do_enq @[Decoupled.scala 296:16]
    when UInt<1>("h0") : @[Decoupled.scala 298:15]
      enq_ptr_value <= UInt<1>("h0") @[Counter.scala 98:11]
      deq_ptr_value <= UInt<1>("h0") @[Counter.scala 98:11]
      maybe_full <= UInt<1>("h0") @[Decoupled.scala 301:16]
    node _io_deq_valid_T = eq(empty, UInt<1>("h0")) @[Decoupled.scala 304:19]
    io.deq.valid <= _io_deq_valid_T @[Decoupled.scala 304:16]
    node _io_enq_ready_T = eq(full, UInt<1>("h0")) @[Decoupled.scala 305:19]
    io.enq.ready <= _io_enq_ready_T @[Decoupled.scala 305:16]
    infer mport io_deq_bits_MPORT = ram[deq_ptr_value], clock @[Decoupled.scala 312:23]
    io.deq.bits <= io_deq_bits_MPORT @[Decoupled.scala 312:17]
    node _ptr_diff_T = sub(enq_ptr_value, deq_ptr_value) @[Decoupled.scala 328:32]
    node ptr_diff = tail(_ptr_diff_T, 1) @[Decoupled.scala 328:32]
    node _io_count_T = mux(maybe_full, UInt<2>("h3"), UInt<1>("h0")) @[Decoupled.scala 335:10]
    node _io_count_T_1 = gt(deq_ptr_value, enq_ptr_value) @[Decoupled.scala 336:25]
    node _io_count_T_2 = add(UInt<2>("h3"), ptr_diff) @[Decoupled.scala 336:57]
    node _io_count_T_3 = tail(_io_count_T_2, 1) @[Decoupled.scala 336:57]
    node _io_count_T_4 = mux(_io_count_T_1, _io_count_T_3, ptr_diff) @[Decoupled.scala 336:10]
    node _io_count_T_5 = mux(ptr_match, _io_count_T, _io_count_T_4) @[Decoupled.scala 333:20]
    io.count <= _io_count_T_5 @[Decoupled.scala 333:14]

  module IncrementTreePE :
    input clock : Clock
    input reset : Reset
    output io : { flip sample_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, sample_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}}

    inst queue of Queue_11 @[Decoupled.scala 377:21]
    queue.clock <= clock
    queue.reset <= reset
    queue.io.enq.valid <= io.sample_in.valid @[Decoupled.scala 379:22]
    queue.io.enq.bits.clock_cycles <= io.sample_in.bits.clock_cycles @[Decoupled.scala 380:21]
    queue.io.enq.bits.last <= io.sample_in.bits.last @[Decoupled.scala 380:21]
    queue.io.enq.bits.dest <= io.sample_in.bits.dest @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[0] <= io.sample_in.bits.weights[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[1] <= io.sample_in.bits.weights[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[2] <= io.sample_in.bits.weights[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[3] <= io.sample_in.bits.weights[3] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[4] <= io.sample_in.bits.weights[4] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[0] <= io.sample_in.bits.scores[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[1] <= io.sample_in.bits.scores[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[2] <= io.sample_in.bits.scores[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[3] <= io.sample_in.bits.scores[3] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[4] <= io.sample_in.bits.scores[4] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[5] <= io.sample_in.bits.scores[5] @[Decoupled.scala 380:21]
    queue.io.enq.bits.tree_to_exec <= io.sample_in.bits.tree_to_exec @[Decoupled.scala 380:21]
    queue.io.enq.bits.search_for_root <= io.sample_in.bits.search_for_root @[Decoupled.scala 380:21]
    queue.io.enq.bits.shift <= io.sample_in.bits.shift @[Decoupled.scala 380:21]
    queue.io.enq.bits.offset <= io.sample_in.bits.offset @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[0] <= io.sample_in.bits.features[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[1] <= io.sample_in.bits.features[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[2] <= io.sample_in.bits.features[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[3] <= io.sample_in.bits.features[3] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[4] <= io.sample_in.bits.features[4] @[Decoupled.scala 380:21]
    io.sample_in.ready <= queue.io.enq.ready @[Decoupled.scala 381:17]
    io.sample_out.bits.features <= queue.io.deq.bits.features @[IncrementTreePE.scala 17:33]
    io.sample_out.bits.weights <= queue.io.deq.bits.weights @[IncrementTreePE.scala 18:32]
    node _io_sample_out_bits_tree_to_exec_T = add(queue.io.deq.bits.tree_to_exec, UInt<1>("h1")) @[IncrementTreePE.scala 19:64]
    node _io_sample_out_bits_tree_to_exec_T_1 = tail(_io_sample_out_bits_tree_to_exec_T, 1) @[IncrementTreePE.scala 19:64]
    io.sample_out.bits.tree_to_exec <= _io_sample_out_bits_tree_to_exec_T_1 @[IncrementTreePE.scala 19:37]
    io.sample_out.bits.shift <= queue.io.deq.bits.shift @[IncrementTreePE.scala 20:30]
    node _io_sample_out_bits_offset_T = add(queue.io.deq.bits.tree_to_exec, UInt<1>("h1")) @[IncrementTreePE.scala 21:58]
    node _io_sample_out_bits_offset_T_1 = tail(_io_sample_out_bits_offset_T, 1) @[IncrementTreePE.scala 21:58]
    io.sample_out.bits.offset <= _io_sample_out_bits_offset_T_1 @[IncrementTreePE.scala 21:31]
    io.sample_out.bits.scores <= queue.io.deq.bits.scores @[IncrementTreePE.scala 22:31]
    io.sample_out.bits.search_for_root <= queue.io.deq.bits.search_for_root @[IncrementTreePE.scala 23:40]
    io.sample_out.bits.dest <= queue.io.deq.bits.dest @[IncrementTreePE.scala 24:29]
    io.sample_out.bits.last <= queue.io.deq.bits.last @[IncrementTreePE.scala 25:29]
    io.sample_out.bits.clock_cycles <= queue.io.deq.bits.clock_cycles @[IncrementTreePE.scala 26:37]
    io.sample_out.valid <= queue.io.deq.valid @[IncrementTreePE.scala 28:25]
    queue.io.deq.ready <= io.sample_out.ready @[IncrementTreePE.scala 30:17]

  module Queue_12 :
    input clock : Clock
    input reset : Reset
    output io : { flip enq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, deq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, count : UInt<2>}

    cmem ram : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>} [3] @[Decoupled.scala 275:95]
    reg enq_ptr_value : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[Counter.scala 61:40]
    reg deq_ptr_value : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[Counter.scala 61:40]
    reg maybe_full : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[Decoupled.scala 278:27]
    node ptr_match = eq(enq_ptr_value, deq_ptr_value) @[Decoupled.scala 279:33]
    node _empty_T = eq(maybe_full, UInt<1>("h0")) @[Decoupled.scala 280:28]
    node empty = and(ptr_match, _empty_T) @[Decoupled.scala 280:25]
    node full = and(ptr_match, maybe_full) @[Decoupled.scala 281:24]
    node _do_enq_T = and(io.enq.ready, io.enq.valid) @[Decoupled.scala 52:35]
    wire do_enq : UInt<1>
    do_enq <= _do_enq_T
    node _do_deq_T = and(io.deq.ready, io.deq.valid) @[Decoupled.scala 52:35]
    wire do_deq : UInt<1>
    do_deq <= _do_deq_T
    when do_enq : @[Decoupled.scala 288:16]
      infer mport MPORT = ram[enq_ptr_value], clock @[Decoupled.scala 289:8]
      MPORT <= io.enq.bits @[Decoupled.scala 289:24]
      node wrap = eq(enq_ptr_value, UInt<2>("h2")) @[Counter.scala 73:24]
      node _value_T = add(enq_ptr_value, UInt<1>("h1")) @[Counter.scala 77:24]
      node _value_T_1 = tail(_value_T, 1) @[Counter.scala 77:24]
      enq_ptr_value <= _value_T_1 @[Counter.scala 77:15]
      when wrap : @[Counter.scala 87:20]
        enq_ptr_value <= UInt<1>("h0") @[Counter.scala 87:28]
    when do_deq : @[Decoupled.scala 292:16]
      node wrap_1 = eq(deq_ptr_value, UInt<2>("h2")) @[Counter.scala 73:24]
      node _value_T_2 = add(deq_ptr_value, UInt<1>("h1")) @[Counter.scala 77:24]
      node _value_T_3 = tail(_value_T_2, 1) @[Counter.scala 77:24]
      deq_ptr_value <= _value_T_3 @[Counter.scala 77:15]
      when wrap_1 : @[Counter.scala 87:20]
        deq_ptr_value <= UInt<1>("h0") @[Counter.scala 87:28]
    node _T = neq(do_enq, do_deq) @[Decoupled.scala 295:15]
    when _T : @[Decoupled.scala 295:27]
      maybe_full <= do_enq @[Decoupled.scala 296:16]
    when UInt<1>("h0") : @[Decoupled.scala 298:15]
      enq_ptr_value <= UInt<1>("h0") @[Counter.scala 98:11]
      deq_ptr_value <= UInt<1>("h0") @[Counter.scala 98:11]
      maybe_full <= UInt<1>("h0") @[Decoupled.scala 301:16]
    node _io_deq_valid_T = eq(empty, UInt<1>("h0")) @[Decoupled.scala 304:19]
    io.deq.valid <= _io_deq_valid_T @[Decoupled.scala 304:16]
    node _io_enq_ready_T = eq(full, UInt<1>("h0")) @[Decoupled.scala 305:19]
    io.enq.ready <= _io_enq_ready_T @[Decoupled.scala 305:16]
    infer mport io_deq_bits_MPORT = ram[deq_ptr_value], clock @[Decoupled.scala 312:23]
    io.deq.bits <= io_deq_bits_MPORT @[Decoupled.scala 312:17]
    node _ptr_diff_T = sub(enq_ptr_value, deq_ptr_value) @[Decoupled.scala 328:32]
    node ptr_diff = tail(_ptr_diff_T, 1) @[Decoupled.scala 328:32]
    node _io_count_T = mux(maybe_full, UInt<2>("h3"), UInt<1>("h0")) @[Decoupled.scala 335:10]
    node _io_count_T_1 = gt(deq_ptr_value, enq_ptr_value) @[Decoupled.scala 336:25]
    node _io_count_T_2 = add(UInt<2>("h3"), ptr_diff) @[Decoupled.scala 336:57]
    node _io_count_T_3 = tail(_io_count_T_2, 1) @[Decoupled.scala 336:57]
    node _io_count_T_4 = mux(_io_count_T_1, _io_count_T_3, ptr_diff) @[Decoupled.scala 336:10]
    node _io_count_T_5 = mux(ptr_match, _io_count_T, _io_count_T_4) @[Decoupled.scala 333:20]
    io.count <= _io_count_T_5 @[Decoupled.scala 333:14]

  module TreePE_1 :
    input clock : Clock
    input reset : Reset
    output io : { flip sample_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, flip mem : { flip enable_1 : UInt<1>, flip write_1 : UInt<1>, flip addr_1 : UInt<13>, flip dataIn_1 : UInt<64>, dataOut_1 : UInt<64>, flip enable_2 : UInt<1>, flip write_2 : UInt<1>, flip addr_2 : UInt<13>, flip dataIn_2 : UInt<64>, dataOut_2 : UInt<64>}, sample_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}}

    inst queue of Queue_12 @[Decoupled.scala 377:21]
    queue.clock <= clock
    queue.reset <= reset
    queue.io.enq.valid <= io.sample_in.valid @[Decoupled.scala 379:22]
    queue.io.enq.bits.clock_cycles <= io.sample_in.bits.clock_cycles @[Decoupled.scala 380:21]
    queue.io.enq.bits.last <= io.sample_in.bits.last @[Decoupled.scala 380:21]
    queue.io.enq.bits.dest <= io.sample_in.bits.dest @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[0] <= io.sample_in.bits.weights[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[1] <= io.sample_in.bits.weights[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[2] <= io.sample_in.bits.weights[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[3] <= io.sample_in.bits.weights[3] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[4] <= io.sample_in.bits.weights[4] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[0] <= io.sample_in.bits.scores[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[1] <= io.sample_in.bits.scores[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[2] <= io.sample_in.bits.scores[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[3] <= io.sample_in.bits.scores[3] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[4] <= io.sample_in.bits.scores[4] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[5] <= io.sample_in.bits.scores[5] @[Decoupled.scala 380:21]
    queue.io.enq.bits.tree_to_exec <= io.sample_in.bits.tree_to_exec @[Decoupled.scala 380:21]
    queue.io.enq.bits.search_for_root <= io.sample_in.bits.search_for_root @[Decoupled.scala 380:21]
    queue.io.enq.bits.shift <= io.sample_in.bits.shift @[Decoupled.scala 380:21]
    queue.io.enq.bits.offset <= io.sample_in.bits.offset @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[0] <= io.sample_in.bits.features[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[1] <= io.sample_in.bits.features[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[2] <= io.sample_in.bits.features[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[3] <= io.sample_in.bits.features[3] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[4] <= io.sample_in.bits.features[4] @[Decoupled.scala 380:21]
    io.sample_in.ready <= queue.io.enq.ready @[Decoupled.scala 381:17]
    io.mem.enable_1 <= UInt<1>("h1") @[TreePE.scala 23:21]
    io.mem.addr_1 <= queue.io.deq.bits.offset @[TreePE.scala 24:19]
    io.mem.write_1 <= UInt<1>("h0") @[TreePE.scala 25:20]
    io.mem.dataIn_1 <= UInt<1>("h0") @[TreePE.scala 26:21]
    io.mem.enable_2 is invalid @[TreePE.scala 28:21]
    io.mem.addr_2 is invalid @[TreePE.scala 29:19]
    io.mem.write_2 is invalid @[TreePE.scala 30:20]
    io.mem.dataIn_2 is invalid @[TreePE.scala 31:21]
    reg REG : UInt<1>, clock with :
      reset => (UInt<1>("h0"), REG) @[TreePE.scala 35:17]
    REG <= queue.io.deq.valid @[TreePE.scala 35:17]
    when REG : @[TreePE.scala 35:31]
      node attr_id = bits(io.mem.dataOut_1, 34, 32) @[TreePE.scala 37:37]
      node threshold = bits(io.mem.dataOut_1, 15, 0) @[TreePE.scala 38:39]
      node nodeRA = bits(io.mem.dataOut_1, 31, 16) @[TreePE.scala 39:36]
      node leftChildInfo = bits(io.mem.dataOut_1, 44, 35) @[TreePE.scala 40:43]
      node rightChildInfo = bits(io.mem.dataOut_1, 54, 45) @[TreePE.scala 41:44]
      node leftChildType = bits(io.mem.dataOut_1, 55, 55) @[TreePE.scala 42:43]
      node rightChildType = bits(io.mem.dataOut_1, 56, 56) @[TreePE.scala 43:44]
      node is_valid = bits(io.mem.dataOut_1, 57, 57) @[TreePE.scala 44:38]
      node depth_indicator = bits(io.mem.dataOut_1, 60, 58) @[TreePE.scala 45:45]
      reg REG_1 : Fixed<32><<16>>[5], clock with :
        reset => (UInt<1>("h0"), REG_1) @[TreePE.scala 47:45]
      REG_1 <= queue.io.deq.bits.features @[TreePE.scala 47:45]
      io.sample_out.bits.features <= REG_1 @[TreePE.scala 47:35]
      reg REG_2 : Fixed<16><<8>>[5], clock with :
        reset => (UInt<1>("h0"), REG_2) @[TreePE.scala 48:44]
      REG_2 <= queue.io.deq.bits.weights @[TreePE.scala 48:44]
      io.sample_out.bits.weights <= REG_2 @[TreePE.scala 48:34]
      reg io_sample_out_bits_tree_to_exec_REG : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_tree_to_exec_REG) @[TreePE.scala 49:49]
      io_sample_out_bits_tree_to_exec_REG <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 49:49]
      io.sample_out.bits.tree_to_exec <= io_sample_out_bits_tree_to_exec_REG @[TreePE.scala 49:39]
      reg REG_3 : Fixed<16><<8>>[6], clock with :
        reset => (UInt<1>("h0"), REG_3) @[TreePE.scala 50:43]
      REG_3 <= queue.io.deq.bits.scores @[TreePE.scala 50:43]
      io.sample_out.bits.scores <= REG_3 @[TreePE.scala 50:33]
      io.sample_out.valid <= UInt<1>("h1") @[TreePE.scala 51:27]
      reg io_sample_out_bits_clock_cycles_REG : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_clock_cycles_REG) @[TreePE.scala 52:49]
      io_sample_out_bits_clock_cycles_REG <= queue.io.deq.bits.clock_cycles @[TreePE.scala 52:49]
      io.sample_out.bits.clock_cycles <= io_sample_out_bits_clock_cycles_REG @[TreePE.scala 52:39]
      wire offset : UInt<10> @[TreePE.scala 55:26]
      wire shift : UInt<1> @[TreePE.scala 56:25]
      reg features_bits : Fixed<32><<16>>[5], clock with :
        reset => (UInt<1>("h0"), features_bits) @[TreePE.scala 57:36]
      features_bits <= queue.io.deq.bits.features @[TreePE.scala 57:36]
      reg scores_bits : Fixed<16><<8>>[6], clock with :
        reset => (UInt<1>("h0"), scores_bits) @[TreePE.scala 58:34]
      scores_bits <= queue.io.deq.bits.scores @[TreePE.scala 58:34]
      reg weights_bits : Fixed<16><<8>>[5], clock with :
        reset => (UInt<1>("h0"), weights_bits) @[TreePE.scala 59:35]
      weights_bits <= queue.io.deq.bits.weights @[TreePE.scala 59:35]
      node _shift_T = asFixedPoint(threshold, 8) @[TreePE.scala 60:69]
      node _shift_T_1 = lt(features_bits[attr_id], _shift_T) @[TreePE.scala 60:45]
      node _shift_T_2 = mux(_shift_T_1, leftChildType, rightChildType) @[TreePE.scala 60:21]
      shift <= _shift_T_2 @[TreePE.scala 60:15]
      node _offset_T = asFixedPoint(threshold, 8) @[TreePE.scala 61:70]
      node _offset_T_1 = lt(features_bits[attr_id], _offset_T) @[TreePE.scala 61:46]
      node _offset_T_2 = mux(_offset_T_1, leftChildInfo, rightChildInfo) @[TreePE.scala 61:22]
      offset <= _offset_T_2 @[TreePE.scala 61:16]
      node _io_sample_out_bits_offset_T = eq(shift, UInt<1>("h0")) @[TreePE.scala 62:48]
      reg io_sample_out_bits_offset_REG : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_offset_REG) @[TreePE.scala 62:67]
      io_sample_out_bits_offset_REG <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 62:67]
      node _io_sample_out_bits_offset_T_1 = mux(_io_sample_out_bits_offset_T, io_sample_out_bits_offset_REG, offset) @[TreePE.scala 62:41]
      io.sample_out.bits.offset <= _io_sample_out_bits_offset_T_1 @[TreePE.scala 62:35]
      io.sample_out.bits.shift <= UInt<1>("h0") @[TreePE.scala 63:34]
      node _io_sample_out_bits_search_for_root_T = eq(shift, UInt<1>("h0")) @[TreePE.scala 64:47]
      io.sample_out.bits.search_for_root <= _io_sample_out_bits_search_for_root_T @[TreePE.scala 64:44]
      node _io_sample_out_bits_scores_0_T = eq(shift, UInt<1>("h0")) @[TreePE.scala 66:72]
      node _io_sample_out_bits_scores_0_T_1 = and(_io_sample_out_bits_scores_0_T, is_valid) @[TreePE.scala 66:84]
      node _io_sample_out_bits_scores_0_T_2 = eq(UInt<1>("h0"), offset) @[TreePE.scala 66:102]
      node _io_sample_out_bits_scores_0_T_3 = and(_io_sample_out_bits_scores_0_T_1, _io_sample_out_bits_scores_0_T_2) @[TreePE.scala 66:95]
      node _io_sample_out_bits_scores_0_T_4 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 66:151]
      node _io_sample_out_bits_scores_0_T_5 = mux(_io_sample_out_bits_scores_0_T_3, _io_sample_out_bits_scores_0_T_4, UInt<16>("h0")) @[TreePE.scala 66:64]
      node _io_sample_out_bits_scores_0_T_6 = asFixedPoint(_io_sample_out_bits_scores_0_T_5, 8) @[TreePE.scala 66:178]
      node _io_sample_out_bits_scores_0_T_7 = add(scores_bits[0], _io_sample_out_bits_scores_0_T_6) @[TreePE.scala 66:58]
      node _io_sample_out_bits_scores_0_T_8 = tail(_io_sample_out_bits_scores_0_T_7, 1) @[TreePE.scala 66:58]
      node _io_sample_out_bits_scores_0_T_9 = asFixedPoint(_io_sample_out_bits_scores_0_T_8, 8) @[TreePE.scala 66:58]
      io.sample_out.bits.scores[0] <= _io_sample_out_bits_scores_0_T_9 @[TreePE.scala 66:40]
      node _io_sample_out_bits_scores_1_T = eq(shift, UInt<1>("h0")) @[TreePE.scala 66:72]
      node _io_sample_out_bits_scores_1_T_1 = and(_io_sample_out_bits_scores_1_T, is_valid) @[TreePE.scala 66:84]
      node _io_sample_out_bits_scores_1_T_2 = eq(UInt<1>("h1"), offset) @[TreePE.scala 66:102]
      node _io_sample_out_bits_scores_1_T_3 = and(_io_sample_out_bits_scores_1_T_1, _io_sample_out_bits_scores_1_T_2) @[TreePE.scala 66:95]
      node _io_sample_out_bits_scores_1_T_4 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 66:151]
      node _io_sample_out_bits_scores_1_T_5 = mux(_io_sample_out_bits_scores_1_T_3, _io_sample_out_bits_scores_1_T_4, UInt<16>("h0")) @[TreePE.scala 66:64]
      node _io_sample_out_bits_scores_1_T_6 = asFixedPoint(_io_sample_out_bits_scores_1_T_5, 8) @[TreePE.scala 66:178]
      node _io_sample_out_bits_scores_1_T_7 = add(scores_bits[1], _io_sample_out_bits_scores_1_T_6) @[TreePE.scala 66:58]
      node _io_sample_out_bits_scores_1_T_8 = tail(_io_sample_out_bits_scores_1_T_7, 1) @[TreePE.scala 66:58]
      node _io_sample_out_bits_scores_1_T_9 = asFixedPoint(_io_sample_out_bits_scores_1_T_8, 8) @[TreePE.scala 66:58]
      io.sample_out.bits.scores[1] <= _io_sample_out_bits_scores_1_T_9 @[TreePE.scala 66:40]
      node _io_sample_out_bits_scores_2_T = eq(shift, UInt<1>("h0")) @[TreePE.scala 66:72]
      node _io_sample_out_bits_scores_2_T_1 = and(_io_sample_out_bits_scores_2_T, is_valid) @[TreePE.scala 66:84]
      node _io_sample_out_bits_scores_2_T_2 = eq(UInt<2>("h2"), offset) @[TreePE.scala 66:102]
      node _io_sample_out_bits_scores_2_T_3 = and(_io_sample_out_bits_scores_2_T_1, _io_sample_out_bits_scores_2_T_2) @[TreePE.scala 66:95]
      node _io_sample_out_bits_scores_2_T_4 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 66:151]
      node _io_sample_out_bits_scores_2_T_5 = mux(_io_sample_out_bits_scores_2_T_3, _io_sample_out_bits_scores_2_T_4, UInt<16>("h0")) @[TreePE.scala 66:64]
      node _io_sample_out_bits_scores_2_T_6 = asFixedPoint(_io_sample_out_bits_scores_2_T_5, 8) @[TreePE.scala 66:178]
      node _io_sample_out_bits_scores_2_T_7 = add(scores_bits[2], _io_sample_out_bits_scores_2_T_6) @[TreePE.scala 66:58]
      node _io_sample_out_bits_scores_2_T_8 = tail(_io_sample_out_bits_scores_2_T_7, 1) @[TreePE.scala 66:58]
      node _io_sample_out_bits_scores_2_T_9 = asFixedPoint(_io_sample_out_bits_scores_2_T_8, 8) @[TreePE.scala 66:58]
      io.sample_out.bits.scores[2] <= _io_sample_out_bits_scores_2_T_9 @[TreePE.scala 66:40]
      node _io_sample_out_bits_scores_3_T = eq(shift, UInt<1>("h0")) @[TreePE.scala 66:72]
      node _io_sample_out_bits_scores_3_T_1 = and(_io_sample_out_bits_scores_3_T, is_valid) @[TreePE.scala 66:84]
      node _io_sample_out_bits_scores_3_T_2 = eq(UInt<2>("h3"), offset) @[TreePE.scala 66:102]
      node _io_sample_out_bits_scores_3_T_3 = and(_io_sample_out_bits_scores_3_T_1, _io_sample_out_bits_scores_3_T_2) @[TreePE.scala 66:95]
      node _io_sample_out_bits_scores_3_T_4 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 66:151]
      node _io_sample_out_bits_scores_3_T_5 = mux(_io_sample_out_bits_scores_3_T_3, _io_sample_out_bits_scores_3_T_4, UInt<16>("h0")) @[TreePE.scala 66:64]
      node _io_sample_out_bits_scores_3_T_6 = asFixedPoint(_io_sample_out_bits_scores_3_T_5, 8) @[TreePE.scala 66:178]
      node _io_sample_out_bits_scores_3_T_7 = add(scores_bits[3], _io_sample_out_bits_scores_3_T_6) @[TreePE.scala 66:58]
      node _io_sample_out_bits_scores_3_T_8 = tail(_io_sample_out_bits_scores_3_T_7, 1) @[TreePE.scala 66:58]
      node _io_sample_out_bits_scores_3_T_9 = asFixedPoint(_io_sample_out_bits_scores_3_T_8, 8) @[TreePE.scala 66:58]
      io.sample_out.bits.scores[3] <= _io_sample_out_bits_scores_3_T_9 @[TreePE.scala 66:40]
      node _io_sample_out_bits_scores_4_T = eq(shift, UInt<1>("h0")) @[TreePE.scala 66:72]
      node _io_sample_out_bits_scores_4_T_1 = and(_io_sample_out_bits_scores_4_T, is_valid) @[TreePE.scala 66:84]
      node _io_sample_out_bits_scores_4_T_2 = eq(UInt<3>("h4"), offset) @[TreePE.scala 66:102]
      node _io_sample_out_bits_scores_4_T_3 = and(_io_sample_out_bits_scores_4_T_1, _io_sample_out_bits_scores_4_T_2) @[TreePE.scala 66:95]
      node _io_sample_out_bits_scores_4_T_4 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 66:151]
      node _io_sample_out_bits_scores_4_T_5 = mux(_io_sample_out_bits_scores_4_T_3, _io_sample_out_bits_scores_4_T_4, UInt<16>("h0")) @[TreePE.scala 66:64]
      node _io_sample_out_bits_scores_4_T_6 = asFixedPoint(_io_sample_out_bits_scores_4_T_5, 8) @[TreePE.scala 66:178]
      node _io_sample_out_bits_scores_4_T_7 = add(scores_bits[4], _io_sample_out_bits_scores_4_T_6) @[TreePE.scala 66:58]
      node _io_sample_out_bits_scores_4_T_8 = tail(_io_sample_out_bits_scores_4_T_7, 1) @[TreePE.scala 66:58]
      node _io_sample_out_bits_scores_4_T_9 = asFixedPoint(_io_sample_out_bits_scores_4_T_8, 8) @[TreePE.scala 66:58]
      io.sample_out.bits.scores[4] <= _io_sample_out_bits_scores_4_T_9 @[TreePE.scala 66:40]
      node _io_sample_out_bits_scores_5_T = eq(shift, UInt<1>("h0")) @[TreePE.scala 66:72]
      node _io_sample_out_bits_scores_5_T_1 = and(_io_sample_out_bits_scores_5_T, is_valid) @[TreePE.scala 66:84]
      node _io_sample_out_bits_scores_5_T_2 = eq(UInt<3>("h5"), offset) @[TreePE.scala 66:102]
      node _io_sample_out_bits_scores_5_T_3 = and(_io_sample_out_bits_scores_5_T_1, _io_sample_out_bits_scores_5_T_2) @[TreePE.scala 66:95]
      node _io_sample_out_bits_scores_5_T_4 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 66:151]
      node _io_sample_out_bits_scores_5_T_5 = mux(_io_sample_out_bits_scores_5_T_3, _io_sample_out_bits_scores_5_T_4, UInt<16>("h0")) @[TreePE.scala 66:64]
      node _io_sample_out_bits_scores_5_T_6 = asFixedPoint(_io_sample_out_bits_scores_5_T_5, 8) @[TreePE.scala 66:178]
      node _io_sample_out_bits_scores_5_T_7 = add(scores_bits[5], _io_sample_out_bits_scores_5_T_6) @[TreePE.scala 66:58]
      node _io_sample_out_bits_scores_5_T_8 = tail(_io_sample_out_bits_scores_5_T_7, 1) @[TreePE.scala 66:58]
      node _io_sample_out_bits_scores_5_T_9 = asFixedPoint(_io_sample_out_bits_scores_5_T_8, 8) @[TreePE.scala 66:58]
      io.sample_out.bits.scores[5] <= _io_sample_out_bits_scores_5_T_9 @[TreePE.scala 66:40]
      reg io_sample_out_bits_dest_REG : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_dest_REG) @[TreePE.scala 68:43]
      io_sample_out_bits_dest_REG <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 68:43]
      node _io_sample_out_bits_dest_T = eq(io_sample_out_bits_dest_REG, UInt<1>("h1")) @[TreePE.scala 68:69]
      io.sample_out.bits.dest <= _io_sample_out_bits_dest_T @[TreePE.scala 68:33]
      reg io_sample_out_bits_last_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_last_REG) @[TreePE.scala 69:43]
      io_sample_out_bits_last_REG <= queue.io.deq.bits.last @[TreePE.scala 69:43]
      io.sample_out.bits.last <= io_sample_out_bits_last_REG @[TreePE.scala 69:33]
    else :
      io.sample_out.bits.clock_cycles is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.last is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.dest is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[0] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[1] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[2] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[3] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[4] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[0] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[1] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[2] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[3] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[4] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[5] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.tree_to_exec is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.search_for_root is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.shift is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.offset is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[0] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[1] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[2] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[3] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[4] is invalid @[TreePE.scala 88:26]
      io.sample_out.valid <= UInt<1>("h0") @[TreePE.scala 89:27]
    queue.io.deq.ready <= io.sample_out.ready @[TreePE.scala 92:17]

  module TreePEwithBRAM_1 :
    input clock : Clock
    input reset : Reset
    output pe_io : { flip sample_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, flip mem : { flip enable_1 : UInt<1>, flip write_1 : UInt<1>, flip addr_1 : UInt<13>, flip dataIn_1 : UInt<64>, dataOut_1 : UInt<64>, flip enable_2 : UInt<1>, flip write_2 : UInt<1>, flip addr_2 : UInt<13>, flip dataIn_2 : UInt<64>, dataOut_2 : UInt<64>}, sample_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}}

    inst pe of TreePE_1 @[TreePE.scala 104:18]
    pe.clock <= clock
    pe.reset <= reset
    pe_io.sample_out.bits <= pe.io.sample_out.bits @[TreePE.scala 106:9]
    pe_io.sample_out.valid <= pe.io.sample_out.valid @[TreePE.scala 106:9]
    pe.io.sample_out.ready <= pe_io.sample_out.ready @[TreePE.scala 106:9]
    pe.io.mem <= pe_io.mem @[TreePE.scala 106:9]
    pe.io.sample_in <= pe_io.sample_in @[TreePE.scala 106:9]

  module Queue_13 :
    input clock : Clock
    input reset : Reset
    output io : { flip enq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, deq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, count : UInt<2>}

    cmem ram : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>} [3] @[Decoupled.scala 275:95]
    reg enq_ptr_value : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[Counter.scala 61:40]
    reg deq_ptr_value : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[Counter.scala 61:40]
    reg maybe_full : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[Decoupled.scala 278:27]
    node ptr_match = eq(enq_ptr_value, deq_ptr_value) @[Decoupled.scala 279:33]
    node _empty_T = eq(maybe_full, UInt<1>("h0")) @[Decoupled.scala 280:28]
    node empty = and(ptr_match, _empty_T) @[Decoupled.scala 280:25]
    node full = and(ptr_match, maybe_full) @[Decoupled.scala 281:24]
    node _do_enq_T = and(io.enq.ready, io.enq.valid) @[Decoupled.scala 52:35]
    wire do_enq : UInt<1>
    do_enq <= _do_enq_T
    node _do_deq_T = and(io.deq.ready, io.deq.valid) @[Decoupled.scala 52:35]
    wire do_deq : UInt<1>
    do_deq <= _do_deq_T
    when do_enq : @[Decoupled.scala 288:16]
      infer mport MPORT = ram[enq_ptr_value], clock @[Decoupled.scala 289:8]
      MPORT <= io.enq.bits @[Decoupled.scala 289:24]
      node wrap = eq(enq_ptr_value, UInt<2>("h2")) @[Counter.scala 73:24]
      node _value_T = add(enq_ptr_value, UInt<1>("h1")) @[Counter.scala 77:24]
      node _value_T_1 = tail(_value_T, 1) @[Counter.scala 77:24]
      enq_ptr_value <= _value_T_1 @[Counter.scala 77:15]
      when wrap : @[Counter.scala 87:20]
        enq_ptr_value <= UInt<1>("h0") @[Counter.scala 87:28]
    when do_deq : @[Decoupled.scala 292:16]
      node wrap_1 = eq(deq_ptr_value, UInt<2>("h2")) @[Counter.scala 73:24]
      node _value_T_2 = add(deq_ptr_value, UInt<1>("h1")) @[Counter.scala 77:24]
      node _value_T_3 = tail(_value_T_2, 1) @[Counter.scala 77:24]
      deq_ptr_value <= _value_T_3 @[Counter.scala 77:15]
      when wrap_1 : @[Counter.scala 87:20]
        deq_ptr_value <= UInt<1>("h0") @[Counter.scala 87:28]
    node _T = neq(do_enq, do_deq) @[Decoupled.scala 295:15]
    when _T : @[Decoupled.scala 295:27]
      maybe_full <= do_enq @[Decoupled.scala 296:16]
    when UInt<1>("h0") : @[Decoupled.scala 298:15]
      enq_ptr_value <= UInt<1>("h0") @[Counter.scala 98:11]
      deq_ptr_value <= UInt<1>("h0") @[Counter.scala 98:11]
      maybe_full <= UInt<1>("h0") @[Decoupled.scala 301:16]
    node _io_deq_valid_T = eq(empty, UInt<1>("h0")) @[Decoupled.scala 304:19]
    io.deq.valid <= _io_deq_valid_T @[Decoupled.scala 304:16]
    node _io_enq_ready_T = eq(full, UInt<1>("h0")) @[Decoupled.scala 305:19]
    io.enq.ready <= _io_enq_ready_T @[Decoupled.scala 305:16]
    infer mport io_deq_bits_MPORT = ram[deq_ptr_value], clock @[Decoupled.scala 312:23]
    io.deq.bits <= io_deq_bits_MPORT @[Decoupled.scala 312:17]
    node _ptr_diff_T = sub(enq_ptr_value, deq_ptr_value) @[Decoupled.scala 328:32]
    node ptr_diff = tail(_ptr_diff_T, 1) @[Decoupled.scala 328:32]
    node _io_count_T = mux(maybe_full, UInt<2>("h3"), UInt<1>("h0")) @[Decoupled.scala 335:10]
    node _io_count_T_1 = gt(deq_ptr_value, enq_ptr_value) @[Decoupled.scala 336:25]
    node _io_count_T_2 = add(UInt<2>("h3"), ptr_diff) @[Decoupled.scala 336:57]
    node _io_count_T_3 = tail(_io_count_T_2, 1) @[Decoupled.scala 336:57]
    node _io_count_T_4 = mux(_io_count_T_1, _io_count_T_3, ptr_diff) @[Decoupled.scala 336:10]
    node _io_count_T_5 = mux(ptr_match, _io_count_T, _io_count_T_4) @[Decoupled.scala 333:20]
    io.count <= _io_count_T_5 @[Decoupled.scala 333:14]

  module TreePE_2 :
    input clock : Clock
    input reset : Reset
    output io : { flip sample_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, flip mem : { flip enable_1 : UInt<1>, flip write_1 : UInt<1>, flip addr_1 : UInt<13>, flip dataIn_1 : UInt<64>, dataOut_1 : UInt<64>, flip enable_2 : UInt<1>, flip write_2 : UInt<1>, flip addr_2 : UInt<13>, flip dataIn_2 : UInt<64>, dataOut_2 : UInt<64>}, sample_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}}

    inst queue of Queue_13 @[Decoupled.scala 377:21]
    queue.clock <= clock
    queue.reset <= reset
    queue.io.enq.valid <= io.sample_in.valid @[Decoupled.scala 379:22]
    queue.io.enq.bits.clock_cycles <= io.sample_in.bits.clock_cycles @[Decoupled.scala 380:21]
    queue.io.enq.bits.last <= io.sample_in.bits.last @[Decoupled.scala 380:21]
    queue.io.enq.bits.dest <= io.sample_in.bits.dest @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[0] <= io.sample_in.bits.weights[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[1] <= io.sample_in.bits.weights[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[2] <= io.sample_in.bits.weights[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[3] <= io.sample_in.bits.weights[3] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[4] <= io.sample_in.bits.weights[4] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[0] <= io.sample_in.bits.scores[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[1] <= io.sample_in.bits.scores[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[2] <= io.sample_in.bits.scores[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[3] <= io.sample_in.bits.scores[3] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[4] <= io.sample_in.bits.scores[4] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[5] <= io.sample_in.bits.scores[5] @[Decoupled.scala 380:21]
    queue.io.enq.bits.tree_to_exec <= io.sample_in.bits.tree_to_exec @[Decoupled.scala 380:21]
    queue.io.enq.bits.search_for_root <= io.sample_in.bits.search_for_root @[Decoupled.scala 380:21]
    queue.io.enq.bits.shift <= io.sample_in.bits.shift @[Decoupled.scala 380:21]
    queue.io.enq.bits.offset <= io.sample_in.bits.offset @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[0] <= io.sample_in.bits.features[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[1] <= io.sample_in.bits.features[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[2] <= io.sample_in.bits.features[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[3] <= io.sample_in.bits.features[3] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[4] <= io.sample_in.bits.features[4] @[Decoupled.scala 380:21]
    io.sample_in.ready <= queue.io.enq.ready @[Decoupled.scala 381:17]
    io.mem.enable_1 <= UInt<1>("h1") @[TreePE.scala 23:21]
    io.mem.addr_1 <= queue.io.deq.bits.offset @[TreePE.scala 24:19]
    io.mem.write_1 <= UInt<1>("h0") @[TreePE.scala 25:20]
    io.mem.dataIn_1 <= UInt<1>("h0") @[TreePE.scala 26:21]
    io.mem.enable_2 is invalid @[TreePE.scala 28:21]
    io.mem.addr_2 is invalid @[TreePE.scala 29:19]
    io.mem.write_2 is invalid @[TreePE.scala 30:20]
    io.mem.dataIn_2 is invalid @[TreePE.scala 31:21]
    reg REG : UInt<1>, clock with :
      reset => (UInt<1>("h0"), REG) @[TreePE.scala 35:17]
    REG <= queue.io.deq.valid @[TreePE.scala 35:17]
    when REG : @[TreePE.scala 35:31]
      node attr_id = bits(io.mem.dataOut_1, 34, 32) @[TreePE.scala 37:37]
      node threshold = bits(io.mem.dataOut_1, 15, 0) @[TreePE.scala 38:39]
      node nodeRA = bits(io.mem.dataOut_1, 31, 16) @[TreePE.scala 39:36]
      node leftChildInfo = bits(io.mem.dataOut_1, 44, 35) @[TreePE.scala 40:43]
      node rightChildInfo = bits(io.mem.dataOut_1, 54, 45) @[TreePE.scala 41:44]
      node leftChildType = bits(io.mem.dataOut_1, 55, 55) @[TreePE.scala 42:43]
      node rightChildType = bits(io.mem.dataOut_1, 56, 56) @[TreePE.scala 43:44]
      node is_valid = bits(io.mem.dataOut_1, 57, 57) @[TreePE.scala 44:38]
      node depth_indicator = bits(io.mem.dataOut_1, 60, 58) @[TreePE.scala 45:45]
      reg REG_1 : Fixed<32><<16>>[5], clock with :
        reset => (UInt<1>("h0"), REG_1) @[TreePE.scala 47:45]
      REG_1 <= queue.io.deq.bits.features @[TreePE.scala 47:45]
      io.sample_out.bits.features <= REG_1 @[TreePE.scala 47:35]
      reg REG_2 : Fixed<16><<8>>[5], clock with :
        reset => (UInt<1>("h0"), REG_2) @[TreePE.scala 48:44]
      REG_2 <= queue.io.deq.bits.weights @[TreePE.scala 48:44]
      io.sample_out.bits.weights <= REG_2 @[TreePE.scala 48:34]
      reg io_sample_out_bits_tree_to_exec_REG : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_tree_to_exec_REG) @[TreePE.scala 49:49]
      io_sample_out_bits_tree_to_exec_REG <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 49:49]
      io.sample_out.bits.tree_to_exec <= io_sample_out_bits_tree_to_exec_REG @[TreePE.scala 49:39]
      reg REG_3 : Fixed<16><<8>>[6], clock with :
        reset => (UInt<1>("h0"), REG_3) @[TreePE.scala 50:43]
      REG_3 <= queue.io.deq.bits.scores @[TreePE.scala 50:43]
      io.sample_out.bits.scores <= REG_3 @[TreePE.scala 50:33]
      io.sample_out.valid <= UInt<1>("h1") @[TreePE.scala 51:27]
      reg io_sample_out_bits_clock_cycles_REG : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_clock_cycles_REG) @[TreePE.scala 52:49]
      io_sample_out_bits_clock_cycles_REG <= queue.io.deq.bits.clock_cycles @[TreePE.scala 52:49]
      io.sample_out.bits.clock_cycles <= io_sample_out_bits_clock_cycles_REG @[TreePE.scala 52:39]
      wire offset : UInt<10> @[TreePE.scala 71:26]
      wire shift : UInt<1> @[TreePE.scala 72:25]
      reg features_bits : Fixed<32><<16>>[5], clock with :
        reset => (UInt<1>("h0"), features_bits) @[TreePE.scala 73:36]
      features_bits <= queue.io.deq.bits.features @[TreePE.scala 73:36]
      reg scores_bits : Fixed<16><<8>>[6], clock with :
        reset => (UInt<1>("h0"), scores_bits) @[TreePE.scala 74:34]
      scores_bits <= queue.io.deq.bits.scores @[TreePE.scala 74:34]
      reg weights_bits : Fixed<16><<8>>[5], clock with :
        reset => (UInt<1>("h0"), weights_bits) @[TreePE.scala 75:35]
      weights_bits <= queue.io.deq.bits.weights @[TreePE.scala 75:35]
      node _shift_T = asFixedPoint(threshold, 8) @[TreePE.scala 76:69]
      node _shift_T_1 = lt(features_bits[attr_id], _shift_T) @[TreePE.scala 76:45]
      node _shift_T_2 = mux(_shift_T_1, leftChildType, rightChildType) @[TreePE.scala 76:21]
      shift <= _shift_T_2 @[TreePE.scala 76:15]
      node _offset_T = asFixedPoint(threshold, 8) @[TreePE.scala 77:70]
      node _offset_T_1 = lt(features_bits[attr_id], _offset_T) @[TreePE.scala 77:46]
      node _offset_T_2 = mux(_offset_T_1, leftChildInfo, rightChildInfo) @[TreePE.scala 77:22]
      offset <= _offset_T_2 @[TreePE.scala 77:16]
      node _io_sample_out_bits_offset_T = eq(shift, UInt<1>("h0")) @[TreePE.scala 78:48]
      reg io_sample_out_bits_offset_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_offset_REG) @[TreePE.scala 78:70]
      io_sample_out_bits_offset_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 78:70]
      node _io_sample_out_bits_offset_T_1 = or(_io_sample_out_bits_offset_T, io_sample_out_bits_offset_REG) @[TreePE.scala 78:60]
      reg io_sample_out_bits_offset_REG_1 : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_offset_REG_1) @[TreePE.scala 78:106]
      io_sample_out_bits_offset_REG_1 <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 78:106]
      node _io_sample_out_bits_offset_T_2 = mux(_io_sample_out_bits_offset_T_1, io_sample_out_bits_offset_REG_1, offset) @[TreePE.scala 78:41]
      io.sample_out.bits.offset <= _io_sample_out_bits_offset_T_2 @[TreePE.scala 78:35]
      io.sample_out.bits.shift <= UInt<1>("h0") @[TreePE.scala 79:34]
      node _io_sample_out_bits_search_for_root_T = eq(shift, UInt<1>("h0")) @[TreePE.scala 80:47]
      reg io_sample_out_bits_search_for_root_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_search_for_root_REG) @[TreePE.scala 80:64]
      io_sample_out_bits_search_for_root_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 80:64]
      node _io_sample_out_bits_search_for_root_T_1 = or(_io_sample_out_bits_search_for_root_T, io_sample_out_bits_search_for_root_REG) @[TreePE.scala 80:54]
      io.sample_out.bits.search_for_root <= _io_sample_out_bits_search_for_root_T_1 @[TreePE.scala 80:44]
      reg io_sample_out_bits_scores_0_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_scores_0_REG) @[TreePE.scala 82:74]
      io_sample_out_bits_scores_0_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 82:74]
      node _io_sample_out_bits_scores_0_T = eq(io_sample_out_bits_scores_0_REG, UInt<1>("h0")) @[TreePE.scala 82:66]
      node _io_sample_out_bits_scores_0_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 82:111]
      node _io_sample_out_bits_scores_0_T_2 = and(_io_sample_out_bits_scores_0_T, _io_sample_out_bits_scores_0_T_1) @[TreePE.scala 82:103]
      node _io_sample_out_bits_scores_0_T_3 = and(_io_sample_out_bits_scores_0_T_2, is_valid) @[TreePE.scala 82:123]
      node _io_sample_out_bits_scores_0_T_4 = eq(UInt<1>("h0"), offset) @[TreePE.scala 82:141]
      node _io_sample_out_bits_scores_0_T_5 = and(_io_sample_out_bits_scores_0_T_3, _io_sample_out_bits_scores_0_T_4) @[TreePE.scala 82:134]
      node _io_sample_out_bits_scores_0_T_6 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 82:190]
      node _io_sample_out_bits_scores_0_T_7 = mux(_io_sample_out_bits_scores_0_T_5, _io_sample_out_bits_scores_0_T_6, UInt<16>("h0")) @[TreePE.scala 82:64]
      node _io_sample_out_bits_scores_0_T_8 = asFixedPoint(_io_sample_out_bits_scores_0_T_7, 8) @[TreePE.scala 82:217]
      node _io_sample_out_bits_scores_0_T_9 = add(scores_bits[0], _io_sample_out_bits_scores_0_T_8) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_0_T_10 = tail(_io_sample_out_bits_scores_0_T_9, 1) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_0_T_11 = asFixedPoint(_io_sample_out_bits_scores_0_T_10, 8) @[TreePE.scala 82:58]
      io.sample_out.bits.scores[0] <= _io_sample_out_bits_scores_0_T_11 @[TreePE.scala 82:40]
      reg io_sample_out_bits_scores_1_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_scores_1_REG) @[TreePE.scala 82:74]
      io_sample_out_bits_scores_1_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 82:74]
      node _io_sample_out_bits_scores_1_T = eq(io_sample_out_bits_scores_1_REG, UInt<1>("h0")) @[TreePE.scala 82:66]
      node _io_sample_out_bits_scores_1_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 82:111]
      node _io_sample_out_bits_scores_1_T_2 = and(_io_sample_out_bits_scores_1_T, _io_sample_out_bits_scores_1_T_1) @[TreePE.scala 82:103]
      node _io_sample_out_bits_scores_1_T_3 = and(_io_sample_out_bits_scores_1_T_2, is_valid) @[TreePE.scala 82:123]
      node _io_sample_out_bits_scores_1_T_4 = eq(UInt<1>("h1"), offset) @[TreePE.scala 82:141]
      node _io_sample_out_bits_scores_1_T_5 = and(_io_sample_out_bits_scores_1_T_3, _io_sample_out_bits_scores_1_T_4) @[TreePE.scala 82:134]
      node _io_sample_out_bits_scores_1_T_6 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 82:190]
      node _io_sample_out_bits_scores_1_T_7 = mux(_io_sample_out_bits_scores_1_T_5, _io_sample_out_bits_scores_1_T_6, UInt<16>("h0")) @[TreePE.scala 82:64]
      node _io_sample_out_bits_scores_1_T_8 = asFixedPoint(_io_sample_out_bits_scores_1_T_7, 8) @[TreePE.scala 82:217]
      node _io_sample_out_bits_scores_1_T_9 = add(scores_bits[1], _io_sample_out_bits_scores_1_T_8) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_1_T_10 = tail(_io_sample_out_bits_scores_1_T_9, 1) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_1_T_11 = asFixedPoint(_io_sample_out_bits_scores_1_T_10, 8) @[TreePE.scala 82:58]
      io.sample_out.bits.scores[1] <= _io_sample_out_bits_scores_1_T_11 @[TreePE.scala 82:40]
      reg io_sample_out_bits_scores_2_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_scores_2_REG) @[TreePE.scala 82:74]
      io_sample_out_bits_scores_2_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 82:74]
      node _io_sample_out_bits_scores_2_T = eq(io_sample_out_bits_scores_2_REG, UInt<1>("h0")) @[TreePE.scala 82:66]
      node _io_sample_out_bits_scores_2_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 82:111]
      node _io_sample_out_bits_scores_2_T_2 = and(_io_sample_out_bits_scores_2_T, _io_sample_out_bits_scores_2_T_1) @[TreePE.scala 82:103]
      node _io_sample_out_bits_scores_2_T_3 = and(_io_sample_out_bits_scores_2_T_2, is_valid) @[TreePE.scala 82:123]
      node _io_sample_out_bits_scores_2_T_4 = eq(UInt<2>("h2"), offset) @[TreePE.scala 82:141]
      node _io_sample_out_bits_scores_2_T_5 = and(_io_sample_out_bits_scores_2_T_3, _io_sample_out_bits_scores_2_T_4) @[TreePE.scala 82:134]
      node _io_sample_out_bits_scores_2_T_6 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 82:190]
      node _io_sample_out_bits_scores_2_T_7 = mux(_io_sample_out_bits_scores_2_T_5, _io_sample_out_bits_scores_2_T_6, UInt<16>("h0")) @[TreePE.scala 82:64]
      node _io_sample_out_bits_scores_2_T_8 = asFixedPoint(_io_sample_out_bits_scores_2_T_7, 8) @[TreePE.scala 82:217]
      node _io_sample_out_bits_scores_2_T_9 = add(scores_bits[2], _io_sample_out_bits_scores_2_T_8) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_2_T_10 = tail(_io_sample_out_bits_scores_2_T_9, 1) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_2_T_11 = asFixedPoint(_io_sample_out_bits_scores_2_T_10, 8) @[TreePE.scala 82:58]
      io.sample_out.bits.scores[2] <= _io_sample_out_bits_scores_2_T_11 @[TreePE.scala 82:40]
      reg io_sample_out_bits_scores_3_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_scores_3_REG) @[TreePE.scala 82:74]
      io_sample_out_bits_scores_3_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 82:74]
      node _io_sample_out_bits_scores_3_T = eq(io_sample_out_bits_scores_3_REG, UInt<1>("h0")) @[TreePE.scala 82:66]
      node _io_sample_out_bits_scores_3_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 82:111]
      node _io_sample_out_bits_scores_3_T_2 = and(_io_sample_out_bits_scores_3_T, _io_sample_out_bits_scores_3_T_1) @[TreePE.scala 82:103]
      node _io_sample_out_bits_scores_3_T_3 = and(_io_sample_out_bits_scores_3_T_2, is_valid) @[TreePE.scala 82:123]
      node _io_sample_out_bits_scores_3_T_4 = eq(UInt<2>("h3"), offset) @[TreePE.scala 82:141]
      node _io_sample_out_bits_scores_3_T_5 = and(_io_sample_out_bits_scores_3_T_3, _io_sample_out_bits_scores_3_T_4) @[TreePE.scala 82:134]
      node _io_sample_out_bits_scores_3_T_6 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 82:190]
      node _io_sample_out_bits_scores_3_T_7 = mux(_io_sample_out_bits_scores_3_T_5, _io_sample_out_bits_scores_3_T_6, UInt<16>("h0")) @[TreePE.scala 82:64]
      node _io_sample_out_bits_scores_3_T_8 = asFixedPoint(_io_sample_out_bits_scores_3_T_7, 8) @[TreePE.scala 82:217]
      node _io_sample_out_bits_scores_3_T_9 = add(scores_bits[3], _io_sample_out_bits_scores_3_T_8) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_3_T_10 = tail(_io_sample_out_bits_scores_3_T_9, 1) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_3_T_11 = asFixedPoint(_io_sample_out_bits_scores_3_T_10, 8) @[TreePE.scala 82:58]
      io.sample_out.bits.scores[3] <= _io_sample_out_bits_scores_3_T_11 @[TreePE.scala 82:40]
      reg io_sample_out_bits_scores_4_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_scores_4_REG) @[TreePE.scala 82:74]
      io_sample_out_bits_scores_4_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 82:74]
      node _io_sample_out_bits_scores_4_T = eq(io_sample_out_bits_scores_4_REG, UInt<1>("h0")) @[TreePE.scala 82:66]
      node _io_sample_out_bits_scores_4_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 82:111]
      node _io_sample_out_bits_scores_4_T_2 = and(_io_sample_out_bits_scores_4_T, _io_sample_out_bits_scores_4_T_1) @[TreePE.scala 82:103]
      node _io_sample_out_bits_scores_4_T_3 = and(_io_sample_out_bits_scores_4_T_2, is_valid) @[TreePE.scala 82:123]
      node _io_sample_out_bits_scores_4_T_4 = eq(UInt<3>("h4"), offset) @[TreePE.scala 82:141]
      node _io_sample_out_bits_scores_4_T_5 = and(_io_sample_out_bits_scores_4_T_3, _io_sample_out_bits_scores_4_T_4) @[TreePE.scala 82:134]
      node _io_sample_out_bits_scores_4_T_6 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 82:190]
      node _io_sample_out_bits_scores_4_T_7 = mux(_io_sample_out_bits_scores_4_T_5, _io_sample_out_bits_scores_4_T_6, UInt<16>("h0")) @[TreePE.scala 82:64]
      node _io_sample_out_bits_scores_4_T_8 = asFixedPoint(_io_sample_out_bits_scores_4_T_7, 8) @[TreePE.scala 82:217]
      node _io_sample_out_bits_scores_4_T_9 = add(scores_bits[4], _io_sample_out_bits_scores_4_T_8) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_4_T_10 = tail(_io_sample_out_bits_scores_4_T_9, 1) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_4_T_11 = asFixedPoint(_io_sample_out_bits_scores_4_T_10, 8) @[TreePE.scala 82:58]
      io.sample_out.bits.scores[4] <= _io_sample_out_bits_scores_4_T_11 @[TreePE.scala 82:40]
      reg io_sample_out_bits_scores_5_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_scores_5_REG) @[TreePE.scala 82:74]
      io_sample_out_bits_scores_5_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 82:74]
      node _io_sample_out_bits_scores_5_T = eq(io_sample_out_bits_scores_5_REG, UInt<1>("h0")) @[TreePE.scala 82:66]
      node _io_sample_out_bits_scores_5_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 82:111]
      node _io_sample_out_bits_scores_5_T_2 = and(_io_sample_out_bits_scores_5_T, _io_sample_out_bits_scores_5_T_1) @[TreePE.scala 82:103]
      node _io_sample_out_bits_scores_5_T_3 = and(_io_sample_out_bits_scores_5_T_2, is_valid) @[TreePE.scala 82:123]
      node _io_sample_out_bits_scores_5_T_4 = eq(UInt<3>("h5"), offset) @[TreePE.scala 82:141]
      node _io_sample_out_bits_scores_5_T_5 = and(_io_sample_out_bits_scores_5_T_3, _io_sample_out_bits_scores_5_T_4) @[TreePE.scala 82:134]
      node _io_sample_out_bits_scores_5_T_6 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 82:190]
      node _io_sample_out_bits_scores_5_T_7 = mux(_io_sample_out_bits_scores_5_T_5, _io_sample_out_bits_scores_5_T_6, UInt<16>("h0")) @[TreePE.scala 82:64]
      node _io_sample_out_bits_scores_5_T_8 = asFixedPoint(_io_sample_out_bits_scores_5_T_7, 8) @[TreePE.scala 82:217]
      node _io_sample_out_bits_scores_5_T_9 = add(scores_bits[5], _io_sample_out_bits_scores_5_T_8) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_5_T_10 = tail(_io_sample_out_bits_scores_5_T_9, 1) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_5_T_11 = asFixedPoint(_io_sample_out_bits_scores_5_T_10, 8) @[TreePE.scala 82:58]
      io.sample_out.bits.scores[5] <= _io_sample_out_bits_scores_5_T_11 @[TreePE.scala 82:40]
      reg io_sample_out_bits_dest_REG : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_dest_REG) @[TreePE.scala 84:43]
      io_sample_out_bits_dest_REG <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 84:43]
      node _io_sample_out_bits_dest_T = eq(io_sample_out_bits_dest_REG, UInt<1>("h1")) @[TreePE.scala 84:69]
      io.sample_out.bits.dest <= _io_sample_out_bits_dest_T @[TreePE.scala 84:33]
      reg io_sample_out_bits_last_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_last_REG) @[TreePE.scala 85:43]
      io_sample_out_bits_last_REG <= queue.io.deq.bits.last @[TreePE.scala 85:43]
      io.sample_out.bits.last <= io_sample_out_bits_last_REG @[TreePE.scala 85:33]
    else :
      io.sample_out.bits.clock_cycles is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.last is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.dest is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[0] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[1] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[2] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[3] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[4] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[0] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[1] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[2] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[3] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[4] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[5] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.tree_to_exec is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.search_for_root is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.shift is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.offset is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[0] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[1] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[2] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[3] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[4] is invalid @[TreePE.scala 88:26]
      io.sample_out.valid <= UInt<1>("h0") @[TreePE.scala 89:27]
    queue.io.deq.ready <= io.sample_out.ready @[TreePE.scala 92:17]

  module TreePEwithBRAM_2 :
    input clock : Clock
    input reset : Reset
    output pe_io : { flip sample_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, flip mem : { flip enable_1 : UInt<1>, flip write_1 : UInt<1>, flip addr_1 : UInt<13>, flip dataIn_1 : UInt<64>, dataOut_1 : UInt<64>, flip enable_2 : UInt<1>, flip write_2 : UInt<1>, flip addr_2 : UInt<13>, flip dataIn_2 : UInt<64>, dataOut_2 : UInt<64>}, sample_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}}

    inst pe of TreePE_2 @[TreePE.scala 104:18]
    pe.clock <= clock
    pe.reset <= reset
    pe_io.sample_out.bits <= pe.io.sample_out.bits @[TreePE.scala 106:9]
    pe_io.sample_out.valid <= pe.io.sample_out.valid @[TreePE.scala 106:9]
    pe.io.sample_out.ready <= pe_io.sample_out.ready @[TreePE.scala 106:9]
    pe.io.mem <= pe_io.mem @[TreePE.scala 106:9]
    pe.io.sample_in <= pe_io.sample_in @[TreePE.scala 106:9]

  module Queue_14 :
    input clock : Clock
    input reset : Reset
    output io : { flip enq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, deq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, count : UInt<2>}

    cmem ram : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>} [3] @[Decoupled.scala 275:95]
    reg enq_ptr_value : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[Counter.scala 61:40]
    reg deq_ptr_value : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[Counter.scala 61:40]
    reg maybe_full : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[Decoupled.scala 278:27]
    node ptr_match = eq(enq_ptr_value, deq_ptr_value) @[Decoupled.scala 279:33]
    node _empty_T = eq(maybe_full, UInt<1>("h0")) @[Decoupled.scala 280:28]
    node empty = and(ptr_match, _empty_T) @[Decoupled.scala 280:25]
    node full = and(ptr_match, maybe_full) @[Decoupled.scala 281:24]
    node _do_enq_T = and(io.enq.ready, io.enq.valid) @[Decoupled.scala 52:35]
    wire do_enq : UInt<1>
    do_enq <= _do_enq_T
    node _do_deq_T = and(io.deq.ready, io.deq.valid) @[Decoupled.scala 52:35]
    wire do_deq : UInt<1>
    do_deq <= _do_deq_T
    when do_enq : @[Decoupled.scala 288:16]
      infer mport MPORT = ram[enq_ptr_value], clock @[Decoupled.scala 289:8]
      MPORT <= io.enq.bits @[Decoupled.scala 289:24]
      node wrap = eq(enq_ptr_value, UInt<2>("h2")) @[Counter.scala 73:24]
      node _value_T = add(enq_ptr_value, UInt<1>("h1")) @[Counter.scala 77:24]
      node _value_T_1 = tail(_value_T, 1) @[Counter.scala 77:24]
      enq_ptr_value <= _value_T_1 @[Counter.scala 77:15]
      when wrap : @[Counter.scala 87:20]
        enq_ptr_value <= UInt<1>("h0") @[Counter.scala 87:28]
    when do_deq : @[Decoupled.scala 292:16]
      node wrap_1 = eq(deq_ptr_value, UInt<2>("h2")) @[Counter.scala 73:24]
      node _value_T_2 = add(deq_ptr_value, UInt<1>("h1")) @[Counter.scala 77:24]
      node _value_T_3 = tail(_value_T_2, 1) @[Counter.scala 77:24]
      deq_ptr_value <= _value_T_3 @[Counter.scala 77:15]
      when wrap_1 : @[Counter.scala 87:20]
        deq_ptr_value <= UInt<1>("h0") @[Counter.scala 87:28]
    node _T = neq(do_enq, do_deq) @[Decoupled.scala 295:15]
    when _T : @[Decoupled.scala 295:27]
      maybe_full <= do_enq @[Decoupled.scala 296:16]
    when UInt<1>("h0") : @[Decoupled.scala 298:15]
      enq_ptr_value <= UInt<1>("h0") @[Counter.scala 98:11]
      deq_ptr_value <= UInt<1>("h0") @[Counter.scala 98:11]
      maybe_full <= UInt<1>("h0") @[Decoupled.scala 301:16]
    node _io_deq_valid_T = eq(empty, UInt<1>("h0")) @[Decoupled.scala 304:19]
    io.deq.valid <= _io_deq_valid_T @[Decoupled.scala 304:16]
    node _io_enq_ready_T = eq(full, UInt<1>("h0")) @[Decoupled.scala 305:19]
    io.enq.ready <= _io_enq_ready_T @[Decoupled.scala 305:16]
    infer mport io_deq_bits_MPORT = ram[deq_ptr_value], clock @[Decoupled.scala 312:23]
    io.deq.bits <= io_deq_bits_MPORT @[Decoupled.scala 312:17]
    node _ptr_diff_T = sub(enq_ptr_value, deq_ptr_value) @[Decoupled.scala 328:32]
    node ptr_diff = tail(_ptr_diff_T, 1) @[Decoupled.scala 328:32]
    node _io_count_T = mux(maybe_full, UInt<2>("h3"), UInt<1>("h0")) @[Decoupled.scala 335:10]
    node _io_count_T_1 = gt(deq_ptr_value, enq_ptr_value) @[Decoupled.scala 336:25]
    node _io_count_T_2 = add(UInt<2>("h3"), ptr_diff) @[Decoupled.scala 336:57]
    node _io_count_T_3 = tail(_io_count_T_2, 1) @[Decoupled.scala 336:57]
    node _io_count_T_4 = mux(_io_count_T_1, _io_count_T_3, ptr_diff) @[Decoupled.scala 336:10]
    node _io_count_T_5 = mux(ptr_match, _io_count_T, _io_count_T_4) @[Decoupled.scala 333:20]
    io.count <= _io_count_T_5 @[Decoupled.scala 333:14]

  module TreePE_3 :
    input clock : Clock
    input reset : Reset
    output io : { flip sample_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, flip mem : { flip enable_1 : UInt<1>, flip write_1 : UInt<1>, flip addr_1 : UInt<13>, flip dataIn_1 : UInt<64>, dataOut_1 : UInt<64>, flip enable_2 : UInt<1>, flip write_2 : UInt<1>, flip addr_2 : UInt<13>, flip dataIn_2 : UInt<64>, dataOut_2 : UInt<64>}, sample_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}}

    inst queue of Queue_14 @[Decoupled.scala 377:21]
    queue.clock <= clock
    queue.reset <= reset
    queue.io.enq.valid <= io.sample_in.valid @[Decoupled.scala 379:22]
    queue.io.enq.bits.clock_cycles <= io.sample_in.bits.clock_cycles @[Decoupled.scala 380:21]
    queue.io.enq.bits.last <= io.sample_in.bits.last @[Decoupled.scala 380:21]
    queue.io.enq.bits.dest <= io.sample_in.bits.dest @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[0] <= io.sample_in.bits.weights[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[1] <= io.sample_in.bits.weights[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[2] <= io.sample_in.bits.weights[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[3] <= io.sample_in.bits.weights[3] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[4] <= io.sample_in.bits.weights[4] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[0] <= io.sample_in.bits.scores[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[1] <= io.sample_in.bits.scores[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[2] <= io.sample_in.bits.scores[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[3] <= io.sample_in.bits.scores[3] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[4] <= io.sample_in.bits.scores[4] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[5] <= io.sample_in.bits.scores[5] @[Decoupled.scala 380:21]
    queue.io.enq.bits.tree_to_exec <= io.sample_in.bits.tree_to_exec @[Decoupled.scala 380:21]
    queue.io.enq.bits.search_for_root <= io.sample_in.bits.search_for_root @[Decoupled.scala 380:21]
    queue.io.enq.bits.shift <= io.sample_in.bits.shift @[Decoupled.scala 380:21]
    queue.io.enq.bits.offset <= io.sample_in.bits.offset @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[0] <= io.sample_in.bits.features[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[1] <= io.sample_in.bits.features[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[2] <= io.sample_in.bits.features[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[3] <= io.sample_in.bits.features[3] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[4] <= io.sample_in.bits.features[4] @[Decoupled.scala 380:21]
    io.sample_in.ready <= queue.io.enq.ready @[Decoupled.scala 381:17]
    io.mem.enable_1 <= UInt<1>("h1") @[TreePE.scala 23:21]
    io.mem.addr_1 <= queue.io.deq.bits.offset @[TreePE.scala 24:19]
    io.mem.write_1 <= UInt<1>("h0") @[TreePE.scala 25:20]
    io.mem.dataIn_1 <= UInt<1>("h0") @[TreePE.scala 26:21]
    io.mem.enable_2 is invalid @[TreePE.scala 28:21]
    io.mem.addr_2 is invalid @[TreePE.scala 29:19]
    io.mem.write_2 is invalid @[TreePE.scala 30:20]
    io.mem.dataIn_2 is invalid @[TreePE.scala 31:21]
    reg REG : UInt<1>, clock with :
      reset => (UInt<1>("h0"), REG) @[TreePE.scala 35:17]
    REG <= queue.io.deq.valid @[TreePE.scala 35:17]
    when REG : @[TreePE.scala 35:31]
      node attr_id = bits(io.mem.dataOut_1, 34, 32) @[TreePE.scala 37:37]
      node threshold = bits(io.mem.dataOut_1, 15, 0) @[TreePE.scala 38:39]
      node nodeRA = bits(io.mem.dataOut_1, 31, 16) @[TreePE.scala 39:36]
      node leftChildInfo = bits(io.mem.dataOut_1, 44, 35) @[TreePE.scala 40:43]
      node rightChildInfo = bits(io.mem.dataOut_1, 54, 45) @[TreePE.scala 41:44]
      node leftChildType = bits(io.mem.dataOut_1, 55, 55) @[TreePE.scala 42:43]
      node rightChildType = bits(io.mem.dataOut_1, 56, 56) @[TreePE.scala 43:44]
      node is_valid = bits(io.mem.dataOut_1, 57, 57) @[TreePE.scala 44:38]
      node depth_indicator = bits(io.mem.dataOut_1, 60, 58) @[TreePE.scala 45:45]
      reg REG_1 : Fixed<32><<16>>[5], clock with :
        reset => (UInt<1>("h0"), REG_1) @[TreePE.scala 47:45]
      REG_1 <= queue.io.deq.bits.features @[TreePE.scala 47:45]
      io.sample_out.bits.features <= REG_1 @[TreePE.scala 47:35]
      reg REG_2 : Fixed<16><<8>>[5], clock with :
        reset => (UInt<1>("h0"), REG_2) @[TreePE.scala 48:44]
      REG_2 <= queue.io.deq.bits.weights @[TreePE.scala 48:44]
      io.sample_out.bits.weights <= REG_2 @[TreePE.scala 48:34]
      reg io_sample_out_bits_tree_to_exec_REG : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_tree_to_exec_REG) @[TreePE.scala 49:49]
      io_sample_out_bits_tree_to_exec_REG <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 49:49]
      io.sample_out.bits.tree_to_exec <= io_sample_out_bits_tree_to_exec_REG @[TreePE.scala 49:39]
      reg REG_3 : Fixed<16><<8>>[6], clock with :
        reset => (UInt<1>("h0"), REG_3) @[TreePE.scala 50:43]
      REG_3 <= queue.io.deq.bits.scores @[TreePE.scala 50:43]
      io.sample_out.bits.scores <= REG_3 @[TreePE.scala 50:33]
      io.sample_out.valid <= UInt<1>("h1") @[TreePE.scala 51:27]
      reg io_sample_out_bits_clock_cycles_REG : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_clock_cycles_REG) @[TreePE.scala 52:49]
      io_sample_out_bits_clock_cycles_REG <= queue.io.deq.bits.clock_cycles @[TreePE.scala 52:49]
      io.sample_out.bits.clock_cycles <= io_sample_out_bits_clock_cycles_REG @[TreePE.scala 52:39]
      wire offset : UInt<10> @[TreePE.scala 71:26]
      wire shift : UInt<1> @[TreePE.scala 72:25]
      reg features_bits : Fixed<32><<16>>[5], clock with :
        reset => (UInt<1>("h0"), features_bits) @[TreePE.scala 73:36]
      features_bits <= queue.io.deq.bits.features @[TreePE.scala 73:36]
      reg scores_bits : Fixed<16><<8>>[6], clock with :
        reset => (UInt<1>("h0"), scores_bits) @[TreePE.scala 74:34]
      scores_bits <= queue.io.deq.bits.scores @[TreePE.scala 74:34]
      reg weights_bits : Fixed<16><<8>>[5], clock with :
        reset => (UInt<1>("h0"), weights_bits) @[TreePE.scala 75:35]
      weights_bits <= queue.io.deq.bits.weights @[TreePE.scala 75:35]
      node _shift_T = asFixedPoint(threshold, 8) @[TreePE.scala 76:69]
      node _shift_T_1 = lt(features_bits[attr_id], _shift_T) @[TreePE.scala 76:45]
      node _shift_T_2 = mux(_shift_T_1, leftChildType, rightChildType) @[TreePE.scala 76:21]
      shift <= _shift_T_2 @[TreePE.scala 76:15]
      node _offset_T = asFixedPoint(threshold, 8) @[TreePE.scala 77:70]
      node _offset_T_1 = lt(features_bits[attr_id], _offset_T) @[TreePE.scala 77:46]
      node _offset_T_2 = mux(_offset_T_1, leftChildInfo, rightChildInfo) @[TreePE.scala 77:22]
      offset <= _offset_T_2 @[TreePE.scala 77:16]
      node _io_sample_out_bits_offset_T = eq(shift, UInt<1>("h0")) @[TreePE.scala 78:48]
      reg io_sample_out_bits_offset_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_offset_REG) @[TreePE.scala 78:70]
      io_sample_out_bits_offset_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 78:70]
      node _io_sample_out_bits_offset_T_1 = or(_io_sample_out_bits_offset_T, io_sample_out_bits_offset_REG) @[TreePE.scala 78:60]
      reg io_sample_out_bits_offset_REG_1 : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_offset_REG_1) @[TreePE.scala 78:106]
      io_sample_out_bits_offset_REG_1 <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 78:106]
      node _io_sample_out_bits_offset_T_2 = mux(_io_sample_out_bits_offset_T_1, io_sample_out_bits_offset_REG_1, offset) @[TreePE.scala 78:41]
      io.sample_out.bits.offset <= _io_sample_out_bits_offset_T_2 @[TreePE.scala 78:35]
      io.sample_out.bits.shift <= UInt<1>("h0") @[TreePE.scala 79:34]
      node _io_sample_out_bits_search_for_root_T = eq(shift, UInt<1>("h0")) @[TreePE.scala 80:47]
      reg io_sample_out_bits_search_for_root_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_search_for_root_REG) @[TreePE.scala 80:64]
      io_sample_out_bits_search_for_root_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 80:64]
      node _io_sample_out_bits_search_for_root_T_1 = or(_io_sample_out_bits_search_for_root_T, io_sample_out_bits_search_for_root_REG) @[TreePE.scala 80:54]
      io.sample_out.bits.search_for_root <= _io_sample_out_bits_search_for_root_T_1 @[TreePE.scala 80:44]
      reg io_sample_out_bits_scores_0_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_scores_0_REG) @[TreePE.scala 82:74]
      io_sample_out_bits_scores_0_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 82:74]
      node _io_sample_out_bits_scores_0_T = eq(io_sample_out_bits_scores_0_REG, UInt<1>("h0")) @[TreePE.scala 82:66]
      node _io_sample_out_bits_scores_0_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 82:111]
      node _io_sample_out_bits_scores_0_T_2 = and(_io_sample_out_bits_scores_0_T, _io_sample_out_bits_scores_0_T_1) @[TreePE.scala 82:103]
      node _io_sample_out_bits_scores_0_T_3 = and(_io_sample_out_bits_scores_0_T_2, is_valid) @[TreePE.scala 82:123]
      node _io_sample_out_bits_scores_0_T_4 = eq(UInt<1>("h0"), offset) @[TreePE.scala 82:141]
      node _io_sample_out_bits_scores_0_T_5 = and(_io_sample_out_bits_scores_0_T_3, _io_sample_out_bits_scores_0_T_4) @[TreePE.scala 82:134]
      node _io_sample_out_bits_scores_0_T_6 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 82:190]
      node _io_sample_out_bits_scores_0_T_7 = mux(_io_sample_out_bits_scores_0_T_5, _io_sample_out_bits_scores_0_T_6, UInt<16>("h0")) @[TreePE.scala 82:64]
      node _io_sample_out_bits_scores_0_T_8 = asFixedPoint(_io_sample_out_bits_scores_0_T_7, 8) @[TreePE.scala 82:217]
      node _io_sample_out_bits_scores_0_T_9 = add(scores_bits[0], _io_sample_out_bits_scores_0_T_8) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_0_T_10 = tail(_io_sample_out_bits_scores_0_T_9, 1) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_0_T_11 = asFixedPoint(_io_sample_out_bits_scores_0_T_10, 8) @[TreePE.scala 82:58]
      io.sample_out.bits.scores[0] <= _io_sample_out_bits_scores_0_T_11 @[TreePE.scala 82:40]
      reg io_sample_out_bits_scores_1_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_scores_1_REG) @[TreePE.scala 82:74]
      io_sample_out_bits_scores_1_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 82:74]
      node _io_sample_out_bits_scores_1_T = eq(io_sample_out_bits_scores_1_REG, UInt<1>("h0")) @[TreePE.scala 82:66]
      node _io_sample_out_bits_scores_1_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 82:111]
      node _io_sample_out_bits_scores_1_T_2 = and(_io_sample_out_bits_scores_1_T, _io_sample_out_bits_scores_1_T_1) @[TreePE.scala 82:103]
      node _io_sample_out_bits_scores_1_T_3 = and(_io_sample_out_bits_scores_1_T_2, is_valid) @[TreePE.scala 82:123]
      node _io_sample_out_bits_scores_1_T_4 = eq(UInt<1>("h1"), offset) @[TreePE.scala 82:141]
      node _io_sample_out_bits_scores_1_T_5 = and(_io_sample_out_bits_scores_1_T_3, _io_sample_out_bits_scores_1_T_4) @[TreePE.scala 82:134]
      node _io_sample_out_bits_scores_1_T_6 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 82:190]
      node _io_sample_out_bits_scores_1_T_7 = mux(_io_sample_out_bits_scores_1_T_5, _io_sample_out_bits_scores_1_T_6, UInt<16>("h0")) @[TreePE.scala 82:64]
      node _io_sample_out_bits_scores_1_T_8 = asFixedPoint(_io_sample_out_bits_scores_1_T_7, 8) @[TreePE.scala 82:217]
      node _io_sample_out_bits_scores_1_T_9 = add(scores_bits[1], _io_sample_out_bits_scores_1_T_8) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_1_T_10 = tail(_io_sample_out_bits_scores_1_T_9, 1) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_1_T_11 = asFixedPoint(_io_sample_out_bits_scores_1_T_10, 8) @[TreePE.scala 82:58]
      io.sample_out.bits.scores[1] <= _io_sample_out_bits_scores_1_T_11 @[TreePE.scala 82:40]
      reg io_sample_out_bits_scores_2_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_scores_2_REG) @[TreePE.scala 82:74]
      io_sample_out_bits_scores_2_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 82:74]
      node _io_sample_out_bits_scores_2_T = eq(io_sample_out_bits_scores_2_REG, UInt<1>("h0")) @[TreePE.scala 82:66]
      node _io_sample_out_bits_scores_2_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 82:111]
      node _io_sample_out_bits_scores_2_T_2 = and(_io_sample_out_bits_scores_2_T, _io_sample_out_bits_scores_2_T_1) @[TreePE.scala 82:103]
      node _io_sample_out_bits_scores_2_T_3 = and(_io_sample_out_bits_scores_2_T_2, is_valid) @[TreePE.scala 82:123]
      node _io_sample_out_bits_scores_2_T_4 = eq(UInt<2>("h2"), offset) @[TreePE.scala 82:141]
      node _io_sample_out_bits_scores_2_T_5 = and(_io_sample_out_bits_scores_2_T_3, _io_sample_out_bits_scores_2_T_4) @[TreePE.scala 82:134]
      node _io_sample_out_bits_scores_2_T_6 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 82:190]
      node _io_sample_out_bits_scores_2_T_7 = mux(_io_sample_out_bits_scores_2_T_5, _io_sample_out_bits_scores_2_T_6, UInt<16>("h0")) @[TreePE.scala 82:64]
      node _io_sample_out_bits_scores_2_T_8 = asFixedPoint(_io_sample_out_bits_scores_2_T_7, 8) @[TreePE.scala 82:217]
      node _io_sample_out_bits_scores_2_T_9 = add(scores_bits[2], _io_sample_out_bits_scores_2_T_8) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_2_T_10 = tail(_io_sample_out_bits_scores_2_T_9, 1) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_2_T_11 = asFixedPoint(_io_sample_out_bits_scores_2_T_10, 8) @[TreePE.scala 82:58]
      io.sample_out.bits.scores[2] <= _io_sample_out_bits_scores_2_T_11 @[TreePE.scala 82:40]
      reg io_sample_out_bits_scores_3_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_scores_3_REG) @[TreePE.scala 82:74]
      io_sample_out_bits_scores_3_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 82:74]
      node _io_sample_out_bits_scores_3_T = eq(io_sample_out_bits_scores_3_REG, UInt<1>("h0")) @[TreePE.scala 82:66]
      node _io_sample_out_bits_scores_3_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 82:111]
      node _io_sample_out_bits_scores_3_T_2 = and(_io_sample_out_bits_scores_3_T, _io_sample_out_bits_scores_3_T_1) @[TreePE.scala 82:103]
      node _io_sample_out_bits_scores_3_T_3 = and(_io_sample_out_bits_scores_3_T_2, is_valid) @[TreePE.scala 82:123]
      node _io_sample_out_bits_scores_3_T_4 = eq(UInt<2>("h3"), offset) @[TreePE.scala 82:141]
      node _io_sample_out_bits_scores_3_T_5 = and(_io_sample_out_bits_scores_3_T_3, _io_sample_out_bits_scores_3_T_4) @[TreePE.scala 82:134]
      node _io_sample_out_bits_scores_3_T_6 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 82:190]
      node _io_sample_out_bits_scores_3_T_7 = mux(_io_sample_out_bits_scores_3_T_5, _io_sample_out_bits_scores_3_T_6, UInt<16>("h0")) @[TreePE.scala 82:64]
      node _io_sample_out_bits_scores_3_T_8 = asFixedPoint(_io_sample_out_bits_scores_3_T_7, 8) @[TreePE.scala 82:217]
      node _io_sample_out_bits_scores_3_T_9 = add(scores_bits[3], _io_sample_out_bits_scores_3_T_8) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_3_T_10 = tail(_io_sample_out_bits_scores_3_T_9, 1) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_3_T_11 = asFixedPoint(_io_sample_out_bits_scores_3_T_10, 8) @[TreePE.scala 82:58]
      io.sample_out.bits.scores[3] <= _io_sample_out_bits_scores_3_T_11 @[TreePE.scala 82:40]
      reg io_sample_out_bits_scores_4_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_scores_4_REG) @[TreePE.scala 82:74]
      io_sample_out_bits_scores_4_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 82:74]
      node _io_sample_out_bits_scores_4_T = eq(io_sample_out_bits_scores_4_REG, UInt<1>("h0")) @[TreePE.scala 82:66]
      node _io_sample_out_bits_scores_4_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 82:111]
      node _io_sample_out_bits_scores_4_T_2 = and(_io_sample_out_bits_scores_4_T, _io_sample_out_bits_scores_4_T_1) @[TreePE.scala 82:103]
      node _io_sample_out_bits_scores_4_T_3 = and(_io_sample_out_bits_scores_4_T_2, is_valid) @[TreePE.scala 82:123]
      node _io_sample_out_bits_scores_4_T_4 = eq(UInt<3>("h4"), offset) @[TreePE.scala 82:141]
      node _io_sample_out_bits_scores_4_T_5 = and(_io_sample_out_bits_scores_4_T_3, _io_sample_out_bits_scores_4_T_4) @[TreePE.scala 82:134]
      node _io_sample_out_bits_scores_4_T_6 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 82:190]
      node _io_sample_out_bits_scores_4_T_7 = mux(_io_sample_out_bits_scores_4_T_5, _io_sample_out_bits_scores_4_T_6, UInt<16>("h0")) @[TreePE.scala 82:64]
      node _io_sample_out_bits_scores_4_T_8 = asFixedPoint(_io_sample_out_bits_scores_4_T_7, 8) @[TreePE.scala 82:217]
      node _io_sample_out_bits_scores_4_T_9 = add(scores_bits[4], _io_sample_out_bits_scores_4_T_8) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_4_T_10 = tail(_io_sample_out_bits_scores_4_T_9, 1) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_4_T_11 = asFixedPoint(_io_sample_out_bits_scores_4_T_10, 8) @[TreePE.scala 82:58]
      io.sample_out.bits.scores[4] <= _io_sample_out_bits_scores_4_T_11 @[TreePE.scala 82:40]
      reg io_sample_out_bits_scores_5_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_scores_5_REG) @[TreePE.scala 82:74]
      io_sample_out_bits_scores_5_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 82:74]
      node _io_sample_out_bits_scores_5_T = eq(io_sample_out_bits_scores_5_REG, UInt<1>("h0")) @[TreePE.scala 82:66]
      node _io_sample_out_bits_scores_5_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 82:111]
      node _io_sample_out_bits_scores_5_T_2 = and(_io_sample_out_bits_scores_5_T, _io_sample_out_bits_scores_5_T_1) @[TreePE.scala 82:103]
      node _io_sample_out_bits_scores_5_T_3 = and(_io_sample_out_bits_scores_5_T_2, is_valid) @[TreePE.scala 82:123]
      node _io_sample_out_bits_scores_5_T_4 = eq(UInt<3>("h5"), offset) @[TreePE.scala 82:141]
      node _io_sample_out_bits_scores_5_T_5 = and(_io_sample_out_bits_scores_5_T_3, _io_sample_out_bits_scores_5_T_4) @[TreePE.scala 82:134]
      node _io_sample_out_bits_scores_5_T_6 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 82:190]
      node _io_sample_out_bits_scores_5_T_7 = mux(_io_sample_out_bits_scores_5_T_5, _io_sample_out_bits_scores_5_T_6, UInt<16>("h0")) @[TreePE.scala 82:64]
      node _io_sample_out_bits_scores_5_T_8 = asFixedPoint(_io_sample_out_bits_scores_5_T_7, 8) @[TreePE.scala 82:217]
      node _io_sample_out_bits_scores_5_T_9 = add(scores_bits[5], _io_sample_out_bits_scores_5_T_8) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_5_T_10 = tail(_io_sample_out_bits_scores_5_T_9, 1) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_5_T_11 = asFixedPoint(_io_sample_out_bits_scores_5_T_10, 8) @[TreePE.scala 82:58]
      io.sample_out.bits.scores[5] <= _io_sample_out_bits_scores_5_T_11 @[TreePE.scala 82:40]
      reg io_sample_out_bits_dest_REG : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_dest_REG) @[TreePE.scala 84:43]
      io_sample_out_bits_dest_REG <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 84:43]
      node _io_sample_out_bits_dest_T = eq(io_sample_out_bits_dest_REG, UInt<1>("h1")) @[TreePE.scala 84:69]
      io.sample_out.bits.dest <= _io_sample_out_bits_dest_T @[TreePE.scala 84:33]
      reg io_sample_out_bits_last_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_last_REG) @[TreePE.scala 85:43]
      io_sample_out_bits_last_REG <= queue.io.deq.bits.last @[TreePE.scala 85:43]
      io.sample_out.bits.last <= io_sample_out_bits_last_REG @[TreePE.scala 85:33]
    else :
      io.sample_out.bits.clock_cycles is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.last is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.dest is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[0] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[1] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[2] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[3] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[4] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[0] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[1] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[2] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[3] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[4] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[5] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.tree_to_exec is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.search_for_root is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.shift is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.offset is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[0] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[1] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[2] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[3] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[4] is invalid @[TreePE.scala 88:26]
      io.sample_out.valid <= UInt<1>("h0") @[TreePE.scala 89:27]
    queue.io.deq.ready <= io.sample_out.ready @[TreePE.scala 92:17]

  module TreePEwithBRAM_3 :
    input clock : Clock
    input reset : Reset
    output pe_io : { flip sample_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, flip mem : { flip enable_1 : UInt<1>, flip write_1 : UInt<1>, flip addr_1 : UInt<13>, flip dataIn_1 : UInt<64>, dataOut_1 : UInt<64>, flip enable_2 : UInt<1>, flip write_2 : UInt<1>, flip addr_2 : UInt<13>, flip dataIn_2 : UInt<64>, dataOut_2 : UInt<64>}, sample_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}}

    inst pe of TreePE_3 @[TreePE.scala 104:18]
    pe.clock <= clock
    pe.reset <= reset
    pe_io.sample_out.bits <= pe.io.sample_out.bits @[TreePE.scala 106:9]
    pe_io.sample_out.valid <= pe.io.sample_out.valid @[TreePE.scala 106:9]
    pe.io.sample_out.ready <= pe_io.sample_out.ready @[TreePE.scala 106:9]
    pe.io.mem <= pe_io.mem @[TreePE.scala 106:9]
    pe.io.sample_in <= pe_io.sample_in @[TreePE.scala 106:9]

  module Queue_15 :
    input clock : Clock
    input reset : Reset
    output io : { flip enq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, deq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, count : UInt<2>}

    cmem ram : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>} [3] @[Decoupled.scala 275:95]
    reg enq_ptr_value : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[Counter.scala 61:40]
    reg deq_ptr_value : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[Counter.scala 61:40]
    reg maybe_full : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[Decoupled.scala 278:27]
    node ptr_match = eq(enq_ptr_value, deq_ptr_value) @[Decoupled.scala 279:33]
    node _empty_T = eq(maybe_full, UInt<1>("h0")) @[Decoupled.scala 280:28]
    node empty = and(ptr_match, _empty_T) @[Decoupled.scala 280:25]
    node full = and(ptr_match, maybe_full) @[Decoupled.scala 281:24]
    node _do_enq_T = and(io.enq.ready, io.enq.valid) @[Decoupled.scala 52:35]
    wire do_enq : UInt<1>
    do_enq <= _do_enq_T
    node _do_deq_T = and(io.deq.ready, io.deq.valid) @[Decoupled.scala 52:35]
    wire do_deq : UInt<1>
    do_deq <= _do_deq_T
    when do_enq : @[Decoupled.scala 288:16]
      infer mport MPORT = ram[enq_ptr_value], clock @[Decoupled.scala 289:8]
      MPORT <= io.enq.bits @[Decoupled.scala 289:24]
      node wrap = eq(enq_ptr_value, UInt<2>("h2")) @[Counter.scala 73:24]
      node _value_T = add(enq_ptr_value, UInt<1>("h1")) @[Counter.scala 77:24]
      node _value_T_1 = tail(_value_T, 1) @[Counter.scala 77:24]
      enq_ptr_value <= _value_T_1 @[Counter.scala 77:15]
      when wrap : @[Counter.scala 87:20]
        enq_ptr_value <= UInt<1>("h0") @[Counter.scala 87:28]
    when do_deq : @[Decoupled.scala 292:16]
      node wrap_1 = eq(deq_ptr_value, UInt<2>("h2")) @[Counter.scala 73:24]
      node _value_T_2 = add(deq_ptr_value, UInt<1>("h1")) @[Counter.scala 77:24]
      node _value_T_3 = tail(_value_T_2, 1) @[Counter.scala 77:24]
      deq_ptr_value <= _value_T_3 @[Counter.scala 77:15]
      when wrap_1 : @[Counter.scala 87:20]
        deq_ptr_value <= UInt<1>("h0") @[Counter.scala 87:28]
    node _T = neq(do_enq, do_deq) @[Decoupled.scala 295:15]
    when _T : @[Decoupled.scala 295:27]
      maybe_full <= do_enq @[Decoupled.scala 296:16]
    when UInt<1>("h0") : @[Decoupled.scala 298:15]
      enq_ptr_value <= UInt<1>("h0") @[Counter.scala 98:11]
      deq_ptr_value <= UInt<1>("h0") @[Counter.scala 98:11]
      maybe_full <= UInt<1>("h0") @[Decoupled.scala 301:16]
    node _io_deq_valid_T = eq(empty, UInt<1>("h0")) @[Decoupled.scala 304:19]
    io.deq.valid <= _io_deq_valid_T @[Decoupled.scala 304:16]
    node _io_enq_ready_T = eq(full, UInt<1>("h0")) @[Decoupled.scala 305:19]
    io.enq.ready <= _io_enq_ready_T @[Decoupled.scala 305:16]
    infer mport io_deq_bits_MPORT = ram[deq_ptr_value], clock @[Decoupled.scala 312:23]
    io.deq.bits <= io_deq_bits_MPORT @[Decoupled.scala 312:17]
    node _ptr_diff_T = sub(enq_ptr_value, deq_ptr_value) @[Decoupled.scala 328:32]
    node ptr_diff = tail(_ptr_diff_T, 1) @[Decoupled.scala 328:32]
    node _io_count_T = mux(maybe_full, UInt<2>("h3"), UInt<1>("h0")) @[Decoupled.scala 335:10]
    node _io_count_T_1 = gt(deq_ptr_value, enq_ptr_value) @[Decoupled.scala 336:25]
    node _io_count_T_2 = add(UInt<2>("h3"), ptr_diff) @[Decoupled.scala 336:57]
    node _io_count_T_3 = tail(_io_count_T_2, 1) @[Decoupled.scala 336:57]
    node _io_count_T_4 = mux(_io_count_T_1, _io_count_T_3, ptr_diff) @[Decoupled.scala 336:10]
    node _io_count_T_5 = mux(ptr_match, _io_count_T, _io_count_T_4) @[Decoupled.scala 333:20]
    io.count <= _io_count_T_5 @[Decoupled.scala 333:14]

  module TreePE_4 :
    input clock : Clock
    input reset : Reset
    output io : { flip sample_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, flip mem : { flip enable_1 : UInt<1>, flip write_1 : UInt<1>, flip addr_1 : UInt<13>, flip dataIn_1 : UInt<64>, dataOut_1 : UInt<64>, flip enable_2 : UInt<1>, flip write_2 : UInt<1>, flip addr_2 : UInt<13>, flip dataIn_2 : UInt<64>, dataOut_2 : UInt<64>}, sample_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}}

    inst queue of Queue_15 @[Decoupled.scala 377:21]
    queue.clock <= clock
    queue.reset <= reset
    queue.io.enq.valid <= io.sample_in.valid @[Decoupled.scala 379:22]
    queue.io.enq.bits.clock_cycles <= io.sample_in.bits.clock_cycles @[Decoupled.scala 380:21]
    queue.io.enq.bits.last <= io.sample_in.bits.last @[Decoupled.scala 380:21]
    queue.io.enq.bits.dest <= io.sample_in.bits.dest @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[0] <= io.sample_in.bits.weights[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[1] <= io.sample_in.bits.weights[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[2] <= io.sample_in.bits.weights[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[3] <= io.sample_in.bits.weights[3] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[4] <= io.sample_in.bits.weights[4] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[0] <= io.sample_in.bits.scores[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[1] <= io.sample_in.bits.scores[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[2] <= io.sample_in.bits.scores[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[3] <= io.sample_in.bits.scores[3] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[4] <= io.sample_in.bits.scores[4] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[5] <= io.sample_in.bits.scores[5] @[Decoupled.scala 380:21]
    queue.io.enq.bits.tree_to_exec <= io.sample_in.bits.tree_to_exec @[Decoupled.scala 380:21]
    queue.io.enq.bits.search_for_root <= io.sample_in.bits.search_for_root @[Decoupled.scala 380:21]
    queue.io.enq.bits.shift <= io.sample_in.bits.shift @[Decoupled.scala 380:21]
    queue.io.enq.bits.offset <= io.sample_in.bits.offset @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[0] <= io.sample_in.bits.features[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[1] <= io.sample_in.bits.features[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[2] <= io.sample_in.bits.features[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[3] <= io.sample_in.bits.features[3] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[4] <= io.sample_in.bits.features[4] @[Decoupled.scala 380:21]
    io.sample_in.ready <= queue.io.enq.ready @[Decoupled.scala 381:17]
    io.mem.enable_1 <= UInt<1>("h1") @[TreePE.scala 23:21]
    io.mem.addr_1 <= queue.io.deq.bits.offset @[TreePE.scala 24:19]
    io.mem.write_1 <= UInt<1>("h0") @[TreePE.scala 25:20]
    io.mem.dataIn_1 <= UInt<1>("h0") @[TreePE.scala 26:21]
    io.mem.enable_2 is invalid @[TreePE.scala 28:21]
    io.mem.addr_2 is invalid @[TreePE.scala 29:19]
    io.mem.write_2 is invalid @[TreePE.scala 30:20]
    io.mem.dataIn_2 is invalid @[TreePE.scala 31:21]
    reg REG : UInt<1>, clock with :
      reset => (UInt<1>("h0"), REG) @[TreePE.scala 35:17]
    REG <= queue.io.deq.valid @[TreePE.scala 35:17]
    when REG : @[TreePE.scala 35:31]
      node attr_id = bits(io.mem.dataOut_1, 34, 32) @[TreePE.scala 37:37]
      node threshold = bits(io.mem.dataOut_1, 15, 0) @[TreePE.scala 38:39]
      node nodeRA = bits(io.mem.dataOut_1, 31, 16) @[TreePE.scala 39:36]
      node leftChildInfo = bits(io.mem.dataOut_1, 44, 35) @[TreePE.scala 40:43]
      node rightChildInfo = bits(io.mem.dataOut_1, 54, 45) @[TreePE.scala 41:44]
      node leftChildType = bits(io.mem.dataOut_1, 55, 55) @[TreePE.scala 42:43]
      node rightChildType = bits(io.mem.dataOut_1, 56, 56) @[TreePE.scala 43:44]
      node is_valid = bits(io.mem.dataOut_1, 57, 57) @[TreePE.scala 44:38]
      node depth_indicator = bits(io.mem.dataOut_1, 60, 58) @[TreePE.scala 45:45]
      reg REG_1 : Fixed<32><<16>>[5], clock with :
        reset => (UInt<1>("h0"), REG_1) @[TreePE.scala 47:45]
      REG_1 <= queue.io.deq.bits.features @[TreePE.scala 47:45]
      io.sample_out.bits.features <= REG_1 @[TreePE.scala 47:35]
      reg REG_2 : Fixed<16><<8>>[5], clock with :
        reset => (UInt<1>("h0"), REG_2) @[TreePE.scala 48:44]
      REG_2 <= queue.io.deq.bits.weights @[TreePE.scala 48:44]
      io.sample_out.bits.weights <= REG_2 @[TreePE.scala 48:34]
      reg io_sample_out_bits_tree_to_exec_REG : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_tree_to_exec_REG) @[TreePE.scala 49:49]
      io_sample_out_bits_tree_to_exec_REG <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 49:49]
      io.sample_out.bits.tree_to_exec <= io_sample_out_bits_tree_to_exec_REG @[TreePE.scala 49:39]
      reg REG_3 : Fixed<16><<8>>[6], clock with :
        reset => (UInt<1>("h0"), REG_3) @[TreePE.scala 50:43]
      REG_3 <= queue.io.deq.bits.scores @[TreePE.scala 50:43]
      io.sample_out.bits.scores <= REG_3 @[TreePE.scala 50:33]
      io.sample_out.valid <= UInt<1>("h1") @[TreePE.scala 51:27]
      reg io_sample_out_bits_clock_cycles_REG : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_clock_cycles_REG) @[TreePE.scala 52:49]
      io_sample_out_bits_clock_cycles_REG <= queue.io.deq.bits.clock_cycles @[TreePE.scala 52:49]
      io.sample_out.bits.clock_cycles <= io_sample_out_bits_clock_cycles_REG @[TreePE.scala 52:39]
      wire offset : UInt<10> @[TreePE.scala 71:26]
      wire shift : UInt<1> @[TreePE.scala 72:25]
      reg features_bits : Fixed<32><<16>>[5], clock with :
        reset => (UInt<1>("h0"), features_bits) @[TreePE.scala 73:36]
      features_bits <= queue.io.deq.bits.features @[TreePE.scala 73:36]
      reg scores_bits : Fixed<16><<8>>[6], clock with :
        reset => (UInt<1>("h0"), scores_bits) @[TreePE.scala 74:34]
      scores_bits <= queue.io.deq.bits.scores @[TreePE.scala 74:34]
      reg weights_bits : Fixed<16><<8>>[5], clock with :
        reset => (UInt<1>("h0"), weights_bits) @[TreePE.scala 75:35]
      weights_bits <= queue.io.deq.bits.weights @[TreePE.scala 75:35]
      node _shift_T = asFixedPoint(threshold, 8) @[TreePE.scala 76:69]
      node _shift_T_1 = lt(features_bits[attr_id], _shift_T) @[TreePE.scala 76:45]
      node _shift_T_2 = mux(_shift_T_1, leftChildType, rightChildType) @[TreePE.scala 76:21]
      shift <= _shift_T_2 @[TreePE.scala 76:15]
      node _offset_T = asFixedPoint(threshold, 8) @[TreePE.scala 77:70]
      node _offset_T_1 = lt(features_bits[attr_id], _offset_T) @[TreePE.scala 77:46]
      node _offset_T_2 = mux(_offset_T_1, leftChildInfo, rightChildInfo) @[TreePE.scala 77:22]
      offset <= _offset_T_2 @[TreePE.scala 77:16]
      node _io_sample_out_bits_offset_T = eq(shift, UInt<1>("h0")) @[TreePE.scala 78:48]
      reg io_sample_out_bits_offset_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_offset_REG) @[TreePE.scala 78:70]
      io_sample_out_bits_offset_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 78:70]
      node _io_sample_out_bits_offset_T_1 = or(_io_sample_out_bits_offset_T, io_sample_out_bits_offset_REG) @[TreePE.scala 78:60]
      reg io_sample_out_bits_offset_REG_1 : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_offset_REG_1) @[TreePE.scala 78:106]
      io_sample_out_bits_offset_REG_1 <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 78:106]
      node _io_sample_out_bits_offset_T_2 = mux(_io_sample_out_bits_offset_T_1, io_sample_out_bits_offset_REG_1, offset) @[TreePE.scala 78:41]
      io.sample_out.bits.offset <= _io_sample_out_bits_offset_T_2 @[TreePE.scala 78:35]
      io.sample_out.bits.shift <= UInt<1>("h0") @[TreePE.scala 79:34]
      node _io_sample_out_bits_search_for_root_T = eq(shift, UInt<1>("h0")) @[TreePE.scala 80:47]
      reg io_sample_out_bits_search_for_root_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_search_for_root_REG) @[TreePE.scala 80:64]
      io_sample_out_bits_search_for_root_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 80:64]
      node _io_sample_out_bits_search_for_root_T_1 = or(_io_sample_out_bits_search_for_root_T, io_sample_out_bits_search_for_root_REG) @[TreePE.scala 80:54]
      io.sample_out.bits.search_for_root <= _io_sample_out_bits_search_for_root_T_1 @[TreePE.scala 80:44]
      reg io_sample_out_bits_scores_0_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_scores_0_REG) @[TreePE.scala 82:74]
      io_sample_out_bits_scores_0_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 82:74]
      node _io_sample_out_bits_scores_0_T = eq(io_sample_out_bits_scores_0_REG, UInt<1>("h0")) @[TreePE.scala 82:66]
      node _io_sample_out_bits_scores_0_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 82:111]
      node _io_sample_out_bits_scores_0_T_2 = and(_io_sample_out_bits_scores_0_T, _io_sample_out_bits_scores_0_T_1) @[TreePE.scala 82:103]
      node _io_sample_out_bits_scores_0_T_3 = and(_io_sample_out_bits_scores_0_T_2, is_valid) @[TreePE.scala 82:123]
      node _io_sample_out_bits_scores_0_T_4 = eq(UInt<1>("h0"), offset) @[TreePE.scala 82:141]
      node _io_sample_out_bits_scores_0_T_5 = and(_io_sample_out_bits_scores_0_T_3, _io_sample_out_bits_scores_0_T_4) @[TreePE.scala 82:134]
      node _io_sample_out_bits_scores_0_T_6 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 82:190]
      node _io_sample_out_bits_scores_0_T_7 = mux(_io_sample_out_bits_scores_0_T_5, _io_sample_out_bits_scores_0_T_6, UInt<16>("h0")) @[TreePE.scala 82:64]
      node _io_sample_out_bits_scores_0_T_8 = asFixedPoint(_io_sample_out_bits_scores_0_T_7, 8) @[TreePE.scala 82:217]
      node _io_sample_out_bits_scores_0_T_9 = add(scores_bits[0], _io_sample_out_bits_scores_0_T_8) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_0_T_10 = tail(_io_sample_out_bits_scores_0_T_9, 1) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_0_T_11 = asFixedPoint(_io_sample_out_bits_scores_0_T_10, 8) @[TreePE.scala 82:58]
      io.sample_out.bits.scores[0] <= _io_sample_out_bits_scores_0_T_11 @[TreePE.scala 82:40]
      reg io_sample_out_bits_scores_1_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_scores_1_REG) @[TreePE.scala 82:74]
      io_sample_out_bits_scores_1_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 82:74]
      node _io_sample_out_bits_scores_1_T = eq(io_sample_out_bits_scores_1_REG, UInt<1>("h0")) @[TreePE.scala 82:66]
      node _io_sample_out_bits_scores_1_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 82:111]
      node _io_sample_out_bits_scores_1_T_2 = and(_io_sample_out_bits_scores_1_T, _io_sample_out_bits_scores_1_T_1) @[TreePE.scala 82:103]
      node _io_sample_out_bits_scores_1_T_3 = and(_io_sample_out_bits_scores_1_T_2, is_valid) @[TreePE.scala 82:123]
      node _io_sample_out_bits_scores_1_T_4 = eq(UInt<1>("h1"), offset) @[TreePE.scala 82:141]
      node _io_sample_out_bits_scores_1_T_5 = and(_io_sample_out_bits_scores_1_T_3, _io_sample_out_bits_scores_1_T_4) @[TreePE.scala 82:134]
      node _io_sample_out_bits_scores_1_T_6 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 82:190]
      node _io_sample_out_bits_scores_1_T_7 = mux(_io_sample_out_bits_scores_1_T_5, _io_sample_out_bits_scores_1_T_6, UInt<16>("h0")) @[TreePE.scala 82:64]
      node _io_sample_out_bits_scores_1_T_8 = asFixedPoint(_io_sample_out_bits_scores_1_T_7, 8) @[TreePE.scala 82:217]
      node _io_sample_out_bits_scores_1_T_9 = add(scores_bits[1], _io_sample_out_bits_scores_1_T_8) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_1_T_10 = tail(_io_sample_out_bits_scores_1_T_9, 1) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_1_T_11 = asFixedPoint(_io_sample_out_bits_scores_1_T_10, 8) @[TreePE.scala 82:58]
      io.sample_out.bits.scores[1] <= _io_sample_out_bits_scores_1_T_11 @[TreePE.scala 82:40]
      reg io_sample_out_bits_scores_2_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_scores_2_REG) @[TreePE.scala 82:74]
      io_sample_out_bits_scores_2_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 82:74]
      node _io_sample_out_bits_scores_2_T = eq(io_sample_out_bits_scores_2_REG, UInt<1>("h0")) @[TreePE.scala 82:66]
      node _io_sample_out_bits_scores_2_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 82:111]
      node _io_sample_out_bits_scores_2_T_2 = and(_io_sample_out_bits_scores_2_T, _io_sample_out_bits_scores_2_T_1) @[TreePE.scala 82:103]
      node _io_sample_out_bits_scores_2_T_3 = and(_io_sample_out_bits_scores_2_T_2, is_valid) @[TreePE.scala 82:123]
      node _io_sample_out_bits_scores_2_T_4 = eq(UInt<2>("h2"), offset) @[TreePE.scala 82:141]
      node _io_sample_out_bits_scores_2_T_5 = and(_io_sample_out_bits_scores_2_T_3, _io_sample_out_bits_scores_2_T_4) @[TreePE.scala 82:134]
      node _io_sample_out_bits_scores_2_T_6 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 82:190]
      node _io_sample_out_bits_scores_2_T_7 = mux(_io_sample_out_bits_scores_2_T_5, _io_sample_out_bits_scores_2_T_6, UInt<16>("h0")) @[TreePE.scala 82:64]
      node _io_sample_out_bits_scores_2_T_8 = asFixedPoint(_io_sample_out_bits_scores_2_T_7, 8) @[TreePE.scala 82:217]
      node _io_sample_out_bits_scores_2_T_9 = add(scores_bits[2], _io_sample_out_bits_scores_2_T_8) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_2_T_10 = tail(_io_sample_out_bits_scores_2_T_9, 1) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_2_T_11 = asFixedPoint(_io_sample_out_bits_scores_2_T_10, 8) @[TreePE.scala 82:58]
      io.sample_out.bits.scores[2] <= _io_sample_out_bits_scores_2_T_11 @[TreePE.scala 82:40]
      reg io_sample_out_bits_scores_3_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_scores_3_REG) @[TreePE.scala 82:74]
      io_sample_out_bits_scores_3_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 82:74]
      node _io_sample_out_bits_scores_3_T = eq(io_sample_out_bits_scores_3_REG, UInt<1>("h0")) @[TreePE.scala 82:66]
      node _io_sample_out_bits_scores_3_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 82:111]
      node _io_sample_out_bits_scores_3_T_2 = and(_io_sample_out_bits_scores_3_T, _io_sample_out_bits_scores_3_T_1) @[TreePE.scala 82:103]
      node _io_sample_out_bits_scores_3_T_3 = and(_io_sample_out_bits_scores_3_T_2, is_valid) @[TreePE.scala 82:123]
      node _io_sample_out_bits_scores_3_T_4 = eq(UInt<2>("h3"), offset) @[TreePE.scala 82:141]
      node _io_sample_out_bits_scores_3_T_5 = and(_io_sample_out_bits_scores_3_T_3, _io_sample_out_bits_scores_3_T_4) @[TreePE.scala 82:134]
      node _io_sample_out_bits_scores_3_T_6 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 82:190]
      node _io_sample_out_bits_scores_3_T_7 = mux(_io_sample_out_bits_scores_3_T_5, _io_sample_out_bits_scores_3_T_6, UInt<16>("h0")) @[TreePE.scala 82:64]
      node _io_sample_out_bits_scores_3_T_8 = asFixedPoint(_io_sample_out_bits_scores_3_T_7, 8) @[TreePE.scala 82:217]
      node _io_sample_out_bits_scores_3_T_9 = add(scores_bits[3], _io_sample_out_bits_scores_3_T_8) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_3_T_10 = tail(_io_sample_out_bits_scores_3_T_9, 1) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_3_T_11 = asFixedPoint(_io_sample_out_bits_scores_3_T_10, 8) @[TreePE.scala 82:58]
      io.sample_out.bits.scores[3] <= _io_sample_out_bits_scores_3_T_11 @[TreePE.scala 82:40]
      reg io_sample_out_bits_scores_4_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_scores_4_REG) @[TreePE.scala 82:74]
      io_sample_out_bits_scores_4_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 82:74]
      node _io_sample_out_bits_scores_4_T = eq(io_sample_out_bits_scores_4_REG, UInt<1>("h0")) @[TreePE.scala 82:66]
      node _io_sample_out_bits_scores_4_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 82:111]
      node _io_sample_out_bits_scores_4_T_2 = and(_io_sample_out_bits_scores_4_T, _io_sample_out_bits_scores_4_T_1) @[TreePE.scala 82:103]
      node _io_sample_out_bits_scores_4_T_3 = and(_io_sample_out_bits_scores_4_T_2, is_valid) @[TreePE.scala 82:123]
      node _io_sample_out_bits_scores_4_T_4 = eq(UInt<3>("h4"), offset) @[TreePE.scala 82:141]
      node _io_sample_out_bits_scores_4_T_5 = and(_io_sample_out_bits_scores_4_T_3, _io_sample_out_bits_scores_4_T_4) @[TreePE.scala 82:134]
      node _io_sample_out_bits_scores_4_T_6 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 82:190]
      node _io_sample_out_bits_scores_4_T_7 = mux(_io_sample_out_bits_scores_4_T_5, _io_sample_out_bits_scores_4_T_6, UInt<16>("h0")) @[TreePE.scala 82:64]
      node _io_sample_out_bits_scores_4_T_8 = asFixedPoint(_io_sample_out_bits_scores_4_T_7, 8) @[TreePE.scala 82:217]
      node _io_sample_out_bits_scores_4_T_9 = add(scores_bits[4], _io_sample_out_bits_scores_4_T_8) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_4_T_10 = tail(_io_sample_out_bits_scores_4_T_9, 1) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_4_T_11 = asFixedPoint(_io_sample_out_bits_scores_4_T_10, 8) @[TreePE.scala 82:58]
      io.sample_out.bits.scores[4] <= _io_sample_out_bits_scores_4_T_11 @[TreePE.scala 82:40]
      reg io_sample_out_bits_scores_5_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_scores_5_REG) @[TreePE.scala 82:74]
      io_sample_out_bits_scores_5_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 82:74]
      node _io_sample_out_bits_scores_5_T = eq(io_sample_out_bits_scores_5_REG, UInt<1>("h0")) @[TreePE.scala 82:66]
      node _io_sample_out_bits_scores_5_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 82:111]
      node _io_sample_out_bits_scores_5_T_2 = and(_io_sample_out_bits_scores_5_T, _io_sample_out_bits_scores_5_T_1) @[TreePE.scala 82:103]
      node _io_sample_out_bits_scores_5_T_3 = and(_io_sample_out_bits_scores_5_T_2, is_valid) @[TreePE.scala 82:123]
      node _io_sample_out_bits_scores_5_T_4 = eq(UInt<3>("h5"), offset) @[TreePE.scala 82:141]
      node _io_sample_out_bits_scores_5_T_5 = and(_io_sample_out_bits_scores_5_T_3, _io_sample_out_bits_scores_5_T_4) @[TreePE.scala 82:134]
      node _io_sample_out_bits_scores_5_T_6 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 82:190]
      node _io_sample_out_bits_scores_5_T_7 = mux(_io_sample_out_bits_scores_5_T_5, _io_sample_out_bits_scores_5_T_6, UInt<16>("h0")) @[TreePE.scala 82:64]
      node _io_sample_out_bits_scores_5_T_8 = asFixedPoint(_io_sample_out_bits_scores_5_T_7, 8) @[TreePE.scala 82:217]
      node _io_sample_out_bits_scores_5_T_9 = add(scores_bits[5], _io_sample_out_bits_scores_5_T_8) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_5_T_10 = tail(_io_sample_out_bits_scores_5_T_9, 1) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_5_T_11 = asFixedPoint(_io_sample_out_bits_scores_5_T_10, 8) @[TreePE.scala 82:58]
      io.sample_out.bits.scores[5] <= _io_sample_out_bits_scores_5_T_11 @[TreePE.scala 82:40]
      reg io_sample_out_bits_dest_REG : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_dest_REG) @[TreePE.scala 84:43]
      io_sample_out_bits_dest_REG <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 84:43]
      node _io_sample_out_bits_dest_T = eq(io_sample_out_bits_dest_REG, UInt<1>("h1")) @[TreePE.scala 84:69]
      io.sample_out.bits.dest <= _io_sample_out_bits_dest_T @[TreePE.scala 84:33]
      reg io_sample_out_bits_last_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_last_REG) @[TreePE.scala 85:43]
      io_sample_out_bits_last_REG <= queue.io.deq.bits.last @[TreePE.scala 85:43]
      io.sample_out.bits.last <= io_sample_out_bits_last_REG @[TreePE.scala 85:33]
    else :
      io.sample_out.bits.clock_cycles is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.last is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.dest is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[0] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[1] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[2] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[3] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[4] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[0] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[1] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[2] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[3] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[4] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[5] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.tree_to_exec is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.search_for_root is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.shift is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.offset is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[0] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[1] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[2] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[3] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[4] is invalid @[TreePE.scala 88:26]
      io.sample_out.valid <= UInt<1>("h0") @[TreePE.scala 89:27]
    queue.io.deq.ready <= io.sample_out.ready @[TreePE.scala 92:17]

  module TreePEwithBRAM_4 :
    input clock : Clock
    input reset : Reset
    output pe_io : { flip sample_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, flip mem : { flip enable_1 : UInt<1>, flip write_1 : UInt<1>, flip addr_1 : UInt<13>, flip dataIn_1 : UInt<64>, dataOut_1 : UInt<64>, flip enable_2 : UInt<1>, flip write_2 : UInt<1>, flip addr_2 : UInt<13>, flip dataIn_2 : UInt<64>, dataOut_2 : UInt<64>}, sample_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}}

    inst pe of TreePE_4 @[TreePE.scala 104:18]
    pe.clock <= clock
    pe.reset <= reset
    pe_io.sample_out.bits <= pe.io.sample_out.bits @[TreePE.scala 106:9]
    pe_io.sample_out.valid <= pe.io.sample_out.valid @[TreePE.scala 106:9]
    pe.io.sample_out.ready <= pe_io.sample_out.ready @[TreePE.scala 106:9]
    pe.io.mem <= pe_io.mem @[TreePE.scala 106:9]
    pe.io.sample_in <= pe_io.sample_in @[TreePE.scala 106:9]

  extmodule BRAMBlackBoxSingle_1 :
    input clk : Clock
    input a_wr : UInt<1>
    input a_addr : UInt<11>
    input a_din : UInt<32>
    output a_dout : UInt<32>
    input b_wr : UInt<1>
    input b_addr : UInt<11>
    input b_din : UInt<32>
    output b_dout : UInt<32>
    defname = BRAMBlackBoxSingle
    parameter DATA = 32
    parameter ADDR = 11

  module BRAMBlackBoxAsymm_1 :
    input clock : Clock
    input reset : Reset
    output io : { flip clk : Clock, flip a_en : UInt<1>, flip a_wr : UInt<1>, flip a_addr : UInt<13>, flip a_din : UInt<32>, a_dout : UInt<32>, flip b_en : UInt<1>, flip b_wr : UInt<1>, flip b_addr : UInt<11>, flip b_din : UInt<64>, b_dout : UInt<64>}

    inst bram_1 of BRAMBlackBoxSingle_1 @[ME.scala 202:24]
    bram_1.b_dout is invalid
    bram_1.b_din is invalid
    bram_1.b_addr is invalid
    bram_1.b_wr is invalid
    bram_1.a_dout is invalid
    bram_1.a_din is invalid
    bram_1.a_addr is invalid
    bram_1.a_wr is invalid
    bram_1.clk is invalid
    node _bram_1_io_a_wr_T = mux(io.a_en, io.a_wr, io.b_wr) @[ME.scala 204:26]
    bram_1.a_wr <= _bram_1_io_a_wr_T @[ME.scala 204:20]
    node _bram_1_io_a_addr_T = shr(io.a_addr, 2) @[ME.scala 205:49]
    node _bram_1_io_a_addr_T_1 = shl(io.b_addr, 1) @[ME.scala 205:67]
    node _bram_1_io_a_addr_T_2 = mux(io.a_en, _bram_1_io_a_addr_T, _bram_1_io_a_addr_T_1) @[ME.scala 205:28]
    bram_1.a_addr <= _bram_1_io_a_addr_T_2 @[ME.scala 205:22]
    node _bram_1_io_a_din_T = bits(io.b_din, 31, 0) @[ME.scala 206:55]
    node _bram_1_io_a_din_T_1 = mux(io.a_en, io.a_din, _bram_1_io_a_din_T) @[ME.scala 206:27]
    bram_1.a_din <= _bram_1_io_a_din_T_1 @[ME.scala 206:21]
    node _io_b_dout_T = cat(bram_1.b_dout, bram_1.a_dout) @[Cat.scala 33:92]
    io.b_dout <= _io_b_dout_T @[ME.scala 207:15]
    node _bram_1_io_b_wr_T = mux(io.a_en, UInt<1>("h0"), io.b_wr) @[ME.scala 208:26]
    bram_1.b_wr <= _bram_1_io_b_wr_T @[ME.scala 208:20]
    node _bram_1_io_b_addr_T = shl(io.b_addr, 1) @[ME.scala 209:36]
    node _bram_1_io_b_addr_T_1 = add(_bram_1_io_b_addr_T, UInt<1>("h1")) @[ME.scala 209:42]
    node _bram_1_io_b_addr_T_2 = tail(_bram_1_io_b_addr_T_1, 1) @[ME.scala 209:42]
    bram_1.b_addr <= _bram_1_io_b_addr_T_2 @[ME.scala 209:22]
    node _bram_1_io_b_din_T = bits(io.b_din, 63, 32) @[ME.scala 210:32]
    bram_1.b_din <= _bram_1_io_b_din_T @[ME.scala 210:21]
    io.a_dout <= bram_1.a_dout @[ME.scala 211:15]
    bram_1.clk <= io.clk @[ME.scala 212:19]

  extmodule BRAMBlackBoxSingle_2 :
    input clk : Clock
    input a_wr : UInt<1>
    input a_addr : UInt<11>
    input a_din : UInt<32>
    output a_dout : UInt<32>
    input b_wr : UInt<1>
    input b_addr : UInt<11>
    input b_din : UInt<32>
    output b_dout : UInt<32>
    defname = BRAMBlackBoxSingle
    parameter DATA = 32
    parameter ADDR = 11

  module BRAMBlackBoxAsymm_2 :
    input clock : Clock
    input reset : Reset
    output io : { flip clk : Clock, flip a_en : UInt<1>, flip a_wr : UInt<1>, flip a_addr : UInt<13>, flip a_din : UInt<32>, a_dout : UInt<32>, flip b_en : UInt<1>, flip b_wr : UInt<1>, flip b_addr : UInt<11>, flip b_din : UInt<64>, b_dout : UInt<64>}

    inst bram_1 of BRAMBlackBoxSingle_2 @[ME.scala 202:24]
    bram_1.b_dout is invalid
    bram_1.b_din is invalid
    bram_1.b_addr is invalid
    bram_1.b_wr is invalid
    bram_1.a_dout is invalid
    bram_1.a_din is invalid
    bram_1.a_addr is invalid
    bram_1.a_wr is invalid
    bram_1.clk is invalid
    node _bram_1_io_a_wr_T = mux(io.a_en, io.a_wr, io.b_wr) @[ME.scala 204:26]
    bram_1.a_wr <= _bram_1_io_a_wr_T @[ME.scala 204:20]
    node _bram_1_io_a_addr_T = shr(io.a_addr, 2) @[ME.scala 205:49]
    node _bram_1_io_a_addr_T_1 = shl(io.b_addr, 1) @[ME.scala 205:67]
    node _bram_1_io_a_addr_T_2 = mux(io.a_en, _bram_1_io_a_addr_T, _bram_1_io_a_addr_T_1) @[ME.scala 205:28]
    bram_1.a_addr <= _bram_1_io_a_addr_T_2 @[ME.scala 205:22]
    node _bram_1_io_a_din_T = bits(io.b_din, 31, 0) @[ME.scala 206:55]
    node _bram_1_io_a_din_T_1 = mux(io.a_en, io.a_din, _bram_1_io_a_din_T) @[ME.scala 206:27]
    bram_1.a_din <= _bram_1_io_a_din_T_1 @[ME.scala 206:21]
    node _io_b_dout_T = cat(bram_1.b_dout, bram_1.a_dout) @[Cat.scala 33:92]
    io.b_dout <= _io_b_dout_T @[ME.scala 207:15]
    node _bram_1_io_b_wr_T = mux(io.a_en, UInt<1>("h0"), io.b_wr) @[ME.scala 208:26]
    bram_1.b_wr <= _bram_1_io_b_wr_T @[ME.scala 208:20]
    node _bram_1_io_b_addr_T = shl(io.b_addr, 1) @[ME.scala 209:36]
    node _bram_1_io_b_addr_T_1 = add(_bram_1_io_b_addr_T, UInt<1>("h1")) @[ME.scala 209:42]
    node _bram_1_io_b_addr_T_2 = tail(_bram_1_io_b_addr_T_1, 1) @[ME.scala 209:42]
    bram_1.b_addr <= _bram_1_io_b_addr_T_2 @[ME.scala 209:22]
    node _bram_1_io_b_din_T = bits(io.b_din, 63, 32) @[ME.scala 210:32]
    bram_1.b_din <= _bram_1_io_b_din_T @[ME.scala 210:21]
    io.a_dout <= bram_1.a_dout @[ME.scala 211:15]
    bram_1.clk <= io.clk @[ME.scala 212:19]

  extmodule BRAMBlackBoxSingle_3 :
    input clk : Clock
    input a_wr : UInt<1>
    input a_addr : UInt<11>
    input a_din : UInt<32>
    output a_dout : UInt<32>
    input b_wr : UInt<1>
    input b_addr : UInt<11>
    input b_din : UInt<32>
    output b_dout : UInt<32>
    defname = BRAMBlackBoxSingle
    parameter DATA = 32
    parameter ADDR = 11

  module BRAMBlackBoxAsymm_3 :
    input clock : Clock
    input reset : Reset
    output io : { flip clk : Clock, flip a_en : UInt<1>, flip a_wr : UInt<1>, flip a_addr : UInt<13>, flip a_din : UInt<32>, a_dout : UInt<32>, flip b_en : UInt<1>, flip b_wr : UInt<1>, flip b_addr : UInt<11>, flip b_din : UInt<64>, b_dout : UInt<64>}

    inst bram_1 of BRAMBlackBoxSingle_3 @[ME.scala 202:24]
    bram_1.b_dout is invalid
    bram_1.b_din is invalid
    bram_1.b_addr is invalid
    bram_1.b_wr is invalid
    bram_1.a_dout is invalid
    bram_1.a_din is invalid
    bram_1.a_addr is invalid
    bram_1.a_wr is invalid
    bram_1.clk is invalid
    node _bram_1_io_a_wr_T = mux(io.a_en, io.a_wr, io.b_wr) @[ME.scala 204:26]
    bram_1.a_wr <= _bram_1_io_a_wr_T @[ME.scala 204:20]
    node _bram_1_io_a_addr_T = shr(io.a_addr, 2) @[ME.scala 205:49]
    node _bram_1_io_a_addr_T_1 = shl(io.b_addr, 1) @[ME.scala 205:67]
    node _bram_1_io_a_addr_T_2 = mux(io.a_en, _bram_1_io_a_addr_T, _bram_1_io_a_addr_T_1) @[ME.scala 205:28]
    bram_1.a_addr <= _bram_1_io_a_addr_T_2 @[ME.scala 205:22]
    node _bram_1_io_a_din_T = bits(io.b_din, 31, 0) @[ME.scala 206:55]
    node _bram_1_io_a_din_T_1 = mux(io.a_en, io.a_din, _bram_1_io_a_din_T) @[ME.scala 206:27]
    bram_1.a_din <= _bram_1_io_a_din_T_1 @[ME.scala 206:21]
    node _io_b_dout_T = cat(bram_1.b_dout, bram_1.a_dout) @[Cat.scala 33:92]
    io.b_dout <= _io_b_dout_T @[ME.scala 207:15]
    node _bram_1_io_b_wr_T = mux(io.a_en, UInt<1>("h0"), io.b_wr) @[ME.scala 208:26]
    bram_1.b_wr <= _bram_1_io_b_wr_T @[ME.scala 208:20]
    node _bram_1_io_b_addr_T = shl(io.b_addr, 1) @[ME.scala 209:36]
    node _bram_1_io_b_addr_T_1 = add(_bram_1_io_b_addr_T, UInt<1>("h1")) @[ME.scala 209:42]
    node _bram_1_io_b_addr_T_2 = tail(_bram_1_io_b_addr_T_1, 1) @[ME.scala 209:42]
    bram_1.b_addr <= _bram_1_io_b_addr_T_2 @[ME.scala 209:22]
    node _bram_1_io_b_din_T = bits(io.b_din, 63, 32) @[ME.scala 210:32]
    bram_1.b_din <= _bram_1_io_b_din_T @[ME.scala 210:21]
    io.a_dout <= bram_1.a_dout @[ME.scala 211:15]
    bram_1.clk <= io.clk @[ME.scala 212:19]

  extmodule BRAMBlackBoxSingle_4 :
    input clk : Clock
    input a_wr : UInt<1>
    input a_addr : UInt<11>
    input a_din : UInt<32>
    output a_dout : UInt<32>
    input b_wr : UInt<1>
    input b_addr : UInt<11>
    input b_din : UInt<32>
    output b_dout : UInt<32>
    defname = BRAMBlackBoxSingle
    parameter DATA = 32
    parameter ADDR = 11

  module BRAMBlackBoxAsymm_4 :
    input clock : Clock
    input reset : Reset
    output io : { flip clk : Clock, flip a_en : UInt<1>, flip a_wr : UInt<1>, flip a_addr : UInt<13>, flip a_din : UInt<32>, a_dout : UInt<32>, flip b_en : UInt<1>, flip b_wr : UInt<1>, flip b_addr : UInt<11>, flip b_din : UInt<64>, b_dout : UInt<64>}

    inst bram_1 of BRAMBlackBoxSingle_4 @[ME.scala 202:24]
    bram_1.b_dout is invalid
    bram_1.b_din is invalid
    bram_1.b_addr is invalid
    bram_1.b_wr is invalid
    bram_1.a_dout is invalid
    bram_1.a_din is invalid
    bram_1.a_addr is invalid
    bram_1.a_wr is invalid
    bram_1.clk is invalid
    node _bram_1_io_a_wr_T = mux(io.a_en, io.a_wr, io.b_wr) @[ME.scala 204:26]
    bram_1.a_wr <= _bram_1_io_a_wr_T @[ME.scala 204:20]
    node _bram_1_io_a_addr_T = shr(io.a_addr, 2) @[ME.scala 205:49]
    node _bram_1_io_a_addr_T_1 = shl(io.b_addr, 1) @[ME.scala 205:67]
    node _bram_1_io_a_addr_T_2 = mux(io.a_en, _bram_1_io_a_addr_T, _bram_1_io_a_addr_T_1) @[ME.scala 205:28]
    bram_1.a_addr <= _bram_1_io_a_addr_T_2 @[ME.scala 205:22]
    node _bram_1_io_a_din_T = bits(io.b_din, 31, 0) @[ME.scala 206:55]
    node _bram_1_io_a_din_T_1 = mux(io.a_en, io.a_din, _bram_1_io_a_din_T) @[ME.scala 206:27]
    bram_1.a_din <= _bram_1_io_a_din_T_1 @[ME.scala 206:21]
    node _io_b_dout_T = cat(bram_1.b_dout, bram_1.a_dout) @[Cat.scala 33:92]
    io.b_dout <= _io_b_dout_T @[ME.scala 207:15]
    node _bram_1_io_b_wr_T = mux(io.a_en, UInt<1>("h0"), io.b_wr) @[ME.scala 208:26]
    bram_1.b_wr <= _bram_1_io_b_wr_T @[ME.scala 208:20]
    node _bram_1_io_b_addr_T = shl(io.b_addr, 1) @[ME.scala 209:36]
    node _bram_1_io_b_addr_T_1 = add(_bram_1_io_b_addr_T, UInt<1>("h1")) @[ME.scala 209:42]
    node _bram_1_io_b_addr_T_2 = tail(_bram_1_io_b_addr_T_1, 1) @[ME.scala 209:42]
    bram_1.b_addr <= _bram_1_io_b_addr_T_2 @[ME.scala 209:22]
    node _bram_1_io_b_din_T = bits(io.b_din, 63, 32) @[ME.scala 210:32]
    bram_1.b_din <= _bram_1_io_b_din_T @[ME.scala 210:21]
    io.a_dout <= bram_1.a_dout @[ME.scala 211:15]
    bram_1.clk <= io.clk @[ME.scala 212:19]

  module Queue_16 :
    input clock : Clock
    input reset : Reset
    output io : { flip enq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, deq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, count : UInt<8>}

    cmem ram : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>} [128] @[Decoupled.scala 275:95]
    reg enq_ptr_value : UInt<7>, clock with :
      reset => (reset, UInt<7>("h0")) @[Counter.scala 61:40]
    reg deq_ptr_value : UInt<7>, clock with :
      reset => (reset, UInt<7>("h0")) @[Counter.scala 61:40]
    reg maybe_full : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[Decoupled.scala 278:27]
    node ptr_match = eq(enq_ptr_value, deq_ptr_value) @[Decoupled.scala 279:33]
    node _empty_T = eq(maybe_full, UInt<1>("h0")) @[Decoupled.scala 280:28]
    node empty = and(ptr_match, _empty_T) @[Decoupled.scala 280:25]
    node full = and(ptr_match, maybe_full) @[Decoupled.scala 281:24]
    node _do_enq_T = and(io.enq.ready, io.enq.valid) @[Decoupled.scala 52:35]
    wire do_enq : UInt<1>
    do_enq <= _do_enq_T
    node _do_deq_T = and(io.deq.ready, io.deq.valid) @[Decoupled.scala 52:35]
    wire do_deq : UInt<1>
    do_deq <= _do_deq_T
    when do_enq : @[Decoupled.scala 288:16]
      infer mport MPORT = ram[enq_ptr_value], clock @[Decoupled.scala 289:8]
      MPORT <= io.enq.bits @[Decoupled.scala 289:24]
      node wrap = eq(enq_ptr_value, UInt<7>("h7f")) @[Counter.scala 73:24]
      node _value_T = add(enq_ptr_value, UInt<1>("h1")) @[Counter.scala 77:24]
      node _value_T_1 = tail(_value_T, 1) @[Counter.scala 77:24]
      enq_ptr_value <= _value_T_1 @[Counter.scala 77:15]
    when do_deq : @[Decoupled.scala 292:16]
      node wrap_1 = eq(deq_ptr_value, UInt<7>("h7f")) @[Counter.scala 73:24]
      node _value_T_2 = add(deq_ptr_value, UInt<1>("h1")) @[Counter.scala 77:24]
      node _value_T_3 = tail(_value_T_2, 1) @[Counter.scala 77:24]
      deq_ptr_value <= _value_T_3 @[Counter.scala 77:15]
    node _T = neq(do_enq, do_deq) @[Decoupled.scala 295:15]
    when _T : @[Decoupled.scala 295:27]
      maybe_full <= do_enq @[Decoupled.scala 296:16]
    when UInt<1>("h0") : @[Decoupled.scala 298:15]
      enq_ptr_value <= UInt<1>("h0") @[Counter.scala 98:11]
      deq_ptr_value <= UInt<1>("h0") @[Counter.scala 98:11]
      maybe_full <= UInt<1>("h0") @[Decoupled.scala 301:16]
    node _io_deq_valid_T = eq(empty, UInt<1>("h0")) @[Decoupled.scala 304:19]
    io.deq.valid <= _io_deq_valid_T @[Decoupled.scala 304:16]
    node _io_enq_ready_T = eq(full, UInt<1>("h0")) @[Decoupled.scala 305:19]
    io.enq.ready <= _io_enq_ready_T @[Decoupled.scala 305:16]
    infer mport io_deq_bits_MPORT = ram[deq_ptr_value], clock @[Decoupled.scala 312:23]
    io.deq.bits <= io_deq_bits_MPORT @[Decoupled.scala 312:17]
    node _ptr_diff_T = sub(enq_ptr_value, deq_ptr_value) @[Decoupled.scala 328:32]
    node ptr_diff = tail(_ptr_diff_T, 1) @[Decoupled.scala 328:32]
    node _io_count_T = and(maybe_full, ptr_match) @[Decoupled.scala 331:32]
    node _io_count_T_1 = mux(_io_count_T, UInt<8>("h80"), UInt<1>("h0")) @[Decoupled.scala 331:20]
    node _io_count_T_2 = or(_io_count_T_1, ptr_diff) @[Decoupled.scala 331:62]
    io.count <= _io_count_T_2 @[Decoupled.scala 331:14]

  module Queue_17 :
    input clock : Clock
    input reset : Reset
    output io : { flip enq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, deq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, count : UInt<8>}

    cmem ram : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>} [128] @[Decoupled.scala 275:95]
    reg enq_ptr_value : UInt<7>, clock with :
      reset => (reset, UInt<7>("h0")) @[Counter.scala 61:40]
    reg deq_ptr_value : UInt<7>, clock with :
      reset => (reset, UInt<7>("h0")) @[Counter.scala 61:40]
    reg maybe_full : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[Decoupled.scala 278:27]
    node ptr_match = eq(enq_ptr_value, deq_ptr_value) @[Decoupled.scala 279:33]
    node _empty_T = eq(maybe_full, UInt<1>("h0")) @[Decoupled.scala 280:28]
    node empty = and(ptr_match, _empty_T) @[Decoupled.scala 280:25]
    node full = and(ptr_match, maybe_full) @[Decoupled.scala 281:24]
    node _do_enq_T = and(io.enq.ready, io.enq.valid) @[Decoupled.scala 52:35]
    wire do_enq : UInt<1>
    do_enq <= _do_enq_T
    node _do_deq_T = and(io.deq.ready, io.deq.valid) @[Decoupled.scala 52:35]
    wire do_deq : UInt<1>
    do_deq <= _do_deq_T
    when do_enq : @[Decoupled.scala 288:16]
      infer mport MPORT = ram[enq_ptr_value], clock @[Decoupled.scala 289:8]
      MPORT <= io.enq.bits @[Decoupled.scala 289:24]
      node wrap = eq(enq_ptr_value, UInt<7>("h7f")) @[Counter.scala 73:24]
      node _value_T = add(enq_ptr_value, UInt<1>("h1")) @[Counter.scala 77:24]
      node _value_T_1 = tail(_value_T, 1) @[Counter.scala 77:24]
      enq_ptr_value <= _value_T_1 @[Counter.scala 77:15]
    when do_deq : @[Decoupled.scala 292:16]
      node wrap_1 = eq(deq_ptr_value, UInt<7>("h7f")) @[Counter.scala 73:24]
      node _value_T_2 = add(deq_ptr_value, UInt<1>("h1")) @[Counter.scala 77:24]
      node _value_T_3 = tail(_value_T_2, 1) @[Counter.scala 77:24]
      deq_ptr_value <= _value_T_3 @[Counter.scala 77:15]
    node _T = neq(do_enq, do_deq) @[Decoupled.scala 295:15]
    when _T : @[Decoupled.scala 295:27]
      maybe_full <= do_enq @[Decoupled.scala 296:16]
    when UInt<1>("h0") : @[Decoupled.scala 298:15]
      enq_ptr_value <= UInt<1>("h0") @[Counter.scala 98:11]
      deq_ptr_value <= UInt<1>("h0") @[Counter.scala 98:11]
      maybe_full <= UInt<1>("h0") @[Decoupled.scala 301:16]
    node _io_deq_valid_T = eq(empty, UInt<1>("h0")) @[Decoupled.scala 304:19]
    io.deq.valid <= _io_deq_valid_T @[Decoupled.scala 304:16]
    node _io_enq_ready_T = eq(full, UInt<1>("h0")) @[Decoupled.scala 305:19]
    io.enq.ready <= _io_enq_ready_T @[Decoupled.scala 305:16]
    infer mport io_deq_bits_MPORT = ram[deq_ptr_value], clock @[Decoupled.scala 312:23]
    io.deq.bits <= io_deq_bits_MPORT @[Decoupled.scala 312:17]
    node _ptr_diff_T = sub(enq_ptr_value, deq_ptr_value) @[Decoupled.scala 328:32]
    node ptr_diff = tail(_ptr_diff_T, 1) @[Decoupled.scala 328:32]
    node _io_count_T = and(maybe_full, ptr_match) @[Decoupled.scala 331:32]
    node _io_count_T_1 = mux(_io_count_T, UInt<8>("h80"), UInt<1>("h0")) @[Decoupled.scala 331:20]
    node _io_count_T_2 = or(_io_count_T_1, ptr_diff) @[Decoupled.scala 331:62]
    io.count <= _io_count_T_2 @[Decoupled.scala 331:14]

  module RRArbiter_1 :
    input clock : Clock
    input reset : Reset
    output io : { flip in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}[2], out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, chosen : UInt<1>}

    wire choice : UInt
    choice <= UInt<1>("h1")
    io.chosen <= choice @[Arbiter.scala 54:13]
    io.out.valid <= io.in[io.chosen].valid @[Arbiter.scala 55:16]
    io.out.bits <= io.in[io.chosen].bits @[Arbiter.scala 56:15]
    node _ctrl_validMask_grantMask_lastGrant_T = and(io.out.ready, io.out.valid) @[Decoupled.scala 52:35]
    reg lastGrant : UInt<1>, clock with :
      reset => (UInt<1>("h0"), lastGrant) @[Reg.scala 19:16]
    when _ctrl_validMask_grantMask_lastGrant_T : @[Reg.scala 20:18]
      lastGrant <= io.chosen @[Reg.scala 20:22]
    node grantMask_0 = gt(UInt<1>("h0"), lastGrant) @[Arbiter.scala 81:49]
    node grantMask_1 = gt(UInt<1>("h1"), lastGrant) @[Arbiter.scala 81:49]
    node validMask_0 = and(io.in[0].valid, grantMask_0) @[Arbiter.scala 82:76]
    node validMask_1 = and(io.in[1].valid, grantMask_1) @[Arbiter.scala 82:76]
    node _ctrl_T = or(validMask_0, validMask_1) @[Arbiter.scala 45:68]
    node _ctrl_T_1 = or(_ctrl_T, io.in[0].valid) @[Arbiter.scala 45:68]
    node ctrl_1 = eq(validMask_0, UInt<1>("h0")) @[Arbiter.scala 45:78]
    node ctrl_2 = eq(_ctrl_T, UInt<1>("h0")) @[Arbiter.scala 45:78]
    node ctrl_3 = eq(_ctrl_T_1, UInt<1>("h0")) @[Arbiter.scala 45:78]
    node _T = and(UInt<1>("h1"), grantMask_0) @[Arbiter.scala 86:34]
    node _T_1 = or(_T, ctrl_2) @[Arbiter.scala 86:50]
    node _T_2 = and(ctrl_1, grantMask_1) @[Arbiter.scala 86:34]
    node _T_3 = or(_T_2, ctrl_3) @[Arbiter.scala 86:50]
    node _io_in_0_ready_T = and(_T_1, io.out.ready) @[Arbiter.scala 74:21]
    io.in[0].ready <= _io_in_0_ready_T @[Arbiter.scala 74:16]
    node _io_in_1_ready_T = and(_T_3, io.out.ready) @[Arbiter.scala 74:21]
    io.in[1].ready <= _io_in_1_ready_T @[Arbiter.scala 74:16]
    when io.in[0].valid : @[Arbiter.scala 91:26]
      choice <= UInt<1>("h0") @[Arbiter.scala 91:35]
    when validMask_1 : @[Arbiter.scala 93:24]
      choice <= UInt<1>("h1") @[Arbiter.scala 93:33]

  module FirstInterconnectPE_1 :
    input clock : Clock
    input reset : Reset
    output io : { flip sample_entering : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, flip sample_looping : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, sample_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}}

    inst queue_entering of Queue_16 @[Decoupled.scala 377:21]
    queue_entering.clock <= clock
    queue_entering.reset <= reset
    queue_entering.io.enq.valid <= io.sample_entering.valid @[Decoupled.scala 379:22]
    queue_entering.io.enq.bits.clock_cycles <= io.sample_entering.bits.clock_cycles @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.last <= io.sample_entering.bits.last @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.dest <= io.sample_entering.bits.dest @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.weights[0] <= io.sample_entering.bits.weights[0] @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.weights[1] <= io.sample_entering.bits.weights[1] @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.weights[2] <= io.sample_entering.bits.weights[2] @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.weights[3] <= io.sample_entering.bits.weights[3] @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.weights[4] <= io.sample_entering.bits.weights[4] @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.scores[0] <= io.sample_entering.bits.scores[0] @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.scores[1] <= io.sample_entering.bits.scores[1] @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.scores[2] <= io.sample_entering.bits.scores[2] @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.scores[3] <= io.sample_entering.bits.scores[3] @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.scores[4] <= io.sample_entering.bits.scores[4] @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.scores[5] <= io.sample_entering.bits.scores[5] @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.tree_to_exec <= io.sample_entering.bits.tree_to_exec @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.search_for_root <= io.sample_entering.bits.search_for_root @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.shift <= io.sample_entering.bits.shift @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.offset <= io.sample_entering.bits.offset @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.features[0] <= io.sample_entering.bits.features[0] @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.features[1] <= io.sample_entering.bits.features[1] @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.features[2] <= io.sample_entering.bits.features[2] @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.features[3] <= io.sample_entering.bits.features[3] @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.features[4] <= io.sample_entering.bits.features[4] @[Decoupled.scala 380:21]
    io.sample_entering.ready <= queue_entering.io.enq.ready @[Decoupled.scala 381:17]
    inst queue_looping of Queue_17 @[Decoupled.scala 377:21]
    queue_looping.clock <= clock
    queue_looping.reset <= reset
    queue_looping.io.enq.valid <= io.sample_looping.valid @[Decoupled.scala 379:22]
    queue_looping.io.enq.bits.clock_cycles <= io.sample_looping.bits.clock_cycles @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.last <= io.sample_looping.bits.last @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.dest <= io.sample_looping.bits.dest @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.weights[0] <= io.sample_looping.bits.weights[0] @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.weights[1] <= io.sample_looping.bits.weights[1] @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.weights[2] <= io.sample_looping.bits.weights[2] @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.weights[3] <= io.sample_looping.bits.weights[3] @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.weights[4] <= io.sample_looping.bits.weights[4] @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.scores[0] <= io.sample_looping.bits.scores[0] @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.scores[1] <= io.sample_looping.bits.scores[1] @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.scores[2] <= io.sample_looping.bits.scores[2] @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.scores[3] <= io.sample_looping.bits.scores[3] @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.scores[4] <= io.sample_looping.bits.scores[4] @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.scores[5] <= io.sample_looping.bits.scores[5] @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.tree_to_exec <= io.sample_looping.bits.tree_to_exec @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.search_for_root <= io.sample_looping.bits.search_for_root @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.shift <= io.sample_looping.bits.shift @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.offset <= io.sample_looping.bits.offset @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.features[0] <= io.sample_looping.bits.features[0] @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.features[1] <= io.sample_looping.bits.features[1] @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.features[2] <= io.sample_looping.bits.features[2] @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.features[3] <= io.sample_looping.bits.features[3] @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.features[4] <= io.sample_looping.bits.features[4] @[Decoupled.scala 380:21]
    io.sample_looping.ready <= queue_looping.io.enq.ready @[Decoupled.scala 381:17]
    inst arbiter of RRArbiter_1 @[Interconnect.scala 54:25]
    arbiter.clock <= clock
    arbiter.reset <= reset
    arbiter.io.in[0] <= queue_entering.io.deq @[Interconnect.scala 55:22]
    arbiter.io.in[1] <= queue_looping.io.deq @[Interconnect.scala 56:22]
    io.sample_out.bits <= arbiter.io.out.bits @[Interconnect.scala 57:19]
    io.sample_out.valid <= arbiter.io.out.valid @[Interconnect.scala 57:19]
    arbiter.io.out.ready <= io.sample_out.ready @[Interconnect.scala 57:19]

  module Queue_18 :
    input clock : Clock
    input reset : Reset
    output io : { flip enq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, deq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, count : UInt<3>}

    cmem ram : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>} [4] @[Decoupled.scala 275:95]
    reg enq_ptr_value : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[Counter.scala 61:40]
    reg deq_ptr_value : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[Counter.scala 61:40]
    reg maybe_full : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[Decoupled.scala 278:27]
    node ptr_match = eq(enq_ptr_value, deq_ptr_value) @[Decoupled.scala 279:33]
    node _empty_T = eq(maybe_full, UInt<1>("h0")) @[Decoupled.scala 280:28]
    node empty = and(ptr_match, _empty_T) @[Decoupled.scala 280:25]
    node full = and(ptr_match, maybe_full) @[Decoupled.scala 281:24]
    node _do_enq_T = and(io.enq.ready, io.enq.valid) @[Decoupled.scala 52:35]
    wire do_enq : UInt<1>
    do_enq <= _do_enq_T
    node _do_deq_T = and(io.deq.ready, io.deq.valid) @[Decoupled.scala 52:35]
    wire do_deq : UInt<1>
    do_deq <= _do_deq_T
    when do_enq : @[Decoupled.scala 288:16]
      infer mport MPORT = ram[enq_ptr_value], clock @[Decoupled.scala 289:8]
      MPORT <= io.enq.bits @[Decoupled.scala 289:24]
      node wrap = eq(enq_ptr_value, UInt<2>("h3")) @[Counter.scala 73:24]
      node _value_T = add(enq_ptr_value, UInt<1>("h1")) @[Counter.scala 77:24]
      node _value_T_1 = tail(_value_T, 1) @[Counter.scala 77:24]
      enq_ptr_value <= _value_T_1 @[Counter.scala 77:15]
    when do_deq : @[Decoupled.scala 292:16]
      node wrap_1 = eq(deq_ptr_value, UInt<2>("h3")) @[Counter.scala 73:24]
      node _value_T_2 = add(deq_ptr_value, UInt<1>("h1")) @[Counter.scala 77:24]
      node _value_T_3 = tail(_value_T_2, 1) @[Counter.scala 77:24]
      deq_ptr_value <= _value_T_3 @[Counter.scala 77:15]
    node _T = neq(do_enq, do_deq) @[Decoupled.scala 295:15]
    when _T : @[Decoupled.scala 295:27]
      maybe_full <= do_enq @[Decoupled.scala 296:16]
    when UInt<1>("h0") : @[Decoupled.scala 298:15]
      enq_ptr_value <= UInt<1>("h0") @[Counter.scala 98:11]
      deq_ptr_value <= UInt<1>("h0") @[Counter.scala 98:11]
      maybe_full <= UInt<1>("h0") @[Decoupled.scala 301:16]
    node _io_deq_valid_T = eq(empty, UInt<1>("h0")) @[Decoupled.scala 304:19]
    io.deq.valid <= _io_deq_valid_T @[Decoupled.scala 304:16]
    node _io_enq_ready_T = eq(full, UInt<1>("h0")) @[Decoupled.scala 305:19]
    io.enq.ready <= _io_enq_ready_T @[Decoupled.scala 305:16]
    infer mport io_deq_bits_MPORT = ram[deq_ptr_value], clock @[Decoupled.scala 312:23]
    io.deq.bits <= io_deq_bits_MPORT @[Decoupled.scala 312:17]
    node _ptr_diff_T = sub(enq_ptr_value, deq_ptr_value) @[Decoupled.scala 328:32]
    node ptr_diff = tail(_ptr_diff_T, 1) @[Decoupled.scala 328:32]
    node _io_count_T = and(maybe_full, ptr_match) @[Decoupled.scala 331:32]
    node _io_count_T_1 = mux(_io_count_T, UInt<3>("h4"), UInt<1>("h0")) @[Decoupled.scala 331:20]
    node _io_count_T_2 = or(_io_count_T_1, ptr_diff) @[Decoupled.scala 331:62]
    io.count <= _io_count_T_2 @[Decoupled.scala 331:14]

  module LastInterconnectPE_1 :
    input clock : Clock
    input reset : Reset
    output io : { flip sample_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, sample_looping : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, sample_leaving : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}}

    inst queue of Queue_18 @[Decoupled.scala 377:21]
    queue.clock <= clock
    queue.reset <= reset
    queue.io.enq.valid <= io.sample_in.valid @[Decoupled.scala 379:22]
    queue.io.enq.bits.clock_cycles <= io.sample_in.bits.clock_cycles @[Decoupled.scala 380:21]
    queue.io.enq.bits.last <= io.sample_in.bits.last @[Decoupled.scala 380:21]
    queue.io.enq.bits.dest <= io.sample_in.bits.dest @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[0] <= io.sample_in.bits.weights[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[1] <= io.sample_in.bits.weights[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[2] <= io.sample_in.bits.weights[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[3] <= io.sample_in.bits.weights[3] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[4] <= io.sample_in.bits.weights[4] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[0] <= io.sample_in.bits.scores[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[1] <= io.sample_in.bits.scores[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[2] <= io.sample_in.bits.scores[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[3] <= io.sample_in.bits.scores[3] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[4] <= io.sample_in.bits.scores[4] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[5] <= io.sample_in.bits.scores[5] @[Decoupled.scala 380:21]
    queue.io.enq.bits.tree_to_exec <= io.sample_in.bits.tree_to_exec @[Decoupled.scala 380:21]
    queue.io.enq.bits.search_for_root <= io.sample_in.bits.search_for_root @[Decoupled.scala 380:21]
    queue.io.enq.bits.shift <= io.sample_in.bits.shift @[Decoupled.scala 380:21]
    queue.io.enq.bits.offset <= io.sample_in.bits.offset @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[0] <= io.sample_in.bits.features[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[1] <= io.sample_in.bits.features[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[2] <= io.sample_in.bits.features[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[3] <= io.sample_in.bits.features[3] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[4] <= io.sample_in.bits.features[4] @[Decoupled.scala 380:21]
    io.sample_in.ready <= queue.io.enq.ready @[Decoupled.scala 381:17]
    io.sample_looping.bits <= queue.io.deq.bits @[Interconnect.scala 18:28]
    io.sample_leaving.bits.features <= queue.io.deq.bits.features @[Interconnect.scala 19:37]
    io.sample_leaving.bits.offset <= queue.io.deq.bits.offset @[Interconnect.scala 20:35]
    io.sample_leaving.bits.shift <= queue.io.deq.bits.shift @[Interconnect.scala 21:34]
    io.sample_leaving.bits.search_for_root <= queue.io.deq.bits.search_for_root @[Interconnect.scala 22:44]
    io.sample_leaving.bits.tree_to_exec <= queue.io.deq.bits.tree_to_exec @[Interconnect.scala 23:41]
    io.sample_leaving.bits.scores <= queue.io.deq.bits.scores @[Interconnect.scala 24:35]
    io.sample_leaving.bits.weights <= queue.io.deq.bits.weights @[Interconnect.scala 25:36]
    io.sample_leaving.bits.dest <= queue.io.deq.bits.dest @[Interconnect.scala 26:33]
    node _io_sample_leaving_bits_last_T = and(queue.io.deq.bits.last, queue.io.deq.bits.dest) @[Interconnect.scala 27:52]
    io.sample_leaving.bits.last <= _io_sample_leaving_bits_last_T @[Interconnect.scala 27:33]
    node _io_sample_looping_valid_T = eq(queue.io.deq.bits.dest, UInt<1>("h0")) @[Interconnect.scala 28:46]
    node _io_sample_looping_valid_T_1 = and(queue.io.deq.valid, _io_sample_looping_valid_T) @[Interconnect.scala 28:44]
    io.sample_looping.valid <= _io_sample_looping_valid_T_1 @[Interconnect.scala 28:29]
    node _io_sample_leaving_valid_T = and(queue.io.deq.valid, queue.io.deq.bits.dest) @[Interconnect.scala 29:44]
    io.sample_leaving.valid <= _io_sample_leaving_valid_T @[Interconnect.scala 29:29]
    io.sample_leaving.bits.clock_cycles <= queue.io.deq.bits.clock_cycles @[Interconnect.scala 30:41]
    node _queue_io_deq_ready_T = and(io.sample_leaving.ready, queue.io.deq.bits.dest) @[Interconnect.scala 32:45]
    node _queue_io_deq_ready_T_1 = eq(queue.io.deq.bits.dest, UInt<1>("h0")) @[Interconnect.scala 32:93]
    node _queue_io_deq_ready_T_2 = and(io.sample_looping.ready, _queue_io_deq_ready_T_1) @[Interconnect.scala 32:91]
    node _queue_io_deq_ready_T_3 = or(_queue_io_deq_ready_T, _queue_io_deq_ready_T_2) @[Interconnect.scala 32:64]
    queue.io.deq.ready <= _queue_io_deq_ready_T_3 @[Interconnect.scala 32:17]

  module Queue_19 :
    input clock : Clock
    input reset : Reset
    output io : { flip enq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, deq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, count : UInt<2>}

    cmem ram : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>} [3] @[Decoupled.scala 275:95]
    reg enq_ptr_value : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[Counter.scala 61:40]
    reg deq_ptr_value : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[Counter.scala 61:40]
    reg maybe_full : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[Decoupled.scala 278:27]
    node ptr_match = eq(enq_ptr_value, deq_ptr_value) @[Decoupled.scala 279:33]
    node _empty_T = eq(maybe_full, UInt<1>("h0")) @[Decoupled.scala 280:28]
    node empty = and(ptr_match, _empty_T) @[Decoupled.scala 280:25]
    node full = and(ptr_match, maybe_full) @[Decoupled.scala 281:24]
    node _do_enq_T = and(io.enq.ready, io.enq.valid) @[Decoupled.scala 52:35]
    wire do_enq : UInt<1>
    do_enq <= _do_enq_T
    node _do_deq_T = and(io.deq.ready, io.deq.valid) @[Decoupled.scala 52:35]
    wire do_deq : UInt<1>
    do_deq <= _do_deq_T
    when do_enq : @[Decoupled.scala 288:16]
      infer mport MPORT = ram[enq_ptr_value], clock @[Decoupled.scala 289:8]
      MPORT <= io.enq.bits @[Decoupled.scala 289:24]
      node wrap = eq(enq_ptr_value, UInt<2>("h2")) @[Counter.scala 73:24]
      node _value_T = add(enq_ptr_value, UInt<1>("h1")) @[Counter.scala 77:24]
      node _value_T_1 = tail(_value_T, 1) @[Counter.scala 77:24]
      enq_ptr_value <= _value_T_1 @[Counter.scala 77:15]
      when wrap : @[Counter.scala 87:20]
        enq_ptr_value <= UInt<1>("h0") @[Counter.scala 87:28]
    when do_deq : @[Decoupled.scala 292:16]
      node wrap_1 = eq(deq_ptr_value, UInt<2>("h2")) @[Counter.scala 73:24]
      node _value_T_2 = add(deq_ptr_value, UInt<1>("h1")) @[Counter.scala 77:24]
      node _value_T_3 = tail(_value_T_2, 1) @[Counter.scala 77:24]
      deq_ptr_value <= _value_T_3 @[Counter.scala 77:15]
      when wrap_1 : @[Counter.scala 87:20]
        deq_ptr_value <= UInt<1>("h0") @[Counter.scala 87:28]
    node _T = neq(do_enq, do_deq) @[Decoupled.scala 295:15]
    when _T : @[Decoupled.scala 295:27]
      maybe_full <= do_enq @[Decoupled.scala 296:16]
    when UInt<1>("h0") : @[Decoupled.scala 298:15]
      enq_ptr_value <= UInt<1>("h0") @[Counter.scala 98:11]
      deq_ptr_value <= UInt<1>("h0") @[Counter.scala 98:11]
      maybe_full <= UInt<1>("h0") @[Decoupled.scala 301:16]
    node _io_deq_valid_T = eq(empty, UInt<1>("h0")) @[Decoupled.scala 304:19]
    io.deq.valid <= _io_deq_valid_T @[Decoupled.scala 304:16]
    node _io_enq_ready_T = eq(full, UInt<1>("h0")) @[Decoupled.scala 305:19]
    io.enq.ready <= _io_enq_ready_T @[Decoupled.scala 305:16]
    infer mport io_deq_bits_MPORT = ram[deq_ptr_value], clock @[Decoupled.scala 312:23]
    io.deq.bits <= io_deq_bits_MPORT @[Decoupled.scala 312:17]
    node _ptr_diff_T = sub(enq_ptr_value, deq_ptr_value) @[Decoupled.scala 328:32]
    node ptr_diff = tail(_ptr_diff_T, 1) @[Decoupled.scala 328:32]
    node _io_count_T = mux(maybe_full, UInt<2>("h3"), UInt<1>("h0")) @[Decoupled.scala 335:10]
    node _io_count_T_1 = gt(deq_ptr_value, enq_ptr_value) @[Decoupled.scala 336:25]
    node _io_count_T_2 = add(UInt<2>("h3"), ptr_diff) @[Decoupled.scala 336:57]
    node _io_count_T_3 = tail(_io_count_T_2, 1) @[Decoupled.scala 336:57]
    node _io_count_T_4 = mux(_io_count_T_1, _io_count_T_3, ptr_diff) @[Decoupled.scala 336:10]
    node _io_count_T_5 = mux(ptr_match, _io_count_T, _io_count_T_4) @[Decoupled.scala 333:20]
    io.count <= _io_count_T_5 @[Decoupled.scala 333:14]

  module IncrementTreePE_1 :
    input clock : Clock
    input reset : Reset
    output io : { flip sample_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, sample_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}}

    inst queue of Queue_19 @[Decoupled.scala 377:21]
    queue.clock <= clock
    queue.reset <= reset
    queue.io.enq.valid <= io.sample_in.valid @[Decoupled.scala 379:22]
    queue.io.enq.bits.clock_cycles <= io.sample_in.bits.clock_cycles @[Decoupled.scala 380:21]
    queue.io.enq.bits.last <= io.sample_in.bits.last @[Decoupled.scala 380:21]
    queue.io.enq.bits.dest <= io.sample_in.bits.dest @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[0] <= io.sample_in.bits.weights[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[1] <= io.sample_in.bits.weights[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[2] <= io.sample_in.bits.weights[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[3] <= io.sample_in.bits.weights[3] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[4] <= io.sample_in.bits.weights[4] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[0] <= io.sample_in.bits.scores[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[1] <= io.sample_in.bits.scores[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[2] <= io.sample_in.bits.scores[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[3] <= io.sample_in.bits.scores[3] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[4] <= io.sample_in.bits.scores[4] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[5] <= io.sample_in.bits.scores[5] @[Decoupled.scala 380:21]
    queue.io.enq.bits.tree_to_exec <= io.sample_in.bits.tree_to_exec @[Decoupled.scala 380:21]
    queue.io.enq.bits.search_for_root <= io.sample_in.bits.search_for_root @[Decoupled.scala 380:21]
    queue.io.enq.bits.shift <= io.sample_in.bits.shift @[Decoupled.scala 380:21]
    queue.io.enq.bits.offset <= io.sample_in.bits.offset @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[0] <= io.sample_in.bits.features[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[1] <= io.sample_in.bits.features[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[2] <= io.sample_in.bits.features[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[3] <= io.sample_in.bits.features[3] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[4] <= io.sample_in.bits.features[4] @[Decoupled.scala 380:21]
    io.sample_in.ready <= queue.io.enq.ready @[Decoupled.scala 381:17]
    io.sample_out.bits.features <= queue.io.deq.bits.features @[IncrementTreePE.scala 17:33]
    io.sample_out.bits.weights <= queue.io.deq.bits.weights @[IncrementTreePE.scala 18:32]
    node _io_sample_out_bits_tree_to_exec_T = add(queue.io.deq.bits.tree_to_exec, UInt<1>("h1")) @[IncrementTreePE.scala 19:64]
    node _io_sample_out_bits_tree_to_exec_T_1 = tail(_io_sample_out_bits_tree_to_exec_T, 1) @[IncrementTreePE.scala 19:64]
    io.sample_out.bits.tree_to_exec <= _io_sample_out_bits_tree_to_exec_T_1 @[IncrementTreePE.scala 19:37]
    io.sample_out.bits.shift <= queue.io.deq.bits.shift @[IncrementTreePE.scala 20:30]
    node _io_sample_out_bits_offset_T = add(queue.io.deq.bits.tree_to_exec, UInt<1>("h1")) @[IncrementTreePE.scala 21:58]
    node _io_sample_out_bits_offset_T_1 = tail(_io_sample_out_bits_offset_T, 1) @[IncrementTreePE.scala 21:58]
    io.sample_out.bits.offset <= _io_sample_out_bits_offset_T_1 @[IncrementTreePE.scala 21:31]
    io.sample_out.bits.scores <= queue.io.deq.bits.scores @[IncrementTreePE.scala 22:31]
    io.sample_out.bits.search_for_root <= queue.io.deq.bits.search_for_root @[IncrementTreePE.scala 23:40]
    io.sample_out.bits.dest <= queue.io.deq.bits.dest @[IncrementTreePE.scala 24:29]
    io.sample_out.bits.last <= queue.io.deq.bits.last @[IncrementTreePE.scala 25:29]
    io.sample_out.bits.clock_cycles <= queue.io.deq.bits.clock_cycles @[IncrementTreePE.scala 26:37]
    io.sample_out.valid <= queue.io.deq.valid @[IncrementTreePE.scala 28:25]
    queue.io.deq.ready <= io.sample_out.ready @[IncrementTreePE.scala 30:17]

  module Queue_20 :
    input clock : Clock
    input reset : Reset
    output io : { flip enq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, deq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, count : UInt<2>}

    cmem ram : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>} [3] @[Decoupled.scala 275:95]
    reg enq_ptr_value : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[Counter.scala 61:40]
    reg deq_ptr_value : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[Counter.scala 61:40]
    reg maybe_full : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[Decoupled.scala 278:27]
    node ptr_match = eq(enq_ptr_value, deq_ptr_value) @[Decoupled.scala 279:33]
    node _empty_T = eq(maybe_full, UInt<1>("h0")) @[Decoupled.scala 280:28]
    node empty = and(ptr_match, _empty_T) @[Decoupled.scala 280:25]
    node full = and(ptr_match, maybe_full) @[Decoupled.scala 281:24]
    node _do_enq_T = and(io.enq.ready, io.enq.valid) @[Decoupled.scala 52:35]
    wire do_enq : UInt<1>
    do_enq <= _do_enq_T
    node _do_deq_T = and(io.deq.ready, io.deq.valid) @[Decoupled.scala 52:35]
    wire do_deq : UInt<1>
    do_deq <= _do_deq_T
    when do_enq : @[Decoupled.scala 288:16]
      infer mport MPORT = ram[enq_ptr_value], clock @[Decoupled.scala 289:8]
      MPORT <= io.enq.bits @[Decoupled.scala 289:24]
      node wrap = eq(enq_ptr_value, UInt<2>("h2")) @[Counter.scala 73:24]
      node _value_T = add(enq_ptr_value, UInt<1>("h1")) @[Counter.scala 77:24]
      node _value_T_1 = tail(_value_T, 1) @[Counter.scala 77:24]
      enq_ptr_value <= _value_T_1 @[Counter.scala 77:15]
      when wrap : @[Counter.scala 87:20]
        enq_ptr_value <= UInt<1>("h0") @[Counter.scala 87:28]
    when do_deq : @[Decoupled.scala 292:16]
      node wrap_1 = eq(deq_ptr_value, UInt<2>("h2")) @[Counter.scala 73:24]
      node _value_T_2 = add(deq_ptr_value, UInt<1>("h1")) @[Counter.scala 77:24]
      node _value_T_3 = tail(_value_T_2, 1) @[Counter.scala 77:24]
      deq_ptr_value <= _value_T_3 @[Counter.scala 77:15]
      when wrap_1 : @[Counter.scala 87:20]
        deq_ptr_value <= UInt<1>("h0") @[Counter.scala 87:28]
    node _T = neq(do_enq, do_deq) @[Decoupled.scala 295:15]
    when _T : @[Decoupled.scala 295:27]
      maybe_full <= do_enq @[Decoupled.scala 296:16]
    when UInt<1>("h0") : @[Decoupled.scala 298:15]
      enq_ptr_value <= UInt<1>("h0") @[Counter.scala 98:11]
      deq_ptr_value <= UInt<1>("h0") @[Counter.scala 98:11]
      maybe_full <= UInt<1>("h0") @[Decoupled.scala 301:16]
    node _io_deq_valid_T = eq(empty, UInt<1>("h0")) @[Decoupled.scala 304:19]
    io.deq.valid <= _io_deq_valid_T @[Decoupled.scala 304:16]
    node _io_enq_ready_T = eq(full, UInt<1>("h0")) @[Decoupled.scala 305:19]
    io.enq.ready <= _io_enq_ready_T @[Decoupled.scala 305:16]
    infer mport io_deq_bits_MPORT = ram[deq_ptr_value], clock @[Decoupled.scala 312:23]
    io.deq.bits <= io_deq_bits_MPORT @[Decoupled.scala 312:17]
    node _ptr_diff_T = sub(enq_ptr_value, deq_ptr_value) @[Decoupled.scala 328:32]
    node ptr_diff = tail(_ptr_diff_T, 1) @[Decoupled.scala 328:32]
    node _io_count_T = mux(maybe_full, UInt<2>("h3"), UInt<1>("h0")) @[Decoupled.scala 335:10]
    node _io_count_T_1 = gt(deq_ptr_value, enq_ptr_value) @[Decoupled.scala 336:25]
    node _io_count_T_2 = add(UInt<2>("h3"), ptr_diff) @[Decoupled.scala 336:57]
    node _io_count_T_3 = tail(_io_count_T_2, 1) @[Decoupled.scala 336:57]
    node _io_count_T_4 = mux(_io_count_T_1, _io_count_T_3, ptr_diff) @[Decoupled.scala 336:10]
    node _io_count_T_5 = mux(ptr_match, _io_count_T, _io_count_T_4) @[Decoupled.scala 333:20]
    io.count <= _io_count_T_5 @[Decoupled.scala 333:14]

  module TreePE_5 :
    input clock : Clock
    input reset : Reset
    output io : { flip sample_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, flip mem : { flip enable_1 : UInt<1>, flip write_1 : UInt<1>, flip addr_1 : UInt<13>, flip dataIn_1 : UInt<64>, dataOut_1 : UInt<64>, flip enable_2 : UInt<1>, flip write_2 : UInt<1>, flip addr_2 : UInt<13>, flip dataIn_2 : UInt<64>, dataOut_2 : UInt<64>}, sample_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}}

    inst queue of Queue_20 @[Decoupled.scala 377:21]
    queue.clock <= clock
    queue.reset <= reset
    queue.io.enq.valid <= io.sample_in.valid @[Decoupled.scala 379:22]
    queue.io.enq.bits.clock_cycles <= io.sample_in.bits.clock_cycles @[Decoupled.scala 380:21]
    queue.io.enq.bits.last <= io.sample_in.bits.last @[Decoupled.scala 380:21]
    queue.io.enq.bits.dest <= io.sample_in.bits.dest @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[0] <= io.sample_in.bits.weights[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[1] <= io.sample_in.bits.weights[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[2] <= io.sample_in.bits.weights[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[3] <= io.sample_in.bits.weights[3] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[4] <= io.sample_in.bits.weights[4] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[0] <= io.sample_in.bits.scores[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[1] <= io.sample_in.bits.scores[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[2] <= io.sample_in.bits.scores[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[3] <= io.sample_in.bits.scores[3] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[4] <= io.sample_in.bits.scores[4] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[5] <= io.sample_in.bits.scores[5] @[Decoupled.scala 380:21]
    queue.io.enq.bits.tree_to_exec <= io.sample_in.bits.tree_to_exec @[Decoupled.scala 380:21]
    queue.io.enq.bits.search_for_root <= io.sample_in.bits.search_for_root @[Decoupled.scala 380:21]
    queue.io.enq.bits.shift <= io.sample_in.bits.shift @[Decoupled.scala 380:21]
    queue.io.enq.bits.offset <= io.sample_in.bits.offset @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[0] <= io.sample_in.bits.features[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[1] <= io.sample_in.bits.features[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[2] <= io.sample_in.bits.features[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[3] <= io.sample_in.bits.features[3] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[4] <= io.sample_in.bits.features[4] @[Decoupled.scala 380:21]
    io.sample_in.ready <= queue.io.enq.ready @[Decoupled.scala 381:17]
    io.mem.enable_1 <= UInt<1>("h1") @[TreePE.scala 23:21]
    io.mem.addr_1 <= queue.io.deq.bits.offset @[TreePE.scala 24:19]
    io.mem.write_1 <= UInt<1>("h0") @[TreePE.scala 25:20]
    io.mem.dataIn_1 <= UInt<1>("h0") @[TreePE.scala 26:21]
    io.mem.enable_2 is invalid @[TreePE.scala 28:21]
    io.mem.addr_2 is invalid @[TreePE.scala 29:19]
    io.mem.write_2 is invalid @[TreePE.scala 30:20]
    io.mem.dataIn_2 is invalid @[TreePE.scala 31:21]
    reg REG : UInt<1>, clock with :
      reset => (UInt<1>("h0"), REG) @[TreePE.scala 35:17]
    REG <= queue.io.deq.valid @[TreePE.scala 35:17]
    when REG : @[TreePE.scala 35:31]
      node attr_id = bits(io.mem.dataOut_1, 34, 32) @[TreePE.scala 37:37]
      node threshold = bits(io.mem.dataOut_1, 15, 0) @[TreePE.scala 38:39]
      node nodeRA = bits(io.mem.dataOut_1, 31, 16) @[TreePE.scala 39:36]
      node leftChildInfo = bits(io.mem.dataOut_1, 44, 35) @[TreePE.scala 40:43]
      node rightChildInfo = bits(io.mem.dataOut_1, 54, 45) @[TreePE.scala 41:44]
      node leftChildType = bits(io.mem.dataOut_1, 55, 55) @[TreePE.scala 42:43]
      node rightChildType = bits(io.mem.dataOut_1, 56, 56) @[TreePE.scala 43:44]
      node is_valid = bits(io.mem.dataOut_1, 57, 57) @[TreePE.scala 44:38]
      node depth_indicator = bits(io.mem.dataOut_1, 60, 58) @[TreePE.scala 45:45]
      reg REG_1 : Fixed<32><<16>>[5], clock with :
        reset => (UInt<1>("h0"), REG_1) @[TreePE.scala 47:45]
      REG_1 <= queue.io.deq.bits.features @[TreePE.scala 47:45]
      io.sample_out.bits.features <= REG_1 @[TreePE.scala 47:35]
      reg REG_2 : Fixed<16><<8>>[5], clock with :
        reset => (UInt<1>("h0"), REG_2) @[TreePE.scala 48:44]
      REG_2 <= queue.io.deq.bits.weights @[TreePE.scala 48:44]
      io.sample_out.bits.weights <= REG_2 @[TreePE.scala 48:34]
      reg io_sample_out_bits_tree_to_exec_REG : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_tree_to_exec_REG) @[TreePE.scala 49:49]
      io_sample_out_bits_tree_to_exec_REG <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 49:49]
      io.sample_out.bits.tree_to_exec <= io_sample_out_bits_tree_to_exec_REG @[TreePE.scala 49:39]
      reg REG_3 : Fixed<16><<8>>[6], clock with :
        reset => (UInt<1>("h0"), REG_3) @[TreePE.scala 50:43]
      REG_3 <= queue.io.deq.bits.scores @[TreePE.scala 50:43]
      io.sample_out.bits.scores <= REG_3 @[TreePE.scala 50:33]
      io.sample_out.valid <= UInt<1>("h1") @[TreePE.scala 51:27]
      reg io_sample_out_bits_clock_cycles_REG : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_clock_cycles_REG) @[TreePE.scala 52:49]
      io_sample_out_bits_clock_cycles_REG <= queue.io.deq.bits.clock_cycles @[TreePE.scala 52:49]
      io.sample_out.bits.clock_cycles <= io_sample_out_bits_clock_cycles_REG @[TreePE.scala 52:39]
      wire offset : UInt<10> @[TreePE.scala 55:26]
      wire shift : UInt<1> @[TreePE.scala 56:25]
      reg features_bits : Fixed<32><<16>>[5], clock with :
        reset => (UInt<1>("h0"), features_bits) @[TreePE.scala 57:36]
      features_bits <= queue.io.deq.bits.features @[TreePE.scala 57:36]
      reg scores_bits : Fixed<16><<8>>[6], clock with :
        reset => (UInt<1>("h0"), scores_bits) @[TreePE.scala 58:34]
      scores_bits <= queue.io.deq.bits.scores @[TreePE.scala 58:34]
      reg weights_bits : Fixed<16><<8>>[5], clock with :
        reset => (UInt<1>("h0"), weights_bits) @[TreePE.scala 59:35]
      weights_bits <= queue.io.deq.bits.weights @[TreePE.scala 59:35]
      node _shift_T = asFixedPoint(threshold, 8) @[TreePE.scala 60:69]
      node _shift_T_1 = lt(features_bits[attr_id], _shift_T) @[TreePE.scala 60:45]
      node _shift_T_2 = mux(_shift_T_1, leftChildType, rightChildType) @[TreePE.scala 60:21]
      shift <= _shift_T_2 @[TreePE.scala 60:15]
      node _offset_T = asFixedPoint(threshold, 8) @[TreePE.scala 61:70]
      node _offset_T_1 = lt(features_bits[attr_id], _offset_T) @[TreePE.scala 61:46]
      node _offset_T_2 = mux(_offset_T_1, leftChildInfo, rightChildInfo) @[TreePE.scala 61:22]
      offset <= _offset_T_2 @[TreePE.scala 61:16]
      node _io_sample_out_bits_offset_T = eq(shift, UInt<1>("h0")) @[TreePE.scala 62:48]
      reg io_sample_out_bits_offset_REG : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_offset_REG) @[TreePE.scala 62:67]
      io_sample_out_bits_offset_REG <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 62:67]
      node _io_sample_out_bits_offset_T_1 = mux(_io_sample_out_bits_offset_T, io_sample_out_bits_offset_REG, offset) @[TreePE.scala 62:41]
      io.sample_out.bits.offset <= _io_sample_out_bits_offset_T_1 @[TreePE.scala 62:35]
      io.sample_out.bits.shift <= UInt<1>("h0") @[TreePE.scala 63:34]
      node _io_sample_out_bits_search_for_root_T = eq(shift, UInt<1>("h0")) @[TreePE.scala 64:47]
      io.sample_out.bits.search_for_root <= _io_sample_out_bits_search_for_root_T @[TreePE.scala 64:44]
      node _io_sample_out_bits_scores_0_T = eq(shift, UInt<1>("h0")) @[TreePE.scala 66:72]
      node _io_sample_out_bits_scores_0_T_1 = and(_io_sample_out_bits_scores_0_T, is_valid) @[TreePE.scala 66:84]
      node _io_sample_out_bits_scores_0_T_2 = eq(UInt<1>("h0"), offset) @[TreePE.scala 66:102]
      node _io_sample_out_bits_scores_0_T_3 = and(_io_sample_out_bits_scores_0_T_1, _io_sample_out_bits_scores_0_T_2) @[TreePE.scala 66:95]
      node _io_sample_out_bits_scores_0_T_4 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 66:151]
      node _io_sample_out_bits_scores_0_T_5 = mux(_io_sample_out_bits_scores_0_T_3, _io_sample_out_bits_scores_0_T_4, UInt<16>("h0")) @[TreePE.scala 66:64]
      node _io_sample_out_bits_scores_0_T_6 = asFixedPoint(_io_sample_out_bits_scores_0_T_5, 8) @[TreePE.scala 66:178]
      node _io_sample_out_bits_scores_0_T_7 = add(scores_bits[0], _io_sample_out_bits_scores_0_T_6) @[TreePE.scala 66:58]
      node _io_sample_out_bits_scores_0_T_8 = tail(_io_sample_out_bits_scores_0_T_7, 1) @[TreePE.scala 66:58]
      node _io_sample_out_bits_scores_0_T_9 = asFixedPoint(_io_sample_out_bits_scores_0_T_8, 8) @[TreePE.scala 66:58]
      io.sample_out.bits.scores[0] <= _io_sample_out_bits_scores_0_T_9 @[TreePE.scala 66:40]
      node _io_sample_out_bits_scores_1_T = eq(shift, UInt<1>("h0")) @[TreePE.scala 66:72]
      node _io_sample_out_bits_scores_1_T_1 = and(_io_sample_out_bits_scores_1_T, is_valid) @[TreePE.scala 66:84]
      node _io_sample_out_bits_scores_1_T_2 = eq(UInt<1>("h1"), offset) @[TreePE.scala 66:102]
      node _io_sample_out_bits_scores_1_T_3 = and(_io_sample_out_bits_scores_1_T_1, _io_sample_out_bits_scores_1_T_2) @[TreePE.scala 66:95]
      node _io_sample_out_bits_scores_1_T_4 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 66:151]
      node _io_sample_out_bits_scores_1_T_5 = mux(_io_sample_out_bits_scores_1_T_3, _io_sample_out_bits_scores_1_T_4, UInt<16>("h0")) @[TreePE.scala 66:64]
      node _io_sample_out_bits_scores_1_T_6 = asFixedPoint(_io_sample_out_bits_scores_1_T_5, 8) @[TreePE.scala 66:178]
      node _io_sample_out_bits_scores_1_T_7 = add(scores_bits[1], _io_sample_out_bits_scores_1_T_6) @[TreePE.scala 66:58]
      node _io_sample_out_bits_scores_1_T_8 = tail(_io_sample_out_bits_scores_1_T_7, 1) @[TreePE.scala 66:58]
      node _io_sample_out_bits_scores_1_T_9 = asFixedPoint(_io_sample_out_bits_scores_1_T_8, 8) @[TreePE.scala 66:58]
      io.sample_out.bits.scores[1] <= _io_sample_out_bits_scores_1_T_9 @[TreePE.scala 66:40]
      node _io_sample_out_bits_scores_2_T = eq(shift, UInt<1>("h0")) @[TreePE.scala 66:72]
      node _io_sample_out_bits_scores_2_T_1 = and(_io_sample_out_bits_scores_2_T, is_valid) @[TreePE.scala 66:84]
      node _io_sample_out_bits_scores_2_T_2 = eq(UInt<2>("h2"), offset) @[TreePE.scala 66:102]
      node _io_sample_out_bits_scores_2_T_3 = and(_io_sample_out_bits_scores_2_T_1, _io_sample_out_bits_scores_2_T_2) @[TreePE.scala 66:95]
      node _io_sample_out_bits_scores_2_T_4 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 66:151]
      node _io_sample_out_bits_scores_2_T_5 = mux(_io_sample_out_bits_scores_2_T_3, _io_sample_out_bits_scores_2_T_4, UInt<16>("h0")) @[TreePE.scala 66:64]
      node _io_sample_out_bits_scores_2_T_6 = asFixedPoint(_io_sample_out_bits_scores_2_T_5, 8) @[TreePE.scala 66:178]
      node _io_sample_out_bits_scores_2_T_7 = add(scores_bits[2], _io_sample_out_bits_scores_2_T_6) @[TreePE.scala 66:58]
      node _io_sample_out_bits_scores_2_T_8 = tail(_io_sample_out_bits_scores_2_T_7, 1) @[TreePE.scala 66:58]
      node _io_sample_out_bits_scores_2_T_9 = asFixedPoint(_io_sample_out_bits_scores_2_T_8, 8) @[TreePE.scala 66:58]
      io.sample_out.bits.scores[2] <= _io_sample_out_bits_scores_2_T_9 @[TreePE.scala 66:40]
      node _io_sample_out_bits_scores_3_T = eq(shift, UInt<1>("h0")) @[TreePE.scala 66:72]
      node _io_sample_out_bits_scores_3_T_1 = and(_io_sample_out_bits_scores_3_T, is_valid) @[TreePE.scala 66:84]
      node _io_sample_out_bits_scores_3_T_2 = eq(UInt<2>("h3"), offset) @[TreePE.scala 66:102]
      node _io_sample_out_bits_scores_3_T_3 = and(_io_sample_out_bits_scores_3_T_1, _io_sample_out_bits_scores_3_T_2) @[TreePE.scala 66:95]
      node _io_sample_out_bits_scores_3_T_4 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 66:151]
      node _io_sample_out_bits_scores_3_T_5 = mux(_io_sample_out_bits_scores_3_T_3, _io_sample_out_bits_scores_3_T_4, UInt<16>("h0")) @[TreePE.scala 66:64]
      node _io_sample_out_bits_scores_3_T_6 = asFixedPoint(_io_sample_out_bits_scores_3_T_5, 8) @[TreePE.scala 66:178]
      node _io_sample_out_bits_scores_3_T_7 = add(scores_bits[3], _io_sample_out_bits_scores_3_T_6) @[TreePE.scala 66:58]
      node _io_sample_out_bits_scores_3_T_8 = tail(_io_sample_out_bits_scores_3_T_7, 1) @[TreePE.scala 66:58]
      node _io_sample_out_bits_scores_3_T_9 = asFixedPoint(_io_sample_out_bits_scores_3_T_8, 8) @[TreePE.scala 66:58]
      io.sample_out.bits.scores[3] <= _io_sample_out_bits_scores_3_T_9 @[TreePE.scala 66:40]
      node _io_sample_out_bits_scores_4_T = eq(shift, UInt<1>("h0")) @[TreePE.scala 66:72]
      node _io_sample_out_bits_scores_4_T_1 = and(_io_sample_out_bits_scores_4_T, is_valid) @[TreePE.scala 66:84]
      node _io_sample_out_bits_scores_4_T_2 = eq(UInt<3>("h4"), offset) @[TreePE.scala 66:102]
      node _io_sample_out_bits_scores_4_T_3 = and(_io_sample_out_bits_scores_4_T_1, _io_sample_out_bits_scores_4_T_2) @[TreePE.scala 66:95]
      node _io_sample_out_bits_scores_4_T_4 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 66:151]
      node _io_sample_out_bits_scores_4_T_5 = mux(_io_sample_out_bits_scores_4_T_3, _io_sample_out_bits_scores_4_T_4, UInt<16>("h0")) @[TreePE.scala 66:64]
      node _io_sample_out_bits_scores_4_T_6 = asFixedPoint(_io_sample_out_bits_scores_4_T_5, 8) @[TreePE.scala 66:178]
      node _io_sample_out_bits_scores_4_T_7 = add(scores_bits[4], _io_sample_out_bits_scores_4_T_6) @[TreePE.scala 66:58]
      node _io_sample_out_bits_scores_4_T_8 = tail(_io_sample_out_bits_scores_4_T_7, 1) @[TreePE.scala 66:58]
      node _io_sample_out_bits_scores_4_T_9 = asFixedPoint(_io_sample_out_bits_scores_4_T_8, 8) @[TreePE.scala 66:58]
      io.sample_out.bits.scores[4] <= _io_sample_out_bits_scores_4_T_9 @[TreePE.scala 66:40]
      node _io_sample_out_bits_scores_5_T = eq(shift, UInt<1>("h0")) @[TreePE.scala 66:72]
      node _io_sample_out_bits_scores_5_T_1 = and(_io_sample_out_bits_scores_5_T, is_valid) @[TreePE.scala 66:84]
      node _io_sample_out_bits_scores_5_T_2 = eq(UInt<3>("h5"), offset) @[TreePE.scala 66:102]
      node _io_sample_out_bits_scores_5_T_3 = and(_io_sample_out_bits_scores_5_T_1, _io_sample_out_bits_scores_5_T_2) @[TreePE.scala 66:95]
      node _io_sample_out_bits_scores_5_T_4 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 66:151]
      node _io_sample_out_bits_scores_5_T_5 = mux(_io_sample_out_bits_scores_5_T_3, _io_sample_out_bits_scores_5_T_4, UInt<16>("h0")) @[TreePE.scala 66:64]
      node _io_sample_out_bits_scores_5_T_6 = asFixedPoint(_io_sample_out_bits_scores_5_T_5, 8) @[TreePE.scala 66:178]
      node _io_sample_out_bits_scores_5_T_7 = add(scores_bits[5], _io_sample_out_bits_scores_5_T_6) @[TreePE.scala 66:58]
      node _io_sample_out_bits_scores_5_T_8 = tail(_io_sample_out_bits_scores_5_T_7, 1) @[TreePE.scala 66:58]
      node _io_sample_out_bits_scores_5_T_9 = asFixedPoint(_io_sample_out_bits_scores_5_T_8, 8) @[TreePE.scala 66:58]
      io.sample_out.bits.scores[5] <= _io_sample_out_bits_scores_5_T_9 @[TreePE.scala 66:40]
      reg io_sample_out_bits_dest_REG : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_dest_REG) @[TreePE.scala 68:43]
      io_sample_out_bits_dest_REG <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 68:43]
      node _io_sample_out_bits_dest_T = eq(io_sample_out_bits_dest_REG, UInt<1>("h1")) @[TreePE.scala 68:69]
      io.sample_out.bits.dest <= _io_sample_out_bits_dest_T @[TreePE.scala 68:33]
      reg io_sample_out_bits_last_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_last_REG) @[TreePE.scala 69:43]
      io_sample_out_bits_last_REG <= queue.io.deq.bits.last @[TreePE.scala 69:43]
      io.sample_out.bits.last <= io_sample_out_bits_last_REG @[TreePE.scala 69:33]
    else :
      io.sample_out.bits.clock_cycles is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.last is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.dest is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[0] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[1] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[2] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[3] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[4] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[0] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[1] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[2] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[3] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[4] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[5] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.tree_to_exec is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.search_for_root is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.shift is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.offset is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[0] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[1] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[2] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[3] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[4] is invalid @[TreePE.scala 88:26]
      io.sample_out.valid <= UInt<1>("h0") @[TreePE.scala 89:27]
    queue.io.deq.ready <= io.sample_out.ready @[TreePE.scala 92:17]

  module TreePEwithBRAM_5 :
    input clock : Clock
    input reset : Reset
    output pe_io : { flip sample_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, flip mem : { flip enable_1 : UInt<1>, flip write_1 : UInt<1>, flip addr_1 : UInt<13>, flip dataIn_1 : UInt<64>, dataOut_1 : UInt<64>, flip enable_2 : UInt<1>, flip write_2 : UInt<1>, flip addr_2 : UInt<13>, flip dataIn_2 : UInt<64>, dataOut_2 : UInt<64>}, sample_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}}

    inst pe of TreePE_5 @[TreePE.scala 104:18]
    pe.clock <= clock
    pe.reset <= reset
    pe_io.sample_out.bits <= pe.io.sample_out.bits @[TreePE.scala 106:9]
    pe_io.sample_out.valid <= pe.io.sample_out.valid @[TreePE.scala 106:9]
    pe.io.sample_out.ready <= pe_io.sample_out.ready @[TreePE.scala 106:9]
    pe.io.mem <= pe_io.mem @[TreePE.scala 106:9]
    pe.io.sample_in <= pe_io.sample_in @[TreePE.scala 106:9]

  module Queue_21 :
    input clock : Clock
    input reset : Reset
    output io : { flip enq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, deq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, count : UInt<2>}

    cmem ram : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>} [3] @[Decoupled.scala 275:95]
    reg enq_ptr_value : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[Counter.scala 61:40]
    reg deq_ptr_value : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[Counter.scala 61:40]
    reg maybe_full : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[Decoupled.scala 278:27]
    node ptr_match = eq(enq_ptr_value, deq_ptr_value) @[Decoupled.scala 279:33]
    node _empty_T = eq(maybe_full, UInt<1>("h0")) @[Decoupled.scala 280:28]
    node empty = and(ptr_match, _empty_T) @[Decoupled.scala 280:25]
    node full = and(ptr_match, maybe_full) @[Decoupled.scala 281:24]
    node _do_enq_T = and(io.enq.ready, io.enq.valid) @[Decoupled.scala 52:35]
    wire do_enq : UInt<1>
    do_enq <= _do_enq_T
    node _do_deq_T = and(io.deq.ready, io.deq.valid) @[Decoupled.scala 52:35]
    wire do_deq : UInt<1>
    do_deq <= _do_deq_T
    when do_enq : @[Decoupled.scala 288:16]
      infer mport MPORT = ram[enq_ptr_value], clock @[Decoupled.scala 289:8]
      MPORT <= io.enq.bits @[Decoupled.scala 289:24]
      node wrap = eq(enq_ptr_value, UInt<2>("h2")) @[Counter.scala 73:24]
      node _value_T = add(enq_ptr_value, UInt<1>("h1")) @[Counter.scala 77:24]
      node _value_T_1 = tail(_value_T, 1) @[Counter.scala 77:24]
      enq_ptr_value <= _value_T_1 @[Counter.scala 77:15]
      when wrap : @[Counter.scala 87:20]
        enq_ptr_value <= UInt<1>("h0") @[Counter.scala 87:28]
    when do_deq : @[Decoupled.scala 292:16]
      node wrap_1 = eq(deq_ptr_value, UInt<2>("h2")) @[Counter.scala 73:24]
      node _value_T_2 = add(deq_ptr_value, UInt<1>("h1")) @[Counter.scala 77:24]
      node _value_T_3 = tail(_value_T_2, 1) @[Counter.scala 77:24]
      deq_ptr_value <= _value_T_3 @[Counter.scala 77:15]
      when wrap_1 : @[Counter.scala 87:20]
        deq_ptr_value <= UInt<1>("h0") @[Counter.scala 87:28]
    node _T = neq(do_enq, do_deq) @[Decoupled.scala 295:15]
    when _T : @[Decoupled.scala 295:27]
      maybe_full <= do_enq @[Decoupled.scala 296:16]
    when UInt<1>("h0") : @[Decoupled.scala 298:15]
      enq_ptr_value <= UInt<1>("h0") @[Counter.scala 98:11]
      deq_ptr_value <= UInt<1>("h0") @[Counter.scala 98:11]
      maybe_full <= UInt<1>("h0") @[Decoupled.scala 301:16]
    node _io_deq_valid_T = eq(empty, UInt<1>("h0")) @[Decoupled.scala 304:19]
    io.deq.valid <= _io_deq_valid_T @[Decoupled.scala 304:16]
    node _io_enq_ready_T = eq(full, UInt<1>("h0")) @[Decoupled.scala 305:19]
    io.enq.ready <= _io_enq_ready_T @[Decoupled.scala 305:16]
    infer mport io_deq_bits_MPORT = ram[deq_ptr_value], clock @[Decoupled.scala 312:23]
    io.deq.bits <= io_deq_bits_MPORT @[Decoupled.scala 312:17]
    node _ptr_diff_T = sub(enq_ptr_value, deq_ptr_value) @[Decoupled.scala 328:32]
    node ptr_diff = tail(_ptr_diff_T, 1) @[Decoupled.scala 328:32]
    node _io_count_T = mux(maybe_full, UInt<2>("h3"), UInt<1>("h0")) @[Decoupled.scala 335:10]
    node _io_count_T_1 = gt(deq_ptr_value, enq_ptr_value) @[Decoupled.scala 336:25]
    node _io_count_T_2 = add(UInt<2>("h3"), ptr_diff) @[Decoupled.scala 336:57]
    node _io_count_T_3 = tail(_io_count_T_2, 1) @[Decoupled.scala 336:57]
    node _io_count_T_4 = mux(_io_count_T_1, _io_count_T_3, ptr_diff) @[Decoupled.scala 336:10]
    node _io_count_T_5 = mux(ptr_match, _io_count_T, _io_count_T_4) @[Decoupled.scala 333:20]
    io.count <= _io_count_T_5 @[Decoupled.scala 333:14]

  module TreePE_6 :
    input clock : Clock
    input reset : Reset
    output io : { flip sample_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, flip mem : { flip enable_1 : UInt<1>, flip write_1 : UInt<1>, flip addr_1 : UInt<13>, flip dataIn_1 : UInt<64>, dataOut_1 : UInt<64>, flip enable_2 : UInt<1>, flip write_2 : UInt<1>, flip addr_2 : UInt<13>, flip dataIn_2 : UInt<64>, dataOut_2 : UInt<64>}, sample_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}}

    inst queue of Queue_21 @[Decoupled.scala 377:21]
    queue.clock <= clock
    queue.reset <= reset
    queue.io.enq.valid <= io.sample_in.valid @[Decoupled.scala 379:22]
    queue.io.enq.bits.clock_cycles <= io.sample_in.bits.clock_cycles @[Decoupled.scala 380:21]
    queue.io.enq.bits.last <= io.sample_in.bits.last @[Decoupled.scala 380:21]
    queue.io.enq.bits.dest <= io.sample_in.bits.dest @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[0] <= io.sample_in.bits.weights[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[1] <= io.sample_in.bits.weights[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[2] <= io.sample_in.bits.weights[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[3] <= io.sample_in.bits.weights[3] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[4] <= io.sample_in.bits.weights[4] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[0] <= io.sample_in.bits.scores[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[1] <= io.sample_in.bits.scores[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[2] <= io.sample_in.bits.scores[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[3] <= io.sample_in.bits.scores[3] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[4] <= io.sample_in.bits.scores[4] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[5] <= io.sample_in.bits.scores[5] @[Decoupled.scala 380:21]
    queue.io.enq.bits.tree_to_exec <= io.sample_in.bits.tree_to_exec @[Decoupled.scala 380:21]
    queue.io.enq.bits.search_for_root <= io.sample_in.bits.search_for_root @[Decoupled.scala 380:21]
    queue.io.enq.bits.shift <= io.sample_in.bits.shift @[Decoupled.scala 380:21]
    queue.io.enq.bits.offset <= io.sample_in.bits.offset @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[0] <= io.sample_in.bits.features[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[1] <= io.sample_in.bits.features[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[2] <= io.sample_in.bits.features[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[3] <= io.sample_in.bits.features[3] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[4] <= io.sample_in.bits.features[4] @[Decoupled.scala 380:21]
    io.sample_in.ready <= queue.io.enq.ready @[Decoupled.scala 381:17]
    io.mem.enable_1 <= UInt<1>("h1") @[TreePE.scala 23:21]
    io.mem.addr_1 <= queue.io.deq.bits.offset @[TreePE.scala 24:19]
    io.mem.write_1 <= UInt<1>("h0") @[TreePE.scala 25:20]
    io.mem.dataIn_1 <= UInt<1>("h0") @[TreePE.scala 26:21]
    io.mem.enable_2 is invalid @[TreePE.scala 28:21]
    io.mem.addr_2 is invalid @[TreePE.scala 29:19]
    io.mem.write_2 is invalid @[TreePE.scala 30:20]
    io.mem.dataIn_2 is invalid @[TreePE.scala 31:21]
    reg REG : UInt<1>, clock with :
      reset => (UInt<1>("h0"), REG) @[TreePE.scala 35:17]
    REG <= queue.io.deq.valid @[TreePE.scala 35:17]
    when REG : @[TreePE.scala 35:31]
      node attr_id = bits(io.mem.dataOut_1, 34, 32) @[TreePE.scala 37:37]
      node threshold = bits(io.mem.dataOut_1, 15, 0) @[TreePE.scala 38:39]
      node nodeRA = bits(io.mem.dataOut_1, 31, 16) @[TreePE.scala 39:36]
      node leftChildInfo = bits(io.mem.dataOut_1, 44, 35) @[TreePE.scala 40:43]
      node rightChildInfo = bits(io.mem.dataOut_1, 54, 45) @[TreePE.scala 41:44]
      node leftChildType = bits(io.mem.dataOut_1, 55, 55) @[TreePE.scala 42:43]
      node rightChildType = bits(io.mem.dataOut_1, 56, 56) @[TreePE.scala 43:44]
      node is_valid = bits(io.mem.dataOut_1, 57, 57) @[TreePE.scala 44:38]
      node depth_indicator = bits(io.mem.dataOut_1, 60, 58) @[TreePE.scala 45:45]
      reg REG_1 : Fixed<32><<16>>[5], clock with :
        reset => (UInt<1>("h0"), REG_1) @[TreePE.scala 47:45]
      REG_1 <= queue.io.deq.bits.features @[TreePE.scala 47:45]
      io.sample_out.bits.features <= REG_1 @[TreePE.scala 47:35]
      reg REG_2 : Fixed<16><<8>>[5], clock with :
        reset => (UInt<1>("h0"), REG_2) @[TreePE.scala 48:44]
      REG_2 <= queue.io.deq.bits.weights @[TreePE.scala 48:44]
      io.sample_out.bits.weights <= REG_2 @[TreePE.scala 48:34]
      reg io_sample_out_bits_tree_to_exec_REG : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_tree_to_exec_REG) @[TreePE.scala 49:49]
      io_sample_out_bits_tree_to_exec_REG <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 49:49]
      io.sample_out.bits.tree_to_exec <= io_sample_out_bits_tree_to_exec_REG @[TreePE.scala 49:39]
      reg REG_3 : Fixed<16><<8>>[6], clock with :
        reset => (UInt<1>("h0"), REG_3) @[TreePE.scala 50:43]
      REG_3 <= queue.io.deq.bits.scores @[TreePE.scala 50:43]
      io.sample_out.bits.scores <= REG_3 @[TreePE.scala 50:33]
      io.sample_out.valid <= UInt<1>("h1") @[TreePE.scala 51:27]
      reg io_sample_out_bits_clock_cycles_REG : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_clock_cycles_REG) @[TreePE.scala 52:49]
      io_sample_out_bits_clock_cycles_REG <= queue.io.deq.bits.clock_cycles @[TreePE.scala 52:49]
      io.sample_out.bits.clock_cycles <= io_sample_out_bits_clock_cycles_REG @[TreePE.scala 52:39]
      wire offset : UInt<10> @[TreePE.scala 71:26]
      wire shift : UInt<1> @[TreePE.scala 72:25]
      reg features_bits : Fixed<32><<16>>[5], clock with :
        reset => (UInt<1>("h0"), features_bits) @[TreePE.scala 73:36]
      features_bits <= queue.io.deq.bits.features @[TreePE.scala 73:36]
      reg scores_bits : Fixed<16><<8>>[6], clock with :
        reset => (UInt<1>("h0"), scores_bits) @[TreePE.scala 74:34]
      scores_bits <= queue.io.deq.bits.scores @[TreePE.scala 74:34]
      reg weights_bits : Fixed<16><<8>>[5], clock with :
        reset => (UInt<1>("h0"), weights_bits) @[TreePE.scala 75:35]
      weights_bits <= queue.io.deq.bits.weights @[TreePE.scala 75:35]
      node _shift_T = asFixedPoint(threshold, 8) @[TreePE.scala 76:69]
      node _shift_T_1 = lt(features_bits[attr_id], _shift_T) @[TreePE.scala 76:45]
      node _shift_T_2 = mux(_shift_T_1, leftChildType, rightChildType) @[TreePE.scala 76:21]
      shift <= _shift_T_2 @[TreePE.scala 76:15]
      node _offset_T = asFixedPoint(threshold, 8) @[TreePE.scala 77:70]
      node _offset_T_1 = lt(features_bits[attr_id], _offset_T) @[TreePE.scala 77:46]
      node _offset_T_2 = mux(_offset_T_1, leftChildInfo, rightChildInfo) @[TreePE.scala 77:22]
      offset <= _offset_T_2 @[TreePE.scala 77:16]
      node _io_sample_out_bits_offset_T = eq(shift, UInt<1>("h0")) @[TreePE.scala 78:48]
      reg io_sample_out_bits_offset_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_offset_REG) @[TreePE.scala 78:70]
      io_sample_out_bits_offset_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 78:70]
      node _io_sample_out_bits_offset_T_1 = or(_io_sample_out_bits_offset_T, io_sample_out_bits_offset_REG) @[TreePE.scala 78:60]
      reg io_sample_out_bits_offset_REG_1 : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_offset_REG_1) @[TreePE.scala 78:106]
      io_sample_out_bits_offset_REG_1 <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 78:106]
      node _io_sample_out_bits_offset_T_2 = mux(_io_sample_out_bits_offset_T_1, io_sample_out_bits_offset_REG_1, offset) @[TreePE.scala 78:41]
      io.sample_out.bits.offset <= _io_sample_out_bits_offset_T_2 @[TreePE.scala 78:35]
      io.sample_out.bits.shift <= UInt<1>("h0") @[TreePE.scala 79:34]
      node _io_sample_out_bits_search_for_root_T = eq(shift, UInt<1>("h0")) @[TreePE.scala 80:47]
      reg io_sample_out_bits_search_for_root_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_search_for_root_REG) @[TreePE.scala 80:64]
      io_sample_out_bits_search_for_root_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 80:64]
      node _io_sample_out_bits_search_for_root_T_1 = or(_io_sample_out_bits_search_for_root_T, io_sample_out_bits_search_for_root_REG) @[TreePE.scala 80:54]
      io.sample_out.bits.search_for_root <= _io_sample_out_bits_search_for_root_T_1 @[TreePE.scala 80:44]
      reg io_sample_out_bits_scores_0_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_scores_0_REG) @[TreePE.scala 82:74]
      io_sample_out_bits_scores_0_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 82:74]
      node _io_sample_out_bits_scores_0_T = eq(io_sample_out_bits_scores_0_REG, UInt<1>("h0")) @[TreePE.scala 82:66]
      node _io_sample_out_bits_scores_0_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 82:111]
      node _io_sample_out_bits_scores_0_T_2 = and(_io_sample_out_bits_scores_0_T, _io_sample_out_bits_scores_0_T_1) @[TreePE.scala 82:103]
      node _io_sample_out_bits_scores_0_T_3 = and(_io_sample_out_bits_scores_0_T_2, is_valid) @[TreePE.scala 82:123]
      node _io_sample_out_bits_scores_0_T_4 = eq(UInt<1>("h0"), offset) @[TreePE.scala 82:141]
      node _io_sample_out_bits_scores_0_T_5 = and(_io_sample_out_bits_scores_0_T_3, _io_sample_out_bits_scores_0_T_4) @[TreePE.scala 82:134]
      node _io_sample_out_bits_scores_0_T_6 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 82:190]
      node _io_sample_out_bits_scores_0_T_7 = mux(_io_sample_out_bits_scores_0_T_5, _io_sample_out_bits_scores_0_T_6, UInt<16>("h0")) @[TreePE.scala 82:64]
      node _io_sample_out_bits_scores_0_T_8 = asFixedPoint(_io_sample_out_bits_scores_0_T_7, 8) @[TreePE.scala 82:217]
      node _io_sample_out_bits_scores_0_T_9 = add(scores_bits[0], _io_sample_out_bits_scores_0_T_8) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_0_T_10 = tail(_io_sample_out_bits_scores_0_T_9, 1) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_0_T_11 = asFixedPoint(_io_sample_out_bits_scores_0_T_10, 8) @[TreePE.scala 82:58]
      io.sample_out.bits.scores[0] <= _io_sample_out_bits_scores_0_T_11 @[TreePE.scala 82:40]
      reg io_sample_out_bits_scores_1_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_scores_1_REG) @[TreePE.scala 82:74]
      io_sample_out_bits_scores_1_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 82:74]
      node _io_sample_out_bits_scores_1_T = eq(io_sample_out_bits_scores_1_REG, UInt<1>("h0")) @[TreePE.scala 82:66]
      node _io_sample_out_bits_scores_1_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 82:111]
      node _io_sample_out_bits_scores_1_T_2 = and(_io_sample_out_bits_scores_1_T, _io_sample_out_bits_scores_1_T_1) @[TreePE.scala 82:103]
      node _io_sample_out_bits_scores_1_T_3 = and(_io_sample_out_bits_scores_1_T_2, is_valid) @[TreePE.scala 82:123]
      node _io_sample_out_bits_scores_1_T_4 = eq(UInt<1>("h1"), offset) @[TreePE.scala 82:141]
      node _io_sample_out_bits_scores_1_T_5 = and(_io_sample_out_bits_scores_1_T_3, _io_sample_out_bits_scores_1_T_4) @[TreePE.scala 82:134]
      node _io_sample_out_bits_scores_1_T_6 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 82:190]
      node _io_sample_out_bits_scores_1_T_7 = mux(_io_sample_out_bits_scores_1_T_5, _io_sample_out_bits_scores_1_T_6, UInt<16>("h0")) @[TreePE.scala 82:64]
      node _io_sample_out_bits_scores_1_T_8 = asFixedPoint(_io_sample_out_bits_scores_1_T_7, 8) @[TreePE.scala 82:217]
      node _io_sample_out_bits_scores_1_T_9 = add(scores_bits[1], _io_sample_out_bits_scores_1_T_8) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_1_T_10 = tail(_io_sample_out_bits_scores_1_T_9, 1) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_1_T_11 = asFixedPoint(_io_sample_out_bits_scores_1_T_10, 8) @[TreePE.scala 82:58]
      io.sample_out.bits.scores[1] <= _io_sample_out_bits_scores_1_T_11 @[TreePE.scala 82:40]
      reg io_sample_out_bits_scores_2_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_scores_2_REG) @[TreePE.scala 82:74]
      io_sample_out_bits_scores_2_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 82:74]
      node _io_sample_out_bits_scores_2_T = eq(io_sample_out_bits_scores_2_REG, UInt<1>("h0")) @[TreePE.scala 82:66]
      node _io_sample_out_bits_scores_2_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 82:111]
      node _io_sample_out_bits_scores_2_T_2 = and(_io_sample_out_bits_scores_2_T, _io_sample_out_bits_scores_2_T_1) @[TreePE.scala 82:103]
      node _io_sample_out_bits_scores_2_T_3 = and(_io_sample_out_bits_scores_2_T_2, is_valid) @[TreePE.scala 82:123]
      node _io_sample_out_bits_scores_2_T_4 = eq(UInt<2>("h2"), offset) @[TreePE.scala 82:141]
      node _io_sample_out_bits_scores_2_T_5 = and(_io_sample_out_bits_scores_2_T_3, _io_sample_out_bits_scores_2_T_4) @[TreePE.scala 82:134]
      node _io_sample_out_bits_scores_2_T_6 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 82:190]
      node _io_sample_out_bits_scores_2_T_7 = mux(_io_sample_out_bits_scores_2_T_5, _io_sample_out_bits_scores_2_T_6, UInt<16>("h0")) @[TreePE.scala 82:64]
      node _io_sample_out_bits_scores_2_T_8 = asFixedPoint(_io_sample_out_bits_scores_2_T_7, 8) @[TreePE.scala 82:217]
      node _io_sample_out_bits_scores_2_T_9 = add(scores_bits[2], _io_sample_out_bits_scores_2_T_8) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_2_T_10 = tail(_io_sample_out_bits_scores_2_T_9, 1) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_2_T_11 = asFixedPoint(_io_sample_out_bits_scores_2_T_10, 8) @[TreePE.scala 82:58]
      io.sample_out.bits.scores[2] <= _io_sample_out_bits_scores_2_T_11 @[TreePE.scala 82:40]
      reg io_sample_out_bits_scores_3_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_scores_3_REG) @[TreePE.scala 82:74]
      io_sample_out_bits_scores_3_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 82:74]
      node _io_sample_out_bits_scores_3_T = eq(io_sample_out_bits_scores_3_REG, UInt<1>("h0")) @[TreePE.scala 82:66]
      node _io_sample_out_bits_scores_3_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 82:111]
      node _io_sample_out_bits_scores_3_T_2 = and(_io_sample_out_bits_scores_3_T, _io_sample_out_bits_scores_3_T_1) @[TreePE.scala 82:103]
      node _io_sample_out_bits_scores_3_T_3 = and(_io_sample_out_bits_scores_3_T_2, is_valid) @[TreePE.scala 82:123]
      node _io_sample_out_bits_scores_3_T_4 = eq(UInt<2>("h3"), offset) @[TreePE.scala 82:141]
      node _io_sample_out_bits_scores_3_T_5 = and(_io_sample_out_bits_scores_3_T_3, _io_sample_out_bits_scores_3_T_4) @[TreePE.scala 82:134]
      node _io_sample_out_bits_scores_3_T_6 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 82:190]
      node _io_sample_out_bits_scores_3_T_7 = mux(_io_sample_out_bits_scores_3_T_5, _io_sample_out_bits_scores_3_T_6, UInt<16>("h0")) @[TreePE.scala 82:64]
      node _io_sample_out_bits_scores_3_T_8 = asFixedPoint(_io_sample_out_bits_scores_3_T_7, 8) @[TreePE.scala 82:217]
      node _io_sample_out_bits_scores_3_T_9 = add(scores_bits[3], _io_sample_out_bits_scores_3_T_8) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_3_T_10 = tail(_io_sample_out_bits_scores_3_T_9, 1) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_3_T_11 = asFixedPoint(_io_sample_out_bits_scores_3_T_10, 8) @[TreePE.scala 82:58]
      io.sample_out.bits.scores[3] <= _io_sample_out_bits_scores_3_T_11 @[TreePE.scala 82:40]
      reg io_sample_out_bits_scores_4_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_scores_4_REG) @[TreePE.scala 82:74]
      io_sample_out_bits_scores_4_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 82:74]
      node _io_sample_out_bits_scores_4_T = eq(io_sample_out_bits_scores_4_REG, UInt<1>("h0")) @[TreePE.scala 82:66]
      node _io_sample_out_bits_scores_4_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 82:111]
      node _io_sample_out_bits_scores_4_T_2 = and(_io_sample_out_bits_scores_4_T, _io_sample_out_bits_scores_4_T_1) @[TreePE.scala 82:103]
      node _io_sample_out_bits_scores_4_T_3 = and(_io_sample_out_bits_scores_4_T_2, is_valid) @[TreePE.scala 82:123]
      node _io_sample_out_bits_scores_4_T_4 = eq(UInt<3>("h4"), offset) @[TreePE.scala 82:141]
      node _io_sample_out_bits_scores_4_T_5 = and(_io_sample_out_bits_scores_4_T_3, _io_sample_out_bits_scores_4_T_4) @[TreePE.scala 82:134]
      node _io_sample_out_bits_scores_4_T_6 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 82:190]
      node _io_sample_out_bits_scores_4_T_7 = mux(_io_sample_out_bits_scores_4_T_5, _io_sample_out_bits_scores_4_T_6, UInt<16>("h0")) @[TreePE.scala 82:64]
      node _io_sample_out_bits_scores_4_T_8 = asFixedPoint(_io_sample_out_bits_scores_4_T_7, 8) @[TreePE.scala 82:217]
      node _io_sample_out_bits_scores_4_T_9 = add(scores_bits[4], _io_sample_out_bits_scores_4_T_8) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_4_T_10 = tail(_io_sample_out_bits_scores_4_T_9, 1) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_4_T_11 = asFixedPoint(_io_sample_out_bits_scores_4_T_10, 8) @[TreePE.scala 82:58]
      io.sample_out.bits.scores[4] <= _io_sample_out_bits_scores_4_T_11 @[TreePE.scala 82:40]
      reg io_sample_out_bits_scores_5_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_scores_5_REG) @[TreePE.scala 82:74]
      io_sample_out_bits_scores_5_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 82:74]
      node _io_sample_out_bits_scores_5_T = eq(io_sample_out_bits_scores_5_REG, UInt<1>("h0")) @[TreePE.scala 82:66]
      node _io_sample_out_bits_scores_5_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 82:111]
      node _io_sample_out_bits_scores_5_T_2 = and(_io_sample_out_bits_scores_5_T, _io_sample_out_bits_scores_5_T_1) @[TreePE.scala 82:103]
      node _io_sample_out_bits_scores_5_T_3 = and(_io_sample_out_bits_scores_5_T_2, is_valid) @[TreePE.scala 82:123]
      node _io_sample_out_bits_scores_5_T_4 = eq(UInt<3>("h5"), offset) @[TreePE.scala 82:141]
      node _io_sample_out_bits_scores_5_T_5 = and(_io_sample_out_bits_scores_5_T_3, _io_sample_out_bits_scores_5_T_4) @[TreePE.scala 82:134]
      node _io_sample_out_bits_scores_5_T_6 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 82:190]
      node _io_sample_out_bits_scores_5_T_7 = mux(_io_sample_out_bits_scores_5_T_5, _io_sample_out_bits_scores_5_T_6, UInt<16>("h0")) @[TreePE.scala 82:64]
      node _io_sample_out_bits_scores_5_T_8 = asFixedPoint(_io_sample_out_bits_scores_5_T_7, 8) @[TreePE.scala 82:217]
      node _io_sample_out_bits_scores_5_T_9 = add(scores_bits[5], _io_sample_out_bits_scores_5_T_8) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_5_T_10 = tail(_io_sample_out_bits_scores_5_T_9, 1) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_5_T_11 = asFixedPoint(_io_sample_out_bits_scores_5_T_10, 8) @[TreePE.scala 82:58]
      io.sample_out.bits.scores[5] <= _io_sample_out_bits_scores_5_T_11 @[TreePE.scala 82:40]
      reg io_sample_out_bits_dest_REG : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_dest_REG) @[TreePE.scala 84:43]
      io_sample_out_bits_dest_REG <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 84:43]
      node _io_sample_out_bits_dest_T = eq(io_sample_out_bits_dest_REG, UInt<1>("h1")) @[TreePE.scala 84:69]
      io.sample_out.bits.dest <= _io_sample_out_bits_dest_T @[TreePE.scala 84:33]
      reg io_sample_out_bits_last_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_last_REG) @[TreePE.scala 85:43]
      io_sample_out_bits_last_REG <= queue.io.deq.bits.last @[TreePE.scala 85:43]
      io.sample_out.bits.last <= io_sample_out_bits_last_REG @[TreePE.scala 85:33]
    else :
      io.sample_out.bits.clock_cycles is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.last is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.dest is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[0] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[1] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[2] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[3] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[4] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[0] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[1] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[2] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[3] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[4] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[5] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.tree_to_exec is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.search_for_root is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.shift is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.offset is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[0] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[1] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[2] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[3] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[4] is invalid @[TreePE.scala 88:26]
      io.sample_out.valid <= UInt<1>("h0") @[TreePE.scala 89:27]
    queue.io.deq.ready <= io.sample_out.ready @[TreePE.scala 92:17]

  module TreePEwithBRAM_6 :
    input clock : Clock
    input reset : Reset
    output pe_io : { flip sample_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, flip mem : { flip enable_1 : UInt<1>, flip write_1 : UInt<1>, flip addr_1 : UInt<13>, flip dataIn_1 : UInt<64>, dataOut_1 : UInt<64>, flip enable_2 : UInt<1>, flip write_2 : UInt<1>, flip addr_2 : UInt<13>, flip dataIn_2 : UInt<64>, dataOut_2 : UInt<64>}, sample_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}}

    inst pe of TreePE_6 @[TreePE.scala 104:18]
    pe.clock <= clock
    pe.reset <= reset
    pe_io.sample_out.bits <= pe.io.sample_out.bits @[TreePE.scala 106:9]
    pe_io.sample_out.valid <= pe.io.sample_out.valid @[TreePE.scala 106:9]
    pe.io.sample_out.ready <= pe_io.sample_out.ready @[TreePE.scala 106:9]
    pe.io.mem <= pe_io.mem @[TreePE.scala 106:9]
    pe.io.sample_in <= pe_io.sample_in @[TreePE.scala 106:9]

  module Queue_22 :
    input clock : Clock
    input reset : Reset
    output io : { flip enq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, deq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, count : UInt<2>}

    cmem ram : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>} [3] @[Decoupled.scala 275:95]
    reg enq_ptr_value : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[Counter.scala 61:40]
    reg deq_ptr_value : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[Counter.scala 61:40]
    reg maybe_full : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[Decoupled.scala 278:27]
    node ptr_match = eq(enq_ptr_value, deq_ptr_value) @[Decoupled.scala 279:33]
    node _empty_T = eq(maybe_full, UInt<1>("h0")) @[Decoupled.scala 280:28]
    node empty = and(ptr_match, _empty_T) @[Decoupled.scala 280:25]
    node full = and(ptr_match, maybe_full) @[Decoupled.scala 281:24]
    node _do_enq_T = and(io.enq.ready, io.enq.valid) @[Decoupled.scala 52:35]
    wire do_enq : UInt<1>
    do_enq <= _do_enq_T
    node _do_deq_T = and(io.deq.ready, io.deq.valid) @[Decoupled.scala 52:35]
    wire do_deq : UInt<1>
    do_deq <= _do_deq_T
    when do_enq : @[Decoupled.scala 288:16]
      infer mport MPORT = ram[enq_ptr_value], clock @[Decoupled.scala 289:8]
      MPORT <= io.enq.bits @[Decoupled.scala 289:24]
      node wrap = eq(enq_ptr_value, UInt<2>("h2")) @[Counter.scala 73:24]
      node _value_T = add(enq_ptr_value, UInt<1>("h1")) @[Counter.scala 77:24]
      node _value_T_1 = tail(_value_T, 1) @[Counter.scala 77:24]
      enq_ptr_value <= _value_T_1 @[Counter.scala 77:15]
      when wrap : @[Counter.scala 87:20]
        enq_ptr_value <= UInt<1>("h0") @[Counter.scala 87:28]
    when do_deq : @[Decoupled.scala 292:16]
      node wrap_1 = eq(deq_ptr_value, UInt<2>("h2")) @[Counter.scala 73:24]
      node _value_T_2 = add(deq_ptr_value, UInt<1>("h1")) @[Counter.scala 77:24]
      node _value_T_3 = tail(_value_T_2, 1) @[Counter.scala 77:24]
      deq_ptr_value <= _value_T_3 @[Counter.scala 77:15]
      when wrap_1 : @[Counter.scala 87:20]
        deq_ptr_value <= UInt<1>("h0") @[Counter.scala 87:28]
    node _T = neq(do_enq, do_deq) @[Decoupled.scala 295:15]
    when _T : @[Decoupled.scala 295:27]
      maybe_full <= do_enq @[Decoupled.scala 296:16]
    when UInt<1>("h0") : @[Decoupled.scala 298:15]
      enq_ptr_value <= UInt<1>("h0") @[Counter.scala 98:11]
      deq_ptr_value <= UInt<1>("h0") @[Counter.scala 98:11]
      maybe_full <= UInt<1>("h0") @[Decoupled.scala 301:16]
    node _io_deq_valid_T = eq(empty, UInt<1>("h0")) @[Decoupled.scala 304:19]
    io.deq.valid <= _io_deq_valid_T @[Decoupled.scala 304:16]
    node _io_enq_ready_T = eq(full, UInt<1>("h0")) @[Decoupled.scala 305:19]
    io.enq.ready <= _io_enq_ready_T @[Decoupled.scala 305:16]
    infer mport io_deq_bits_MPORT = ram[deq_ptr_value], clock @[Decoupled.scala 312:23]
    io.deq.bits <= io_deq_bits_MPORT @[Decoupled.scala 312:17]
    node _ptr_diff_T = sub(enq_ptr_value, deq_ptr_value) @[Decoupled.scala 328:32]
    node ptr_diff = tail(_ptr_diff_T, 1) @[Decoupled.scala 328:32]
    node _io_count_T = mux(maybe_full, UInt<2>("h3"), UInt<1>("h0")) @[Decoupled.scala 335:10]
    node _io_count_T_1 = gt(deq_ptr_value, enq_ptr_value) @[Decoupled.scala 336:25]
    node _io_count_T_2 = add(UInt<2>("h3"), ptr_diff) @[Decoupled.scala 336:57]
    node _io_count_T_3 = tail(_io_count_T_2, 1) @[Decoupled.scala 336:57]
    node _io_count_T_4 = mux(_io_count_T_1, _io_count_T_3, ptr_diff) @[Decoupled.scala 336:10]
    node _io_count_T_5 = mux(ptr_match, _io_count_T, _io_count_T_4) @[Decoupled.scala 333:20]
    io.count <= _io_count_T_5 @[Decoupled.scala 333:14]

  module TreePE_7 :
    input clock : Clock
    input reset : Reset
    output io : { flip sample_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, flip mem : { flip enable_1 : UInt<1>, flip write_1 : UInt<1>, flip addr_1 : UInt<13>, flip dataIn_1 : UInt<64>, dataOut_1 : UInt<64>, flip enable_2 : UInt<1>, flip write_2 : UInt<1>, flip addr_2 : UInt<13>, flip dataIn_2 : UInt<64>, dataOut_2 : UInt<64>}, sample_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}}

    inst queue of Queue_22 @[Decoupled.scala 377:21]
    queue.clock <= clock
    queue.reset <= reset
    queue.io.enq.valid <= io.sample_in.valid @[Decoupled.scala 379:22]
    queue.io.enq.bits.clock_cycles <= io.sample_in.bits.clock_cycles @[Decoupled.scala 380:21]
    queue.io.enq.bits.last <= io.sample_in.bits.last @[Decoupled.scala 380:21]
    queue.io.enq.bits.dest <= io.sample_in.bits.dest @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[0] <= io.sample_in.bits.weights[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[1] <= io.sample_in.bits.weights[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[2] <= io.sample_in.bits.weights[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[3] <= io.sample_in.bits.weights[3] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[4] <= io.sample_in.bits.weights[4] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[0] <= io.sample_in.bits.scores[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[1] <= io.sample_in.bits.scores[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[2] <= io.sample_in.bits.scores[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[3] <= io.sample_in.bits.scores[3] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[4] <= io.sample_in.bits.scores[4] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[5] <= io.sample_in.bits.scores[5] @[Decoupled.scala 380:21]
    queue.io.enq.bits.tree_to_exec <= io.sample_in.bits.tree_to_exec @[Decoupled.scala 380:21]
    queue.io.enq.bits.search_for_root <= io.sample_in.bits.search_for_root @[Decoupled.scala 380:21]
    queue.io.enq.bits.shift <= io.sample_in.bits.shift @[Decoupled.scala 380:21]
    queue.io.enq.bits.offset <= io.sample_in.bits.offset @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[0] <= io.sample_in.bits.features[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[1] <= io.sample_in.bits.features[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[2] <= io.sample_in.bits.features[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[3] <= io.sample_in.bits.features[3] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[4] <= io.sample_in.bits.features[4] @[Decoupled.scala 380:21]
    io.sample_in.ready <= queue.io.enq.ready @[Decoupled.scala 381:17]
    io.mem.enable_1 <= UInt<1>("h1") @[TreePE.scala 23:21]
    io.mem.addr_1 <= queue.io.deq.bits.offset @[TreePE.scala 24:19]
    io.mem.write_1 <= UInt<1>("h0") @[TreePE.scala 25:20]
    io.mem.dataIn_1 <= UInt<1>("h0") @[TreePE.scala 26:21]
    io.mem.enable_2 is invalid @[TreePE.scala 28:21]
    io.mem.addr_2 is invalid @[TreePE.scala 29:19]
    io.mem.write_2 is invalid @[TreePE.scala 30:20]
    io.mem.dataIn_2 is invalid @[TreePE.scala 31:21]
    reg REG : UInt<1>, clock with :
      reset => (UInt<1>("h0"), REG) @[TreePE.scala 35:17]
    REG <= queue.io.deq.valid @[TreePE.scala 35:17]
    when REG : @[TreePE.scala 35:31]
      node attr_id = bits(io.mem.dataOut_1, 34, 32) @[TreePE.scala 37:37]
      node threshold = bits(io.mem.dataOut_1, 15, 0) @[TreePE.scala 38:39]
      node nodeRA = bits(io.mem.dataOut_1, 31, 16) @[TreePE.scala 39:36]
      node leftChildInfo = bits(io.mem.dataOut_1, 44, 35) @[TreePE.scala 40:43]
      node rightChildInfo = bits(io.mem.dataOut_1, 54, 45) @[TreePE.scala 41:44]
      node leftChildType = bits(io.mem.dataOut_1, 55, 55) @[TreePE.scala 42:43]
      node rightChildType = bits(io.mem.dataOut_1, 56, 56) @[TreePE.scala 43:44]
      node is_valid = bits(io.mem.dataOut_1, 57, 57) @[TreePE.scala 44:38]
      node depth_indicator = bits(io.mem.dataOut_1, 60, 58) @[TreePE.scala 45:45]
      reg REG_1 : Fixed<32><<16>>[5], clock with :
        reset => (UInt<1>("h0"), REG_1) @[TreePE.scala 47:45]
      REG_1 <= queue.io.deq.bits.features @[TreePE.scala 47:45]
      io.sample_out.bits.features <= REG_1 @[TreePE.scala 47:35]
      reg REG_2 : Fixed<16><<8>>[5], clock with :
        reset => (UInt<1>("h0"), REG_2) @[TreePE.scala 48:44]
      REG_2 <= queue.io.deq.bits.weights @[TreePE.scala 48:44]
      io.sample_out.bits.weights <= REG_2 @[TreePE.scala 48:34]
      reg io_sample_out_bits_tree_to_exec_REG : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_tree_to_exec_REG) @[TreePE.scala 49:49]
      io_sample_out_bits_tree_to_exec_REG <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 49:49]
      io.sample_out.bits.tree_to_exec <= io_sample_out_bits_tree_to_exec_REG @[TreePE.scala 49:39]
      reg REG_3 : Fixed<16><<8>>[6], clock with :
        reset => (UInt<1>("h0"), REG_3) @[TreePE.scala 50:43]
      REG_3 <= queue.io.deq.bits.scores @[TreePE.scala 50:43]
      io.sample_out.bits.scores <= REG_3 @[TreePE.scala 50:33]
      io.sample_out.valid <= UInt<1>("h1") @[TreePE.scala 51:27]
      reg io_sample_out_bits_clock_cycles_REG : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_clock_cycles_REG) @[TreePE.scala 52:49]
      io_sample_out_bits_clock_cycles_REG <= queue.io.deq.bits.clock_cycles @[TreePE.scala 52:49]
      io.sample_out.bits.clock_cycles <= io_sample_out_bits_clock_cycles_REG @[TreePE.scala 52:39]
      wire offset : UInt<10> @[TreePE.scala 71:26]
      wire shift : UInt<1> @[TreePE.scala 72:25]
      reg features_bits : Fixed<32><<16>>[5], clock with :
        reset => (UInt<1>("h0"), features_bits) @[TreePE.scala 73:36]
      features_bits <= queue.io.deq.bits.features @[TreePE.scala 73:36]
      reg scores_bits : Fixed<16><<8>>[6], clock with :
        reset => (UInt<1>("h0"), scores_bits) @[TreePE.scala 74:34]
      scores_bits <= queue.io.deq.bits.scores @[TreePE.scala 74:34]
      reg weights_bits : Fixed<16><<8>>[5], clock with :
        reset => (UInt<1>("h0"), weights_bits) @[TreePE.scala 75:35]
      weights_bits <= queue.io.deq.bits.weights @[TreePE.scala 75:35]
      node _shift_T = asFixedPoint(threshold, 8) @[TreePE.scala 76:69]
      node _shift_T_1 = lt(features_bits[attr_id], _shift_T) @[TreePE.scala 76:45]
      node _shift_T_2 = mux(_shift_T_1, leftChildType, rightChildType) @[TreePE.scala 76:21]
      shift <= _shift_T_2 @[TreePE.scala 76:15]
      node _offset_T = asFixedPoint(threshold, 8) @[TreePE.scala 77:70]
      node _offset_T_1 = lt(features_bits[attr_id], _offset_T) @[TreePE.scala 77:46]
      node _offset_T_2 = mux(_offset_T_1, leftChildInfo, rightChildInfo) @[TreePE.scala 77:22]
      offset <= _offset_T_2 @[TreePE.scala 77:16]
      node _io_sample_out_bits_offset_T = eq(shift, UInt<1>("h0")) @[TreePE.scala 78:48]
      reg io_sample_out_bits_offset_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_offset_REG) @[TreePE.scala 78:70]
      io_sample_out_bits_offset_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 78:70]
      node _io_sample_out_bits_offset_T_1 = or(_io_sample_out_bits_offset_T, io_sample_out_bits_offset_REG) @[TreePE.scala 78:60]
      reg io_sample_out_bits_offset_REG_1 : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_offset_REG_1) @[TreePE.scala 78:106]
      io_sample_out_bits_offset_REG_1 <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 78:106]
      node _io_sample_out_bits_offset_T_2 = mux(_io_sample_out_bits_offset_T_1, io_sample_out_bits_offset_REG_1, offset) @[TreePE.scala 78:41]
      io.sample_out.bits.offset <= _io_sample_out_bits_offset_T_2 @[TreePE.scala 78:35]
      io.sample_out.bits.shift <= UInt<1>("h0") @[TreePE.scala 79:34]
      node _io_sample_out_bits_search_for_root_T = eq(shift, UInt<1>("h0")) @[TreePE.scala 80:47]
      reg io_sample_out_bits_search_for_root_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_search_for_root_REG) @[TreePE.scala 80:64]
      io_sample_out_bits_search_for_root_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 80:64]
      node _io_sample_out_bits_search_for_root_T_1 = or(_io_sample_out_bits_search_for_root_T, io_sample_out_bits_search_for_root_REG) @[TreePE.scala 80:54]
      io.sample_out.bits.search_for_root <= _io_sample_out_bits_search_for_root_T_1 @[TreePE.scala 80:44]
      reg io_sample_out_bits_scores_0_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_scores_0_REG) @[TreePE.scala 82:74]
      io_sample_out_bits_scores_0_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 82:74]
      node _io_sample_out_bits_scores_0_T = eq(io_sample_out_bits_scores_0_REG, UInt<1>("h0")) @[TreePE.scala 82:66]
      node _io_sample_out_bits_scores_0_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 82:111]
      node _io_sample_out_bits_scores_0_T_2 = and(_io_sample_out_bits_scores_0_T, _io_sample_out_bits_scores_0_T_1) @[TreePE.scala 82:103]
      node _io_sample_out_bits_scores_0_T_3 = and(_io_sample_out_bits_scores_0_T_2, is_valid) @[TreePE.scala 82:123]
      node _io_sample_out_bits_scores_0_T_4 = eq(UInt<1>("h0"), offset) @[TreePE.scala 82:141]
      node _io_sample_out_bits_scores_0_T_5 = and(_io_sample_out_bits_scores_0_T_3, _io_sample_out_bits_scores_0_T_4) @[TreePE.scala 82:134]
      node _io_sample_out_bits_scores_0_T_6 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 82:190]
      node _io_sample_out_bits_scores_0_T_7 = mux(_io_sample_out_bits_scores_0_T_5, _io_sample_out_bits_scores_0_T_6, UInt<16>("h0")) @[TreePE.scala 82:64]
      node _io_sample_out_bits_scores_0_T_8 = asFixedPoint(_io_sample_out_bits_scores_0_T_7, 8) @[TreePE.scala 82:217]
      node _io_sample_out_bits_scores_0_T_9 = add(scores_bits[0], _io_sample_out_bits_scores_0_T_8) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_0_T_10 = tail(_io_sample_out_bits_scores_0_T_9, 1) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_0_T_11 = asFixedPoint(_io_sample_out_bits_scores_0_T_10, 8) @[TreePE.scala 82:58]
      io.sample_out.bits.scores[0] <= _io_sample_out_bits_scores_0_T_11 @[TreePE.scala 82:40]
      reg io_sample_out_bits_scores_1_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_scores_1_REG) @[TreePE.scala 82:74]
      io_sample_out_bits_scores_1_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 82:74]
      node _io_sample_out_bits_scores_1_T = eq(io_sample_out_bits_scores_1_REG, UInt<1>("h0")) @[TreePE.scala 82:66]
      node _io_sample_out_bits_scores_1_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 82:111]
      node _io_sample_out_bits_scores_1_T_2 = and(_io_sample_out_bits_scores_1_T, _io_sample_out_bits_scores_1_T_1) @[TreePE.scala 82:103]
      node _io_sample_out_bits_scores_1_T_3 = and(_io_sample_out_bits_scores_1_T_2, is_valid) @[TreePE.scala 82:123]
      node _io_sample_out_bits_scores_1_T_4 = eq(UInt<1>("h1"), offset) @[TreePE.scala 82:141]
      node _io_sample_out_bits_scores_1_T_5 = and(_io_sample_out_bits_scores_1_T_3, _io_sample_out_bits_scores_1_T_4) @[TreePE.scala 82:134]
      node _io_sample_out_bits_scores_1_T_6 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 82:190]
      node _io_sample_out_bits_scores_1_T_7 = mux(_io_sample_out_bits_scores_1_T_5, _io_sample_out_bits_scores_1_T_6, UInt<16>("h0")) @[TreePE.scala 82:64]
      node _io_sample_out_bits_scores_1_T_8 = asFixedPoint(_io_sample_out_bits_scores_1_T_7, 8) @[TreePE.scala 82:217]
      node _io_sample_out_bits_scores_1_T_9 = add(scores_bits[1], _io_sample_out_bits_scores_1_T_8) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_1_T_10 = tail(_io_sample_out_bits_scores_1_T_9, 1) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_1_T_11 = asFixedPoint(_io_sample_out_bits_scores_1_T_10, 8) @[TreePE.scala 82:58]
      io.sample_out.bits.scores[1] <= _io_sample_out_bits_scores_1_T_11 @[TreePE.scala 82:40]
      reg io_sample_out_bits_scores_2_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_scores_2_REG) @[TreePE.scala 82:74]
      io_sample_out_bits_scores_2_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 82:74]
      node _io_sample_out_bits_scores_2_T = eq(io_sample_out_bits_scores_2_REG, UInt<1>("h0")) @[TreePE.scala 82:66]
      node _io_sample_out_bits_scores_2_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 82:111]
      node _io_sample_out_bits_scores_2_T_2 = and(_io_sample_out_bits_scores_2_T, _io_sample_out_bits_scores_2_T_1) @[TreePE.scala 82:103]
      node _io_sample_out_bits_scores_2_T_3 = and(_io_sample_out_bits_scores_2_T_2, is_valid) @[TreePE.scala 82:123]
      node _io_sample_out_bits_scores_2_T_4 = eq(UInt<2>("h2"), offset) @[TreePE.scala 82:141]
      node _io_sample_out_bits_scores_2_T_5 = and(_io_sample_out_bits_scores_2_T_3, _io_sample_out_bits_scores_2_T_4) @[TreePE.scala 82:134]
      node _io_sample_out_bits_scores_2_T_6 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 82:190]
      node _io_sample_out_bits_scores_2_T_7 = mux(_io_sample_out_bits_scores_2_T_5, _io_sample_out_bits_scores_2_T_6, UInt<16>("h0")) @[TreePE.scala 82:64]
      node _io_sample_out_bits_scores_2_T_8 = asFixedPoint(_io_sample_out_bits_scores_2_T_7, 8) @[TreePE.scala 82:217]
      node _io_sample_out_bits_scores_2_T_9 = add(scores_bits[2], _io_sample_out_bits_scores_2_T_8) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_2_T_10 = tail(_io_sample_out_bits_scores_2_T_9, 1) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_2_T_11 = asFixedPoint(_io_sample_out_bits_scores_2_T_10, 8) @[TreePE.scala 82:58]
      io.sample_out.bits.scores[2] <= _io_sample_out_bits_scores_2_T_11 @[TreePE.scala 82:40]
      reg io_sample_out_bits_scores_3_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_scores_3_REG) @[TreePE.scala 82:74]
      io_sample_out_bits_scores_3_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 82:74]
      node _io_sample_out_bits_scores_3_T = eq(io_sample_out_bits_scores_3_REG, UInt<1>("h0")) @[TreePE.scala 82:66]
      node _io_sample_out_bits_scores_3_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 82:111]
      node _io_sample_out_bits_scores_3_T_2 = and(_io_sample_out_bits_scores_3_T, _io_sample_out_bits_scores_3_T_1) @[TreePE.scala 82:103]
      node _io_sample_out_bits_scores_3_T_3 = and(_io_sample_out_bits_scores_3_T_2, is_valid) @[TreePE.scala 82:123]
      node _io_sample_out_bits_scores_3_T_4 = eq(UInt<2>("h3"), offset) @[TreePE.scala 82:141]
      node _io_sample_out_bits_scores_3_T_5 = and(_io_sample_out_bits_scores_3_T_3, _io_sample_out_bits_scores_3_T_4) @[TreePE.scala 82:134]
      node _io_sample_out_bits_scores_3_T_6 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 82:190]
      node _io_sample_out_bits_scores_3_T_7 = mux(_io_sample_out_bits_scores_3_T_5, _io_sample_out_bits_scores_3_T_6, UInt<16>("h0")) @[TreePE.scala 82:64]
      node _io_sample_out_bits_scores_3_T_8 = asFixedPoint(_io_sample_out_bits_scores_3_T_7, 8) @[TreePE.scala 82:217]
      node _io_sample_out_bits_scores_3_T_9 = add(scores_bits[3], _io_sample_out_bits_scores_3_T_8) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_3_T_10 = tail(_io_sample_out_bits_scores_3_T_9, 1) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_3_T_11 = asFixedPoint(_io_sample_out_bits_scores_3_T_10, 8) @[TreePE.scala 82:58]
      io.sample_out.bits.scores[3] <= _io_sample_out_bits_scores_3_T_11 @[TreePE.scala 82:40]
      reg io_sample_out_bits_scores_4_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_scores_4_REG) @[TreePE.scala 82:74]
      io_sample_out_bits_scores_4_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 82:74]
      node _io_sample_out_bits_scores_4_T = eq(io_sample_out_bits_scores_4_REG, UInt<1>("h0")) @[TreePE.scala 82:66]
      node _io_sample_out_bits_scores_4_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 82:111]
      node _io_sample_out_bits_scores_4_T_2 = and(_io_sample_out_bits_scores_4_T, _io_sample_out_bits_scores_4_T_1) @[TreePE.scala 82:103]
      node _io_sample_out_bits_scores_4_T_3 = and(_io_sample_out_bits_scores_4_T_2, is_valid) @[TreePE.scala 82:123]
      node _io_sample_out_bits_scores_4_T_4 = eq(UInt<3>("h4"), offset) @[TreePE.scala 82:141]
      node _io_sample_out_bits_scores_4_T_5 = and(_io_sample_out_bits_scores_4_T_3, _io_sample_out_bits_scores_4_T_4) @[TreePE.scala 82:134]
      node _io_sample_out_bits_scores_4_T_6 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 82:190]
      node _io_sample_out_bits_scores_4_T_7 = mux(_io_sample_out_bits_scores_4_T_5, _io_sample_out_bits_scores_4_T_6, UInt<16>("h0")) @[TreePE.scala 82:64]
      node _io_sample_out_bits_scores_4_T_8 = asFixedPoint(_io_sample_out_bits_scores_4_T_7, 8) @[TreePE.scala 82:217]
      node _io_sample_out_bits_scores_4_T_9 = add(scores_bits[4], _io_sample_out_bits_scores_4_T_8) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_4_T_10 = tail(_io_sample_out_bits_scores_4_T_9, 1) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_4_T_11 = asFixedPoint(_io_sample_out_bits_scores_4_T_10, 8) @[TreePE.scala 82:58]
      io.sample_out.bits.scores[4] <= _io_sample_out_bits_scores_4_T_11 @[TreePE.scala 82:40]
      reg io_sample_out_bits_scores_5_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_scores_5_REG) @[TreePE.scala 82:74]
      io_sample_out_bits_scores_5_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 82:74]
      node _io_sample_out_bits_scores_5_T = eq(io_sample_out_bits_scores_5_REG, UInt<1>("h0")) @[TreePE.scala 82:66]
      node _io_sample_out_bits_scores_5_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 82:111]
      node _io_sample_out_bits_scores_5_T_2 = and(_io_sample_out_bits_scores_5_T, _io_sample_out_bits_scores_5_T_1) @[TreePE.scala 82:103]
      node _io_sample_out_bits_scores_5_T_3 = and(_io_sample_out_bits_scores_5_T_2, is_valid) @[TreePE.scala 82:123]
      node _io_sample_out_bits_scores_5_T_4 = eq(UInt<3>("h5"), offset) @[TreePE.scala 82:141]
      node _io_sample_out_bits_scores_5_T_5 = and(_io_sample_out_bits_scores_5_T_3, _io_sample_out_bits_scores_5_T_4) @[TreePE.scala 82:134]
      node _io_sample_out_bits_scores_5_T_6 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 82:190]
      node _io_sample_out_bits_scores_5_T_7 = mux(_io_sample_out_bits_scores_5_T_5, _io_sample_out_bits_scores_5_T_6, UInt<16>("h0")) @[TreePE.scala 82:64]
      node _io_sample_out_bits_scores_5_T_8 = asFixedPoint(_io_sample_out_bits_scores_5_T_7, 8) @[TreePE.scala 82:217]
      node _io_sample_out_bits_scores_5_T_9 = add(scores_bits[5], _io_sample_out_bits_scores_5_T_8) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_5_T_10 = tail(_io_sample_out_bits_scores_5_T_9, 1) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_5_T_11 = asFixedPoint(_io_sample_out_bits_scores_5_T_10, 8) @[TreePE.scala 82:58]
      io.sample_out.bits.scores[5] <= _io_sample_out_bits_scores_5_T_11 @[TreePE.scala 82:40]
      reg io_sample_out_bits_dest_REG : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_dest_REG) @[TreePE.scala 84:43]
      io_sample_out_bits_dest_REG <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 84:43]
      node _io_sample_out_bits_dest_T = eq(io_sample_out_bits_dest_REG, UInt<1>("h1")) @[TreePE.scala 84:69]
      io.sample_out.bits.dest <= _io_sample_out_bits_dest_T @[TreePE.scala 84:33]
      reg io_sample_out_bits_last_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_last_REG) @[TreePE.scala 85:43]
      io_sample_out_bits_last_REG <= queue.io.deq.bits.last @[TreePE.scala 85:43]
      io.sample_out.bits.last <= io_sample_out_bits_last_REG @[TreePE.scala 85:33]
    else :
      io.sample_out.bits.clock_cycles is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.last is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.dest is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[0] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[1] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[2] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[3] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[4] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[0] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[1] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[2] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[3] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[4] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[5] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.tree_to_exec is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.search_for_root is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.shift is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.offset is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[0] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[1] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[2] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[3] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[4] is invalid @[TreePE.scala 88:26]
      io.sample_out.valid <= UInt<1>("h0") @[TreePE.scala 89:27]
    queue.io.deq.ready <= io.sample_out.ready @[TreePE.scala 92:17]

  module TreePEwithBRAM_7 :
    input clock : Clock
    input reset : Reset
    output pe_io : { flip sample_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, flip mem : { flip enable_1 : UInt<1>, flip write_1 : UInt<1>, flip addr_1 : UInt<13>, flip dataIn_1 : UInt<64>, dataOut_1 : UInt<64>, flip enable_2 : UInt<1>, flip write_2 : UInt<1>, flip addr_2 : UInt<13>, flip dataIn_2 : UInt<64>, dataOut_2 : UInt<64>}, sample_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}}

    inst pe of TreePE_7 @[TreePE.scala 104:18]
    pe.clock <= clock
    pe.reset <= reset
    pe_io.sample_out.bits <= pe.io.sample_out.bits @[TreePE.scala 106:9]
    pe_io.sample_out.valid <= pe.io.sample_out.valid @[TreePE.scala 106:9]
    pe.io.sample_out.ready <= pe_io.sample_out.ready @[TreePE.scala 106:9]
    pe.io.mem <= pe_io.mem @[TreePE.scala 106:9]
    pe.io.sample_in <= pe_io.sample_in @[TreePE.scala 106:9]

  module Queue_23 :
    input clock : Clock
    input reset : Reset
    output io : { flip enq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, deq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, count : UInt<2>}

    cmem ram : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>} [3] @[Decoupled.scala 275:95]
    reg enq_ptr_value : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[Counter.scala 61:40]
    reg deq_ptr_value : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[Counter.scala 61:40]
    reg maybe_full : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[Decoupled.scala 278:27]
    node ptr_match = eq(enq_ptr_value, deq_ptr_value) @[Decoupled.scala 279:33]
    node _empty_T = eq(maybe_full, UInt<1>("h0")) @[Decoupled.scala 280:28]
    node empty = and(ptr_match, _empty_T) @[Decoupled.scala 280:25]
    node full = and(ptr_match, maybe_full) @[Decoupled.scala 281:24]
    node _do_enq_T = and(io.enq.ready, io.enq.valid) @[Decoupled.scala 52:35]
    wire do_enq : UInt<1>
    do_enq <= _do_enq_T
    node _do_deq_T = and(io.deq.ready, io.deq.valid) @[Decoupled.scala 52:35]
    wire do_deq : UInt<1>
    do_deq <= _do_deq_T
    when do_enq : @[Decoupled.scala 288:16]
      infer mport MPORT = ram[enq_ptr_value], clock @[Decoupled.scala 289:8]
      MPORT <= io.enq.bits @[Decoupled.scala 289:24]
      node wrap = eq(enq_ptr_value, UInt<2>("h2")) @[Counter.scala 73:24]
      node _value_T = add(enq_ptr_value, UInt<1>("h1")) @[Counter.scala 77:24]
      node _value_T_1 = tail(_value_T, 1) @[Counter.scala 77:24]
      enq_ptr_value <= _value_T_1 @[Counter.scala 77:15]
      when wrap : @[Counter.scala 87:20]
        enq_ptr_value <= UInt<1>("h0") @[Counter.scala 87:28]
    when do_deq : @[Decoupled.scala 292:16]
      node wrap_1 = eq(deq_ptr_value, UInt<2>("h2")) @[Counter.scala 73:24]
      node _value_T_2 = add(deq_ptr_value, UInt<1>("h1")) @[Counter.scala 77:24]
      node _value_T_3 = tail(_value_T_2, 1) @[Counter.scala 77:24]
      deq_ptr_value <= _value_T_3 @[Counter.scala 77:15]
      when wrap_1 : @[Counter.scala 87:20]
        deq_ptr_value <= UInt<1>("h0") @[Counter.scala 87:28]
    node _T = neq(do_enq, do_deq) @[Decoupled.scala 295:15]
    when _T : @[Decoupled.scala 295:27]
      maybe_full <= do_enq @[Decoupled.scala 296:16]
    when UInt<1>("h0") : @[Decoupled.scala 298:15]
      enq_ptr_value <= UInt<1>("h0") @[Counter.scala 98:11]
      deq_ptr_value <= UInt<1>("h0") @[Counter.scala 98:11]
      maybe_full <= UInt<1>("h0") @[Decoupled.scala 301:16]
    node _io_deq_valid_T = eq(empty, UInt<1>("h0")) @[Decoupled.scala 304:19]
    io.deq.valid <= _io_deq_valid_T @[Decoupled.scala 304:16]
    node _io_enq_ready_T = eq(full, UInt<1>("h0")) @[Decoupled.scala 305:19]
    io.enq.ready <= _io_enq_ready_T @[Decoupled.scala 305:16]
    infer mport io_deq_bits_MPORT = ram[deq_ptr_value], clock @[Decoupled.scala 312:23]
    io.deq.bits <= io_deq_bits_MPORT @[Decoupled.scala 312:17]
    node _ptr_diff_T = sub(enq_ptr_value, deq_ptr_value) @[Decoupled.scala 328:32]
    node ptr_diff = tail(_ptr_diff_T, 1) @[Decoupled.scala 328:32]
    node _io_count_T = mux(maybe_full, UInt<2>("h3"), UInt<1>("h0")) @[Decoupled.scala 335:10]
    node _io_count_T_1 = gt(deq_ptr_value, enq_ptr_value) @[Decoupled.scala 336:25]
    node _io_count_T_2 = add(UInt<2>("h3"), ptr_diff) @[Decoupled.scala 336:57]
    node _io_count_T_3 = tail(_io_count_T_2, 1) @[Decoupled.scala 336:57]
    node _io_count_T_4 = mux(_io_count_T_1, _io_count_T_3, ptr_diff) @[Decoupled.scala 336:10]
    node _io_count_T_5 = mux(ptr_match, _io_count_T, _io_count_T_4) @[Decoupled.scala 333:20]
    io.count <= _io_count_T_5 @[Decoupled.scala 333:14]

  module TreePE_8 :
    input clock : Clock
    input reset : Reset
    output io : { flip sample_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, flip mem : { flip enable_1 : UInt<1>, flip write_1 : UInt<1>, flip addr_1 : UInt<13>, flip dataIn_1 : UInt<64>, dataOut_1 : UInt<64>, flip enable_2 : UInt<1>, flip write_2 : UInt<1>, flip addr_2 : UInt<13>, flip dataIn_2 : UInt<64>, dataOut_2 : UInt<64>}, sample_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}}

    inst queue of Queue_23 @[Decoupled.scala 377:21]
    queue.clock <= clock
    queue.reset <= reset
    queue.io.enq.valid <= io.sample_in.valid @[Decoupled.scala 379:22]
    queue.io.enq.bits.clock_cycles <= io.sample_in.bits.clock_cycles @[Decoupled.scala 380:21]
    queue.io.enq.bits.last <= io.sample_in.bits.last @[Decoupled.scala 380:21]
    queue.io.enq.bits.dest <= io.sample_in.bits.dest @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[0] <= io.sample_in.bits.weights[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[1] <= io.sample_in.bits.weights[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[2] <= io.sample_in.bits.weights[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[3] <= io.sample_in.bits.weights[3] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[4] <= io.sample_in.bits.weights[4] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[0] <= io.sample_in.bits.scores[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[1] <= io.sample_in.bits.scores[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[2] <= io.sample_in.bits.scores[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[3] <= io.sample_in.bits.scores[3] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[4] <= io.sample_in.bits.scores[4] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[5] <= io.sample_in.bits.scores[5] @[Decoupled.scala 380:21]
    queue.io.enq.bits.tree_to_exec <= io.sample_in.bits.tree_to_exec @[Decoupled.scala 380:21]
    queue.io.enq.bits.search_for_root <= io.sample_in.bits.search_for_root @[Decoupled.scala 380:21]
    queue.io.enq.bits.shift <= io.sample_in.bits.shift @[Decoupled.scala 380:21]
    queue.io.enq.bits.offset <= io.sample_in.bits.offset @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[0] <= io.sample_in.bits.features[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[1] <= io.sample_in.bits.features[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[2] <= io.sample_in.bits.features[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[3] <= io.sample_in.bits.features[3] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[4] <= io.sample_in.bits.features[4] @[Decoupled.scala 380:21]
    io.sample_in.ready <= queue.io.enq.ready @[Decoupled.scala 381:17]
    io.mem.enable_1 <= UInt<1>("h1") @[TreePE.scala 23:21]
    io.mem.addr_1 <= queue.io.deq.bits.offset @[TreePE.scala 24:19]
    io.mem.write_1 <= UInt<1>("h0") @[TreePE.scala 25:20]
    io.mem.dataIn_1 <= UInt<1>("h0") @[TreePE.scala 26:21]
    io.mem.enable_2 is invalid @[TreePE.scala 28:21]
    io.mem.addr_2 is invalid @[TreePE.scala 29:19]
    io.mem.write_2 is invalid @[TreePE.scala 30:20]
    io.mem.dataIn_2 is invalid @[TreePE.scala 31:21]
    reg REG : UInt<1>, clock with :
      reset => (UInt<1>("h0"), REG) @[TreePE.scala 35:17]
    REG <= queue.io.deq.valid @[TreePE.scala 35:17]
    when REG : @[TreePE.scala 35:31]
      node attr_id = bits(io.mem.dataOut_1, 34, 32) @[TreePE.scala 37:37]
      node threshold = bits(io.mem.dataOut_1, 15, 0) @[TreePE.scala 38:39]
      node nodeRA = bits(io.mem.dataOut_1, 31, 16) @[TreePE.scala 39:36]
      node leftChildInfo = bits(io.mem.dataOut_1, 44, 35) @[TreePE.scala 40:43]
      node rightChildInfo = bits(io.mem.dataOut_1, 54, 45) @[TreePE.scala 41:44]
      node leftChildType = bits(io.mem.dataOut_1, 55, 55) @[TreePE.scala 42:43]
      node rightChildType = bits(io.mem.dataOut_1, 56, 56) @[TreePE.scala 43:44]
      node is_valid = bits(io.mem.dataOut_1, 57, 57) @[TreePE.scala 44:38]
      node depth_indicator = bits(io.mem.dataOut_1, 60, 58) @[TreePE.scala 45:45]
      reg REG_1 : Fixed<32><<16>>[5], clock with :
        reset => (UInt<1>("h0"), REG_1) @[TreePE.scala 47:45]
      REG_1 <= queue.io.deq.bits.features @[TreePE.scala 47:45]
      io.sample_out.bits.features <= REG_1 @[TreePE.scala 47:35]
      reg REG_2 : Fixed<16><<8>>[5], clock with :
        reset => (UInt<1>("h0"), REG_2) @[TreePE.scala 48:44]
      REG_2 <= queue.io.deq.bits.weights @[TreePE.scala 48:44]
      io.sample_out.bits.weights <= REG_2 @[TreePE.scala 48:34]
      reg io_sample_out_bits_tree_to_exec_REG : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_tree_to_exec_REG) @[TreePE.scala 49:49]
      io_sample_out_bits_tree_to_exec_REG <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 49:49]
      io.sample_out.bits.tree_to_exec <= io_sample_out_bits_tree_to_exec_REG @[TreePE.scala 49:39]
      reg REG_3 : Fixed<16><<8>>[6], clock with :
        reset => (UInt<1>("h0"), REG_3) @[TreePE.scala 50:43]
      REG_3 <= queue.io.deq.bits.scores @[TreePE.scala 50:43]
      io.sample_out.bits.scores <= REG_3 @[TreePE.scala 50:33]
      io.sample_out.valid <= UInt<1>("h1") @[TreePE.scala 51:27]
      reg io_sample_out_bits_clock_cycles_REG : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_clock_cycles_REG) @[TreePE.scala 52:49]
      io_sample_out_bits_clock_cycles_REG <= queue.io.deq.bits.clock_cycles @[TreePE.scala 52:49]
      io.sample_out.bits.clock_cycles <= io_sample_out_bits_clock_cycles_REG @[TreePE.scala 52:39]
      wire offset : UInt<10> @[TreePE.scala 71:26]
      wire shift : UInt<1> @[TreePE.scala 72:25]
      reg features_bits : Fixed<32><<16>>[5], clock with :
        reset => (UInt<1>("h0"), features_bits) @[TreePE.scala 73:36]
      features_bits <= queue.io.deq.bits.features @[TreePE.scala 73:36]
      reg scores_bits : Fixed<16><<8>>[6], clock with :
        reset => (UInt<1>("h0"), scores_bits) @[TreePE.scala 74:34]
      scores_bits <= queue.io.deq.bits.scores @[TreePE.scala 74:34]
      reg weights_bits : Fixed<16><<8>>[5], clock with :
        reset => (UInt<1>("h0"), weights_bits) @[TreePE.scala 75:35]
      weights_bits <= queue.io.deq.bits.weights @[TreePE.scala 75:35]
      node _shift_T = asFixedPoint(threshold, 8) @[TreePE.scala 76:69]
      node _shift_T_1 = lt(features_bits[attr_id], _shift_T) @[TreePE.scala 76:45]
      node _shift_T_2 = mux(_shift_T_1, leftChildType, rightChildType) @[TreePE.scala 76:21]
      shift <= _shift_T_2 @[TreePE.scala 76:15]
      node _offset_T = asFixedPoint(threshold, 8) @[TreePE.scala 77:70]
      node _offset_T_1 = lt(features_bits[attr_id], _offset_T) @[TreePE.scala 77:46]
      node _offset_T_2 = mux(_offset_T_1, leftChildInfo, rightChildInfo) @[TreePE.scala 77:22]
      offset <= _offset_T_2 @[TreePE.scala 77:16]
      node _io_sample_out_bits_offset_T = eq(shift, UInt<1>("h0")) @[TreePE.scala 78:48]
      reg io_sample_out_bits_offset_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_offset_REG) @[TreePE.scala 78:70]
      io_sample_out_bits_offset_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 78:70]
      node _io_sample_out_bits_offset_T_1 = or(_io_sample_out_bits_offset_T, io_sample_out_bits_offset_REG) @[TreePE.scala 78:60]
      reg io_sample_out_bits_offset_REG_1 : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_offset_REG_1) @[TreePE.scala 78:106]
      io_sample_out_bits_offset_REG_1 <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 78:106]
      node _io_sample_out_bits_offset_T_2 = mux(_io_sample_out_bits_offset_T_1, io_sample_out_bits_offset_REG_1, offset) @[TreePE.scala 78:41]
      io.sample_out.bits.offset <= _io_sample_out_bits_offset_T_2 @[TreePE.scala 78:35]
      io.sample_out.bits.shift <= UInt<1>("h0") @[TreePE.scala 79:34]
      node _io_sample_out_bits_search_for_root_T = eq(shift, UInt<1>("h0")) @[TreePE.scala 80:47]
      reg io_sample_out_bits_search_for_root_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_search_for_root_REG) @[TreePE.scala 80:64]
      io_sample_out_bits_search_for_root_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 80:64]
      node _io_sample_out_bits_search_for_root_T_1 = or(_io_sample_out_bits_search_for_root_T, io_sample_out_bits_search_for_root_REG) @[TreePE.scala 80:54]
      io.sample_out.bits.search_for_root <= _io_sample_out_bits_search_for_root_T_1 @[TreePE.scala 80:44]
      reg io_sample_out_bits_scores_0_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_scores_0_REG) @[TreePE.scala 82:74]
      io_sample_out_bits_scores_0_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 82:74]
      node _io_sample_out_bits_scores_0_T = eq(io_sample_out_bits_scores_0_REG, UInt<1>("h0")) @[TreePE.scala 82:66]
      node _io_sample_out_bits_scores_0_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 82:111]
      node _io_sample_out_bits_scores_0_T_2 = and(_io_sample_out_bits_scores_0_T, _io_sample_out_bits_scores_0_T_1) @[TreePE.scala 82:103]
      node _io_sample_out_bits_scores_0_T_3 = and(_io_sample_out_bits_scores_0_T_2, is_valid) @[TreePE.scala 82:123]
      node _io_sample_out_bits_scores_0_T_4 = eq(UInt<1>("h0"), offset) @[TreePE.scala 82:141]
      node _io_sample_out_bits_scores_0_T_5 = and(_io_sample_out_bits_scores_0_T_3, _io_sample_out_bits_scores_0_T_4) @[TreePE.scala 82:134]
      node _io_sample_out_bits_scores_0_T_6 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 82:190]
      node _io_sample_out_bits_scores_0_T_7 = mux(_io_sample_out_bits_scores_0_T_5, _io_sample_out_bits_scores_0_T_6, UInt<16>("h0")) @[TreePE.scala 82:64]
      node _io_sample_out_bits_scores_0_T_8 = asFixedPoint(_io_sample_out_bits_scores_0_T_7, 8) @[TreePE.scala 82:217]
      node _io_sample_out_bits_scores_0_T_9 = add(scores_bits[0], _io_sample_out_bits_scores_0_T_8) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_0_T_10 = tail(_io_sample_out_bits_scores_0_T_9, 1) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_0_T_11 = asFixedPoint(_io_sample_out_bits_scores_0_T_10, 8) @[TreePE.scala 82:58]
      io.sample_out.bits.scores[0] <= _io_sample_out_bits_scores_0_T_11 @[TreePE.scala 82:40]
      reg io_sample_out_bits_scores_1_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_scores_1_REG) @[TreePE.scala 82:74]
      io_sample_out_bits_scores_1_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 82:74]
      node _io_sample_out_bits_scores_1_T = eq(io_sample_out_bits_scores_1_REG, UInt<1>("h0")) @[TreePE.scala 82:66]
      node _io_sample_out_bits_scores_1_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 82:111]
      node _io_sample_out_bits_scores_1_T_2 = and(_io_sample_out_bits_scores_1_T, _io_sample_out_bits_scores_1_T_1) @[TreePE.scala 82:103]
      node _io_sample_out_bits_scores_1_T_3 = and(_io_sample_out_bits_scores_1_T_2, is_valid) @[TreePE.scala 82:123]
      node _io_sample_out_bits_scores_1_T_4 = eq(UInt<1>("h1"), offset) @[TreePE.scala 82:141]
      node _io_sample_out_bits_scores_1_T_5 = and(_io_sample_out_bits_scores_1_T_3, _io_sample_out_bits_scores_1_T_4) @[TreePE.scala 82:134]
      node _io_sample_out_bits_scores_1_T_6 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 82:190]
      node _io_sample_out_bits_scores_1_T_7 = mux(_io_sample_out_bits_scores_1_T_5, _io_sample_out_bits_scores_1_T_6, UInt<16>("h0")) @[TreePE.scala 82:64]
      node _io_sample_out_bits_scores_1_T_8 = asFixedPoint(_io_sample_out_bits_scores_1_T_7, 8) @[TreePE.scala 82:217]
      node _io_sample_out_bits_scores_1_T_9 = add(scores_bits[1], _io_sample_out_bits_scores_1_T_8) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_1_T_10 = tail(_io_sample_out_bits_scores_1_T_9, 1) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_1_T_11 = asFixedPoint(_io_sample_out_bits_scores_1_T_10, 8) @[TreePE.scala 82:58]
      io.sample_out.bits.scores[1] <= _io_sample_out_bits_scores_1_T_11 @[TreePE.scala 82:40]
      reg io_sample_out_bits_scores_2_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_scores_2_REG) @[TreePE.scala 82:74]
      io_sample_out_bits_scores_2_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 82:74]
      node _io_sample_out_bits_scores_2_T = eq(io_sample_out_bits_scores_2_REG, UInt<1>("h0")) @[TreePE.scala 82:66]
      node _io_sample_out_bits_scores_2_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 82:111]
      node _io_sample_out_bits_scores_2_T_2 = and(_io_sample_out_bits_scores_2_T, _io_sample_out_bits_scores_2_T_1) @[TreePE.scala 82:103]
      node _io_sample_out_bits_scores_2_T_3 = and(_io_sample_out_bits_scores_2_T_2, is_valid) @[TreePE.scala 82:123]
      node _io_sample_out_bits_scores_2_T_4 = eq(UInt<2>("h2"), offset) @[TreePE.scala 82:141]
      node _io_sample_out_bits_scores_2_T_5 = and(_io_sample_out_bits_scores_2_T_3, _io_sample_out_bits_scores_2_T_4) @[TreePE.scala 82:134]
      node _io_sample_out_bits_scores_2_T_6 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 82:190]
      node _io_sample_out_bits_scores_2_T_7 = mux(_io_sample_out_bits_scores_2_T_5, _io_sample_out_bits_scores_2_T_6, UInt<16>("h0")) @[TreePE.scala 82:64]
      node _io_sample_out_bits_scores_2_T_8 = asFixedPoint(_io_sample_out_bits_scores_2_T_7, 8) @[TreePE.scala 82:217]
      node _io_sample_out_bits_scores_2_T_9 = add(scores_bits[2], _io_sample_out_bits_scores_2_T_8) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_2_T_10 = tail(_io_sample_out_bits_scores_2_T_9, 1) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_2_T_11 = asFixedPoint(_io_sample_out_bits_scores_2_T_10, 8) @[TreePE.scala 82:58]
      io.sample_out.bits.scores[2] <= _io_sample_out_bits_scores_2_T_11 @[TreePE.scala 82:40]
      reg io_sample_out_bits_scores_3_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_scores_3_REG) @[TreePE.scala 82:74]
      io_sample_out_bits_scores_3_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 82:74]
      node _io_sample_out_bits_scores_3_T = eq(io_sample_out_bits_scores_3_REG, UInt<1>("h0")) @[TreePE.scala 82:66]
      node _io_sample_out_bits_scores_3_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 82:111]
      node _io_sample_out_bits_scores_3_T_2 = and(_io_sample_out_bits_scores_3_T, _io_sample_out_bits_scores_3_T_1) @[TreePE.scala 82:103]
      node _io_sample_out_bits_scores_3_T_3 = and(_io_sample_out_bits_scores_3_T_2, is_valid) @[TreePE.scala 82:123]
      node _io_sample_out_bits_scores_3_T_4 = eq(UInt<2>("h3"), offset) @[TreePE.scala 82:141]
      node _io_sample_out_bits_scores_3_T_5 = and(_io_sample_out_bits_scores_3_T_3, _io_sample_out_bits_scores_3_T_4) @[TreePE.scala 82:134]
      node _io_sample_out_bits_scores_3_T_6 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 82:190]
      node _io_sample_out_bits_scores_3_T_7 = mux(_io_sample_out_bits_scores_3_T_5, _io_sample_out_bits_scores_3_T_6, UInt<16>("h0")) @[TreePE.scala 82:64]
      node _io_sample_out_bits_scores_3_T_8 = asFixedPoint(_io_sample_out_bits_scores_3_T_7, 8) @[TreePE.scala 82:217]
      node _io_sample_out_bits_scores_3_T_9 = add(scores_bits[3], _io_sample_out_bits_scores_3_T_8) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_3_T_10 = tail(_io_sample_out_bits_scores_3_T_9, 1) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_3_T_11 = asFixedPoint(_io_sample_out_bits_scores_3_T_10, 8) @[TreePE.scala 82:58]
      io.sample_out.bits.scores[3] <= _io_sample_out_bits_scores_3_T_11 @[TreePE.scala 82:40]
      reg io_sample_out_bits_scores_4_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_scores_4_REG) @[TreePE.scala 82:74]
      io_sample_out_bits_scores_4_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 82:74]
      node _io_sample_out_bits_scores_4_T = eq(io_sample_out_bits_scores_4_REG, UInt<1>("h0")) @[TreePE.scala 82:66]
      node _io_sample_out_bits_scores_4_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 82:111]
      node _io_sample_out_bits_scores_4_T_2 = and(_io_sample_out_bits_scores_4_T, _io_sample_out_bits_scores_4_T_1) @[TreePE.scala 82:103]
      node _io_sample_out_bits_scores_4_T_3 = and(_io_sample_out_bits_scores_4_T_2, is_valid) @[TreePE.scala 82:123]
      node _io_sample_out_bits_scores_4_T_4 = eq(UInt<3>("h4"), offset) @[TreePE.scala 82:141]
      node _io_sample_out_bits_scores_4_T_5 = and(_io_sample_out_bits_scores_4_T_3, _io_sample_out_bits_scores_4_T_4) @[TreePE.scala 82:134]
      node _io_sample_out_bits_scores_4_T_6 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 82:190]
      node _io_sample_out_bits_scores_4_T_7 = mux(_io_sample_out_bits_scores_4_T_5, _io_sample_out_bits_scores_4_T_6, UInt<16>("h0")) @[TreePE.scala 82:64]
      node _io_sample_out_bits_scores_4_T_8 = asFixedPoint(_io_sample_out_bits_scores_4_T_7, 8) @[TreePE.scala 82:217]
      node _io_sample_out_bits_scores_4_T_9 = add(scores_bits[4], _io_sample_out_bits_scores_4_T_8) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_4_T_10 = tail(_io_sample_out_bits_scores_4_T_9, 1) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_4_T_11 = asFixedPoint(_io_sample_out_bits_scores_4_T_10, 8) @[TreePE.scala 82:58]
      io.sample_out.bits.scores[4] <= _io_sample_out_bits_scores_4_T_11 @[TreePE.scala 82:40]
      reg io_sample_out_bits_scores_5_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_scores_5_REG) @[TreePE.scala 82:74]
      io_sample_out_bits_scores_5_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 82:74]
      node _io_sample_out_bits_scores_5_T = eq(io_sample_out_bits_scores_5_REG, UInt<1>("h0")) @[TreePE.scala 82:66]
      node _io_sample_out_bits_scores_5_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 82:111]
      node _io_sample_out_bits_scores_5_T_2 = and(_io_sample_out_bits_scores_5_T, _io_sample_out_bits_scores_5_T_1) @[TreePE.scala 82:103]
      node _io_sample_out_bits_scores_5_T_3 = and(_io_sample_out_bits_scores_5_T_2, is_valid) @[TreePE.scala 82:123]
      node _io_sample_out_bits_scores_5_T_4 = eq(UInt<3>("h5"), offset) @[TreePE.scala 82:141]
      node _io_sample_out_bits_scores_5_T_5 = and(_io_sample_out_bits_scores_5_T_3, _io_sample_out_bits_scores_5_T_4) @[TreePE.scala 82:134]
      node _io_sample_out_bits_scores_5_T_6 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 82:190]
      node _io_sample_out_bits_scores_5_T_7 = mux(_io_sample_out_bits_scores_5_T_5, _io_sample_out_bits_scores_5_T_6, UInt<16>("h0")) @[TreePE.scala 82:64]
      node _io_sample_out_bits_scores_5_T_8 = asFixedPoint(_io_sample_out_bits_scores_5_T_7, 8) @[TreePE.scala 82:217]
      node _io_sample_out_bits_scores_5_T_9 = add(scores_bits[5], _io_sample_out_bits_scores_5_T_8) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_5_T_10 = tail(_io_sample_out_bits_scores_5_T_9, 1) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_5_T_11 = asFixedPoint(_io_sample_out_bits_scores_5_T_10, 8) @[TreePE.scala 82:58]
      io.sample_out.bits.scores[5] <= _io_sample_out_bits_scores_5_T_11 @[TreePE.scala 82:40]
      reg io_sample_out_bits_dest_REG : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_dest_REG) @[TreePE.scala 84:43]
      io_sample_out_bits_dest_REG <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 84:43]
      node _io_sample_out_bits_dest_T = eq(io_sample_out_bits_dest_REG, UInt<1>("h1")) @[TreePE.scala 84:69]
      io.sample_out.bits.dest <= _io_sample_out_bits_dest_T @[TreePE.scala 84:33]
      reg io_sample_out_bits_last_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_last_REG) @[TreePE.scala 85:43]
      io_sample_out_bits_last_REG <= queue.io.deq.bits.last @[TreePE.scala 85:43]
      io.sample_out.bits.last <= io_sample_out_bits_last_REG @[TreePE.scala 85:33]
    else :
      io.sample_out.bits.clock_cycles is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.last is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.dest is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[0] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[1] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[2] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[3] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[4] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[0] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[1] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[2] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[3] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[4] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[5] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.tree_to_exec is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.search_for_root is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.shift is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.offset is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[0] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[1] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[2] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[3] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[4] is invalid @[TreePE.scala 88:26]
      io.sample_out.valid <= UInt<1>("h0") @[TreePE.scala 89:27]
    queue.io.deq.ready <= io.sample_out.ready @[TreePE.scala 92:17]

  module TreePEwithBRAM_8 :
    input clock : Clock
    input reset : Reset
    output pe_io : { flip sample_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, flip mem : { flip enable_1 : UInt<1>, flip write_1 : UInt<1>, flip addr_1 : UInt<13>, flip dataIn_1 : UInt<64>, dataOut_1 : UInt<64>, flip enable_2 : UInt<1>, flip write_2 : UInt<1>, flip addr_2 : UInt<13>, flip dataIn_2 : UInt<64>, dataOut_2 : UInt<64>}, sample_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}}

    inst pe of TreePE_8 @[TreePE.scala 104:18]
    pe.clock <= clock
    pe.reset <= reset
    pe_io.sample_out.bits <= pe.io.sample_out.bits @[TreePE.scala 106:9]
    pe_io.sample_out.valid <= pe.io.sample_out.valid @[TreePE.scala 106:9]
    pe.io.sample_out.ready <= pe_io.sample_out.ready @[TreePE.scala 106:9]
    pe.io.mem <= pe_io.mem @[TreePE.scala 106:9]
    pe.io.sample_in <= pe_io.sample_in @[TreePE.scala 106:9]

  module Queue_24 :
    input clock : Clock
    input reset : Reset
    output io : { flip enq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, deq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, count : UInt<2>}

    cmem ram : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>} [3] @[Decoupled.scala 275:95]
    reg enq_ptr_value : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[Counter.scala 61:40]
    reg deq_ptr_value : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[Counter.scala 61:40]
    reg maybe_full : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[Decoupled.scala 278:27]
    node ptr_match = eq(enq_ptr_value, deq_ptr_value) @[Decoupled.scala 279:33]
    node _empty_T = eq(maybe_full, UInt<1>("h0")) @[Decoupled.scala 280:28]
    node empty = and(ptr_match, _empty_T) @[Decoupled.scala 280:25]
    node full = and(ptr_match, maybe_full) @[Decoupled.scala 281:24]
    node _do_enq_T = and(io.enq.ready, io.enq.valid) @[Decoupled.scala 52:35]
    wire do_enq : UInt<1>
    do_enq <= _do_enq_T
    node _do_deq_T = and(io.deq.ready, io.deq.valid) @[Decoupled.scala 52:35]
    wire do_deq : UInt<1>
    do_deq <= _do_deq_T
    when do_enq : @[Decoupled.scala 288:16]
      infer mport MPORT = ram[enq_ptr_value], clock @[Decoupled.scala 289:8]
      MPORT <= io.enq.bits @[Decoupled.scala 289:24]
      node wrap = eq(enq_ptr_value, UInt<2>("h2")) @[Counter.scala 73:24]
      node _value_T = add(enq_ptr_value, UInt<1>("h1")) @[Counter.scala 77:24]
      node _value_T_1 = tail(_value_T, 1) @[Counter.scala 77:24]
      enq_ptr_value <= _value_T_1 @[Counter.scala 77:15]
      when wrap : @[Counter.scala 87:20]
        enq_ptr_value <= UInt<1>("h0") @[Counter.scala 87:28]
    when do_deq : @[Decoupled.scala 292:16]
      node wrap_1 = eq(deq_ptr_value, UInt<2>("h2")) @[Counter.scala 73:24]
      node _value_T_2 = add(deq_ptr_value, UInt<1>("h1")) @[Counter.scala 77:24]
      node _value_T_3 = tail(_value_T_2, 1) @[Counter.scala 77:24]
      deq_ptr_value <= _value_T_3 @[Counter.scala 77:15]
      when wrap_1 : @[Counter.scala 87:20]
        deq_ptr_value <= UInt<1>("h0") @[Counter.scala 87:28]
    node _T = neq(do_enq, do_deq) @[Decoupled.scala 295:15]
    when _T : @[Decoupled.scala 295:27]
      maybe_full <= do_enq @[Decoupled.scala 296:16]
    when UInt<1>("h0") : @[Decoupled.scala 298:15]
      enq_ptr_value <= UInt<1>("h0") @[Counter.scala 98:11]
      deq_ptr_value <= UInt<1>("h0") @[Counter.scala 98:11]
      maybe_full <= UInt<1>("h0") @[Decoupled.scala 301:16]
    node _io_deq_valid_T = eq(empty, UInt<1>("h0")) @[Decoupled.scala 304:19]
    io.deq.valid <= _io_deq_valid_T @[Decoupled.scala 304:16]
    node _io_enq_ready_T = eq(full, UInt<1>("h0")) @[Decoupled.scala 305:19]
    io.enq.ready <= _io_enq_ready_T @[Decoupled.scala 305:16]
    infer mport io_deq_bits_MPORT = ram[deq_ptr_value], clock @[Decoupled.scala 312:23]
    io.deq.bits <= io_deq_bits_MPORT @[Decoupled.scala 312:17]
    node _ptr_diff_T = sub(enq_ptr_value, deq_ptr_value) @[Decoupled.scala 328:32]
    node ptr_diff = tail(_ptr_diff_T, 1) @[Decoupled.scala 328:32]
    node _io_count_T = mux(maybe_full, UInt<2>("h3"), UInt<1>("h0")) @[Decoupled.scala 335:10]
    node _io_count_T_1 = gt(deq_ptr_value, enq_ptr_value) @[Decoupled.scala 336:25]
    node _io_count_T_2 = add(UInt<2>("h3"), ptr_diff) @[Decoupled.scala 336:57]
    node _io_count_T_3 = tail(_io_count_T_2, 1) @[Decoupled.scala 336:57]
    node _io_count_T_4 = mux(_io_count_T_1, _io_count_T_3, ptr_diff) @[Decoupled.scala 336:10]
    node _io_count_T_5 = mux(ptr_match, _io_count_T, _io_count_T_4) @[Decoupled.scala 333:20]
    io.count <= _io_count_T_5 @[Decoupled.scala 333:14]

  module TreePE_9 :
    input clock : Clock
    input reset : Reset
    output io : { flip sample_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, flip mem : { flip enable_1 : UInt<1>, flip write_1 : UInt<1>, flip addr_1 : UInt<13>, flip dataIn_1 : UInt<64>, dataOut_1 : UInt<64>, flip enable_2 : UInt<1>, flip write_2 : UInt<1>, flip addr_2 : UInt<13>, flip dataIn_2 : UInt<64>, dataOut_2 : UInt<64>}, sample_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}}

    inst queue of Queue_24 @[Decoupled.scala 377:21]
    queue.clock <= clock
    queue.reset <= reset
    queue.io.enq.valid <= io.sample_in.valid @[Decoupled.scala 379:22]
    queue.io.enq.bits.clock_cycles <= io.sample_in.bits.clock_cycles @[Decoupled.scala 380:21]
    queue.io.enq.bits.last <= io.sample_in.bits.last @[Decoupled.scala 380:21]
    queue.io.enq.bits.dest <= io.sample_in.bits.dest @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[0] <= io.sample_in.bits.weights[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[1] <= io.sample_in.bits.weights[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[2] <= io.sample_in.bits.weights[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[3] <= io.sample_in.bits.weights[3] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[4] <= io.sample_in.bits.weights[4] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[0] <= io.sample_in.bits.scores[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[1] <= io.sample_in.bits.scores[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[2] <= io.sample_in.bits.scores[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[3] <= io.sample_in.bits.scores[3] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[4] <= io.sample_in.bits.scores[4] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[5] <= io.sample_in.bits.scores[5] @[Decoupled.scala 380:21]
    queue.io.enq.bits.tree_to_exec <= io.sample_in.bits.tree_to_exec @[Decoupled.scala 380:21]
    queue.io.enq.bits.search_for_root <= io.sample_in.bits.search_for_root @[Decoupled.scala 380:21]
    queue.io.enq.bits.shift <= io.sample_in.bits.shift @[Decoupled.scala 380:21]
    queue.io.enq.bits.offset <= io.sample_in.bits.offset @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[0] <= io.sample_in.bits.features[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[1] <= io.sample_in.bits.features[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[2] <= io.sample_in.bits.features[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[3] <= io.sample_in.bits.features[3] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[4] <= io.sample_in.bits.features[4] @[Decoupled.scala 380:21]
    io.sample_in.ready <= queue.io.enq.ready @[Decoupled.scala 381:17]
    io.mem.enable_1 <= UInt<1>("h1") @[TreePE.scala 23:21]
    io.mem.addr_1 <= queue.io.deq.bits.offset @[TreePE.scala 24:19]
    io.mem.write_1 <= UInt<1>("h0") @[TreePE.scala 25:20]
    io.mem.dataIn_1 <= UInt<1>("h0") @[TreePE.scala 26:21]
    io.mem.enable_2 is invalid @[TreePE.scala 28:21]
    io.mem.addr_2 is invalid @[TreePE.scala 29:19]
    io.mem.write_2 is invalid @[TreePE.scala 30:20]
    io.mem.dataIn_2 is invalid @[TreePE.scala 31:21]
    reg REG : UInt<1>, clock with :
      reset => (UInt<1>("h0"), REG) @[TreePE.scala 35:17]
    REG <= queue.io.deq.valid @[TreePE.scala 35:17]
    when REG : @[TreePE.scala 35:31]
      node attr_id = bits(io.mem.dataOut_1, 34, 32) @[TreePE.scala 37:37]
      node threshold = bits(io.mem.dataOut_1, 15, 0) @[TreePE.scala 38:39]
      node nodeRA = bits(io.mem.dataOut_1, 31, 16) @[TreePE.scala 39:36]
      node leftChildInfo = bits(io.mem.dataOut_1, 44, 35) @[TreePE.scala 40:43]
      node rightChildInfo = bits(io.mem.dataOut_1, 54, 45) @[TreePE.scala 41:44]
      node leftChildType = bits(io.mem.dataOut_1, 55, 55) @[TreePE.scala 42:43]
      node rightChildType = bits(io.mem.dataOut_1, 56, 56) @[TreePE.scala 43:44]
      node is_valid = bits(io.mem.dataOut_1, 57, 57) @[TreePE.scala 44:38]
      node depth_indicator = bits(io.mem.dataOut_1, 60, 58) @[TreePE.scala 45:45]
      reg REG_1 : Fixed<32><<16>>[5], clock with :
        reset => (UInt<1>("h0"), REG_1) @[TreePE.scala 47:45]
      REG_1 <= queue.io.deq.bits.features @[TreePE.scala 47:45]
      io.sample_out.bits.features <= REG_1 @[TreePE.scala 47:35]
      reg REG_2 : Fixed<16><<8>>[5], clock with :
        reset => (UInt<1>("h0"), REG_2) @[TreePE.scala 48:44]
      REG_2 <= queue.io.deq.bits.weights @[TreePE.scala 48:44]
      io.sample_out.bits.weights <= REG_2 @[TreePE.scala 48:34]
      reg io_sample_out_bits_tree_to_exec_REG : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_tree_to_exec_REG) @[TreePE.scala 49:49]
      io_sample_out_bits_tree_to_exec_REG <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 49:49]
      io.sample_out.bits.tree_to_exec <= io_sample_out_bits_tree_to_exec_REG @[TreePE.scala 49:39]
      reg REG_3 : Fixed<16><<8>>[6], clock with :
        reset => (UInt<1>("h0"), REG_3) @[TreePE.scala 50:43]
      REG_3 <= queue.io.deq.bits.scores @[TreePE.scala 50:43]
      io.sample_out.bits.scores <= REG_3 @[TreePE.scala 50:33]
      io.sample_out.valid <= UInt<1>("h1") @[TreePE.scala 51:27]
      reg io_sample_out_bits_clock_cycles_REG : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_clock_cycles_REG) @[TreePE.scala 52:49]
      io_sample_out_bits_clock_cycles_REG <= queue.io.deq.bits.clock_cycles @[TreePE.scala 52:49]
      io.sample_out.bits.clock_cycles <= io_sample_out_bits_clock_cycles_REG @[TreePE.scala 52:39]
      wire offset : UInt<10> @[TreePE.scala 71:26]
      wire shift : UInt<1> @[TreePE.scala 72:25]
      reg features_bits : Fixed<32><<16>>[5], clock with :
        reset => (UInt<1>("h0"), features_bits) @[TreePE.scala 73:36]
      features_bits <= queue.io.deq.bits.features @[TreePE.scala 73:36]
      reg scores_bits : Fixed<16><<8>>[6], clock with :
        reset => (UInt<1>("h0"), scores_bits) @[TreePE.scala 74:34]
      scores_bits <= queue.io.deq.bits.scores @[TreePE.scala 74:34]
      reg weights_bits : Fixed<16><<8>>[5], clock with :
        reset => (UInt<1>("h0"), weights_bits) @[TreePE.scala 75:35]
      weights_bits <= queue.io.deq.bits.weights @[TreePE.scala 75:35]
      node _shift_T = asFixedPoint(threshold, 8) @[TreePE.scala 76:69]
      node _shift_T_1 = lt(features_bits[attr_id], _shift_T) @[TreePE.scala 76:45]
      node _shift_T_2 = mux(_shift_T_1, leftChildType, rightChildType) @[TreePE.scala 76:21]
      shift <= _shift_T_2 @[TreePE.scala 76:15]
      node _offset_T = asFixedPoint(threshold, 8) @[TreePE.scala 77:70]
      node _offset_T_1 = lt(features_bits[attr_id], _offset_T) @[TreePE.scala 77:46]
      node _offset_T_2 = mux(_offset_T_1, leftChildInfo, rightChildInfo) @[TreePE.scala 77:22]
      offset <= _offset_T_2 @[TreePE.scala 77:16]
      node _io_sample_out_bits_offset_T = eq(shift, UInt<1>("h0")) @[TreePE.scala 78:48]
      reg io_sample_out_bits_offset_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_offset_REG) @[TreePE.scala 78:70]
      io_sample_out_bits_offset_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 78:70]
      node _io_sample_out_bits_offset_T_1 = or(_io_sample_out_bits_offset_T, io_sample_out_bits_offset_REG) @[TreePE.scala 78:60]
      reg io_sample_out_bits_offset_REG_1 : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_offset_REG_1) @[TreePE.scala 78:106]
      io_sample_out_bits_offset_REG_1 <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 78:106]
      node _io_sample_out_bits_offset_T_2 = mux(_io_sample_out_bits_offset_T_1, io_sample_out_bits_offset_REG_1, offset) @[TreePE.scala 78:41]
      io.sample_out.bits.offset <= _io_sample_out_bits_offset_T_2 @[TreePE.scala 78:35]
      io.sample_out.bits.shift <= UInt<1>("h0") @[TreePE.scala 79:34]
      node _io_sample_out_bits_search_for_root_T = eq(shift, UInt<1>("h0")) @[TreePE.scala 80:47]
      reg io_sample_out_bits_search_for_root_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_search_for_root_REG) @[TreePE.scala 80:64]
      io_sample_out_bits_search_for_root_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 80:64]
      node _io_sample_out_bits_search_for_root_T_1 = or(_io_sample_out_bits_search_for_root_T, io_sample_out_bits_search_for_root_REG) @[TreePE.scala 80:54]
      io.sample_out.bits.search_for_root <= _io_sample_out_bits_search_for_root_T_1 @[TreePE.scala 80:44]
      reg io_sample_out_bits_scores_0_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_scores_0_REG) @[TreePE.scala 82:74]
      io_sample_out_bits_scores_0_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 82:74]
      node _io_sample_out_bits_scores_0_T = eq(io_sample_out_bits_scores_0_REG, UInt<1>("h0")) @[TreePE.scala 82:66]
      node _io_sample_out_bits_scores_0_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 82:111]
      node _io_sample_out_bits_scores_0_T_2 = and(_io_sample_out_bits_scores_0_T, _io_sample_out_bits_scores_0_T_1) @[TreePE.scala 82:103]
      node _io_sample_out_bits_scores_0_T_3 = and(_io_sample_out_bits_scores_0_T_2, is_valid) @[TreePE.scala 82:123]
      node _io_sample_out_bits_scores_0_T_4 = eq(UInt<1>("h0"), offset) @[TreePE.scala 82:141]
      node _io_sample_out_bits_scores_0_T_5 = and(_io_sample_out_bits_scores_0_T_3, _io_sample_out_bits_scores_0_T_4) @[TreePE.scala 82:134]
      node _io_sample_out_bits_scores_0_T_6 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 82:190]
      node _io_sample_out_bits_scores_0_T_7 = mux(_io_sample_out_bits_scores_0_T_5, _io_sample_out_bits_scores_0_T_6, UInt<16>("h0")) @[TreePE.scala 82:64]
      node _io_sample_out_bits_scores_0_T_8 = asFixedPoint(_io_sample_out_bits_scores_0_T_7, 8) @[TreePE.scala 82:217]
      node _io_sample_out_bits_scores_0_T_9 = add(scores_bits[0], _io_sample_out_bits_scores_0_T_8) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_0_T_10 = tail(_io_sample_out_bits_scores_0_T_9, 1) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_0_T_11 = asFixedPoint(_io_sample_out_bits_scores_0_T_10, 8) @[TreePE.scala 82:58]
      io.sample_out.bits.scores[0] <= _io_sample_out_bits_scores_0_T_11 @[TreePE.scala 82:40]
      reg io_sample_out_bits_scores_1_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_scores_1_REG) @[TreePE.scala 82:74]
      io_sample_out_bits_scores_1_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 82:74]
      node _io_sample_out_bits_scores_1_T = eq(io_sample_out_bits_scores_1_REG, UInt<1>("h0")) @[TreePE.scala 82:66]
      node _io_sample_out_bits_scores_1_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 82:111]
      node _io_sample_out_bits_scores_1_T_2 = and(_io_sample_out_bits_scores_1_T, _io_sample_out_bits_scores_1_T_1) @[TreePE.scala 82:103]
      node _io_sample_out_bits_scores_1_T_3 = and(_io_sample_out_bits_scores_1_T_2, is_valid) @[TreePE.scala 82:123]
      node _io_sample_out_bits_scores_1_T_4 = eq(UInt<1>("h1"), offset) @[TreePE.scala 82:141]
      node _io_sample_out_bits_scores_1_T_5 = and(_io_sample_out_bits_scores_1_T_3, _io_sample_out_bits_scores_1_T_4) @[TreePE.scala 82:134]
      node _io_sample_out_bits_scores_1_T_6 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 82:190]
      node _io_sample_out_bits_scores_1_T_7 = mux(_io_sample_out_bits_scores_1_T_5, _io_sample_out_bits_scores_1_T_6, UInt<16>("h0")) @[TreePE.scala 82:64]
      node _io_sample_out_bits_scores_1_T_8 = asFixedPoint(_io_sample_out_bits_scores_1_T_7, 8) @[TreePE.scala 82:217]
      node _io_sample_out_bits_scores_1_T_9 = add(scores_bits[1], _io_sample_out_bits_scores_1_T_8) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_1_T_10 = tail(_io_sample_out_bits_scores_1_T_9, 1) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_1_T_11 = asFixedPoint(_io_sample_out_bits_scores_1_T_10, 8) @[TreePE.scala 82:58]
      io.sample_out.bits.scores[1] <= _io_sample_out_bits_scores_1_T_11 @[TreePE.scala 82:40]
      reg io_sample_out_bits_scores_2_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_scores_2_REG) @[TreePE.scala 82:74]
      io_sample_out_bits_scores_2_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 82:74]
      node _io_sample_out_bits_scores_2_T = eq(io_sample_out_bits_scores_2_REG, UInt<1>("h0")) @[TreePE.scala 82:66]
      node _io_sample_out_bits_scores_2_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 82:111]
      node _io_sample_out_bits_scores_2_T_2 = and(_io_sample_out_bits_scores_2_T, _io_sample_out_bits_scores_2_T_1) @[TreePE.scala 82:103]
      node _io_sample_out_bits_scores_2_T_3 = and(_io_sample_out_bits_scores_2_T_2, is_valid) @[TreePE.scala 82:123]
      node _io_sample_out_bits_scores_2_T_4 = eq(UInt<2>("h2"), offset) @[TreePE.scala 82:141]
      node _io_sample_out_bits_scores_2_T_5 = and(_io_sample_out_bits_scores_2_T_3, _io_sample_out_bits_scores_2_T_4) @[TreePE.scala 82:134]
      node _io_sample_out_bits_scores_2_T_6 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 82:190]
      node _io_sample_out_bits_scores_2_T_7 = mux(_io_sample_out_bits_scores_2_T_5, _io_sample_out_bits_scores_2_T_6, UInt<16>("h0")) @[TreePE.scala 82:64]
      node _io_sample_out_bits_scores_2_T_8 = asFixedPoint(_io_sample_out_bits_scores_2_T_7, 8) @[TreePE.scala 82:217]
      node _io_sample_out_bits_scores_2_T_9 = add(scores_bits[2], _io_sample_out_bits_scores_2_T_8) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_2_T_10 = tail(_io_sample_out_bits_scores_2_T_9, 1) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_2_T_11 = asFixedPoint(_io_sample_out_bits_scores_2_T_10, 8) @[TreePE.scala 82:58]
      io.sample_out.bits.scores[2] <= _io_sample_out_bits_scores_2_T_11 @[TreePE.scala 82:40]
      reg io_sample_out_bits_scores_3_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_scores_3_REG) @[TreePE.scala 82:74]
      io_sample_out_bits_scores_3_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 82:74]
      node _io_sample_out_bits_scores_3_T = eq(io_sample_out_bits_scores_3_REG, UInt<1>("h0")) @[TreePE.scala 82:66]
      node _io_sample_out_bits_scores_3_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 82:111]
      node _io_sample_out_bits_scores_3_T_2 = and(_io_sample_out_bits_scores_3_T, _io_sample_out_bits_scores_3_T_1) @[TreePE.scala 82:103]
      node _io_sample_out_bits_scores_3_T_3 = and(_io_sample_out_bits_scores_3_T_2, is_valid) @[TreePE.scala 82:123]
      node _io_sample_out_bits_scores_3_T_4 = eq(UInt<2>("h3"), offset) @[TreePE.scala 82:141]
      node _io_sample_out_bits_scores_3_T_5 = and(_io_sample_out_bits_scores_3_T_3, _io_sample_out_bits_scores_3_T_4) @[TreePE.scala 82:134]
      node _io_sample_out_bits_scores_3_T_6 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 82:190]
      node _io_sample_out_bits_scores_3_T_7 = mux(_io_sample_out_bits_scores_3_T_5, _io_sample_out_bits_scores_3_T_6, UInt<16>("h0")) @[TreePE.scala 82:64]
      node _io_sample_out_bits_scores_3_T_8 = asFixedPoint(_io_sample_out_bits_scores_3_T_7, 8) @[TreePE.scala 82:217]
      node _io_sample_out_bits_scores_3_T_9 = add(scores_bits[3], _io_sample_out_bits_scores_3_T_8) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_3_T_10 = tail(_io_sample_out_bits_scores_3_T_9, 1) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_3_T_11 = asFixedPoint(_io_sample_out_bits_scores_3_T_10, 8) @[TreePE.scala 82:58]
      io.sample_out.bits.scores[3] <= _io_sample_out_bits_scores_3_T_11 @[TreePE.scala 82:40]
      reg io_sample_out_bits_scores_4_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_scores_4_REG) @[TreePE.scala 82:74]
      io_sample_out_bits_scores_4_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 82:74]
      node _io_sample_out_bits_scores_4_T = eq(io_sample_out_bits_scores_4_REG, UInt<1>("h0")) @[TreePE.scala 82:66]
      node _io_sample_out_bits_scores_4_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 82:111]
      node _io_sample_out_bits_scores_4_T_2 = and(_io_sample_out_bits_scores_4_T, _io_sample_out_bits_scores_4_T_1) @[TreePE.scala 82:103]
      node _io_sample_out_bits_scores_4_T_3 = and(_io_sample_out_bits_scores_4_T_2, is_valid) @[TreePE.scala 82:123]
      node _io_sample_out_bits_scores_4_T_4 = eq(UInt<3>("h4"), offset) @[TreePE.scala 82:141]
      node _io_sample_out_bits_scores_4_T_5 = and(_io_sample_out_bits_scores_4_T_3, _io_sample_out_bits_scores_4_T_4) @[TreePE.scala 82:134]
      node _io_sample_out_bits_scores_4_T_6 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 82:190]
      node _io_sample_out_bits_scores_4_T_7 = mux(_io_sample_out_bits_scores_4_T_5, _io_sample_out_bits_scores_4_T_6, UInt<16>("h0")) @[TreePE.scala 82:64]
      node _io_sample_out_bits_scores_4_T_8 = asFixedPoint(_io_sample_out_bits_scores_4_T_7, 8) @[TreePE.scala 82:217]
      node _io_sample_out_bits_scores_4_T_9 = add(scores_bits[4], _io_sample_out_bits_scores_4_T_8) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_4_T_10 = tail(_io_sample_out_bits_scores_4_T_9, 1) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_4_T_11 = asFixedPoint(_io_sample_out_bits_scores_4_T_10, 8) @[TreePE.scala 82:58]
      io.sample_out.bits.scores[4] <= _io_sample_out_bits_scores_4_T_11 @[TreePE.scala 82:40]
      reg io_sample_out_bits_scores_5_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_scores_5_REG) @[TreePE.scala 82:74]
      io_sample_out_bits_scores_5_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 82:74]
      node _io_sample_out_bits_scores_5_T = eq(io_sample_out_bits_scores_5_REG, UInt<1>("h0")) @[TreePE.scala 82:66]
      node _io_sample_out_bits_scores_5_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 82:111]
      node _io_sample_out_bits_scores_5_T_2 = and(_io_sample_out_bits_scores_5_T, _io_sample_out_bits_scores_5_T_1) @[TreePE.scala 82:103]
      node _io_sample_out_bits_scores_5_T_3 = and(_io_sample_out_bits_scores_5_T_2, is_valid) @[TreePE.scala 82:123]
      node _io_sample_out_bits_scores_5_T_4 = eq(UInt<3>("h5"), offset) @[TreePE.scala 82:141]
      node _io_sample_out_bits_scores_5_T_5 = and(_io_sample_out_bits_scores_5_T_3, _io_sample_out_bits_scores_5_T_4) @[TreePE.scala 82:134]
      node _io_sample_out_bits_scores_5_T_6 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 82:190]
      node _io_sample_out_bits_scores_5_T_7 = mux(_io_sample_out_bits_scores_5_T_5, _io_sample_out_bits_scores_5_T_6, UInt<16>("h0")) @[TreePE.scala 82:64]
      node _io_sample_out_bits_scores_5_T_8 = asFixedPoint(_io_sample_out_bits_scores_5_T_7, 8) @[TreePE.scala 82:217]
      node _io_sample_out_bits_scores_5_T_9 = add(scores_bits[5], _io_sample_out_bits_scores_5_T_8) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_5_T_10 = tail(_io_sample_out_bits_scores_5_T_9, 1) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_5_T_11 = asFixedPoint(_io_sample_out_bits_scores_5_T_10, 8) @[TreePE.scala 82:58]
      io.sample_out.bits.scores[5] <= _io_sample_out_bits_scores_5_T_11 @[TreePE.scala 82:40]
      reg io_sample_out_bits_dest_REG : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_dest_REG) @[TreePE.scala 84:43]
      io_sample_out_bits_dest_REG <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 84:43]
      node _io_sample_out_bits_dest_T = eq(io_sample_out_bits_dest_REG, UInt<1>("h1")) @[TreePE.scala 84:69]
      io.sample_out.bits.dest <= _io_sample_out_bits_dest_T @[TreePE.scala 84:33]
      reg io_sample_out_bits_last_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_last_REG) @[TreePE.scala 85:43]
      io_sample_out_bits_last_REG <= queue.io.deq.bits.last @[TreePE.scala 85:43]
      io.sample_out.bits.last <= io_sample_out_bits_last_REG @[TreePE.scala 85:33]
    else :
      io.sample_out.bits.clock_cycles is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.last is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.dest is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[0] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[1] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[2] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[3] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[4] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[0] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[1] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[2] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[3] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[4] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[5] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.tree_to_exec is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.search_for_root is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.shift is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.offset is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[0] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[1] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[2] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[3] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[4] is invalid @[TreePE.scala 88:26]
      io.sample_out.valid <= UInt<1>("h0") @[TreePE.scala 89:27]
    queue.io.deq.ready <= io.sample_out.ready @[TreePE.scala 92:17]

  module TreePEwithBRAM_9 :
    input clock : Clock
    input reset : Reset
    output pe_io : { flip sample_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, flip mem : { flip enable_1 : UInt<1>, flip write_1 : UInt<1>, flip addr_1 : UInt<13>, flip dataIn_1 : UInt<64>, dataOut_1 : UInt<64>, flip enable_2 : UInt<1>, flip write_2 : UInt<1>, flip addr_2 : UInt<13>, flip dataIn_2 : UInt<64>, dataOut_2 : UInt<64>}, sample_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}}

    inst pe of TreePE_9 @[TreePE.scala 104:18]
    pe.clock <= clock
    pe.reset <= reset
    pe_io.sample_out.bits <= pe.io.sample_out.bits @[TreePE.scala 106:9]
    pe_io.sample_out.valid <= pe.io.sample_out.valid @[TreePE.scala 106:9]
    pe.io.sample_out.ready <= pe_io.sample_out.ready @[TreePE.scala 106:9]
    pe.io.mem <= pe_io.mem @[TreePE.scala 106:9]
    pe.io.sample_in <= pe_io.sample_in @[TreePE.scala 106:9]

  extmodule BRAMBlackBoxSingle_5 :
    input clk : Clock
    input a_wr : UInt<1>
    input a_addr : UInt<11>
    input a_din : UInt<32>
    output a_dout : UInt<32>
    input b_wr : UInt<1>
    input b_addr : UInt<11>
    input b_din : UInt<32>
    output b_dout : UInt<32>
    defname = BRAMBlackBoxSingle
    parameter DATA = 32
    parameter ADDR = 11

  module BRAMBlackBoxAsymm_5 :
    input clock : Clock
    input reset : Reset
    output io : { flip clk : Clock, flip a_en : UInt<1>, flip a_wr : UInt<1>, flip a_addr : UInt<13>, flip a_din : UInt<32>, a_dout : UInt<32>, flip b_en : UInt<1>, flip b_wr : UInt<1>, flip b_addr : UInt<11>, flip b_din : UInt<64>, b_dout : UInt<64>}

    inst bram_1 of BRAMBlackBoxSingle_5 @[ME.scala 202:24]
    bram_1.b_dout is invalid
    bram_1.b_din is invalid
    bram_1.b_addr is invalid
    bram_1.b_wr is invalid
    bram_1.a_dout is invalid
    bram_1.a_din is invalid
    bram_1.a_addr is invalid
    bram_1.a_wr is invalid
    bram_1.clk is invalid
    node _bram_1_io_a_wr_T = mux(io.a_en, io.a_wr, io.b_wr) @[ME.scala 204:26]
    bram_1.a_wr <= _bram_1_io_a_wr_T @[ME.scala 204:20]
    node _bram_1_io_a_addr_T = shr(io.a_addr, 2) @[ME.scala 205:49]
    node _bram_1_io_a_addr_T_1 = shl(io.b_addr, 1) @[ME.scala 205:67]
    node _bram_1_io_a_addr_T_2 = mux(io.a_en, _bram_1_io_a_addr_T, _bram_1_io_a_addr_T_1) @[ME.scala 205:28]
    bram_1.a_addr <= _bram_1_io_a_addr_T_2 @[ME.scala 205:22]
    node _bram_1_io_a_din_T = bits(io.b_din, 31, 0) @[ME.scala 206:55]
    node _bram_1_io_a_din_T_1 = mux(io.a_en, io.a_din, _bram_1_io_a_din_T) @[ME.scala 206:27]
    bram_1.a_din <= _bram_1_io_a_din_T_1 @[ME.scala 206:21]
    node _io_b_dout_T = cat(bram_1.b_dout, bram_1.a_dout) @[Cat.scala 33:92]
    io.b_dout <= _io_b_dout_T @[ME.scala 207:15]
    node _bram_1_io_b_wr_T = mux(io.a_en, UInt<1>("h0"), io.b_wr) @[ME.scala 208:26]
    bram_1.b_wr <= _bram_1_io_b_wr_T @[ME.scala 208:20]
    node _bram_1_io_b_addr_T = shl(io.b_addr, 1) @[ME.scala 209:36]
    node _bram_1_io_b_addr_T_1 = add(_bram_1_io_b_addr_T, UInt<1>("h1")) @[ME.scala 209:42]
    node _bram_1_io_b_addr_T_2 = tail(_bram_1_io_b_addr_T_1, 1) @[ME.scala 209:42]
    bram_1.b_addr <= _bram_1_io_b_addr_T_2 @[ME.scala 209:22]
    node _bram_1_io_b_din_T = bits(io.b_din, 63, 32) @[ME.scala 210:32]
    bram_1.b_din <= _bram_1_io_b_din_T @[ME.scala 210:21]
    io.a_dout <= bram_1.a_dout @[ME.scala 211:15]
    bram_1.clk <= io.clk @[ME.scala 212:19]

  extmodule BRAMBlackBoxSingle_6 :
    input clk : Clock
    input a_wr : UInt<1>
    input a_addr : UInt<11>
    input a_din : UInt<32>
    output a_dout : UInt<32>
    input b_wr : UInt<1>
    input b_addr : UInt<11>
    input b_din : UInt<32>
    output b_dout : UInt<32>
    defname = BRAMBlackBoxSingle
    parameter DATA = 32
    parameter ADDR = 11

  module BRAMBlackBoxAsymm_6 :
    input clock : Clock
    input reset : Reset
    output io : { flip clk : Clock, flip a_en : UInt<1>, flip a_wr : UInt<1>, flip a_addr : UInt<13>, flip a_din : UInt<32>, a_dout : UInt<32>, flip b_en : UInt<1>, flip b_wr : UInt<1>, flip b_addr : UInt<11>, flip b_din : UInt<64>, b_dout : UInt<64>}

    inst bram_1 of BRAMBlackBoxSingle_6 @[ME.scala 202:24]
    bram_1.b_dout is invalid
    bram_1.b_din is invalid
    bram_1.b_addr is invalid
    bram_1.b_wr is invalid
    bram_1.a_dout is invalid
    bram_1.a_din is invalid
    bram_1.a_addr is invalid
    bram_1.a_wr is invalid
    bram_1.clk is invalid
    node _bram_1_io_a_wr_T = mux(io.a_en, io.a_wr, io.b_wr) @[ME.scala 204:26]
    bram_1.a_wr <= _bram_1_io_a_wr_T @[ME.scala 204:20]
    node _bram_1_io_a_addr_T = shr(io.a_addr, 2) @[ME.scala 205:49]
    node _bram_1_io_a_addr_T_1 = shl(io.b_addr, 1) @[ME.scala 205:67]
    node _bram_1_io_a_addr_T_2 = mux(io.a_en, _bram_1_io_a_addr_T, _bram_1_io_a_addr_T_1) @[ME.scala 205:28]
    bram_1.a_addr <= _bram_1_io_a_addr_T_2 @[ME.scala 205:22]
    node _bram_1_io_a_din_T = bits(io.b_din, 31, 0) @[ME.scala 206:55]
    node _bram_1_io_a_din_T_1 = mux(io.a_en, io.a_din, _bram_1_io_a_din_T) @[ME.scala 206:27]
    bram_1.a_din <= _bram_1_io_a_din_T_1 @[ME.scala 206:21]
    node _io_b_dout_T = cat(bram_1.b_dout, bram_1.a_dout) @[Cat.scala 33:92]
    io.b_dout <= _io_b_dout_T @[ME.scala 207:15]
    node _bram_1_io_b_wr_T = mux(io.a_en, UInt<1>("h0"), io.b_wr) @[ME.scala 208:26]
    bram_1.b_wr <= _bram_1_io_b_wr_T @[ME.scala 208:20]
    node _bram_1_io_b_addr_T = shl(io.b_addr, 1) @[ME.scala 209:36]
    node _bram_1_io_b_addr_T_1 = add(_bram_1_io_b_addr_T, UInt<1>("h1")) @[ME.scala 209:42]
    node _bram_1_io_b_addr_T_2 = tail(_bram_1_io_b_addr_T_1, 1) @[ME.scala 209:42]
    bram_1.b_addr <= _bram_1_io_b_addr_T_2 @[ME.scala 209:22]
    node _bram_1_io_b_din_T = bits(io.b_din, 63, 32) @[ME.scala 210:32]
    bram_1.b_din <= _bram_1_io_b_din_T @[ME.scala 210:21]
    io.a_dout <= bram_1.a_dout @[ME.scala 211:15]
    bram_1.clk <= io.clk @[ME.scala 212:19]

  extmodule BRAMBlackBoxSingle_7 :
    input clk : Clock
    input a_wr : UInt<1>
    input a_addr : UInt<11>
    input a_din : UInt<32>
    output a_dout : UInt<32>
    input b_wr : UInt<1>
    input b_addr : UInt<11>
    input b_din : UInt<32>
    output b_dout : UInt<32>
    defname = BRAMBlackBoxSingle
    parameter DATA = 32
    parameter ADDR = 11

  module BRAMBlackBoxAsymm_7 :
    input clock : Clock
    input reset : Reset
    output io : { flip clk : Clock, flip a_en : UInt<1>, flip a_wr : UInt<1>, flip a_addr : UInt<13>, flip a_din : UInt<32>, a_dout : UInt<32>, flip b_en : UInt<1>, flip b_wr : UInt<1>, flip b_addr : UInt<11>, flip b_din : UInt<64>, b_dout : UInt<64>}

    inst bram_1 of BRAMBlackBoxSingle_7 @[ME.scala 202:24]
    bram_1.b_dout is invalid
    bram_1.b_din is invalid
    bram_1.b_addr is invalid
    bram_1.b_wr is invalid
    bram_1.a_dout is invalid
    bram_1.a_din is invalid
    bram_1.a_addr is invalid
    bram_1.a_wr is invalid
    bram_1.clk is invalid
    node _bram_1_io_a_wr_T = mux(io.a_en, io.a_wr, io.b_wr) @[ME.scala 204:26]
    bram_1.a_wr <= _bram_1_io_a_wr_T @[ME.scala 204:20]
    node _bram_1_io_a_addr_T = shr(io.a_addr, 2) @[ME.scala 205:49]
    node _bram_1_io_a_addr_T_1 = shl(io.b_addr, 1) @[ME.scala 205:67]
    node _bram_1_io_a_addr_T_2 = mux(io.a_en, _bram_1_io_a_addr_T, _bram_1_io_a_addr_T_1) @[ME.scala 205:28]
    bram_1.a_addr <= _bram_1_io_a_addr_T_2 @[ME.scala 205:22]
    node _bram_1_io_a_din_T = bits(io.b_din, 31, 0) @[ME.scala 206:55]
    node _bram_1_io_a_din_T_1 = mux(io.a_en, io.a_din, _bram_1_io_a_din_T) @[ME.scala 206:27]
    bram_1.a_din <= _bram_1_io_a_din_T_1 @[ME.scala 206:21]
    node _io_b_dout_T = cat(bram_1.b_dout, bram_1.a_dout) @[Cat.scala 33:92]
    io.b_dout <= _io_b_dout_T @[ME.scala 207:15]
    node _bram_1_io_b_wr_T = mux(io.a_en, UInt<1>("h0"), io.b_wr) @[ME.scala 208:26]
    bram_1.b_wr <= _bram_1_io_b_wr_T @[ME.scala 208:20]
    node _bram_1_io_b_addr_T = shl(io.b_addr, 1) @[ME.scala 209:36]
    node _bram_1_io_b_addr_T_1 = add(_bram_1_io_b_addr_T, UInt<1>("h1")) @[ME.scala 209:42]
    node _bram_1_io_b_addr_T_2 = tail(_bram_1_io_b_addr_T_1, 1) @[ME.scala 209:42]
    bram_1.b_addr <= _bram_1_io_b_addr_T_2 @[ME.scala 209:22]
    node _bram_1_io_b_din_T = bits(io.b_din, 63, 32) @[ME.scala 210:32]
    bram_1.b_din <= _bram_1_io_b_din_T @[ME.scala 210:21]
    io.a_dout <= bram_1.a_dout @[ME.scala 211:15]
    bram_1.clk <= io.clk @[ME.scala 212:19]

  extmodule BRAMBlackBoxSingle_8 :
    input clk : Clock
    input a_wr : UInt<1>
    input a_addr : UInt<11>
    input a_din : UInt<32>
    output a_dout : UInt<32>
    input b_wr : UInt<1>
    input b_addr : UInt<11>
    input b_din : UInt<32>
    output b_dout : UInt<32>
    defname = BRAMBlackBoxSingle
    parameter DATA = 32
    parameter ADDR = 11

  module BRAMBlackBoxAsymm_8 :
    input clock : Clock
    input reset : Reset
    output io : { flip clk : Clock, flip a_en : UInt<1>, flip a_wr : UInt<1>, flip a_addr : UInt<13>, flip a_din : UInt<32>, a_dout : UInt<32>, flip b_en : UInt<1>, flip b_wr : UInt<1>, flip b_addr : UInt<11>, flip b_din : UInt<64>, b_dout : UInt<64>}

    inst bram_1 of BRAMBlackBoxSingle_8 @[ME.scala 202:24]
    bram_1.b_dout is invalid
    bram_1.b_din is invalid
    bram_1.b_addr is invalid
    bram_1.b_wr is invalid
    bram_1.a_dout is invalid
    bram_1.a_din is invalid
    bram_1.a_addr is invalid
    bram_1.a_wr is invalid
    bram_1.clk is invalid
    node _bram_1_io_a_wr_T = mux(io.a_en, io.a_wr, io.b_wr) @[ME.scala 204:26]
    bram_1.a_wr <= _bram_1_io_a_wr_T @[ME.scala 204:20]
    node _bram_1_io_a_addr_T = shr(io.a_addr, 2) @[ME.scala 205:49]
    node _bram_1_io_a_addr_T_1 = shl(io.b_addr, 1) @[ME.scala 205:67]
    node _bram_1_io_a_addr_T_2 = mux(io.a_en, _bram_1_io_a_addr_T, _bram_1_io_a_addr_T_1) @[ME.scala 205:28]
    bram_1.a_addr <= _bram_1_io_a_addr_T_2 @[ME.scala 205:22]
    node _bram_1_io_a_din_T = bits(io.b_din, 31, 0) @[ME.scala 206:55]
    node _bram_1_io_a_din_T_1 = mux(io.a_en, io.a_din, _bram_1_io_a_din_T) @[ME.scala 206:27]
    bram_1.a_din <= _bram_1_io_a_din_T_1 @[ME.scala 206:21]
    node _io_b_dout_T = cat(bram_1.b_dout, bram_1.a_dout) @[Cat.scala 33:92]
    io.b_dout <= _io_b_dout_T @[ME.scala 207:15]
    node _bram_1_io_b_wr_T = mux(io.a_en, UInt<1>("h0"), io.b_wr) @[ME.scala 208:26]
    bram_1.b_wr <= _bram_1_io_b_wr_T @[ME.scala 208:20]
    node _bram_1_io_b_addr_T = shl(io.b_addr, 1) @[ME.scala 209:36]
    node _bram_1_io_b_addr_T_1 = add(_bram_1_io_b_addr_T, UInt<1>("h1")) @[ME.scala 209:42]
    node _bram_1_io_b_addr_T_2 = tail(_bram_1_io_b_addr_T_1, 1) @[ME.scala 209:42]
    bram_1.b_addr <= _bram_1_io_b_addr_T_2 @[ME.scala 209:22]
    node _bram_1_io_b_din_T = bits(io.b_din, 63, 32) @[ME.scala 210:32]
    bram_1.b_din <= _bram_1_io_b_din_T @[ME.scala 210:21]
    io.a_dout <= bram_1.a_dout @[ME.scala 211:15]
    bram_1.clk <= io.clk @[ME.scala 212:19]

  extmodule BRAMBlackBoxSingle_9 :
    input clk : Clock
    input a_wr : UInt<1>
    input a_addr : UInt<11>
    input a_din : UInt<32>
    output a_dout : UInt<32>
    input b_wr : UInt<1>
    input b_addr : UInt<11>
    input b_din : UInt<32>
    output b_dout : UInt<32>
    defname = BRAMBlackBoxSingle
    parameter DATA = 32
    parameter ADDR = 11

  module BRAMBlackBoxAsymm_9 :
    input clock : Clock
    input reset : Reset
    output io : { flip clk : Clock, flip a_en : UInt<1>, flip a_wr : UInt<1>, flip a_addr : UInt<13>, flip a_din : UInt<32>, a_dout : UInt<32>, flip b_en : UInt<1>, flip b_wr : UInt<1>, flip b_addr : UInt<11>, flip b_din : UInt<64>, b_dout : UInt<64>}

    inst bram_1 of BRAMBlackBoxSingle_9 @[ME.scala 202:24]
    bram_1.b_dout is invalid
    bram_1.b_din is invalid
    bram_1.b_addr is invalid
    bram_1.b_wr is invalid
    bram_1.a_dout is invalid
    bram_1.a_din is invalid
    bram_1.a_addr is invalid
    bram_1.a_wr is invalid
    bram_1.clk is invalid
    node _bram_1_io_a_wr_T = mux(io.a_en, io.a_wr, io.b_wr) @[ME.scala 204:26]
    bram_1.a_wr <= _bram_1_io_a_wr_T @[ME.scala 204:20]
    node _bram_1_io_a_addr_T = shr(io.a_addr, 2) @[ME.scala 205:49]
    node _bram_1_io_a_addr_T_1 = shl(io.b_addr, 1) @[ME.scala 205:67]
    node _bram_1_io_a_addr_T_2 = mux(io.a_en, _bram_1_io_a_addr_T, _bram_1_io_a_addr_T_1) @[ME.scala 205:28]
    bram_1.a_addr <= _bram_1_io_a_addr_T_2 @[ME.scala 205:22]
    node _bram_1_io_a_din_T = bits(io.b_din, 31, 0) @[ME.scala 206:55]
    node _bram_1_io_a_din_T_1 = mux(io.a_en, io.a_din, _bram_1_io_a_din_T) @[ME.scala 206:27]
    bram_1.a_din <= _bram_1_io_a_din_T_1 @[ME.scala 206:21]
    node _io_b_dout_T = cat(bram_1.b_dout, bram_1.a_dout) @[Cat.scala 33:92]
    io.b_dout <= _io_b_dout_T @[ME.scala 207:15]
    node _bram_1_io_b_wr_T = mux(io.a_en, UInt<1>("h0"), io.b_wr) @[ME.scala 208:26]
    bram_1.b_wr <= _bram_1_io_b_wr_T @[ME.scala 208:20]
    node _bram_1_io_b_addr_T = shl(io.b_addr, 1) @[ME.scala 209:36]
    node _bram_1_io_b_addr_T_1 = add(_bram_1_io_b_addr_T, UInt<1>("h1")) @[ME.scala 209:42]
    node _bram_1_io_b_addr_T_2 = tail(_bram_1_io_b_addr_T_1, 1) @[ME.scala 209:42]
    bram_1.b_addr <= _bram_1_io_b_addr_T_2 @[ME.scala 209:22]
    node _bram_1_io_b_din_T = bits(io.b_din, 63, 32) @[ME.scala 210:32]
    bram_1.b_din <= _bram_1_io_b_din_T @[ME.scala 210:21]
    io.a_dout <= bram_1.a_dout @[ME.scala 211:15]
    bram_1.clk <= io.clk @[ME.scala 212:19]

  module Queue_25 :
    input clock : Clock
    input reset : Reset
    output io : { flip enq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, deq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, count : UInt<8>}

    cmem ram : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>} [128] @[Decoupled.scala 275:95]
    reg enq_ptr_value : UInt<7>, clock with :
      reset => (reset, UInt<7>("h0")) @[Counter.scala 61:40]
    reg deq_ptr_value : UInt<7>, clock with :
      reset => (reset, UInt<7>("h0")) @[Counter.scala 61:40]
    reg maybe_full : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[Decoupled.scala 278:27]
    node ptr_match = eq(enq_ptr_value, deq_ptr_value) @[Decoupled.scala 279:33]
    node _empty_T = eq(maybe_full, UInt<1>("h0")) @[Decoupled.scala 280:28]
    node empty = and(ptr_match, _empty_T) @[Decoupled.scala 280:25]
    node full = and(ptr_match, maybe_full) @[Decoupled.scala 281:24]
    node _do_enq_T = and(io.enq.ready, io.enq.valid) @[Decoupled.scala 52:35]
    wire do_enq : UInt<1>
    do_enq <= _do_enq_T
    node _do_deq_T = and(io.deq.ready, io.deq.valid) @[Decoupled.scala 52:35]
    wire do_deq : UInt<1>
    do_deq <= _do_deq_T
    when do_enq : @[Decoupled.scala 288:16]
      infer mport MPORT = ram[enq_ptr_value], clock @[Decoupled.scala 289:8]
      MPORT <= io.enq.bits @[Decoupled.scala 289:24]
      node wrap = eq(enq_ptr_value, UInt<7>("h7f")) @[Counter.scala 73:24]
      node _value_T = add(enq_ptr_value, UInt<1>("h1")) @[Counter.scala 77:24]
      node _value_T_1 = tail(_value_T, 1) @[Counter.scala 77:24]
      enq_ptr_value <= _value_T_1 @[Counter.scala 77:15]
    when do_deq : @[Decoupled.scala 292:16]
      node wrap_1 = eq(deq_ptr_value, UInt<7>("h7f")) @[Counter.scala 73:24]
      node _value_T_2 = add(deq_ptr_value, UInt<1>("h1")) @[Counter.scala 77:24]
      node _value_T_3 = tail(_value_T_2, 1) @[Counter.scala 77:24]
      deq_ptr_value <= _value_T_3 @[Counter.scala 77:15]
    node _T = neq(do_enq, do_deq) @[Decoupled.scala 295:15]
    when _T : @[Decoupled.scala 295:27]
      maybe_full <= do_enq @[Decoupled.scala 296:16]
    when UInt<1>("h0") : @[Decoupled.scala 298:15]
      enq_ptr_value <= UInt<1>("h0") @[Counter.scala 98:11]
      deq_ptr_value <= UInt<1>("h0") @[Counter.scala 98:11]
      maybe_full <= UInt<1>("h0") @[Decoupled.scala 301:16]
    node _io_deq_valid_T = eq(empty, UInt<1>("h0")) @[Decoupled.scala 304:19]
    io.deq.valid <= _io_deq_valid_T @[Decoupled.scala 304:16]
    node _io_enq_ready_T = eq(full, UInt<1>("h0")) @[Decoupled.scala 305:19]
    io.enq.ready <= _io_enq_ready_T @[Decoupled.scala 305:16]
    infer mport io_deq_bits_MPORT = ram[deq_ptr_value], clock @[Decoupled.scala 312:23]
    io.deq.bits <= io_deq_bits_MPORT @[Decoupled.scala 312:17]
    node _ptr_diff_T = sub(enq_ptr_value, deq_ptr_value) @[Decoupled.scala 328:32]
    node ptr_diff = tail(_ptr_diff_T, 1) @[Decoupled.scala 328:32]
    node _io_count_T = and(maybe_full, ptr_match) @[Decoupled.scala 331:32]
    node _io_count_T_1 = mux(_io_count_T, UInt<8>("h80"), UInt<1>("h0")) @[Decoupled.scala 331:20]
    node _io_count_T_2 = or(_io_count_T_1, ptr_diff) @[Decoupled.scala 331:62]
    io.count <= _io_count_T_2 @[Decoupled.scala 331:14]

  module Queue_26 :
    input clock : Clock
    input reset : Reset
    output io : { flip enq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, deq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, count : UInt<8>}

    cmem ram : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>} [128] @[Decoupled.scala 275:95]
    reg enq_ptr_value : UInt<7>, clock with :
      reset => (reset, UInt<7>("h0")) @[Counter.scala 61:40]
    reg deq_ptr_value : UInt<7>, clock with :
      reset => (reset, UInt<7>("h0")) @[Counter.scala 61:40]
    reg maybe_full : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[Decoupled.scala 278:27]
    node ptr_match = eq(enq_ptr_value, deq_ptr_value) @[Decoupled.scala 279:33]
    node _empty_T = eq(maybe_full, UInt<1>("h0")) @[Decoupled.scala 280:28]
    node empty = and(ptr_match, _empty_T) @[Decoupled.scala 280:25]
    node full = and(ptr_match, maybe_full) @[Decoupled.scala 281:24]
    node _do_enq_T = and(io.enq.ready, io.enq.valid) @[Decoupled.scala 52:35]
    wire do_enq : UInt<1>
    do_enq <= _do_enq_T
    node _do_deq_T = and(io.deq.ready, io.deq.valid) @[Decoupled.scala 52:35]
    wire do_deq : UInt<1>
    do_deq <= _do_deq_T
    when do_enq : @[Decoupled.scala 288:16]
      infer mport MPORT = ram[enq_ptr_value], clock @[Decoupled.scala 289:8]
      MPORT <= io.enq.bits @[Decoupled.scala 289:24]
      node wrap = eq(enq_ptr_value, UInt<7>("h7f")) @[Counter.scala 73:24]
      node _value_T = add(enq_ptr_value, UInt<1>("h1")) @[Counter.scala 77:24]
      node _value_T_1 = tail(_value_T, 1) @[Counter.scala 77:24]
      enq_ptr_value <= _value_T_1 @[Counter.scala 77:15]
    when do_deq : @[Decoupled.scala 292:16]
      node wrap_1 = eq(deq_ptr_value, UInt<7>("h7f")) @[Counter.scala 73:24]
      node _value_T_2 = add(deq_ptr_value, UInt<1>("h1")) @[Counter.scala 77:24]
      node _value_T_3 = tail(_value_T_2, 1) @[Counter.scala 77:24]
      deq_ptr_value <= _value_T_3 @[Counter.scala 77:15]
    node _T = neq(do_enq, do_deq) @[Decoupled.scala 295:15]
    when _T : @[Decoupled.scala 295:27]
      maybe_full <= do_enq @[Decoupled.scala 296:16]
    when UInt<1>("h0") : @[Decoupled.scala 298:15]
      enq_ptr_value <= UInt<1>("h0") @[Counter.scala 98:11]
      deq_ptr_value <= UInt<1>("h0") @[Counter.scala 98:11]
      maybe_full <= UInt<1>("h0") @[Decoupled.scala 301:16]
    node _io_deq_valid_T = eq(empty, UInt<1>("h0")) @[Decoupled.scala 304:19]
    io.deq.valid <= _io_deq_valid_T @[Decoupled.scala 304:16]
    node _io_enq_ready_T = eq(full, UInt<1>("h0")) @[Decoupled.scala 305:19]
    io.enq.ready <= _io_enq_ready_T @[Decoupled.scala 305:16]
    infer mport io_deq_bits_MPORT = ram[deq_ptr_value], clock @[Decoupled.scala 312:23]
    io.deq.bits <= io_deq_bits_MPORT @[Decoupled.scala 312:17]
    node _ptr_diff_T = sub(enq_ptr_value, deq_ptr_value) @[Decoupled.scala 328:32]
    node ptr_diff = tail(_ptr_diff_T, 1) @[Decoupled.scala 328:32]
    node _io_count_T = and(maybe_full, ptr_match) @[Decoupled.scala 331:32]
    node _io_count_T_1 = mux(_io_count_T, UInt<8>("h80"), UInt<1>("h0")) @[Decoupled.scala 331:20]
    node _io_count_T_2 = or(_io_count_T_1, ptr_diff) @[Decoupled.scala 331:62]
    io.count <= _io_count_T_2 @[Decoupled.scala 331:14]

  module RRArbiter_2 :
    input clock : Clock
    input reset : Reset
    output io : { flip in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}[2], out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, chosen : UInt<1>}

    wire choice : UInt
    choice <= UInt<1>("h1")
    io.chosen <= choice @[Arbiter.scala 54:13]
    io.out.valid <= io.in[io.chosen].valid @[Arbiter.scala 55:16]
    io.out.bits <= io.in[io.chosen].bits @[Arbiter.scala 56:15]
    node _ctrl_validMask_grantMask_lastGrant_T = and(io.out.ready, io.out.valid) @[Decoupled.scala 52:35]
    reg lastGrant : UInt<1>, clock with :
      reset => (UInt<1>("h0"), lastGrant) @[Reg.scala 19:16]
    when _ctrl_validMask_grantMask_lastGrant_T : @[Reg.scala 20:18]
      lastGrant <= io.chosen @[Reg.scala 20:22]
    node grantMask_0 = gt(UInt<1>("h0"), lastGrant) @[Arbiter.scala 81:49]
    node grantMask_1 = gt(UInt<1>("h1"), lastGrant) @[Arbiter.scala 81:49]
    node validMask_0 = and(io.in[0].valid, grantMask_0) @[Arbiter.scala 82:76]
    node validMask_1 = and(io.in[1].valid, grantMask_1) @[Arbiter.scala 82:76]
    node _ctrl_T = or(validMask_0, validMask_1) @[Arbiter.scala 45:68]
    node _ctrl_T_1 = or(_ctrl_T, io.in[0].valid) @[Arbiter.scala 45:68]
    node ctrl_1 = eq(validMask_0, UInt<1>("h0")) @[Arbiter.scala 45:78]
    node ctrl_2 = eq(_ctrl_T, UInt<1>("h0")) @[Arbiter.scala 45:78]
    node ctrl_3 = eq(_ctrl_T_1, UInt<1>("h0")) @[Arbiter.scala 45:78]
    node _T = and(UInt<1>("h1"), grantMask_0) @[Arbiter.scala 86:34]
    node _T_1 = or(_T, ctrl_2) @[Arbiter.scala 86:50]
    node _T_2 = and(ctrl_1, grantMask_1) @[Arbiter.scala 86:34]
    node _T_3 = or(_T_2, ctrl_3) @[Arbiter.scala 86:50]
    node _io_in_0_ready_T = and(_T_1, io.out.ready) @[Arbiter.scala 74:21]
    io.in[0].ready <= _io_in_0_ready_T @[Arbiter.scala 74:16]
    node _io_in_1_ready_T = and(_T_3, io.out.ready) @[Arbiter.scala 74:21]
    io.in[1].ready <= _io_in_1_ready_T @[Arbiter.scala 74:16]
    when io.in[0].valid : @[Arbiter.scala 91:26]
      choice <= UInt<1>("h0") @[Arbiter.scala 91:35]
    when validMask_1 : @[Arbiter.scala 93:24]
      choice <= UInt<1>("h1") @[Arbiter.scala 93:33]

  module FirstInterconnectPE_2 :
    input clock : Clock
    input reset : Reset
    output io : { flip sample_entering : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, flip sample_looping : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, sample_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}}

    inst queue_entering of Queue_25 @[Decoupled.scala 377:21]
    queue_entering.clock <= clock
    queue_entering.reset <= reset
    queue_entering.io.enq.valid <= io.sample_entering.valid @[Decoupled.scala 379:22]
    queue_entering.io.enq.bits.clock_cycles <= io.sample_entering.bits.clock_cycles @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.last <= io.sample_entering.bits.last @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.dest <= io.sample_entering.bits.dest @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.weights[0] <= io.sample_entering.bits.weights[0] @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.weights[1] <= io.sample_entering.bits.weights[1] @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.weights[2] <= io.sample_entering.bits.weights[2] @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.weights[3] <= io.sample_entering.bits.weights[3] @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.weights[4] <= io.sample_entering.bits.weights[4] @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.scores[0] <= io.sample_entering.bits.scores[0] @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.scores[1] <= io.sample_entering.bits.scores[1] @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.scores[2] <= io.sample_entering.bits.scores[2] @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.scores[3] <= io.sample_entering.bits.scores[3] @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.scores[4] <= io.sample_entering.bits.scores[4] @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.scores[5] <= io.sample_entering.bits.scores[5] @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.tree_to_exec <= io.sample_entering.bits.tree_to_exec @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.search_for_root <= io.sample_entering.bits.search_for_root @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.shift <= io.sample_entering.bits.shift @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.offset <= io.sample_entering.bits.offset @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.features[0] <= io.sample_entering.bits.features[0] @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.features[1] <= io.sample_entering.bits.features[1] @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.features[2] <= io.sample_entering.bits.features[2] @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.features[3] <= io.sample_entering.bits.features[3] @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.features[4] <= io.sample_entering.bits.features[4] @[Decoupled.scala 380:21]
    io.sample_entering.ready <= queue_entering.io.enq.ready @[Decoupled.scala 381:17]
    inst queue_looping of Queue_26 @[Decoupled.scala 377:21]
    queue_looping.clock <= clock
    queue_looping.reset <= reset
    queue_looping.io.enq.valid <= io.sample_looping.valid @[Decoupled.scala 379:22]
    queue_looping.io.enq.bits.clock_cycles <= io.sample_looping.bits.clock_cycles @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.last <= io.sample_looping.bits.last @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.dest <= io.sample_looping.bits.dest @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.weights[0] <= io.sample_looping.bits.weights[0] @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.weights[1] <= io.sample_looping.bits.weights[1] @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.weights[2] <= io.sample_looping.bits.weights[2] @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.weights[3] <= io.sample_looping.bits.weights[3] @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.weights[4] <= io.sample_looping.bits.weights[4] @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.scores[0] <= io.sample_looping.bits.scores[0] @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.scores[1] <= io.sample_looping.bits.scores[1] @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.scores[2] <= io.sample_looping.bits.scores[2] @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.scores[3] <= io.sample_looping.bits.scores[3] @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.scores[4] <= io.sample_looping.bits.scores[4] @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.scores[5] <= io.sample_looping.bits.scores[5] @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.tree_to_exec <= io.sample_looping.bits.tree_to_exec @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.search_for_root <= io.sample_looping.bits.search_for_root @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.shift <= io.sample_looping.bits.shift @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.offset <= io.sample_looping.bits.offset @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.features[0] <= io.sample_looping.bits.features[0] @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.features[1] <= io.sample_looping.bits.features[1] @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.features[2] <= io.sample_looping.bits.features[2] @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.features[3] <= io.sample_looping.bits.features[3] @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.features[4] <= io.sample_looping.bits.features[4] @[Decoupled.scala 380:21]
    io.sample_looping.ready <= queue_looping.io.enq.ready @[Decoupled.scala 381:17]
    inst arbiter of RRArbiter_2 @[Interconnect.scala 54:25]
    arbiter.clock <= clock
    arbiter.reset <= reset
    arbiter.io.in[0] <= queue_entering.io.deq @[Interconnect.scala 55:22]
    arbiter.io.in[1] <= queue_looping.io.deq @[Interconnect.scala 56:22]
    io.sample_out.bits <= arbiter.io.out.bits @[Interconnect.scala 57:19]
    io.sample_out.valid <= arbiter.io.out.valid @[Interconnect.scala 57:19]
    arbiter.io.out.ready <= io.sample_out.ready @[Interconnect.scala 57:19]

  module Queue_27 :
    input clock : Clock
    input reset : Reset
    output io : { flip enq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, deq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, count : UInt<3>}

    cmem ram : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>} [4] @[Decoupled.scala 275:95]
    reg enq_ptr_value : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[Counter.scala 61:40]
    reg deq_ptr_value : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[Counter.scala 61:40]
    reg maybe_full : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[Decoupled.scala 278:27]
    node ptr_match = eq(enq_ptr_value, deq_ptr_value) @[Decoupled.scala 279:33]
    node _empty_T = eq(maybe_full, UInt<1>("h0")) @[Decoupled.scala 280:28]
    node empty = and(ptr_match, _empty_T) @[Decoupled.scala 280:25]
    node full = and(ptr_match, maybe_full) @[Decoupled.scala 281:24]
    node _do_enq_T = and(io.enq.ready, io.enq.valid) @[Decoupled.scala 52:35]
    wire do_enq : UInt<1>
    do_enq <= _do_enq_T
    node _do_deq_T = and(io.deq.ready, io.deq.valid) @[Decoupled.scala 52:35]
    wire do_deq : UInt<1>
    do_deq <= _do_deq_T
    when do_enq : @[Decoupled.scala 288:16]
      infer mport MPORT = ram[enq_ptr_value], clock @[Decoupled.scala 289:8]
      MPORT <= io.enq.bits @[Decoupled.scala 289:24]
      node wrap = eq(enq_ptr_value, UInt<2>("h3")) @[Counter.scala 73:24]
      node _value_T = add(enq_ptr_value, UInt<1>("h1")) @[Counter.scala 77:24]
      node _value_T_1 = tail(_value_T, 1) @[Counter.scala 77:24]
      enq_ptr_value <= _value_T_1 @[Counter.scala 77:15]
    when do_deq : @[Decoupled.scala 292:16]
      node wrap_1 = eq(deq_ptr_value, UInt<2>("h3")) @[Counter.scala 73:24]
      node _value_T_2 = add(deq_ptr_value, UInt<1>("h1")) @[Counter.scala 77:24]
      node _value_T_3 = tail(_value_T_2, 1) @[Counter.scala 77:24]
      deq_ptr_value <= _value_T_3 @[Counter.scala 77:15]
    node _T = neq(do_enq, do_deq) @[Decoupled.scala 295:15]
    when _T : @[Decoupled.scala 295:27]
      maybe_full <= do_enq @[Decoupled.scala 296:16]
    when UInt<1>("h0") : @[Decoupled.scala 298:15]
      enq_ptr_value <= UInt<1>("h0") @[Counter.scala 98:11]
      deq_ptr_value <= UInt<1>("h0") @[Counter.scala 98:11]
      maybe_full <= UInt<1>("h0") @[Decoupled.scala 301:16]
    node _io_deq_valid_T = eq(empty, UInt<1>("h0")) @[Decoupled.scala 304:19]
    io.deq.valid <= _io_deq_valid_T @[Decoupled.scala 304:16]
    node _io_enq_ready_T = eq(full, UInt<1>("h0")) @[Decoupled.scala 305:19]
    io.enq.ready <= _io_enq_ready_T @[Decoupled.scala 305:16]
    infer mport io_deq_bits_MPORT = ram[deq_ptr_value], clock @[Decoupled.scala 312:23]
    io.deq.bits <= io_deq_bits_MPORT @[Decoupled.scala 312:17]
    node _ptr_diff_T = sub(enq_ptr_value, deq_ptr_value) @[Decoupled.scala 328:32]
    node ptr_diff = tail(_ptr_diff_T, 1) @[Decoupled.scala 328:32]
    node _io_count_T = and(maybe_full, ptr_match) @[Decoupled.scala 331:32]
    node _io_count_T_1 = mux(_io_count_T, UInt<3>("h4"), UInt<1>("h0")) @[Decoupled.scala 331:20]
    node _io_count_T_2 = or(_io_count_T_1, ptr_diff) @[Decoupled.scala 331:62]
    io.count <= _io_count_T_2 @[Decoupled.scala 331:14]

  module LastInterconnectPE_2 :
    input clock : Clock
    input reset : Reset
    output io : { flip sample_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, sample_looping : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, sample_leaving : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}}

    inst queue of Queue_27 @[Decoupled.scala 377:21]
    queue.clock <= clock
    queue.reset <= reset
    queue.io.enq.valid <= io.sample_in.valid @[Decoupled.scala 379:22]
    queue.io.enq.bits.clock_cycles <= io.sample_in.bits.clock_cycles @[Decoupled.scala 380:21]
    queue.io.enq.bits.last <= io.sample_in.bits.last @[Decoupled.scala 380:21]
    queue.io.enq.bits.dest <= io.sample_in.bits.dest @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[0] <= io.sample_in.bits.weights[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[1] <= io.sample_in.bits.weights[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[2] <= io.sample_in.bits.weights[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[3] <= io.sample_in.bits.weights[3] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[4] <= io.sample_in.bits.weights[4] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[0] <= io.sample_in.bits.scores[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[1] <= io.sample_in.bits.scores[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[2] <= io.sample_in.bits.scores[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[3] <= io.sample_in.bits.scores[3] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[4] <= io.sample_in.bits.scores[4] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[5] <= io.sample_in.bits.scores[5] @[Decoupled.scala 380:21]
    queue.io.enq.bits.tree_to_exec <= io.sample_in.bits.tree_to_exec @[Decoupled.scala 380:21]
    queue.io.enq.bits.search_for_root <= io.sample_in.bits.search_for_root @[Decoupled.scala 380:21]
    queue.io.enq.bits.shift <= io.sample_in.bits.shift @[Decoupled.scala 380:21]
    queue.io.enq.bits.offset <= io.sample_in.bits.offset @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[0] <= io.sample_in.bits.features[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[1] <= io.sample_in.bits.features[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[2] <= io.sample_in.bits.features[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[3] <= io.sample_in.bits.features[3] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[4] <= io.sample_in.bits.features[4] @[Decoupled.scala 380:21]
    io.sample_in.ready <= queue.io.enq.ready @[Decoupled.scala 381:17]
    io.sample_looping.bits <= queue.io.deq.bits @[Interconnect.scala 18:28]
    io.sample_leaving.bits.features <= queue.io.deq.bits.features @[Interconnect.scala 19:37]
    io.sample_leaving.bits.offset <= queue.io.deq.bits.offset @[Interconnect.scala 20:35]
    io.sample_leaving.bits.shift <= queue.io.deq.bits.shift @[Interconnect.scala 21:34]
    io.sample_leaving.bits.search_for_root <= queue.io.deq.bits.search_for_root @[Interconnect.scala 22:44]
    io.sample_leaving.bits.tree_to_exec <= queue.io.deq.bits.tree_to_exec @[Interconnect.scala 23:41]
    io.sample_leaving.bits.scores <= queue.io.deq.bits.scores @[Interconnect.scala 24:35]
    io.sample_leaving.bits.weights <= queue.io.deq.bits.weights @[Interconnect.scala 25:36]
    io.sample_leaving.bits.dest <= queue.io.deq.bits.dest @[Interconnect.scala 26:33]
    node _io_sample_leaving_bits_last_T = and(queue.io.deq.bits.last, queue.io.deq.bits.dest) @[Interconnect.scala 27:52]
    io.sample_leaving.bits.last <= _io_sample_leaving_bits_last_T @[Interconnect.scala 27:33]
    node _io_sample_looping_valid_T = eq(queue.io.deq.bits.dest, UInt<1>("h0")) @[Interconnect.scala 28:46]
    node _io_sample_looping_valid_T_1 = and(queue.io.deq.valid, _io_sample_looping_valid_T) @[Interconnect.scala 28:44]
    io.sample_looping.valid <= _io_sample_looping_valid_T_1 @[Interconnect.scala 28:29]
    node _io_sample_leaving_valid_T = and(queue.io.deq.valid, queue.io.deq.bits.dest) @[Interconnect.scala 29:44]
    io.sample_leaving.valid <= _io_sample_leaving_valid_T @[Interconnect.scala 29:29]
    io.sample_leaving.bits.clock_cycles <= queue.io.deq.bits.clock_cycles @[Interconnect.scala 30:41]
    node _queue_io_deq_ready_T = and(io.sample_leaving.ready, queue.io.deq.bits.dest) @[Interconnect.scala 32:45]
    node _queue_io_deq_ready_T_1 = eq(queue.io.deq.bits.dest, UInt<1>("h0")) @[Interconnect.scala 32:93]
    node _queue_io_deq_ready_T_2 = and(io.sample_looping.ready, _queue_io_deq_ready_T_1) @[Interconnect.scala 32:91]
    node _queue_io_deq_ready_T_3 = or(_queue_io_deq_ready_T, _queue_io_deq_ready_T_2) @[Interconnect.scala 32:64]
    queue.io.deq.ready <= _queue_io_deq_ready_T_3 @[Interconnect.scala 32:17]

  module Queue_28 :
    input clock : Clock
    input reset : Reset
    output io : { flip enq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, deq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, count : UInt<2>}

    cmem ram : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>} [3] @[Decoupled.scala 275:95]
    reg enq_ptr_value : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[Counter.scala 61:40]
    reg deq_ptr_value : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[Counter.scala 61:40]
    reg maybe_full : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[Decoupled.scala 278:27]
    node ptr_match = eq(enq_ptr_value, deq_ptr_value) @[Decoupled.scala 279:33]
    node _empty_T = eq(maybe_full, UInt<1>("h0")) @[Decoupled.scala 280:28]
    node empty = and(ptr_match, _empty_T) @[Decoupled.scala 280:25]
    node full = and(ptr_match, maybe_full) @[Decoupled.scala 281:24]
    node _do_enq_T = and(io.enq.ready, io.enq.valid) @[Decoupled.scala 52:35]
    wire do_enq : UInt<1>
    do_enq <= _do_enq_T
    node _do_deq_T = and(io.deq.ready, io.deq.valid) @[Decoupled.scala 52:35]
    wire do_deq : UInt<1>
    do_deq <= _do_deq_T
    when do_enq : @[Decoupled.scala 288:16]
      infer mport MPORT = ram[enq_ptr_value], clock @[Decoupled.scala 289:8]
      MPORT <= io.enq.bits @[Decoupled.scala 289:24]
      node wrap = eq(enq_ptr_value, UInt<2>("h2")) @[Counter.scala 73:24]
      node _value_T = add(enq_ptr_value, UInt<1>("h1")) @[Counter.scala 77:24]
      node _value_T_1 = tail(_value_T, 1) @[Counter.scala 77:24]
      enq_ptr_value <= _value_T_1 @[Counter.scala 77:15]
      when wrap : @[Counter.scala 87:20]
        enq_ptr_value <= UInt<1>("h0") @[Counter.scala 87:28]
    when do_deq : @[Decoupled.scala 292:16]
      node wrap_1 = eq(deq_ptr_value, UInt<2>("h2")) @[Counter.scala 73:24]
      node _value_T_2 = add(deq_ptr_value, UInt<1>("h1")) @[Counter.scala 77:24]
      node _value_T_3 = tail(_value_T_2, 1) @[Counter.scala 77:24]
      deq_ptr_value <= _value_T_3 @[Counter.scala 77:15]
      when wrap_1 : @[Counter.scala 87:20]
        deq_ptr_value <= UInt<1>("h0") @[Counter.scala 87:28]
    node _T = neq(do_enq, do_deq) @[Decoupled.scala 295:15]
    when _T : @[Decoupled.scala 295:27]
      maybe_full <= do_enq @[Decoupled.scala 296:16]
    when UInt<1>("h0") : @[Decoupled.scala 298:15]
      enq_ptr_value <= UInt<1>("h0") @[Counter.scala 98:11]
      deq_ptr_value <= UInt<1>("h0") @[Counter.scala 98:11]
      maybe_full <= UInt<1>("h0") @[Decoupled.scala 301:16]
    node _io_deq_valid_T = eq(empty, UInt<1>("h0")) @[Decoupled.scala 304:19]
    io.deq.valid <= _io_deq_valid_T @[Decoupled.scala 304:16]
    node _io_enq_ready_T = eq(full, UInt<1>("h0")) @[Decoupled.scala 305:19]
    io.enq.ready <= _io_enq_ready_T @[Decoupled.scala 305:16]
    infer mport io_deq_bits_MPORT = ram[deq_ptr_value], clock @[Decoupled.scala 312:23]
    io.deq.bits <= io_deq_bits_MPORT @[Decoupled.scala 312:17]
    node _ptr_diff_T = sub(enq_ptr_value, deq_ptr_value) @[Decoupled.scala 328:32]
    node ptr_diff = tail(_ptr_diff_T, 1) @[Decoupled.scala 328:32]
    node _io_count_T = mux(maybe_full, UInt<2>("h3"), UInt<1>("h0")) @[Decoupled.scala 335:10]
    node _io_count_T_1 = gt(deq_ptr_value, enq_ptr_value) @[Decoupled.scala 336:25]
    node _io_count_T_2 = add(UInt<2>("h3"), ptr_diff) @[Decoupled.scala 336:57]
    node _io_count_T_3 = tail(_io_count_T_2, 1) @[Decoupled.scala 336:57]
    node _io_count_T_4 = mux(_io_count_T_1, _io_count_T_3, ptr_diff) @[Decoupled.scala 336:10]
    node _io_count_T_5 = mux(ptr_match, _io_count_T, _io_count_T_4) @[Decoupled.scala 333:20]
    io.count <= _io_count_T_5 @[Decoupled.scala 333:14]

  module IncrementTreePE_2 :
    input clock : Clock
    input reset : Reset
    output io : { flip sample_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, sample_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}}

    inst queue of Queue_28 @[Decoupled.scala 377:21]
    queue.clock <= clock
    queue.reset <= reset
    queue.io.enq.valid <= io.sample_in.valid @[Decoupled.scala 379:22]
    queue.io.enq.bits.clock_cycles <= io.sample_in.bits.clock_cycles @[Decoupled.scala 380:21]
    queue.io.enq.bits.last <= io.sample_in.bits.last @[Decoupled.scala 380:21]
    queue.io.enq.bits.dest <= io.sample_in.bits.dest @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[0] <= io.sample_in.bits.weights[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[1] <= io.sample_in.bits.weights[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[2] <= io.sample_in.bits.weights[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[3] <= io.sample_in.bits.weights[3] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[4] <= io.sample_in.bits.weights[4] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[0] <= io.sample_in.bits.scores[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[1] <= io.sample_in.bits.scores[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[2] <= io.sample_in.bits.scores[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[3] <= io.sample_in.bits.scores[3] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[4] <= io.sample_in.bits.scores[4] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[5] <= io.sample_in.bits.scores[5] @[Decoupled.scala 380:21]
    queue.io.enq.bits.tree_to_exec <= io.sample_in.bits.tree_to_exec @[Decoupled.scala 380:21]
    queue.io.enq.bits.search_for_root <= io.sample_in.bits.search_for_root @[Decoupled.scala 380:21]
    queue.io.enq.bits.shift <= io.sample_in.bits.shift @[Decoupled.scala 380:21]
    queue.io.enq.bits.offset <= io.sample_in.bits.offset @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[0] <= io.sample_in.bits.features[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[1] <= io.sample_in.bits.features[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[2] <= io.sample_in.bits.features[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[3] <= io.sample_in.bits.features[3] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[4] <= io.sample_in.bits.features[4] @[Decoupled.scala 380:21]
    io.sample_in.ready <= queue.io.enq.ready @[Decoupled.scala 381:17]
    io.sample_out.bits.features <= queue.io.deq.bits.features @[IncrementTreePE.scala 17:33]
    io.sample_out.bits.weights <= queue.io.deq.bits.weights @[IncrementTreePE.scala 18:32]
    node _io_sample_out_bits_tree_to_exec_T = add(queue.io.deq.bits.tree_to_exec, UInt<1>("h1")) @[IncrementTreePE.scala 19:64]
    node _io_sample_out_bits_tree_to_exec_T_1 = tail(_io_sample_out_bits_tree_to_exec_T, 1) @[IncrementTreePE.scala 19:64]
    io.sample_out.bits.tree_to_exec <= _io_sample_out_bits_tree_to_exec_T_1 @[IncrementTreePE.scala 19:37]
    io.sample_out.bits.shift <= queue.io.deq.bits.shift @[IncrementTreePE.scala 20:30]
    node _io_sample_out_bits_offset_T = add(queue.io.deq.bits.tree_to_exec, UInt<1>("h1")) @[IncrementTreePE.scala 21:58]
    node _io_sample_out_bits_offset_T_1 = tail(_io_sample_out_bits_offset_T, 1) @[IncrementTreePE.scala 21:58]
    io.sample_out.bits.offset <= _io_sample_out_bits_offset_T_1 @[IncrementTreePE.scala 21:31]
    io.sample_out.bits.scores <= queue.io.deq.bits.scores @[IncrementTreePE.scala 22:31]
    io.sample_out.bits.search_for_root <= queue.io.deq.bits.search_for_root @[IncrementTreePE.scala 23:40]
    io.sample_out.bits.dest <= queue.io.deq.bits.dest @[IncrementTreePE.scala 24:29]
    io.sample_out.bits.last <= queue.io.deq.bits.last @[IncrementTreePE.scala 25:29]
    io.sample_out.bits.clock_cycles <= queue.io.deq.bits.clock_cycles @[IncrementTreePE.scala 26:37]
    io.sample_out.valid <= queue.io.deq.valid @[IncrementTreePE.scala 28:25]
    queue.io.deq.ready <= io.sample_out.ready @[IncrementTreePE.scala 30:17]

  module Queue_29 :
    input clock : Clock
    input reset : Reset
    output io : { flip enq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, deq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, count : UInt<2>}

    cmem ram : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>} [3] @[Decoupled.scala 275:95]
    reg enq_ptr_value : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[Counter.scala 61:40]
    reg deq_ptr_value : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[Counter.scala 61:40]
    reg maybe_full : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[Decoupled.scala 278:27]
    node ptr_match = eq(enq_ptr_value, deq_ptr_value) @[Decoupled.scala 279:33]
    node _empty_T = eq(maybe_full, UInt<1>("h0")) @[Decoupled.scala 280:28]
    node empty = and(ptr_match, _empty_T) @[Decoupled.scala 280:25]
    node full = and(ptr_match, maybe_full) @[Decoupled.scala 281:24]
    node _do_enq_T = and(io.enq.ready, io.enq.valid) @[Decoupled.scala 52:35]
    wire do_enq : UInt<1>
    do_enq <= _do_enq_T
    node _do_deq_T = and(io.deq.ready, io.deq.valid) @[Decoupled.scala 52:35]
    wire do_deq : UInt<1>
    do_deq <= _do_deq_T
    when do_enq : @[Decoupled.scala 288:16]
      infer mport MPORT = ram[enq_ptr_value], clock @[Decoupled.scala 289:8]
      MPORT <= io.enq.bits @[Decoupled.scala 289:24]
      node wrap = eq(enq_ptr_value, UInt<2>("h2")) @[Counter.scala 73:24]
      node _value_T = add(enq_ptr_value, UInt<1>("h1")) @[Counter.scala 77:24]
      node _value_T_1 = tail(_value_T, 1) @[Counter.scala 77:24]
      enq_ptr_value <= _value_T_1 @[Counter.scala 77:15]
      when wrap : @[Counter.scala 87:20]
        enq_ptr_value <= UInt<1>("h0") @[Counter.scala 87:28]
    when do_deq : @[Decoupled.scala 292:16]
      node wrap_1 = eq(deq_ptr_value, UInt<2>("h2")) @[Counter.scala 73:24]
      node _value_T_2 = add(deq_ptr_value, UInt<1>("h1")) @[Counter.scala 77:24]
      node _value_T_3 = tail(_value_T_2, 1) @[Counter.scala 77:24]
      deq_ptr_value <= _value_T_3 @[Counter.scala 77:15]
      when wrap_1 : @[Counter.scala 87:20]
        deq_ptr_value <= UInt<1>("h0") @[Counter.scala 87:28]
    node _T = neq(do_enq, do_deq) @[Decoupled.scala 295:15]
    when _T : @[Decoupled.scala 295:27]
      maybe_full <= do_enq @[Decoupled.scala 296:16]
    when UInt<1>("h0") : @[Decoupled.scala 298:15]
      enq_ptr_value <= UInt<1>("h0") @[Counter.scala 98:11]
      deq_ptr_value <= UInt<1>("h0") @[Counter.scala 98:11]
      maybe_full <= UInt<1>("h0") @[Decoupled.scala 301:16]
    node _io_deq_valid_T = eq(empty, UInt<1>("h0")) @[Decoupled.scala 304:19]
    io.deq.valid <= _io_deq_valid_T @[Decoupled.scala 304:16]
    node _io_enq_ready_T = eq(full, UInt<1>("h0")) @[Decoupled.scala 305:19]
    io.enq.ready <= _io_enq_ready_T @[Decoupled.scala 305:16]
    infer mport io_deq_bits_MPORT = ram[deq_ptr_value], clock @[Decoupled.scala 312:23]
    io.deq.bits <= io_deq_bits_MPORT @[Decoupled.scala 312:17]
    node _ptr_diff_T = sub(enq_ptr_value, deq_ptr_value) @[Decoupled.scala 328:32]
    node ptr_diff = tail(_ptr_diff_T, 1) @[Decoupled.scala 328:32]
    node _io_count_T = mux(maybe_full, UInt<2>("h3"), UInt<1>("h0")) @[Decoupled.scala 335:10]
    node _io_count_T_1 = gt(deq_ptr_value, enq_ptr_value) @[Decoupled.scala 336:25]
    node _io_count_T_2 = add(UInt<2>("h3"), ptr_diff) @[Decoupled.scala 336:57]
    node _io_count_T_3 = tail(_io_count_T_2, 1) @[Decoupled.scala 336:57]
    node _io_count_T_4 = mux(_io_count_T_1, _io_count_T_3, ptr_diff) @[Decoupled.scala 336:10]
    node _io_count_T_5 = mux(ptr_match, _io_count_T, _io_count_T_4) @[Decoupled.scala 333:20]
    io.count <= _io_count_T_5 @[Decoupled.scala 333:14]

  module TreePE_10 :
    input clock : Clock
    input reset : Reset
    output io : { flip sample_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, flip mem : { flip enable_1 : UInt<1>, flip write_1 : UInt<1>, flip addr_1 : UInt<13>, flip dataIn_1 : UInt<64>, dataOut_1 : UInt<64>, flip enable_2 : UInt<1>, flip write_2 : UInt<1>, flip addr_2 : UInt<13>, flip dataIn_2 : UInt<64>, dataOut_2 : UInt<64>}, sample_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}}

    inst queue of Queue_29 @[Decoupled.scala 377:21]
    queue.clock <= clock
    queue.reset <= reset
    queue.io.enq.valid <= io.sample_in.valid @[Decoupled.scala 379:22]
    queue.io.enq.bits.clock_cycles <= io.sample_in.bits.clock_cycles @[Decoupled.scala 380:21]
    queue.io.enq.bits.last <= io.sample_in.bits.last @[Decoupled.scala 380:21]
    queue.io.enq.bits.dest <= io.sample_in.bits.dest @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[0] <= io.sample_in.bits.weights[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[1] <= io.sample_in.bits.weights[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[2] <= io.sample_in.bits.weights[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[3] <= io.sample_in.bits.weights[3] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[4] <= io.sample_in.bits.weights[4] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[0] <= io.sample_in.bits.scores[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[1] <= io.sample_in.bits.scores[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[2] <= io.sample_in.bits.scores[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[3] <= io.sample_in.bits.scores[3] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[4] <= io.sample_in.bits.scores[4] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[5] <= io.sample_in.bits.scores[5] @[Decoupled.scala 380:21]
    queue.io.enq.bits.tree_to_exec <= io.sample_in.bits.tree_to_exec @[Decoupled.scala 380:21]
    queue.io.enq.bits.search_for_root <= io.sample_in.bits.search_for_root @[Decoupled.scala 380:21]
    queue.io.enq.bits.shift <= io.sample_in.bits.shift @[Decoupled.scala 380:21]
    queue.io.enq.bits.offset <= io.sample_in.bits.offset @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[0] <= io.sample_in.bits.features[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[1] <= io.sample_in.bits.features[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[2] <= io.sample_in.bits.features[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[3] <= io.sample_in.bits.features[3] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[4] <= io.sample_in.bits.features[4] @[Decoupled.scala 380:21]
    io.sample_in.ready <= queue.io.enq.ready @[Decoupled.scala 381:17]
    io.mem.enable_1 <= UInt<1>("h1") @[TreePE.scala 23:21]
    io.mem.addr_1 <= queue.io.deq.bits.offset @[TreePE.scala 24:19]
    io.mem.write_1 <= UInt<1>("h0") @[TreePE.scala 25:20]
    io.mem.dataIn_1 <= UInt<1>("h0") @[TreePE.scala 26:21]
    io.mem.enable_2 is invalid @[TreePE.scala 28:21]
    io.mem.addr_2 is invalid @[TreePE.scala 29:19]
    io.mem.write_2 is invalid @[TreePE.scala 30:20]
    io.mem.dataIn_2 is invalid @[TreePE.scala 31:21]
    reg REG : UInt<1>, clock with :
      reset => (UInt<1>("h0"), REG) @[TreePE.scala 35:17]
    REG <= queue.io.deq.valid @[TreePE.scala 35:17]
    when REG : @[TreePE.scala 35:31]
      node attr_id = bits(io.mem.dataOut_1, 34, 32) @[TreePE.scala 37:37]
      node threshold = bits(io.mem.dataOut_1, 15, 0) @[TreePE.scala 38:39]
      node nodeRA = bits(io.mem.dataOut_1, 31, 16) @[TreePE.scala 39:36]
      node leftChildInfo = bits(io.mem.dataOut_1, 44, 35) @[TreePE.scala 40:43]
      node rightChildInfo = bits(io.mem.dataOut_1, 54, 45) @[TreePE.scala 41:44]
      node leftChildType = bits(io.mem.dataOut_1, 55, 55) @[TreePE.scala 42:43]
      node rightChildType = bits(io.mem.dataOut_1, 56, 56) @[TreePE.scala 43:44]
      node is_valid = bits(io.mem.dataOut_1, 57, 57) @[TreePE.scala 44:38]
      node depth_indicator = bits(io.mem.dataOut_1, 60, 58) @[TreePE.scala 45:45]
      reg REG_1 : Fixed<32><<16>>[5], clock with :
        reset => (UInt<1>("h0"), REG_1) @[TreePE.scala 47:45]
      REG_1 <= queue.io.deq.bits.features @[TreePE.scala 47:45]
      io.sample_out.bits.features <= REG_1 @[TreePE.scala 47:35]
      reg REG_2 : Fixed<16><<8>>[5], clock with :
        reset => (UInt<1>("h0"), REG_2) @[TreePE.scala 48:44]
      REG_2 <= queue.io.deq.bits.weights @[TreePE.scala 48:44]
      io.sample_out.bits.weights <= REG_2 @[TreePE.scala 48:34]
      reg io_sample_out_bits_tree_to_exec_REG : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_tree_to_exec_REG) @[TreePE.scala 49:49]
      io_sample_out_bits_tree_to_exec_REG <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 49:49]
      io.sample_out.bits.tree_to_exec <= io_sample_out_bits_tree_to_exec_REG @[TreePE.scala 49:39]
      reg REG_3 : Fixed<16><<8>>[6], clock with :
        reset => (UInt<1>("h0"), REG_3) @[TreePE.scala 50:43]
      REG_3 <= queue.io.deq.bits.scores @[TreePE.scala 50:43]
      io.sample_out.bits.scores <= REG_3 @[TreePE.scala 50:33]
      io.sample_out.valid <= UInt<1>("h1") @[TreePE.scala 51:27]
      reg io_sample_out_bits_clock_cycles_REG : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_clock_cycles_REG) @[TreePE.scala 52:49]
      io_sample_out_bits_clock_cycles_REG <= queue.io.deq.bits.clock_cycles @[TreePE.scala 52:49]
      io.sample_out.bits.clock_cycles <= io_sample_out_bits_clock_cycles_REG @[TreePE.scala 52:39]
      wire offset : UInt<10> @[TreePE.scala 55:26]
      wire shift : UInt<1> @[TreePE.scala 56:25]
      reg features_bits : Fixed<32><<16>>[5], clock with :
        reset => (UInt<1>("h0"), features_bits) @[TreePE.scala 57:36]
      features_bits <= queue.io.deq.bits.features @[TreePE.scala 57:36]
      reg scores_bits : Fixed<16><<8>>[6], clock with :
        reset => (UInt<1>("h0"), scores_bits) @[TreePE.scala 58:34]
      scores_bits <= queue.io.deq.bits.scores @[TreePE.scala 58:34]
      reg weights_bits : Fixed<16><<8>>[5], clock with :
        reset => (UInt<1>("h0"), weights_bits) @[TreePE.scala 59:35]
      weights_bits <= queue.io.deq.bits.weights @[TreePE.scala 59:35]
      node _shift_T = asFixedPoint(threshold, 8) @[TreePE.scala 60:69]
      node _shift_T_1 = lt(features_bits[attr_id], _shift_T) @[TreePE.scala 60:45]
      node _shift_T_2 = mux(_shift_T_1, leftChildType, rightChildType) @[TreePE.scala 60:21]
      shift <= _shift_T_2 @[TreePE.scala 60:15]
      node _offset_T = asFixedPoint(threshold, 8) @[TreePE.scala 61:70]
      node _offset_T_1 = lt(features_bits[attr_id], _offset_T) @[TreePE.scala 61:46]
      node _offset_T_2 = mux(_offset_T_1, leftChildInfo, rightChildInfo) @[TreePE.scala 61:22]
      offset <= _offset_T_2 @[TreePE.scala 61:16]
      node _io_sample_out_bits_offset_T = eq(shift, UInt<1>("h0")) @[TreePE.scala 62:48]
      reg io_sample_out_bits_offset_REG : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_offset_REG) @[TreePE.scala 62:67]
      io_sample_out_bits_offset_REG <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 62:67]
      node _io_sample_out_bits_offset_T_1 = mux(_io_sample_out_bits_offset_T, io_sample_out_bits_offset_REG, offset) @[TreePE.scala 62:41]
      io.sample_out.bits.offset <= _io_sample_out_bits_offset_T_1 @[TreePE.scala 62:35]
      io.sample_out.bits.shift <= UInt<1>("h0") @[TreePE.scala 63:34]
      node _io_sample_out_bits_search_for_root_T = eq(shift, UInt<1>("h0")) @[TreePE.scala 64:47]
      io.sample_out.bits.search_for_root <= _io_sample_out_bits_search_for_root_T @[TreePE.scala 64:44]
      node _io_sample_out_bits_scores_0_T = eq(shift, UInt<1>("h0")) @[TreePE.scala 66:72]
      node _io_sample_out_bits_scores_0_T_1 = and(_io_sample_out_bits_scores_0_T, is_valid) @[TreePE.scala 66:84]
      node _io_sample_out_bits_scores_0_T_2 = eq(UInt<1>("h0"), offset) @[TreePE.scala 66:102]
      node _io_sample_out_bits_scores_0_T_3 = and(_io_sample_out_bits_scores_0_T_1, _io_sample_out_bits_scores_0_T_2) @[TreePE.scala 66:95]
      node _io_sample_out_bits_scores_0_T_4 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 66:151]
      node _io_sample_out_bits_scores_0_T_5 = mux(_io_sample_out_bits_scores_0_T_3, _io_sample_out_bits_scores_0_T_4, UInt<16>("h0")) @[TreePE.scala 66:64]
      node _io_sample_out_bits_scores_0_T_6 = asFixedPoint(_io_sample_out_bits_scores_0_T_5, 8) @[TreePE.scala 66:178]
      node _io_sample_out_bits_scores_0_T_7 = add(scores_bits[0], _io_sample_out_bits_scores_0_T_6) @[TreePE.scala 66:58]
      node _io_sample_out_bits_scores_0_T_8 = tail(_io_sample_out_bits_scores_0_T_7, 1) @[TreePE.scala 66:58]
      node _io_sample_out_bits_scores_0_T_9 = asFixedPoint(_io_sample_out_bits_scores_0_T_8, 8) @[TreePE.scala 66:58]
      io.sample_out.bits.scores[0] <= _io_sample_out_bits_scores_0_T_9 @[TreePE.scala 66:40]
      node _io_sample_out_bits_scores_1_T = eq(shift, UInt<1>("h0")) @[TreePE.scala 66:72]
      node _io_sample_out_bits_scores_1_T_1 = and(_io_sample_out_bits_scores_1_T, is_valid) @[TreePE.scala 66:84]
      node _io_sample_out_bits_scores_1_T_2 = eq(UInt<1>("h1"), offset) @[TreePE.scala 66:102]
      node _io_sample_out_bits_scores_1_T_3 = and(_io_sample_out_bits_scores_1_T_1, _io_sample_out_bits_scores_1_T_2) @[TreePE.scala 66:95]
      node _io_sample_out_bits_scores_1_T_4 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 66:151]
      node _io_sample_out_bits_scores_1_T_5 = mux(_io_sample_out_bits_scores_1_T_3, _io_sample_out_bits_scores_1_T_4, UInt<16>("h0")) @[TreePE.scala 66:64]
      node _io_sample_out_bits_scores_1_T_6 = asFixedPoint(_io_sample_out_bits_scores_1_T_5, 8) @[TreePE.scala 66:178]
      node _io_sample_out_bits_scores_1_T_7 = add(scores_bits[1], _io_sample_out_bits_scores_1_T_6) @[TreePE.scala 66:58]
      node _io_sample_out_bits_scores_1_T_8 = tail(_io_sample_out_bits_scores_1_T_7, 1) @[TreePE.scala 66:58]
      node _io_sample_out_bits_scores_1_T_9 = asFixedPoint(_io_sample_out_bits_scores_1_T_8, 8) @[TreePE.scala 66:58]
      io.sample_out.bits.scores[1] <= _io_sample_out_bits_scores_1_T_9 @[TreePE.scala 66:40]
      node _io_sample_out_bits_scores_2_T = eq(shift, UInt<1>("h0")) @[TreePE.scala 66:72]
      node _io_sample_out_bits_scores_2_T_1 = and(_io_sample_out_bits_scores_2_T, is_valid) @[TreePE.scala 66:84]
      node _io_sample_out_bits_scores_2_T_2 = eq(UInt<2>("h2"), offset) @[TreePE.scala 66:102]
      node _io_sample_out_bits_scores_2_T_3 = and(_io_sample_out_bits_scores_2_T_1, _io_sample_out_bits_scores_2_T_2) @[TreePE.scala 66:95]
      node _io_sample_out_bits_scores_2_T_4 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 66:151]
      node _io_sample_out_bits_scores_2_T_5 = mux(_io_sample_out_bits_scores_2_T_3, _io_sample_out_bits_scores_2_T_4, UInt<16>("h0")) @[TreePE.scala 66:64]
      node _io_sample_out_bits_scores_2_T_6 = asFixedPoint(_io_sample_out_bits_scores_2_T_5, 8) @[TreePE.scala 66:178]
      node _io_sample_out_bits_scores_2_T_7 = add(scores_bits[2], _io_sample_out_bits_scores_2_T_6) @[TreePE.scala 66:58]
      node _io_sample_out_bits_scores_2_T_8 = tail(_io_sample_out_bits_scores_2_T_7, 1) @[TreePE.scala 66:58]
      node _io_sample_out_bits_scores_2_T_9 = asFixedPoint(_io_sample_out_bits_scores_2_T_8, 8) @[TreePE.scala 66:58]
      io.sample_out.bits.scores[2] <= _io_sample_out_bits_scores_2_T_9 @[TreePE.scala 66:40]
      node _io_sample_out_bits_scores_3_T = eq(shift, UInt<1>("h0")) @[TreePE.scala 66:72]
      node _io_sample_out_bits_scores_3_T_1 = and(_io_sample_out_bits_scores_3_T, is_valid) @[TreePE.scala 66:84]
      node _io_sample_out_bits_scores_3_T_2 = eq(UInt<2>("h3"), offset) @[TreePE.scala 66:102]
      node _io_sample_out_bits_scores_3_T_3 = and(_io_sample_out_bits_scores_3_T_1, _io_sample_out_bits_scores_3_T_2) @[TreePE.scala 66:95]
      node _io_sample_out_bits_scores_3_T_4 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 66:151]
      node _io_sample_out_bits_scores_3_T_5 = mux(_io_sample_out_bits_scores_3_T_3, _io_sample_out_bits_scores_3_T_4, UInt<16>("h0")) @[TreePE.scala 66:64]
      node _io_sample_out_bits_scores_3_T_6 = asFixedPoint(_io_sample_out_bits_scores_3_T_5, 8) @[TreePE.scala 66:178]
      node _io_sample_out_bits_scores_3_T_7 = add(scores_bits[3], _io_sample_out_bits_scores_3_T_6) @[TreePE.scala 66:58]
      node _io_sample_out_bits_scores_3_T_8 = tail(_io_sample_out_bits_scores_3_T_7, 1) @[TreePE.scala 66:58]
      node _io_sample_out_bits_scores_3_T_9 = asFixedPoint(_io_sample_out_bits_scores_3_T_8, 8) @[TreePE.scala 66:58]
      io.sample_out.bits.scores[3] <= _io_sample_out_bits_scores_3_T_9 @[TreePE.scala 66:40]
      node _io_sample_out_bits_scores_4_T = eq(shift, UInt<1>("h0")) @[TreePE.scala 66:72]
      node _io_sample_out_bits_scores_4_T_1 = and(_io_sample_out_bits_scores_4_T, is_valid) @[TreePE.scala 66:84]
      node _io_sample_out_bits_scores_4_T_2 = eq(UInt<3>("h4"), offset) @[TreePE.scala 66:102]
      node _io_sample_out_bits_scores_4_T_3 = and(_io_sample_out_bits_scores_4_T_1, _io_sample_out_bits_scores_4_T_2) @[TreePE.scala 66:95]
      node _io_sample_out_bits_scores_4_T_4 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 66:151]
      node _io_sample_out_bits_scores_4_T_5 = mux(_io_sample_out_bits_scores_4_T_3, _io_sample_out_bits_scores_4_T_4, UInt<16>("h0")) @[TreePE.scala 66:64]
      node _io_sample_out_bits_scores_4_T_6 = asFixedPoint(_io_sample_out_bits_scores_4_T_5, 8) @[TreePE.scala 66:178]
      node _io_sample_out_bits_scores_4_T_7 = add(scores_bits[4], _io_sample_out_bits_scores_4_T_6) @[TreePE.scala 66:58]
      node _io_sample_out_bits_scores_4_T_8 = tail(_io_sample_out_bits_scores_4_T_7, 1) @[TreePE.scala 66:58]
      node _io_sample_out_bits_scores_4_T_9 = asFixedPoint(_io_sample_out_bits_scores_4_T_8, 8) @[TreePE.scala 66:58]
      io.sample_out.bits.scores[4] <= _io_sample_out_bits_scores_4_T_9 @[TreePE.scala 66:40]
      node _io_sample_out_bits_scores_5_T = eq(shift, UInt<1>("h0")) @[TreePE.scala 66:72]
      node _io_sample_out_bits_scores_5_T_1 = and(_io_sample_out_bits_scores_5_T, is_valid) @[TreePE.scala 66:84]
      node _io_sample_out_bits_scores_5_T_2 = eq(UInt<3>("h5"), offset) @[TreePE.scala 66:102]
      node _io_sample_out_bits_scores_5_T_3 = and(_io_sample_out_bits_scores_5_T_1, _io_sample_out_bits_scores_5_T_2) @[TreePE.scala 66:95]
      node _io_sample_out_bits_scores_5_T_4 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 66:151]
      node _io_sample_out_bits_scores_5_T_5 = mux(_io_sample_out_bits_scores_5_T_3, _io_sample_out_bits_scores_5_T_4, UInt<16>("h0")) @[TreePE.scala 66:64]
      node _io_sample_out_bits_scores_5_T_6 = asFixedPoint(_io_sample_out_bits_scores_5_T_5, 8) @[TreePE.scala 66:178]
      node _io_sample_out_bits_scores_5_T_7 = add(scores_bits[5], _io_sample_out_bits_scores_5_T_6) @[TreePE.scala 66:58]
      node _io_sample_out_bits_scores_5_T_8 = tail(_io_sample_out_bits_scores_5_T_7, 1) @[TreePE.scala 66:58]
      node _io_sample_out_bits_scores_5_T_9 = asFixedPoint(_io_sample_out_bits_scores_5_T_8, 8) @[TreePE.scala 66:58]
      io.sample_out.bits.scores[5] <= _io_sample_out_bits_scores_5_T_9 @[TreePE.scala 66:40]
      reg io_sample_out_bits_dest_REG : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_dest_REG) @[TreePE.scala 68:43]
      io_sample_out_bits_dest_REG <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 68:43]
      node _io_sample_out_bits_dest_T = eq(io_sample_out_bits_dest_REG, UInt<1>("h1")) @[TreePE.scala 68:69]
      io.sample_out.bits.dest <= _io_sample_out_bits_dest_T @[TreePE.scala 68:33]
      reg io_sample_out_bits_last_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_last_REG) @[TreePE.scala 69:43]
      io_sample_out_bits_last_REG <= queue.io.deq.bits.last @[TreePE.scala 69:43]
      io.sample_out.bits.last <= io_sample_out_bits_last_REG @[TreePE.scala 69:33]
    else :
      io.sample_out.bits.clock_cycles is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.last is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.dest is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[0] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[1] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[2] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[3] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[4] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[0] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[1] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[2] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[3] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[4] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[5] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.tree_to_exec is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.search_for_root is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.shift is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.offset is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[0] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[1] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[2] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[3] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[4] is invalid @[TreePE.scala 88:26]
      io.sample_out.valid <= UInt<1>("h0") @[TreePE.scala 89:27]
    queue.io.deq.ready <= io.sample_out.ready @[TreePE.scala 92:17]

  module TreePEwithBRAM_10 :
    input clock : Clock
    input reset : Reset
    output pe_io : { flip sample_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, flip mem : { flip enable_1 : UInt<1>, flip write_1 : UInt<1>, flip addr_1 : UInt<13>, flip dataIn_1 : UInt<64>, dataOut_1 : UInt<64>, flip enable_2 : UInt<1>, flip write_2 : UInt<1>, flip addr_2 : UInt<13>, flip dataIn_2 : UInt<64>, dataOut_2 : UInt<64>}, sample_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}}

    inst pe of TreePE_10 @[TreePE.scala 104:18]
    pe.clock <= clock
    pe.reset <= reset
    pe_io.sample_out.bits <= pe.io.sample_out.bits @[TreePE.scala 106:9]
    pe_io.sample_out.valid <= pe.io.sample_out.valid @[TreePE.scala 106:9]
    pe.io.sample_out.ready <= pe_io.sample_out.ready @[TreePE.scala 106:9]
    pe.io.mem <= pe_io.mem @[TreePE.scala 106:9]
    pe.io.sample_in <= pe_io.sample_in @[TreePE.scala 106:9]

  module Queue_30 :
    input clock : Clock
    input reset : Reset
    output io : { flip enq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, deq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, count : UInt<2>}

    cmem ram : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>} [3] @[Decoupled.scala 275:95]
    reg enq_ptr_value : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[Counter.scala 61:40]
    reg deq_ptr_value : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[Counter.scala 61:40]
    reg maybe_full : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[Decoupled.scala 278:27]
    node ptr_match = eq(enq_ptr_value, deq_ptr_value) @[Decoupled.scala 279:33]
    node _empty_T = eq(maybe_full, UInt<1>("h0")) @[Decoupled.scala 280:28]
    node empty = and(ptr_match, _empty_T) @[Decoupled.scala 280:25]
    node full = and(ptr_match, maybe_full) @[Decoupled.scala 281:24]
    node _do_enq_T = and(io.enq.ready, io.enq.valid) @[Decoupled.scala 52:35]
    wire do_enq : UInt<1>
    do_enq <= _do_enq_T
    node _do_deq_T = and(io.deq.ready, io.deq.valid) @[Decoupled.scala 52:35]
    wire do_deq : UInt<1>
    do_deq <= _do_deq_T
    when do_enq : @[Decoupled.scala 288:16]
      infer mport MPORT = ram[enq_ptr_value], clock @[Decoupled.scala 289:8]
      MPORT <= io.enq.bits @[Decoupled.scala 289:24]
      node wrap = eq(enq_ptr_value, UInt<2>("h2")) @[Counter.scala 73:24]
      node _value_T = add(enq_ptr_value, UInt<1>("h1")) @[Counter.scala 77:24]
      node _value_T_1 = tail(_value_T, 1) @[Counter.scala 77:24]
      enq_ptr_value <= _value_T_1 @[Counter.scala 77:15]
      when wrap : @[Counter.scala 87:20]
        enq_ptr_value <= UInt<1>("h0") @[Counter.scala 87:28]
    when do_deq : @[Decoupled.scala 292:16]
      node wrap_1 = eq(deq_ptr_value, UInt<2>("h2")) @[Counter.scala 73:24]
      node _value_T_2 = add(deq_ptr_value, UInt<1>("h1")) @[Counter.scala 77:24]
      node _value_T_3 = tail(_value_T_2, 1) @[Counter.scala 77:24]
      deq_ptr_value <= _value_T_3 @[Counter.scala 77:15]
      when wrap_1 : @[Counter.scala 87:20]
        deq_ptr_value <= UInt<1>("h0") @[Counter.scala 87:28]
    node _T = neq(do_enq, do_deq) @[Decoupled.scala 295:15]
    when _T : @[Decoupled.scala 295:27]
      maybe_full <= do_enq @[Decoupled.scala 296:16]
    when UInt<1>("h0") : @[Decoupled.scala 298:15]
      enq_ptr_value <= UInt<1>("h0") @[Counter.scala 98:11]
      deq_ptr_value <= UInt<1>("h0") @[Counter.scala 98:11]
      maybe_full <= UInt<1>("h0") @[Decoupled.scala 301:16]
    node _io_deq_valid_T = eq(empty, UInt<1>("h0")) @[Decoupled.scala 304:19]
    io.deq.valid <= _io_deq_valid_T @[Decoupled.scala 304:16]
    node _io_enq_ready_T = eq(full, UInt<1>("h0")) @[Decoupled.scala 305:19]
    io.enq.ready <= _io_enq_ready_T @[Decoupled.scala 305:16]
    infer mport io_deq_bits_MPORT = ram[deq_ptr_value], clock @[Decoupled.scala 312:23]
    io.deq.bits <= io_deq_bits_MPORT @[Decoupled.scala 312:17]
    node _ptr_diff_T = sub(enq_ptr_value, deq_ptr_value) @[Decoupled.scala 328:32]
    node ptr_diff = tail(_ptr_diff_T, 1) @[Decoupled.scala 328:32]
    node _io_count_T = mux(maybe_full, UInt<2>("h3"), UInt<1>("h0")) @[Decoupled.scala 335:10]
    node _io_count_T_1 = gt(deq_ptr_value, enq_ptr_value) @[Decoupled.scala 336:25]
    node _io_count_T_2 = add(UInt<2>("h3"), ptr_diff) @[Decoupled.scala 336:57]
    node _io_count_T_3 = tail(_io_count_T_2, 1) @[Decoupled.scala 336:57]
    node _io_count_T_4 = mux(_io_count_T_1, _io_count_T_3, ptr_diff) @[Decoupled.scala 336:10]
    node _io_count_T_5 = mux(ptr_match, _io_count_T, _io_count_T_4) @[Decoupled.scala 333:20]
    io.count <= _io_count_T_5 @[Decoupled.scala 333:14]

  module TreePE_11 :
    input clock : Clock
    input reset : Reset
    output io : { flip sample_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, flip mem : { flip enable_1 : UInt<1>, flip write_1 : UInt<1>, flip addr_1 : UInt<13>, flip dataIn_1 : UInt<64>, dataOut_1 : UInt<64>, flip enable_2 : UInt<1>, flip write_2 : UInt<1>, flip addr_2 : UInt<13>, flip dataIn_2 : UInt<64>, dataOut_2 : UInt<64>}, sample_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}}

    inst queue of Queue_30 @[Decoupled.scala 377:21]
    queue.clock <= clock
    queue.reset <= reset
    queue.io.enq.valid <= io.sample_in.valid @[Decoupled.scala 379:22]
    queue.io.enq.bits.clock_cycles <= io.sample_in.bits.clock_cycles @[Decoupled.scala 380:21]
    queue.io.enq.bits.last <= io.sample_in.bits.last @[Decoupled.scala 380:21]
    queue.io.enq.bits.dest <= io.sample_in.bits.dest @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[0] <= io.sample_in.bits.weights[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[1] <= io.sample_in.bits.weights[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[2] <= io.sample_in.bits.weights[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[3] <= io.sample_in.bits.weights[3] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[4] <= io.sample_in.bits.weights[4] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[0] <= io.sample_in.bits.scores[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[1] <= io.sample_in.bits.scores[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[2] <= io.sample_in.bits.scores[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[3] <= io.sample_in.bits.scores[3] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[4] <= io.sample_in.bits.scores[4] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[5] <= io.sample_in.bits.scores[5] @[Decoupled.scala 380:21]
    queue.io.enq.bits.tree_to_exec <= io.sample_in.bits.tree_to_exec @[Decoupled.scala 380:21]
    queue.io.enq.bits.search_for_root <= io.sample_in.bits.search_for_root @[Decoupled.scala 380:21]
    queue.io.enq.bits.shift <= io.sample_in.bits.shift @[Decoupled.scala 380:21]
    queue.io.enq.bits.offset <= io.sample_in.bits.offset @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[0] <= io.sample_in.bits.features[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[1] <= io.sample_in.bits.features[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[2] <= io.sample_in.bits.features[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[3] <= io.sample_in.bits.features[3] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[4] <= io.sample_in.bits.features[4] @[Decoupled.scala 380:21]
    io.sample_in.ready <= queue.io.enq.ready @[Decoupled.scala 381:17]
    io.mem.enable_1 <= UInt<1>("h1") @[TreePE.scala 23:21]
    io.mem.addr_1 <= queue.io.deq.bits.offset @[TreePE.scala 24:19]
    io.mem.write_1 <= UInt<1>("h0") @[TreePE.scala 25:20]
    io.mem.dataIn_1 <= UInt<1>("h0") @[TreePE.scala 26:21]
    io.mem.enable_2 is invalid @[TreePE.scala 28:21]
    io.mem.addr_2 is invalid @[TreePE.scala 29:19]
    io.mem.write_2 is invalid @[TreePE.scala 30:20]
    io.mem.dataIn_2 is invalid @[TreePE.scala 31:21]
    reg REG : UInt<1>, clock with :
      reset => (UInt<1>("h0"), REG) @[TreePE.scala 35:17]
    REG <= queue.io.deq.valid @[TreePE.scala 35:17]
    when REG : @[TreePE.scala 35:31]
      node attr_id = bits(io.mem.dataOut_1, 34, 32) @[TreePE.scala 37:37]
      node threshold = bits(io.mem.dataOut_1, 15, 0) @[TreePE.scala 38:39]
      node nodeRA = bits(io.mem.dataOut_1, 31, 16) @[TreePE.scala 39:36]
      node leftChildInfo = bits(io.mem.dataOut_1, 44, 35) @[TreePE.scala 40:43]
      node rightChildInfo = bits(io.mem.dataOut_1, 54, 45) @[TreePE.scala 41:44]
      node leftChildType = bits(io.mem.dataOut_1, 55, 55) @[TreePE.scala 42:43]
      node rightChildType = bits(io.mem.dataOut_1, 56, 56) @[TreePE.scala 43:44]
      node is_valid = bits(io.mem.dataOut_1, 57, 57) @[TreePE.scala 44:38]
      node depth_indicator = bits(io.mem.dataOut_1, 60, 58) @[TreePE.scala 45:45]
      reg REG_1 : Fixed<32><<16>>[5], clock with :
        reset => (UInt<1>("h0"), REG_1) @[TreePE.scala 47:45]
      REG_1 <= queue.io.deq.bits.features @[TreePE.scala 47:45]
      io.sample_out.bits.features <= REG_1 @[TreePE.scala 47:35]
      reg REG_2 : Fixed<16><<8>>[5], clock with :
        reset => (UInt<1>("h0"), REG_2) @[TreePE.scala 48:44]
      REG_2 <= queue.io.deq.bits.weights @[TreePE.scala 48:44]
      io.sample_out.bits.weights <= REG_2 @[TreePE.scala 48:34]
      reg io_sample_out_bits_tree_to_exec_REG : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_tree_to_exec_REG) @[TreePE.scala 49:49]
      io_sample_out_bits_tree_to_exec_REG <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 49:49]
      io.sample_out.bits.tree_to_exec <= io_sample_out_bits_tree_to_exec_REG @[TreePE.scala 49:39]
      reg REG_3 : Fixed<16><<8>>[6], clock with :
        reset => (UInt<1>("h0"), REG_3) @[TreePE.scala 50:43]
      REG_3 <= queue.io.deq.bits.scores @[TreePE.scala 50:43]
      io.sample_out.bits.scores <= REG_3 @[TreePE.scala 50:33]
      io.sample_out.valid <= UInt<1>("h1") @[TreePE.scala 51:27]
      reg io_sample_out_bits_clock_cycles_REG : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_clock_cycles_REG) @[TreePE.scala 52:49]
      io_sample_out_bits_clock_cycles_REG <= queue.io.deq.bits.clock_cycles @[TreePE.scala 52:49]
      io.sample_out.bits.clock_cycles <= io_sample_out_bits_clock_cycles_REG @[TreePE.scala 52:39]
      wire offset : UInt<10> @[TreePE.scala 71:26]
      wire shift : UInt<1> @[TreePE.scala 72:25]
      reg features_bits : Fixed<32><<16>>[5], clock with :
        reset => (UInt<1>("h0"), features_bits) @[TreePE.scala 73:36]
      features_bits <= queue.io.deq.bits.features @[TreePE.scala 73:36]
      reg scores_bits : Fixed<16><<8>>[6], clock with :
        reset => (UInt<1>("h0"), scores_bits) @[TreePE.scala 74:34]
      scores_bits <= queue.io.deq.bits.scores @[TreePE.scala 74:34]
      reg weights_bits : Fixed<16><<8>>[5], clock with :
        reset => (UInt<1>("h0"), weights_bits) @[TreePE.scala 75:35]
      weights_bits <= queue.io.deq.bits.weights @[TreePE.scala 75:35]
      node _shift_T = asFixedPoint(threshold, 8) @[TreePE.scala 76:69]
      node _shift_T_1 = lt(features_bits[attr_id], _shift_T) @[TreePE.scala 76:45]
      node _shift_T_2 = mux(_shift_T_1, leftChildType, rightChildType) @[TreePE.scala 76:21]
      shift <= _shift_T_2 @[TreePE.scala 76:15]
      node _offset_T = asFixedPoint(threshold, 8) @[TreePE.scala 77:70]
      node _offset_T_1 = lt(features_bits[attr_id], _offset_T) @[TreePE.scala 77:46]
      node _offset_T_2 = mux(_offset_T_1, leftChildInfo, rightChildInfo) @[TreePE.scala 77:22]
      offset <= _offset_T_2 @[TreePE.scala 77:16]
      node _io_sample_out_bits_offset_T = eq(shift, UInt<1>("h0")) @[TreePE.scala 78:48]
      reg io_sample_out_bits_offset_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_offset_REG) @[TreePE.scala 78:70]
      io_sample_out_bits_offset_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 78:70]
      node _io_sample_out_bits_offset_T_1 = or(_io_sample_out_bits_offset_T, io_sample_out_bits_offset_REG) @[TreePE.scala 78:60]
      reg io_sample_out_bits_offset_REG_1 : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_offset_REG_1) @[TreePE.scala 78:106]
      io_sample_out_bits_offset_REG_1 <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 78:106]
      node _io_sample_out_bits_offset_T_2 = mux(_io_sample_out_bits_offset_T_1, io_sample_out_bits_offset_REG_1, offset) @[TreePE.scala 78:41]
      io.sample_out.bits.offset <= _io_sample_out_bits_offset_T_2 @[TreePE.scala 78:35]
      io.sample_out.bits.shift <= UInt<1>("h0") @[TreePE.scala 79:34]
      node _io_sample_out_bits_search_for_root_T = eq(shift, UInt<1>("h0")) @[TreePE.scala 80:47]
      reg io_sample_out_bits_search_for_root_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_search_for_root_REG) @[TreePE.scala 80:64]
      io_sample_out_bits_search_for_root_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 80:64]
      node _io_sample_out_bits_search_for_root_T_1 = or(_io_sample_out_bits_search_for_root_T, io_sample_out_bits_search_for_root_REG) @[TreePE.scala 80:54]
      io.sample_out.bits.search_for_root <= _io_sample_out_bits_search_for_root_T_1 @[TreePE.scala 80:44]
      reg io_sample_out_bits_scores_0_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_scores_0_REG) @[TreePE.scala 82:74]
      io_sample_out_bits_scores_0_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 82:74]
      node _io_sample_out_bits_scores_0_T = eq(io_sample_out_bits_scores_0_REG, UInt<1>("h0")) @[TreePE.scala 82:66]
      node _io_sample_out_bits_scores_0_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 82:111]
      node _io_sample_out_bits_scores_0_T_2 = and(_io_sample_out_bits_scores_0_T, _io_sample_out_bits_scores_0_T_1) @[TreePE.scala 82:103]
      node _io_sample_out_bits_scores_0_T_3 = and(_io_sample_out_bits_scores_0_T_2, is_valid) @[TreePE.scala 82:123]
      node _io_sample_out_bits_scores_0_T_4 = eq(UInt<1>("h0"), offset) @[TreePE.scala 82:141]
      node _io_sample_out_bits_scores_0_T_5 = and(_io_sample_out_bits_scores_0_T_3, _io_sample_out_bits_scores_0_T_4) @[TreePE.scala 82:134]
      node _io_sample_out_bits_scores_0_T_6 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 82:190]
      node _io_sample_out_bits_scores_0_T_7 = mux(_io_sample_out_bits_scores_0_T_5, _io_sample_out_bits_scores_0_T_6, UInt<16>("h0")) @[TreePE.scala 82:64]
      node _io_sample_out_bits_scores_0_T_8 = asFixedPoint(_io_sample_out_bits_scores_0_T_7, 8) @[TreePE.scala 82:217]
      node _io_sample_out_bits_scores_0_T_9 = add(scores_bits[0], _io_sample_out_bits_scores_0_T_8) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_0_T_10 = tail(_io_sample_out_bits_scores_0_T_9, 1) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_0_T_11 = asFixedPoint(_io_sample_out_bits_scores_0_T_10, 8) @[TreePE.scala 82:58]
      io.sample_out.bits.scores[0] <= _io_sample_out_bits_scores_0_T_11 @[TreePE.scala 82:40]
      reg io_sample_out_bits_scores_1_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_scores_1_REG) @[TreePE.scala 82:74]
      io_sample_out_bits_scores_1_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 82:74]
      node _io_sample_out_bits_scores_1_T = eq(io_sample_out_bits_scores_1_REG, UInt<1>("h0")) @[TreePE.scala 82:66]
      node _io_sample_out_bits_scores_1_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 82:111]
      node _io_sample_out_bits_scores_1_T_2 = and(_io_sample_out_bits_scores_1_T, _io_sample_out_bits_scores_1_T_1) @[TreePE.scala 82:103]
      node _io_sample_out_bits_scores_1_T_3 = and(_io_sample_out_bits_scores_1_T_2, is_valid) @[TreePE.scala 82:123]
      node _io_sample_out_bits_scores_1_T_4 = eq(UInt<1>("h1"), offset) @[TreePE.scala 82:141]
      node _io_sample_out_bits_scores_1_T_5 = and(_io_sample_out_bits_scores_1_T_3, _io_sample_out_bits_scores_1_T_4) @[TreePE.scala 82:134]
      node _io_sample_out_bits_scores_1_T_6 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 82:190]
      node _io_sample_out_bits_scores_1_T_7 = mux(_io_sample_out_bits_scores_1_T_5, _io_sample_out_bits_scores_1_T_6, UInt<16>("h0")) @[TreePE.scala 82:64]
      node _io_sample_out_bits_scores_1_T_8 = asFixedPoint(_io_sample_out_bits_scores_1_T_7, 8) @[TreePE.scala 82:217]
      node _io_sample_out_bits_scores_1_T_9 = add(scores_bits[1], _io_sample_out_bits_scores_1_T_8) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_1_T_10 = tail(_io_sample_out_bits_scores_1_T_9, 1) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_1_T_11 = asFixedPoint(_io_sample_out_bits_scores_1_T_10, 8) @[TreePE.scala 82:58]
      io.sample_out.bits.scores[1] <= _io_sample_out_bits_scores_1_T_11 @[TreePE.scala 82:40]
      reg io_sample_out_bits_scores_2_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_scores_2_REG) @[TreePE.scala 82:74]
      io_sample_out_bits_scores_2_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 82:74]
      node _io_sample_out_bits_scores_2_T = eq(io_sample_out_bits_scores_2_REG, UInt<1>("h0")) @[TreePE.scala 82:66]
      node _io_sample_out_bits_scores_2_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 82:111]
      node _io_sample_out_bits_scores_2_T_2 = and(_io_sample_out_bits_scores_2_T, _io_sample_out_bits_scores_2_T_1) @[TreePE.scala 82:103]
      node _io_sample_out_bits_scores_2_T_3 = and(_io_sample_out_bits_scores_2_T_2, is_valid) @[TreePE.scala 82:123]
      node _io_sample_out_bits_scores_2_T_4 = eq(UInt<2>("h2"), offset) @[TreePE.scala 82:141]
      node _io_sample_out_bits_scores_2_T_5 = and(_io_sample_out_bits_scores_2_T_3, _io_sample_out_bits_scores_2_T_4) @[TreePE.scala 82:134]
      node _io_sample_out_bits_scores_2_T_6 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 82:190]
      node _io_sample_out_bits_scores_2_T_7 = mux(_io_sample_out_bits_scores_2_T_5, _io_sample_out_bits_scores_2_T_6, UInt<16>("h0")) @[TreePE.scala 82:64]
      node _io_sample_out_bits_scores_2_T_8 = asFixedPoint(_io_sample_out_bits_scores_2_T_7, 8) @[TreePE.scala 82:217]
      node _io_sample_out_bits_scores_2_T_9 = add(scores_bits[2], _io_sample_out_bits_scores_2_T_8) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_2_T_10 = tail(_io_sample_out_bits_scores_2_T_9, 1) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_2_T_11 = asFixedPoint(_io_sample_out_bits_scores_2_T_10, 8) @[TreePE.scala 82:58]
      io.sample_out.bits.scores[2] <= _io_sample_out_bits_scores_2_T_11 @[TreePE.scala 82:40]
      reg io_sample_out_bits_scores_3_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_scores_3_REG) @[TreePE.scala 82:74]
      io_sample_out_bits_scores_3_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 82:74]
      node _io_sample_out_bits_scores_3_T = eq(io_sample_out_bits_scores_3_REG, UInt<1>("h0")) @[TreePE.scala 82:66]
      node _io_sample_out_bits_scores_3_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 82:111]
      node _io_sample_out_bits_scores_3_T_2 = and(_io_sample_out_bits_scores_3_T, _io_sample_out_bits_scores_3_T_1) @[TreePE.scala 82:103]
      node _io_sample_out_bits_scores_3_T_3 = and(_io_sample_out_bits_scores_3_T_2, is_valid) @[TreePE.scala 82:123]
      node _io_sample_out_bits_scores_3_T_4 = eq(UInt<2>("h3"), offset) @[TreePE.scala 82:141]
      node _io_sample_out_bits_scores_3_T_5 = and(_io_sample_out_bits_scores_3_T_3, _io_sample_out_bits_scores_3_T_4) @[TreePE.scala 82:134]
      node _io_sample_out_bits_scores_3_T_6 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 82:190]
      node _io_sample_out_bits_scores_3_T_7 = mux(_io_sample_out_bits_scores_3_T_5, _io_sample_out_bits_scores_3_T_6, UInt<16>("h0")) @[TreePE.scala 82:64]
      node _io_sample_out_bits_scores_3_T_8 = asFixedPoint(_io_sample_out_bits_scores_3_T_7, 8) @[TreePE.scala 82:217]
      node _io_sample_out_bits_scores_3_T_9 = add(scores_bits[3], _io_sample_out_bits_scores_3_T_8) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_3_T_10 = tail(_io_sample_out_bits_scores_3_T_9, 1) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_3_T_11 = asFixedPoint(_io_sample_out_bits_scores_3_T_10, 8) @[TreePE.scala 82:58]
      io.sample_out.bits.scores[3] <= _io_sample_out_bits_scores_3_T_11 @[TreePE.scala 82:40]
      reg io_sample_out_bits_scores_4_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_scores_4_REG) @[TreePE.scala 82:74]
      io_sample_out_bits_scores_4_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 82:74]
      node _io_sample_out_bits_scores_4_T = eq(io_sample_out_bits_scores_4_REG, UInt<1>("h0")) @[TreePE.scala 82:66]
      node _io_sample_out_bits_scores_4_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 82:111]
      node _io_sample_out_bits_scores_4_T_2 = and(_io_sample_out_bits_scores_4_T, _io_sample_out_bits_scores_4_T_1) @[TreePE.scala 82:103]
      node _io_sample_out_bits_scores_4_T_3 = and(_io_sample_out_bits_scores_4_T_2, is_valid) @[TreePE.scala 82:123]
      node _io_sample_out_bits_scores_4_T_4 = eq(UInt<3>("h4"), offset) @[TreePE.scala 82:141]
      node _io_sample_out_bits_scores_4_T_5 = and(_io_sample_out_bits_scores_4_T_3, _io_sample_out_bits_scores_4_T_4) @[TreePE.scala 82:134]
      node _io_sample_out_bits_scores_4_T_6 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 82:190]
      node _io_sample_out_bits_scores_4_T_7 = mux(_io_sample_out_bits_scores_4_T_5, _io_sample_out_bits_scores_4_T_6, UInt<16>("h0")) @[TreePE.scala 82:64]
      node _io_sample_out_bits_scores_4_T_8 = asFixedPoint(_io_sample_out_bits_scores_4_T_7, 8) @[TreePE.scala 82:217]
      node _io_sample_out_bits_scores_4_T_9 = add(scores_bits[4], _io_sample_out_bits_scores_4_T_8) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_4_T_10 = tail(_io_sample_out_bits_scores_4_T_9, 1) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_4_T_11 = asFixedPoint(_io_sample_out_bits_scores_4_T_10, 8) @[TreePE.scala 82:58]
      io.sample_out.bits.scores[4] <= _io_sample_out_bits_scores_4_T_11 @[TreePE.scala 82:40]
      reg io_sample_out_bits_scores_5_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_scores_5_REG) @[TreePE.scala 82:74]
      io_sample_out_bits_scores_5_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 82:74]
      node _io_sample_out_bits_scores_5_T = eq(io_sample_out_bits_scores_5_REG, UInt<1>("h0")) @[TreePE.scala 82:66]
      node _io_sample_out_bits_scores_5_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 82:111]
      node _io_sample_out_bits_scores_5_T_2 = and(_io_sample_out_bits_scores_5_T, _io_sample_out_bits_scores_5_T_1) @[TreePE.scala 82:103]
      node _io_sample_out_bits_scores_5_T_3 = and(_io_sample_out_bits_scores_5_T_2, is_valid) @[TreePE.scala 82:123]
      node _io_sample_out_bits_scores_5_T_4 = eq(UInt<3>("h5"), offset) @[TreePE.scala 82:141]
      node _io_sample_out_bits_scores_5_T_5 = and(_io_sample_out_bits_scores_5_T_3, _io_sample_out_bits_scores_5_T_4) @[TreePE.scala 82:134]
      node _io_sample_out_bits_scores_5_T_6 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 82:190]
      node _io_sample_out_bits_scores_5_T_7 = mux(_io_sample_out_bits_scores_5_T_5, _io_sample_out_bits_scores_5_T_6, UInt<16>("h0")) @[TreePE.scala 82:64]
      node _io_sample_out_bits_scores_5_T_8 = asFixedPoint(_io_sample_out_bits_scores_5_T_7, 8) @[TreePE.scala 82:217]
      node _io_sample_out_bits_scores_5_T_9 = add(scores_bits[5], _io_sample_out_bits_scores_5_T_8) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_5_T_10 = tail(_io_sample_out_bits_scores_5_T_9, 1) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_5_T_11 = asFixedPoint(_io_sample_out_bits_scores_5_T_10, 8) @[TreePE.scala 82:58]
      io.sample_out.bits.scores[5] <= _io_sample_out_bits_scores_5_T_11 @[TreePE.scala 82:40]
      reg io_sample_out_bits_dest_REG : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_dest_REG) @[TreePE.scala 84:43]
      io_sample_out_bits_dest_REG <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 84:43]
      node _io_sample_out_bits_dest_T = eq(io_sample_out_bits_dest_REG, UInt<1>("h1")) @[TreePE.scala 84:69]
      io.sample_out.bits.dest <= _io_sample_out_bits_dest_T @[TreePE.scala 84:33]
      reg io_sample_out_bits_last_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_last_REG) @[TreePE.scala 85:43]
      io_sample_out_bits_last_REG <= queue.io.deq.bits.last @[TreePE.scala 85:43]
      io.sample_out.bits.last <= io_sample_out_bits_last_REG @[TreePE.scala 85:33]
    else :
      io.sample_out.bits.clock_cycles is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.last is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.dest is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[0] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[1] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[2] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[3] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[4] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[0] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[1] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[2] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[3] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[4] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[5] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.tree_to_exec is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.search_for_root is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.shift is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.offset is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[0] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[1] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[2] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[3] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[4] is invalid @[TreePE.scala 88:26]
      io.sample_out.valid <= UInt<1>("h0") @[TreePE.scala 89:27]
    queue.io.deq.ready <= io.sample_out.ready @[TreePE.scala 92:17]

  module TreePEwithBRAM_11 :
    input clock : Clock
    input reset : Reset
    output pe_io : { flip sample_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, flip mem : { flip enable_1 : UInt<1>, flip write_1 : UInt<1>, flip addr_1 : UInt<13>, flip dataIn_1 : UInt<64>, dataOut_1 : UInt<64>, flip enable_2 : UInt<1>, flip write_2 : UInt<1>, flip addr_2 : UInt<13>, flip dataIn_2 : UInt<64>, dataOut_2 : UInt<64>}, sample_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}}

    inst pe of TreePE_11 @[TreePE.scala 104:18]
    pe.clock <= clock
    pe.reset <= reset
    pe_io.sample_out.bits <= pe.io.sample_out.bits @[TreePE.scala 106:9]
    pe_io.sample_out.valid <= pe.io.sample_out.valid @[TreePE.scala 106:9]
    pe.io.sample_out.ready <= pe_io.sample_out.ready @[TreePE.scala 106:9]
    pe.io.mem <= pe_io.mem @[TreePE.scala 106:9]
    pe.io.sample_in <= pe_io.sample_in @[TreePE.scala 106:9]

  module Queue_31 :
    input clock : Clock
    input reset : Reset
    output io : { flip enq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, deq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, count : UInt<2>}

    cmem ram : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>} [3] @[Decoupled.scala 275:95]
    reg enq_ptr_value : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[Counter.scala 61:40]
    reg deq_ptr_value : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[Counter.scala 61:40]
    reg maybe_full : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[Decoupled.scala 278:27]
    node ptr_match = eq(enq_ptr_value, deq_ptr_value) @[Decoupled.scala 279:33]
    node _empty_T = eq(maybe_full, UInt<1>("h0")) @[Decoupled.scala 280:28]
    node empty = and(ptr_match, _empty_T) @[Decoupled.scala 280:25]
    node full = and(ptr_match, maybe_full) @[Decoupled.scala 281:24]
    node _do_enq_T = and(io.enq.ready, io.enq.valid) @[Decoupled.scala 52:35]
    wire do_enq : UInt<1>
    do_enq <= _do_enq_T
    node _do_deq_T = and(io.deq.ready, io.deq.valid) @[Decoupled.scala 52:35]
    wire do_deq : UInt<1>
    do_deq <= _do_deq_T
    when do_enq : @[Decoupled.scala 288:16]
      infer mport MPORT = ram[enq_ptr_value], clock @[Decoupled.scala 289:8]
      MPORT <= io.enq.bits @[Decoupled.scala 289:24]
      node wrap = eq(enq_ptr_value, UInt<2>("h2")) @[Counter.scala 73:24]
      node _value_T = add(enq_ptr_value, UInt<1>("h1")) @[Counter.scala 77:24]
      node _value_T_1 = tail(_value_T, 1) @[Counter.scala 77:24]
      enq_ptr_value <= _value_T_1 @[Counter.scala 77:15]
      when wrap : @[Counter.scala 87:20]
        enq_ptr_value <= UInt<1>("h0") @[Counter.scala 87:28]
    when do_deq : @[Decoupled.scala 292:16]
      node wrap_1 = eq(deq_ptr_value, UInt<2>("h2")) @[Counter.scala 73:24]
      node _value_T_2 = add(deq_ptr_value, UInt<1>("h1")) @[Counter.scala 77:24]
      node _value_T_3 = tail(_value_T_2, 1) @[Counter.scala 77:24]
      deq_ptr_value <= _value_T_3 @[Counter.scala 77:15]
      when wrap_1 : @[Counter.scala 87:20]
        deq_ptr_value <= UInt<1>("h0") @[Counter.scala 87:28]
    node _T = neq(do_enq, do_deq) @[Decoupled.scala 295:15]
    when _T : @[Decoupled.scala 295:27]
      maybe_full <= do_enq @[Decoupled.scala 296:16]
    when UInt<1>("h0") : @[Decoupled.scala 298:15]
      enq_ptr_value <= UInt<1>("h0") @[Counter.scala 98:11]
      deq_ptr_value <= UInt<1>("h0") @[Counter.scala 98:11]
      maybe_full <= UInt<1>("h0") @[Decoupled.scala 301:16]
    node _io_deq_valid_T = eq(empty, UInt<1>("h0")) @[Decoupled.scala 304:19]
    io.deq.valid <= _io_deq_valid_T @[Decoupled.scala 304:16]
    node _io_enq_ready_T = eq(full, UInt<1>("h0")) @[Decoupled.scala 305:19]
    io.enq.ready <= _io_enq_ready_T @[Decoupled.scala 305:16]
    infer mport io_deq_bits_MPORT = ram[deq_ptr_value], clock @[Decoupled.scala 312:23]
    io.deq.bits <= io_deq_bits_MPORT @[Decoupled.scala 312:17]
    node _ptr_diff_T = sub(enq_ptr_value, deq_ptr_value) @[Decoupled.scala 328:32]
    node ptr_diff = tail(_ptr_diff_T, 1) @[Decoupled.scala 328:32]
    node _io_count_T = mux(maybe_full, UInt<2>("h3"), UInt<1>("h0")) @[Decoupled.scala 335:10]
    node _io_count_T_1 = gt(deq_ptr_value, enq_ptr_value) @[Decoupled.scala 336:25]
    node _io_count_T_2 = add(UInt<2>("h3"), ptr_diff) @[Decoupled.scala 336:57]
    node _io_count_T_3 = tail(_io_count_T_2, 1) @[Decoupled.scala 336:57]
    node _io_count_T_4 = mux(_io_count_T_1, _io_count_T_3, ptr_diff) @[Decoupled.scala 336:10]
    node _io_count_T_5 = mux(ptr_match, _io_count_T, _io_count_T_4) @[Decoupled.scala 333:20]
    io.count <= _io_count_T_5 @[Decoupled.scala 333:14]

  module TreePE_12 :
    input clock : Clock
    input reset : Reset
    output io : { flip sample_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, flip mem : { flip enable_1 : UInt<1>, flip write_1 : UInt<1>, flip addr_1 : UInt<13>, flip dataIn_1 : UInt<64>, dataOut_1 : UInt<64>, flip enable_2 : UInt<1>, flip write_2 : UInt<1>, flip addr_2 : UInt<13>, flip dataIn_2 : UInt<64>, dataOut_2 : UInt<64>}, sample_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}}

    inst queue of Queue_31 @[Decoupled.scala 377:21]
    queue.clock <= clock
    queue.reset <= reset
    queue.io.enq.valid <= io.sample_in.valid @[Decoupled.scala 379:22]
    queue.io.enq.bits.clock_cycles <= io.sample_in.bits.clock_cycles @[Decoupled.scala 380:21]
    queue.io.enq.bits.last <= io.sample_in.bits.last @[Decoupled.scala 380:21]
    queue.io.enq.bits.dest <= io.sample_in.bits.dest @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[0] <= io.sample_in.bits.weights[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[1] <= io.sample_in.bits.weights[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[2] <= io.sample_in.bits.weights[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[3] <= io.sample_in.bits.weights[3] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[4] <= io.sample_in.bits.weights[4] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[0] <= io.sample_in.bits.scores[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[1] <= io.sample_in.bits.scores[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[2] <= io.sample_in.bits.scores[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[3] <= io.sample_in.bits.scores[3] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[4] <= io.sample_in.bits.scores[4] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[5] <= io.sample_in.bits.scores[5] @[Decoupled.scala 380:21]
    queue.io.enq.bits.tree_to_exec <= io.sample_in.bits.tree_to_exec @[Decoupled.scala 380:21]
    queue.io.enq.bits.search_for_root <= io.sample_in.bits.search_for_root @[Decoupled.scala 380:21]
    queue.io.enq.bits.shift <= io.sample_in.bits.shift @[Decoupled.scala 380:21]
    queue.io.enq.bits.offset <= io.sample_in.bits.offset @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[0] <= io.sample_in.bits.features[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[1] <= io.sample_in.bits.features[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[2] <= io.sample_in.bits.features[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[3] <= io.sample_in.bits.features[3] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[4] <= io.sample_in.bits.features[4] @[Decoupled.scala 380:21]
    io.sample_in.ready <= queue.io.enq.ready @[Decoupled.scala 381:17]
    io.mem.enable_1 <= UInt<1>("h1") @[TreePE.scala 23:21]
    io.mem.addr_1 <= queue.io.deq.bits.offset @[TreePE.scala 24:19]
    io.mem.write_1 <= UInt<1>("h0") @[TreePE.scala 25:20]
    io.mem.dataIn_1 <= UInt<1>("h0") @[TreePE.scala 26:21]
    io.mem.enable_2 is invalid @[TreePE.scala 28:21]
    io.mem.addr_2 is invalid @[TreePE.scala 29:19]
    io.mem.write_2 is invalid @[TreePE.scala 30:20]
    io.mem.dataIn_2 is invalid @[TreePE.scala 31:21]
    reg REG : UInt<1>, clock with :
      reset => (UInt<1>("h0"), REG) @[TreePE.scala 35:17]
    REG <= queue.io.deq.valid @[TreePE.scala 35:17]
    when REG : @[TreePE.scala 35:31]
      node attr_id = bits(io.mem.dataOut_1, 34, 32) @[TreePE.scala 37:37]
      node threshold = bits(io.mem.dataOut_1, 15, 0) @[TreePE.scala 38:39]
      node nodeRA = bits(io.mem.dataOut_1, 31, 16) @[TreePE.scala 39:36]
      node leftChildInfo = bits(io.mem.dataOut_1, 44, 35) @[TreePE.scala 40:43]
      node rightChildInfo = bits(io.mem.dataOut_1, 54, 45) @[TreePE.scala 41:44]
      node leftChildType = bits(io.mem.dataOut_1, 55, 55) @[TreePE.scala 42:43]
      node rightChildType = bits(io.mem.dataOut_1, 56, 56) @[TreePE.scala 43:44]
      node is_valid = bits(io.mem.dataOut_1, 57, 57) @[TreePE.scala 44:38]
      node depth_indicator = bits(io.mem.dataOut_1, 60, 58) @[TreePE.scala 45:45]
      reg REG_1 : Fixed<32><<16>>[5], clock with :
        reset => (UInt<1>("h0"), REG_1) @[TreePE.scala 47:45]
      REG_1 <= queue.io.deq.bits.features @[TreePE.scala 47:45]
      io.sample_out.bits.features <= REG_1 @[TreePE.scala 47:35]
      reg REG_2 : Fixed<16><<8>>[5], clock with :
        reset => (UInt<1>("h0"), REG_2) @[TreePE.scala 48:44]
      REG_2 <= queue.io.deq.bits.weights @[TreePE.scala 48:44]
      io.sample_out.bits.weights <= REG_2 @[TreePE.scala 48:34]
      reg io_sample_out_bits_tree_to_exec_REG : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_tree_to_exec_REG) @[TreePE.scala 49:49]
      io_sample_out_bits_tree_to_exec_REG <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 49:49]
      io.sample_out.bits.tree_to_exec <= io_sample_out_bits_tree_to_exec_REG @[TreePE.scala 49:39]
      reg REG_3 : Fixed<16><<8>>[6], clock with :
        reset => (UInt<1>("h0"), REG_3) @[TreePE.scala 50:43]
      REG_3 <= queue.io.deq.bits.scores @[TreePE.scala 50:43]
      io.sample_out.bits.scores <= REG_3 @[TreePE.scala 50:33]
      io.sample_out.valid <= UInt<1>("h1") @[TreePE.scala 51:27]
      reg io_sample_out_bits_clock_cycles_REG : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_clock_cycles_REG) @[TreePE.scala 52:49]
      io_sample_out_bits_clock_cycles_REG <= queue.io.deq.bits.clock_cycles @[TreePE.scala 52:49]
      io.sample_out.bits.clock_cycles <= io_sample_out_bits_clock_cycles_REG @[TreePE.scala 52:39]
      wire offset : UInt<10> @[TreePE.scala 71:26]
      wire shift : UInt<1> @[TreePE.scala 72:25]
      reg features_bits : Fixed<32><<16>>[5], clock with :
        reset => (UInt<1>("h0"), features_bits) @[TreePE.scala 73:36]
      features_bits <= queue.io.deq.bits.features @[TreePE.scala 73:36]
      reg scores_bits : Fixed<16><<8>>[6], clock with :
        reset => (UInt<1>("h0"), scores_bits) @[TreePE.scala 74:34]
      scores_bits <= queue.io.deq.bits.scores @[TreePE.scala 74:34]
      reg weights_bits : Fixed<16><<8>>[5], clock with :
        reset => (UInt<1>("h0"), weights_bits) @[TreePE.scala 75:35]
      weights_bits <= queue.io.deq.bits.weights @[TreePE.scala 75:35]
      node _shift_T = asFixedPoint(threshold, 8) @[TreePE.scala 76:69]
      node _shift_T_1 = lt(features_bits[attr_id], _shift_T) @[TreePE.scala 76:45]
      node _shift_T_2 = mux(_shift_T_1, leftChildType, rightChildType) @[TreePE.scala 76:21]
      shift <= _shift_T_2 @[TreePE.scala 76:15]
      node _offset_T = asFixedPoint(threshold, 8) @[TreePE.scala 77:70]
      node _offset_T_1 = lt(features_bits[attr_id], _offset_T) @[TreePE.scala 77:46]
      node _offset_T_2 = mux(_offset_T_1, leftChildInfo, rightChildInfo) @[TreePE.scala 77:22]
      offset <= _offset_T_2 @[TreePE.scala 77:16]
      node _io_sample_out_bits_offset_T = eq(shift, UInt<1>("h0")) @[TreePE.scala 78:48]
      reg io_sample_out_bits_offset_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_offset_REG) @[TreePE.scala 78:70]
      io_sample_out_bits_offset_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 78:70]
      node _io_sample_out_bits_offset_T_1 = or(_io_sample_out_bits_offset_T, io_sample_out_bits_offset_REG) @[TreePE.scala 78:60]
      reg io_sample_out_bits_offset_REG_1 : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_offset_REG_1) @[TreePE.scala 78:106]
      io_sample_out_bits_offset_REG_1 <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 78:106]
      node _io_sample_out_bits_offset_T_2 = mux(_io_sample_out_bits_offset_T_1, io_sample_out_bits_offset_REG_1, offset) @[TreePE.scala 78:41]
      io.sample_out.bits.offset <= _io_sample_out_bits_offset_T_2 @[TreePE.scala 78:35]
      io.sample_out.bits.shift <= UInt<1>("h0") @[TreePE.scala 79:34]
      node _io_sample_out_bits_search_for_root_T = eq(shift, UInt<1>("h0")) @[TreePE.scala 80:47]
      reg io_sample_out_bits_search_for_root_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_search_for_root_REG) @[TreePE.scala 80:64]
      io_sample_out_bits_search_for_root_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 80:64]
      node _io_sample_out_bits_search_for_root_T_1 = or(_io_sample_out_bits_search_for_root_T, io_sample_out_bits_search_for_root_REG) @[TreePE.scala 80:54]
      io.sample_out.bits.search_for_root <= _io_sample_out_bits_search_for_root_T_1 @[TreePE.scala 80:44]
      reg io_sample_out_bits_scores_0_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_scores_0_REG) @[TreePE.scala 82:74]
      io_sample_out_bits_scores_0_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 82:74]
      node _io_sample_out_bits_scores_0_T = eq(io_sample_out_bits_scores_0_REG, UInt<1>("h0")) @[TreePE.scala 82:66]
      node _io_sample_out_bits_scores_0_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 82:111]
      node _io_sample_out_bits_scores_0_T_2 = and(_io_sample_out_bits_scores_0_T, _io_sample_out_bits_scores_0_T_1) @[TreePE.scala 82:103]
      node _io_sample_out_bits_scores_0_T_3 = and(_io_sample_out_bits_scores_0_T_2, is_valid) @[TreePE.scala 82:123]
      node _io_sample_out_bits_scores_0_T_4 = eq(UInt<1>("h0"), offset) @[TreePE.scala 82:141]
      node _io_sample_out_bits_scores_0_T_5 = and(_io_sample_out_bits_scores_0_T_3, _io_sample_out_bits_scores_0_T_4) @[TreePE.scala 82:134]
      node _io_sample_out_bits_scores_0_T_6 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 82:190]
      node _io_sample_out_bits_scores_0_T_7 = mux(_io_sample_out_bits_scores_0_T_5, _io_sample_out_bits_scores_0_T_6, UInt<16>("h0")) @[TreePE.scala 82:64]
      node _io_sample_out_bits_scores_0_T_8 = asFixedPoint(_io_sample_out_bits_scores_0_T_7, 8) @[TreePE.scala 82:217]
      node _io_sample_out_bits_scores_0_T_9 = add(scores_bits[0], _io_sample_out_bits_scores_0_T_8) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_0_T_10 = tail(_io_sample_out_bits_scores_0_T_9, 1) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_0_T_11 = asFixedPoint(_io_sample_out_bits_scores_0_T_10, 8) @[TreePE.scala 82:58]
      io.sample_out.bits.scores[0] <= _io_sample_out_bits_scores_0_T_11 @[TreePE.scala 82:40]
      reg io_sample_out_bits_scores_1_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_scores_1_REG) @[TreePE.scala 82:74]
      io_sample_out_bits_scores_1_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 82:74]
      node _io_sample_out_bits_scores_1_T = eq(io_sample_out_bits_scores_1_REG, UInt<1>("h0")) @[TreePE.scala 82:66]
      node _io_sample_out_bits_scores_1_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 82:111]
      node _io_sample_out_bits_scores_1_T_2 = and(_io_sample_out_bits_scores_1_T, _io_sample_out_bits_scores_1_T_1) @[TreePE.scala 82:103]
      node _io_sample_out_bits_scores_1_T_3 = and(_io_sample_out_bits_scores_1_T_2, is_valid) @[TreePE.scala 82:123]
      node _io_sample_out_bits_scores_1_T_4 = eq(UInt<1>("h1"), offset) @[TreePE.scala 82:141]
      node _io_sample_out_bits_scores_1_T_5 = and(_io_sample_out_bits_scores_1_T_3, _io_sample_out_bits_scores_1_T_4) @[TreePE.scala 82:134]
      node _io_sample_out_bits_scores_1_T_6 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 82:190]
      node _io_sample_out_bits_scores_1_T_7 = mux(_io_sample_out_bits_scores_1_T_5, _io_sample_out_bits_scores_1_T_6, UInt<16>("h0")) @[TreePE.scala 82:64]
      node _io_sample_out_bits_scores_1_T_8 = asFixedPoint(_io_sample_out_bits_scores_1_T_7, 8) @[TreePE.scala 82:217]
      node _io_sample_out_bits_scores_1_T_9 = add(scores_bits[1], _io_sample_out_bits_scores_1_T_8) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_1_T_10 = tail(_io_sample_out_bits_scores_1_T_9, 1) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_1_T_11 = asFixedPoint(_io_sample_out_bits_scores_1_T_10, 8) @[TreePE.scala 82:58]
      io.sample_out.bits.scores[1] <= _io_sample_out_bits_scores_1_T_11 @[TreePE.scala 82:40]
      reg io_sample_out_bits_scores_2_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_scores_2_REG) @[TreePE.scala 82:74]
      io_sample_out_bits_scores_2_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 82:74]
      node _io_sample_out_bits_scores_2_T = eq(io_sample_out_bits_scores_2_REG, UInt<1>("h0")) @[TreePE.scala 82:66]
      node _io_sample_out_bits_scores_2_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 82:111]
      node _io_sample_out_bits_scores_2_T_2 = and(_io_sample_out_bits_scores_2_T, _io_sample_out_bits_scores_2_T_1) @[TreePE.scala 82:103]
      node _io_sample_out_bits_scores_2_T_3 = and(_io_sample_out_bits_scores_2_T_2, is_valid) @[TreePE.scala 82:123]
      node _io_sample_out_bits_scores_2_T_4 = eq(UInt<2>("h2"), offset) @[TreePE.scala 82:141]
      node _io_sample_out_bits_scores_2_T_5 = and(_io_sample_out_bits_scores_2_T_3, _io_sample_out_bits_scores_2_T_4) @[TreePE.scala 82:134]
      node _io_sample_out_bits_scores_2_T_6 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 82:190]
      node _io_sample_out_bits_scores_2_T_7 = mux(_io_sample_out_bits_scores_2_T_5, _io_sample_out_bits_scores_2_T_6, UInt<16>("h0")) @[TreePE.scala 82:64]
      node _io_sample_out_bits_scores_2_T_8 = asFixedPoint(_io_sample_out_bits_scores_2_T_7, 8) @[TreePE.scala 82:217]
      node _io_sample_out_bits_scores_2_T_9 = add(scores_bits[2], _io_sample_out_bits_scores_2_T_8) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_2_T_10 = tail(_io_sample_out_bits_scores_2_T_9, 1) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_2_T_11 = asFixedPoint(_io_sample_out_bits_scores_2_T_10, 8) @[TreePE.scala 82:58]
      io.sample_out.bits.scores[2] <= _io_sample_out_bits_scores_2_T_11 @[TreePE.scala 82:40]
      reg io_sample_out_bits_scores_3_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_scores_3_REG) @[TreePE.scala 82:74]
      io_sample_out_bits_scores_3_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 82:74]
      node _io_sample_out_bits_scores_3_T = eq(io_sample_out_bits_scores_3_REG, UInt<1>("h0")) @[TreePE.scala 82:66]
      node _io_sample_out_bits_scores_3_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 82:111]
      node _io_sample_out_bits_scores_3_T_2 = and(_io_sample_out_bits_scores_3_T, _io_sample_out_bits_scores_3_T_1) @[TreePE.scala 82:103]
      node _io_sample_out_bits_scores_3_T_3 = and(_io_sample_out_bits_scores_3_T_2, is_valid) @[TreePE.scala 82:123]
      node _io_sample_out_bits_scores_3_T_4 = eq(UInt<2>("h3"), offset) @[TreePE.scala 82:141]
      node _io_sample_out_bits_scores_3_T_5 = and(_io_sample_out_bits_scores_3_T_3, _io_sample_out_bits_scores_3_T_4) @[TreePE.scala 82:134]
      node _io_sample_out_bits_scores_3_T_6 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 82:190]
      node _io_sample_out_bits_scores_3_T_7 = mux(_io_sample_out_bits_scores_3_T_5, _io_sample_out_bits_scores_3_T_6, UInt<16>("h0")) @[TreePE.scala 82:64]
      node _io_sample_out_bits_scores_3_T_8 = asFixedPoint(_io_sample_out_bits_scores_3_T_7, 8) @[TreePE.scala 82:217]
      node _io_sample_out_bits_scores_3_T_9 = add(scores_bits[3], _io_sample_out_bits_scores_3_T_8) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_3_T_10 = tail(_io_sample_out_bits_scores_3_T_9, 1) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_3_T_11 = asFixedPoint(_io_sample_out_bits_scores_3_T_10, 8) @[TreePE.scala 82:58]
      io.sample_out.bits.scores[3] <= _io_sample_out_bits_scores_3_T_11 @[TreePE.scala 82:40]
      reg io_sample_out_bits_scores_4_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_scores_4_REG) @[TreePE.scala 82:74]
      io_sample_out_bits_scores_4_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 82:74]
      node _io_sample_out_bits_scores_4_T = eq(io_sample_out_bits_scores_4_REG, UInt<1>("h0")) @[TreePE.scala 82:66]
      node _io_sample_out_bits_scores_4_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 82:111]
      node _io_sample_out_bits_scores_4_T_2 = and(_io_sample_out_bits_scores_4_T, _io_sample_out_bits_scores_4_T_1) @[TreePE.scala 82:103]
      node _io_sample_out_bits_scores_4_T_3 = and(_io_sample_out_bits_scores_4_T_2, is_valid) @[TreePE.scala 82:123]
      node _io_sample_out_bits_scores_4_T_4 = eq(UInt<3>("h4"), offset) @[TreePE.scala 82:141]
      node _io_sample_out_bits_scores_4_T_5 = and(_io_sample_out_bits_scores_4_T_3, _io_sample_out_bits_scores_4_T_4) @[TreePE.scala 82:134]
      node _io_sample_out_bits_scores_4_T_6 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 82:190]
      node _io_sample_out_bits_scores_4_T_7 = mux(_io_sample_out_bits_scores_4_T_5, _io_sample_out_bits_scores_4_T_6, UInt<16>("h0")) @[TreePE.scala 82:64]
      node _io_sample_out_bits_scores_4_T_8 = asFixedPoint(_io_sample_out_bits_scores_4_T_7, 8) @[TreePE.scala 82:217]
      node _io_sample_out_bits_scores_4_T_9 = add(scores_bits[4], _io_sample_out_bits_scores_4_T_8) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_4_T_10 = tail(_io_sample_out_bits_scores_4_T_9, 1) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_4_T_11 = asFixedPoint(_io_sample_out_bits_scores_4_T_10, 8) @[TreePE.scala 82:58]
      io.sample_out.bits.scores[4] <= _io_sample_out_bits_scores_4_T_11 @[TreePE.scala 82:40]
      reg io_sample_out_bits_scores_5_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_scores_5_REG) @[TreePE.scala 82:74]
      io_sample_out_bits_scores_5_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 82:74]
      node _io_sample_out_bits_scores_5_T = eq(io_sample_out_bits_scores_5_REG, UInt<1>("h0")) @[TreePE.scala 82:66]
      node _io_sample_out_bits_scores_5_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 82:111]
      node _io_sample_out_bits_scores_5_T_2 = and(_io_sample_out_bits_scores_5_T, _io_sample_out_bits_scores_5_T_1) @[TreePE.scala 82:103]
      node _io_sample_out_bits_scores_5_T_3 = and(_io_sample_out_bits_scores_5_T_2, is_valid) @[TreePE.scala 82:123]
      node _io_sample_out_bits_scores_5_T_4 = eq(UInt<3>("h5"), offset) @[TreePE.scala 82:141]
      node _io_sample_out_bits_scores_5_T_5 = and(_io_sample_out_bits_scores_5_T_3, _io_sample_out_bits_scores_5_T_4) @[TreePE.scala 82:134]
      node _io_sample_out_bits_scores_5_T_6 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 82:190]
      node _io_sample_out_bits_scores_5_T_7 = mux(_io_sample_out_bits_scores_5_T_5, _io_sample_out_bits_scores_5_T_6, UInt<16>("h0")) @[TreePE.scala 82:64]
      node _io_sample_out_bits_scores_5_T_8 = asFixedPoint(_io_sample_out_bits_scores_5_T_7, 8) @[TreePE.scala 82:217]
      node _io_sample_out_bits_scores_5_T_9 = add(scores_bits[5], _io_sample_out_bits_scores_5_T_8) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_5_T_10 = tail(_io_sample_out_bits_scores_5_T_9, 1) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_5_T_11 = asFixedPoint(_io_sample_out_bits_scores_5_T_10, 8) @[TreePE.scala 82:58]
      io.sample_out.bits.scores[5] <= _io_sample_out_bits_scores_5_T_11 @[TreePE.scala 82:40]
      reg io_sample_out_bits_dest_REG : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_dest_REG) @[TreePE.scala 84:43]
      io_sample_out_bits_dest_REG <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 84:43]
      node _io_sample_out_bits_dest_T = eq(io_sample_out_bits_dest_REG, UInt<1>("h1")) @[TreePE.scala 84:69]
      io.sample_out.bits.dest <= _io_sample_out_bits_dest_T @[TreePE.scala 84:33]
      reg io_sample_out_bits_last_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_last_REG) @[TreePE.scala 85:43]
      io_sample_out_bits_last_REG <= queue.io.deq.bits.last @[TreePE.scala 85:43]
      io.sample_out.bits.last <= io_sample_out_bits_last_REG @[TreePE.scala 85:33]
    else :
      io.sample_out.bits.clock_cycles is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.last is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.dest is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[0] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[1] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[2] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[3] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[4] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[0] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[1] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[2] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[3] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[4] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[5] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.tree_to_exec is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.search_for_root is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.shift is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.offset is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[0] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[1] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[2] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[3] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[4] is invalid @[TreePE.scala 88:26]
      io.sample_out.valid <= UInt<1>("h0") @[TreePE.scala 89:27]
    queue.io.deq.ready <= io.sample_out.ready @[TreePE.scala 92:17]

  module TreePEwithBRAM_12 :
    input clock : Clock
    input reset : Reset
    output pe_io : { flip sample_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, flip mem : { flip enable_1 : UInt<1>, flip write_1 : UInt<1>, flip addr_1 : UInt<13>, flip dataIn_1 : UInt<64>, dataOut_1 : UInt<64>, flip enable_2 : UInt<1>, flip write_2 : UInt<1>, flip addr_2 : UInt<13>, flip dataIn_2 : UInt<64>, dataOut_2 : UInt<64>}, sample_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}}

    inst pe of TreePE_12 @[TreePE.scala 104:18]
    pe.clock <= clock
    pe.reset <= reset
    pe_io.sample_out.bits <= pe.io.sample_out.bits @[TreePE.scala 106:9]
    pe_io.sample_out.valid <= pe.io.sample_out.valid @[TreePE.scala 106:9]
    pe.io.sample_out.ready <= pe_io.sample_out.ready @[TreePE.scala 106:9]
    pe.io.mem <= pe_io.mem @[TreePE.scala 106:9]
    pe.io.sample_in <= pe_io.sample_in @[TreePE.scala 106:9]

  module Queue_32 :
    input clock : Clock
    input reset : Reset
    output io : { flip enq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, deq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, count : UInt<2>}

    cmem ram : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>} [3] @[Decoupled.scala 275:95]
    reg enq_ptr_value : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[Counter.scala 61:40]
    reg deq_ptr_value : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[Counter.scala 61:40]
    reg maybe_full : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[Decoupled.scala 278:27]
    node ptr_match = eq(enq_ptr_value, deq_ptr_value) @[Decoupled.scala 279:33]
    node _empty_T = eq(maybe_full, UInt<1>("h0")) @[Decoupled.scala 280:28]
    node empty = and(ptr_match, _empty_T) @[Decoupled.scala 280:25]
    node full = and(ptr_match, maybe_full) @[Decoupled.scala 281:24]
    node _do_enq_T = and(io.enq.ready, io.enq.valid) @[Decoupled.scala 52:35]
    wire do_enq : UInt<1>
    do_enq <= _do_enq_T
    node _do_deq_T = and(io.deq.ready, io.deq.valid) @[Decoupled.scala 52:35]
    wire do_deq : UInt<1>
    do_deq <= _do_deq_T
    when do_enq : @[Decoupled.scala 288:16]
      infer mport MPORT = ram[enq_ptr_value], clock @[Decoupled.scala 289:8]
      MPORT <= io.enq.bits @[Decoupled.scala 289:24]
      node wrap = eq(enq_ptr_value, UInt<2>("h2")) @[Counter.scala 73:24]
      node _value_T = add(enq_ptr_value, UInt<1>("h1")) @[Counter.scala 77:24]
      node _value_T_1 = tail(_value_T, 1) @[Counter.scala 77:24]
      enq_ptr_value <= _value_T_1 @[Counter.scala 77:15]
      when wrap : @[Counter.scala 87:20]
        enq_ptr_value <= UInt<1>("h0") @[Counter.scala 87:28]
    when do_deq : @[Decoupled.scala 292:16]
      node wrap_1 = eq(deq_ptr_value, UInt<2>("h2")) @[Counter.scala 73:24]
      node _value_T_2 = add(deq_ptr_value, UInt<1>("h1")) @[Counter.scala 77:24]
      node _value_T_3 = tail(_value_T_2, 1) @[Counter.scala 77:24]
      deq_ptr_value <= _value_T_3 @[Counter.scala 77:15]
      when wrap_1 : @[Counter.scala 87:20]
        deq_ptr_value <= UInt<1>("h0") @[Counter.scala 87:28]
    node _T = neq(do_enq, do_deq) @[Decoupled.scala 295:15]
    when _T : @[Decoupled.scala 295:27]
      maybe_full <= do_enq @[Decoupled.scala 296:16]
    when UInt<1>("h0") : @[Decoupled.scala 298:15]
      enq_ptr_value <= UInt<1>("h0") @[Counter.scala 98:11]
      deq_ptr_value <= UInt<1>("h0") @[Counter.scala 98:11]
      maybe_full <= UInt<1>("h0") @[Decoupled.scala 301:16]
    node _io_deq_valid_T = eq(empty, UInt<1>("h0")) @[Decoupled.scala 304:19]
    io.deq.valid <= _io_deq_valid_T @[Decoupled.scala 304:16]
    node _io_enq_ready_T = eq(full, UInt<1>("h0")) @[Decoupled.scala 305:19]
    io.enq.ready <= _io_enq_ready_T @[Decoupled.scala 305:16]
    infer mport io_deq_bits_MPORT = ram[deq_ptr_value], clock @[Decoupled.scala 312:23]
    io.deq.bits <= io_deq_bits_MPORT @[Decoupled.scala 312:17]
    node _ptr_diff_T = sub(enq_ptr_value, deq_ptr_value) @[Decoupled.scala 328:32]
    node ptr_diff = tail(_ptr_diff_T, 1) @[Decoupled.scala 328:32]
    node _io_count_T = mux(maybe_full, UInt<2>("h3"), UInt<1>("h0")) @[Decoupled.scala 335:10]
    node _io_count_T_1 = gt(deq_ptr_value, enq_ptr_value) @[Decoupled.scala 336:25]
    node _io_count_T_2 = add(UInt<2>("h3"), ptr_diff) @[Decoupled.scala 336:57]
    node _io_count_T_3 = tail(_io_count_T_2, 1) @[Decoupled.scala 336:57]
    node _io_count_T_4 = mux(_io_count_T_1, _io_count_T_3, ptr_diff) @[Decoupled.scala 336:10]
    node _io_count_T_5 = mux(ptr_match, _io_count_T, _io_count_T_4) @[Decoupled.scala 333:20]
    io.count <= _io_count_T_5 @[Decoupled.scala 333:14]

  module TreePE_13 :
    input clock : Clock
    input reset : Reset
    output io : { flip sample_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, flip mem : { flip enable_1 : UInt<1>, flip write_1 : UInt<1>, flip addr_1 : UInt<13>, flip dataIn_1 : UInt<64>, dataOut_1 : UInt<64>, flip enable_2 : UInt<1>, flip write_2 : UInt<1>, flip addr_2 : UInt<13>, flip dataIn_2 : UInt<64>, dataOut_2 : UInt<64>}, sample_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}}

    inst queue of Queue_32 @[Decoupled.scala 377:21]
    queue.clock <= clock
    queue.reset <= reset
    queue.io.enq.valid <= io.sample_in.valid @[Decoupled.scala 379:22]
    queue.io.enq.bits.clock_cycles <= io.sample_in.bits.clock_cycles @[Decoupled.scala 380:21]
    queue.io.enq.bits.last <= io.sample_in.bits.last @[Decoupled.scala 380:21]
    queue.io.enq.bits.dest <= io.sample_in.bits.dest @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[0] <= io.sample_in.bits.weights[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[1] <= io.sample_in.bits.weights[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[2] <= io.sample_in.bits.weights[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[3] <= io.sample_in.bits.weights[3] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[4] <= io.sample_in.bits.weights[4] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[0] <= io.sample_in.bits.scores[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[1] <= io.sample_in.bits.scores[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[2] <= io.sample_in.bits.scores[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[3] <= io.sample_in.bits.scores[3] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[4] <= io.sample_in.bits.scores[4] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[5] <= io.sample_in.bits.scores[5] @[Decoupled.scala 380:21]
    queue.io.enq.bits.tree_to_exec <= io.sample_in.bits.tree_to_exec @[Decoupled.scala 380:21]
    queue.io.enq.bits.search_for_root <= io.sample_in.bits.search_for_root @[Decoupled.scala 380:21]
    queue.io.enq.bits.shift <= io.sample_in.bits.shift @[Decoupled.scala 380:21]
    queue.io.enq.bits.offset <= io.sample_in.bits.offset @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[0] <= io.sample_in.bits.features[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[1] <= io.sample_in.bits.features[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[2] <= io.sample_in.bits.features[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[3] <= io.sample_in.bits.features[3] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[4] <= io.sample_in.bits.features[4] @[Decoupled.scala 380:21]
    io.sample_in.ready <= queue.io.enq.ready @[Decoupled.scala 381:17]
    io.mem.enable_1 <= UInt<1>("h1") @[TreePE.scala 23:21]
    io.mem.addr_1 <= queue.io.deq.bits.offset @[TreePE.scala 24:19]
    io.mem.write_1 <= UInt<1>("h0") @[TreePE.scala 25:20]
    io.mem.dataIn_1 <= UInt<1>("h0") @[TreePE.scala 26:21]
    io.mem.enable_2 is invalid @[TreePE.scala 28:21]
    io.mem.addr_2 is invalid @[TreePE.scala 29:19]
    io.mem.write_2 is invalid @[TreePE.scala 30:20]
    io.mem.dataIn_2 is invalid @[TreePE.scala 31:21]
    reg REG : UInt<1>, clock with :
      reset => (UInt<1>("h0"), REG) @[TreePE.scala 35:17]
    REG <= queue.io.deq.valid @[TreePE.scala 35:17]
    when REG : @[TreePE.scala 35:31]
      node attr_id = bits(io.mem.dataOut_1, 34, 32) @[TreePE.scala 37:37]
      node threshold = bits(io.mem.dataOut_1, 15, 0) @[TreePE.scala 38:39]
      node nodeRA = bits(io.mem.dataOut_1, 31, 16) @[TreePE.scala 39:36]
      node leftChildInfo = bits(io.mem.dataOut_1, 44, 35) @[TreePE.scala 40:43]
      node rightChildInfo = bits(io.mem.dataOut_1, 54, 45) @[TreePE.scala 41:44]
      node leftChildType = bits(io.mem.dataOut_1, 55, 55) @[TreePE.scala 42:43]
      node rightChildType = bits(io.mem.dataOut_1, 56, 56) @[TreePE.scala 43:44]
      node is_valid = bits(io.mem.dataOut_1, 57, 57) @[TreePE.scala 44:38]
      node depth_indicator = bits(io.mem.dataOut_1, 60, 58) @[TreePE.scala 45:45]
      reg REG_1 : Fixed<32><<16>>[5], clock with :
        reset => (UInt<1>("h0"), REG_1) @[TreePE.scala 47:45]
      REG_1 <= queue.io.deq.bits.features @[TreePE.scala 47:45]
      io.sample_out.bits.features <= REG_1 @[TreePE.scala 47:35]
      reg REG_2 : Fixed<16><<8>>[5], clock with :
        reset => (UInt<1>("h0"), REG_2) @[TreePE.scala 48:44]
      REG_2 <= queue.io.deq.bits.weights @[TreePE.scala 48:44]
      io.sample_out.bits.weights <= REG_2 @[TreePE.scala 48:34]
      reg io_sample_out_bits_tree_to_exec_REG : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_tree_to_exec_REG) @[TreePE.scala 49:49]
      io_sample_out_bits_tree_to_exec_REG <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 49:49]
      io.sample_out.bits.tree_to_exec <= io_sample_out_bits_tree_to_exec_REG @[TreePE.scala 49:39]
      reg REG_3 : Fixed<16><<8>>[6], clock with :
        reset => (UInt<1>("h0"), REG_3) @[TreePE.scala 50:43]
      REG_3 <= queue.io.deq.bits.scores @[TreePE.scala 50:43]
      io.sample_out.bits.scores <= REG_3 @[TreePE.scala 50:33]
      io.sample_out.valid <= UInt<1>("h1") @[TreePE.scala 51:27]
      reg io_sample_out_bits_clock_cycles_REG : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_clock_cycles_REG) @[TreePE.scala 52:49]
      io_sample_out_bits_clock_cycles_REG <= queue.io.deq.bits.clock_cycles @[TreePE.scala 52:49]
      io.sample_out.bits.clock_cycles <= io_sample_out_bits_clock_cycles_REG @[TreePE.scala 52:39]
      wire offset : UInt<10> @[TreePE.scala 71:26]
      wire shift : UInt<1> @[TreePE.scala 72:25]
      reg features_bits : Fixed<32><<16>>[5], clock with :
        reset => (UInt<1>("h0"), features_bits) @[TreePE.scala 73:36]
      features_bits <= queue.io.deq.bits.features @[TreePE.scala 73:36]
      reg scores_bits : Fixed<16><<8>>[6], clock with :
        reset => (UInt<1>("h0"), scores_bits) @[TreePE.scala 74:34]
      scores_bits <= queue.io.deq.bits.scores @[TreePE.scala 74:34]
      reg weights_bits : Fixed<16><<8>>[5], clock with :
        reset => (UInt<1>("h0"), weights_bits) @[TreePE.scala 75:35]
      weights_bits <= queue.io.deq.bits.weights @[TreePE.scala 75:35]
      node _shift_T = asFixedPoint(threshold, 8) @[TreePE.scala 76:69]
      node _shift_T_1 = lt(features_bits[attr_id], _shift_T) @[TreePE.scala 76:45]
      node _shift_T_2 = mux(_shift_T_1, leftChildType, rightChildType) @[TreePE.scala 76:21]
      shift <= _shift_T_2 @[TreePE.scala 76:15]
      node _offset_T = asFixedPoint(threshold, 8) @[TreePE.scala 77:70]
      node _offset_T_1 = lt(features_bits[attr_id], _offset_T) @[TreePE.scala 77:46]
      node _offset_T_2 = mux(_offset_T_1, leftChildInfo, rightChildInfo) @[TreePE.scala 77:22]
      offset <= _offset_T_2 @[TreePE.scala 77:16]
      node _io_sample_out_bits_offset_T = eq(shift, UInt<1>("h0")) @[TreePE.scala 78:48]
      reg io_sample_out_bits_offset_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_offset_REG) @[TreePE.scala 78:70]
      io_sample_out_bits_offset_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 78:70]
      node _io_sample_out_bits_offset_T_1 = or(_io_sample_out_bits_offset_T, io_sample_out_bits_offset_REG) @[TreePE.scala 78:60]
      reg io_sample_out_bits_offset_REG_1 : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_offset_REG_1) @[TreePE.scala 78:106]
      io_sample_out_bits_offset_REG_1 <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 78:106]
      node _io_sample_out_bits_offset_T_2 = mux(_io_sample_out_bits_offset_T_1, io_sample_out_bits_offset_REG_1, offset) @[TreePE.scala 78:41]
      io.sample_out.bits.offset <= _io_sample_out_bits_offset_T_2 @[TreePE.scala 78:35]
      io.sample_out.bits.shift <= UInt<1>("h0") @[TreePE.scala 79:34]
      node _io_sample_out_bits_search_for_root_T = eq(shift, UInt<1>("h0")) @[TreePE.scala 80:47]
      reg io_sample_out_bits_search_for_root_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_search_for_root_REG) @[TreePE.scala 80:64]
      io_sample_out_bits_search_for_root_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 80:64]
      node _io_sample_out_bits_search_for_root_T_1 = or(_io_sample_out_bits_search_for_root_T, io_sample_out_bits_search_for_root_REG) @[TreePE.scala 80:54]
      io.sample_out.bits.search_for_root <= _io_sample_out_bits_search_for_root_T_1 @[TreePE.scala 80:44]
      reg io_sample_out_bits_scores_0_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_scores_0_REG) @[TreePE.scala 82:74]
      io_sample_out_bits_scores_0_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 82:74]
      node _io_sample_out_bits_scores_0_T = eq(io_sample_out_bits_scores_0_REG, UInt<1>("h0")) @[TreePE.scala 82:66]
      node _io_sample_out_bits_scores_0_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 82:111]
      node _io_sample_out_bits_scores_0_T_2 = and(_io_sample_out_bits_scores_0_T, _io_sample_out_bits_scores_0_T_1) @[TreePE.scala 82:103]
      node _io_sample_out_bits_scores_0_T_3 = and(_io_sample_out_bits_scores_0_T_2, is_valid) @[TreePE.scala 82:123]
      node _io_sample_out_bits_scores_0_T_4 = eq(UInt<1>("h0"), offset) @[TreePE.scala 82:141]
      node _io_sample_out_bits_scores_0_T_5 = and(_io_sample_out_bits_scores_0_T_3, _io_sample_out_bits_scores_0_T_4) @[TreePE.scala 82:134]
      node _io_sample_out_bits_scores_0_T_6 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 82:190]
      node _io_sample_out_bits_scores_0_T_7 = mux(_io_sample_out_bits_scores_0_T_5, _io_sample_out_bits_scores_0_T_6, UInt<16>("h0")) @[TreePE.scala 82:64]
      node _io_sample_out_bits_scores_0_T_8 = asFixedPoint(_io_sample_out_bits_scores_0_T_7, 8) @[TreePE.scala 82:217]
      node _io_sample_out_bits_scores_0_T_9 = add(scores_bits[0], _io_sample_out_bits_scores_0_T_8) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_0_T_10 = tail(_io_sample_out_bits_scores_0_T_9, 1) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_0_T_11 = asFixedPoint(_io_sample_out_bits_scores_0_T_10, 8) @[TreePE.scala 82:58]
      io.sample_out.bits.scores[0] <= _io_sample_out_bits_scores_0_T_11 @[TreePE.scala 82:40]
      reg io_sample_out_bits_scores_1_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_scores_1_REG) @[TreePE.scala 82:74]
      io_sample_out_bits_scores_1_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 82:74]
      node _io_sample_out_bits_scores_1_T = eq(io_sample_out_bits_scores_1_REG, UInt<1>("h0")) @[TreePE.scala 82:66]
      node _io_sample_out_bits_scores_1_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 82:111]
      node _io_sample_out_bits_scores_1_T_2 = and(_io_sample_out_bits_scores_1_T, _io_sample_out_bits_scores_1_T_1) @[TreePE.scala 82:103]
      node _io_sample_out_bits_scores_1_T_3 = and(_io_sample_out_bits_scores_1_T_2, is_valid) @[TreePE.scala 82:123]
      node _io_sample_out_bits_scores_1_T_4 = eq(UInt<1>("h1"), offset) @[TreePE.scala 82:141]
      node _io_sample_out_bits_scores_1_T_5 = and(_io_sample_out_bits_scores_1_T_3, _io_sample_out_bits_scores_1_T_4) @[TreePE.scala 82:134]
      node _io_sample_out_bits_scores_1_T_6 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 82:190]
      node _io_sample_out_bits_scores_1_T_7 = mux(_io_sample_out_bits_scores_1_T_5, _io_sample_out_bits_scores_1_T_6, UInt<16>("h0")) @[TreePE.scala 82:64]
      node _io_sample_out_bits_scores_1_T_8 = asFixedPoint(_io_sample_out_bits_scores_1_T_7, 8) @[TreePE.scala 82:217]
      node _io_sample_out_bits_scores_1_T_9 = add(scores_bits[1], _io_sample_out_bits_scores_1_T_8) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_1_T_10 = tail(_io_sample_out_bits_scores_1_T_9, 1) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_1_T_11 = asFixedPoint(_io_sample_out_bits_scores_1_T_10, 8) @[TreePE.scala 82:58]
      io.sample_out.bits.scores[1] <= _io_sample_out_bits_scores_1_T_11 @[TreePE.scala 82:40]
      reg io_sample_out_bits_scores_2_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_scores_2_REG) @[TreePE.scala 82:74]
      io_sample_out_bits_scores_2_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 82:74]
      node _io_sample_out_bits_scores_2_T = eq(io_sample_out_bits_scores_2_REG, UInt<1>("h0")) @[TreePE.scala 82:66]
      node _io_sample_out_bits_scores_2_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 82:111]
      node _io_sample_out_bits_scores_2_T_2 = and(_io_sample_out_bits_scores_2_T, _io_sample_out_bits_scores_2_T_1) @[TreePE.scala 82:103]
      node _io_sample_out_bits_scores_2_T_3 = and(_io_sample_out_bits_scores_2_T_2, is_valid) @[TreePE.scala 82:123]
      node _io_sample_out_bits_scores_2_T_4 = eq(UInt<2>("h2"), offset) @[TreePE.scala 82:141]
      node _io_sample_out_bits_scores_2_T_5 = and(_io_sample_out_bits_scores_2_T_3, _io_sample_out_bits_scores_2_T_4) @[TreePE.scala 82:134]
      node _io_sample_out_bits_scores_2_T_6 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 82:190]
      node _io_sample_out_bits_scores_2_T_7 = mux(_io_sample_out_bits_scores_2_T_5, _io_sample_out_bits_scores_2_T_6, UInt<16>("h0")) @[TreePE.scala 82:64]
      node _io_sample_out_bits_scores_2_T_8 = asFixedPoint(_io_sample_out_bits_scores_2_T_7, 8) @[TreePE.scala 82:217]
      node _io_sample_out_bits_scores_2_T_9 = add(scores_bits[2], _io_sample_out_bits_scores_2_T_8) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_2_T_10 = tail(_io_sample_out_bits_scores_2_T_9, 1) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_2_T_11 = asFixedPoint(_io_sample_out_bits_scores_2_T_10, 8) @[TreePE.scala 82:58]
      io.sample_out.bits.scores[2] <= _io_sample_out_bits_scores_2_T_11 @[TreePE.scala 82:40]
      reg io_sample_out_bits_scores_3_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_scores_3_REG) @[TreePE.scala 82:74]
      io_sample_out_bits_scores_3_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 82:74]
      node _io_sample_out_bits_scores_3_T = eq(io_sample_out_bits_scores_3_REG, UInt<1>("h0")) @[TreePE.scala 82:66]
      node _io_sample_out_bits_scores_3_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 82:111]
      node _io_sample_out_bits_scores_3_T_2 = and(_io_sample_out_bits_scores_3_T, _io_sample_out_bits_scores_3_T_1) @[TreePE.scala 82:103]
      node _io_sample_out_bits_scores_3_T_3 = and(_io_sample_out_bits_scores_3_T_2, is_valid) @[TreePE.scala 82:123]
      node _io_sample_out_bits_scores_3_T_4 = eq(UInt<2>("h3"), offset) @[TreePE.scala 82:141]
      node _io_sample_out_bits_scores_3_T_5 = and(_io_sample_out_bits_scores_3_T_3, _io_sample_out_bits_scores_3_T_4) @[TreePE.scala 82:134]
      node _io_sample_out_bits_scores_3_T_6 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 82:190]
      node _io_sample_out_bits_scores_3_T_7 = mux(_io_sample_out_bits_scores_3_T_5, _io_sample_out_bits_scores_3_T_6, UInt<16>("h0")) @[TreePE.scala 82:64]
      node _io_sample_out_bits_scores_3_T_8 = asFixedPoint(_io_sample_out_bits_scores_3_T_7, 8) @[TreePE.scala 82:217]
      node _io_sample_out_bits_scores_3_T_9 = add(scores_bits[3], _io_sample_out_bits_scores_3_T_8) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_3_T_10 = tail(_io_sample_out_bits_scores_3_T_9, 1) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_3_T_11 = asFixedPoint(_io_sample_out_bits_scores_3_T_10, 8) @[TreePE.scala 82:58]
      io.sample_out.bits.scores[3] <= _io_sample_out_bits_scores_3_T_11 @[TreePE.scala 82:40]
      reg io_sample_out_bits_scores_4_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_scores_4_REG) @[TreePE.scala 82:74]
      io_sample_out_bits_scores_4_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 82:74]
      node _io_sample_out_bits_scores_4_T = eq(io_sample_out_bits_scores_4_REG, UInt<1>("h0")) @[TreePE.scala 82:66]
      node _io_sample_out_bits_scores_4_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 82:111]
      node _io_sample_out_bits_scores_4_T_2 = and(_io_sample_out_bits_scores_4_T, _io_sample_out_bits_scores_4_T_1) @[TreePE.scala 82:103]
      node _io_sample_out_bits_scores_4_T_3 = and(_io_sample_out_bits_scores_4_T_2, is_valid) @[TreePE.scala 82:123]
      node _io_sample_out_bits_scores_4_T_4 = eq(UInt<3>("h4"), offset) @[TreePE.scala 82:141]
      node _io_sample_out_bits_scores_4_T_5 = and(_io_sample_out_bits_scores_4_T_3, _io_sample_out_bits_scores_4_T_4) @[TreePE.scala 82:134]
      node _io_sample_out_bits_scores_4_T_6 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 82:190]
      node _io_sample_out_bits_scores_4_T_7 = mux(_io_sample_out_bits_scores_4_T_5, _io_sample_out_bits_scores_4_T_6, UInt<16>("h0")) @[TreePE.scala 82:64]
      node _io_sample_out_bits_scores_4_T_8 = asFixedPoint(_io_sample_out_bits_scores_4_T_7, 8) @[TreePE.scala 82:217]
      node _io_sample_out_bits_scores_4_T_9 = add(scores_bits[4], _io_sample_out_bits_scores_4_T_8) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_4_T_10 = tail(_io_sample_out_bits_scores_4_T_9, 1) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_4_T_11 = asFixedPoint(_io_sample_out_bits_scores_4_T_10, 8) @[TreePE.scala 82:58]
      io.sample_out.bits.scores[4] <= _io_sample_out_bits_scores_4_T_11 @[TreePE.scala 82:40]
      reg io_sample_out_bits_scores_5_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_scores_5_REG) @[TreePE.scala 82:74]
      io_sample_out_bits_scores_5_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 82:74]
      node _io_sample_out_bits_scores_5_T = eq(io_sample_out_bits_scores_5_REG, UInt<1>("h0")) @[TreePE.scala 82:66]
      node _io_sample_out_bits_scores_5_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 82:111]
      node _io_sample_out_bits_scores_5_T_2 = and(_io_sample_out_bits_scores_5_T, _io_sample_out_bits_scores_5_T_1) @[TreePE.scala 82:103]
      node _io_sample_out_bits_scores_5_T_3 = and(_io_sample_out_bits_scores_5_T_2, is_valid) @[TreePE.scala 82:123]
      node _io_sample_out_bits_scores_5_T_4 = eq(UInt<3>("h5"), offset) @[TreePE.scala 82:141]
      node _io_sample_out_bits_scores_5_T_5 = and(_io_sample_out_bits_scores_5_T_3, _io_sample_out_bits_scores_5_T_4) @[TreePE.scala 82:134]
      node _io_sample_out_bits_scores_5_T_6 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 82:190]
      node _io_sample_out_bits_scores_5_T_7 = mux(_io_sample_out_bits_scores_5_T_5, _io_sample_out_bits_scores_5_T_6, UInt<16>("h0")) @[TreePE.scala 82:64]
      node _io_sample_out_bits_scores_5_T_8 = asFixedPoint(_io_sample_out_bits_scores_5_T_7, 8) @[TreePE.scala 82:217]
      node _io_sample_out_bits_scores_5_T_9 = add(scores_bits[5], _io_sample_out_bits_scores_5_T_8) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_5_T_10 = tail(_io_sample_out_bits_scores_5_T_9, 1) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_5_T_11 = asFixedPoint(_io_sample_out_bits_scores_5_T_10, 8) @[TreePE.scala 82:58]
      io.sample_out.bits.scores[5] <= _io_sample_out_bits_scores_5_T_11 @[TreePE.scala 82:40]
      reg io_sample_out_bits_dest_REG : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_dest_REG) @[TreePE.scala 84:43]
      io_sample_out_bits_dest_REG <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 84:43]
      node _io_sample_out_bits_dest_T = eq(io_sample_out_bits_dest_REG, UInt<1>("h1")) @[TreePE.scala 84:69]
      io.sample_out.bits.dest <= _io_sample_out_bits_dest_T @[TreePE.scala 84:33]
      reg io_sample_out_bits_last_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_last_REG) @[TreePE.scala 85:43]
      io_sample_out_bits_last_REG <= queue.io.deq.bits.last @[TreePE.scala 85:43]
      io.sample_out.bits.last <= io_sample_out_bits_last_REG @[TreePE.scala 85:33]
    else :
      io.sample_out.bits.clock_cycles is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.last is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.dest is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[0] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[1] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[2] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[3] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[4] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[0] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[1] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[2] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[3] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[4] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[5] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.tree_to_exec is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.search_for_root is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.shift is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.offset is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[0] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[1] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[2] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[3] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[4] is invalid @[TreePE.scala 88:26]
      io.sample_out.valid <= UInt<1>("h0") @[TreePE.scala 89:27]
    queue.io.deq.ready <= io.sample_out.ready @[TreePE.scala 92:17]

  module TreePEwithBRAM_13 :
    input clock : Clock
    input reset : Reset
    output pe_io : { flip sample_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, flip mem : { flip enable_1 : UInt<1>, flip write_1 : UInt<1>, flip addr_1 : UInt<13>, flip dataIn_1 : UInt<64>, dataOut_1 : UInt<64>, flip enable_2 : UInt<1>, flip write_2 : UInt<1>, flip addr_2 : UInt<13>, flip dataIn_2 : UInt<64>, dataOut_2 : UInt<64>}, sample_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}}

    inst pe of TreePE_13 @[TreePE.scala 104:18]
    pe.clock <= clock
    pe.reset <= reset
    pe_io.sample_out.bits <= pe.io.sample_out.bits @[TreePE.scala 106:9]
    pe_io.sample_out.valid <= pe.io.sample_out.valid @[TreePE.scala 106:9]
    pe.io.sample_out.ready <= pe_io.sample_out.ready @[TreePE.scala 106:9]
    pe.io.mem <= pe_io.mem @[TreePE.scala 106:9]
    pe.io.sample_in <= pe_io.sample_in @[TreePE.scala 106:9]

  module Queue_33 :
    input clock : Clock
    input reset : Reset
    output io : { flip enq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, deq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, count : UInt<2>}

    cmem ram : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>} [3] @[Decoupled.scala 275:95]
    reg enq_ptr_value : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[Counter.scala 61:40]
    reg deq_ptr_value : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[Counter.scala 61:40]
    reg maybe_full : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[Decoupled.scala 278:27]
    node ptr_match = eq(enq_ptr_value, deq_ptr_value) @[Decoupled.scala 279:33]
    node _empty_T = eq(maybe_full, UInt<1>("h0")) @[Decoupled.scala 280:28]
    node empty = and(ptr_match, _empty_T) @[Decoupled.scala 280:25]
    node full = and(ptr_match, maybe_full) @[Decoupled.scala 281:24]
    node _do_enq_T = and(io.enq.ready, io.enq.valid) @[Decoupled.scala 52:35]
    wire do_enq : UInt<1>
    do_enq <= _do_enq_T
    node _do_deq_T = and(io.deq.ready, io.deq.valid) @[Decoupled.scala 52:35]
    wire do_deq : UInt<1>
    do_deq <= _do_deq_T
    when do_enq : @[Decoupled.scala 288:16]
      infer mport MPORT = ram[enq_ptr_value], clock @[Decoupled.scala 289:8]
      MPORT <= io.enq.bits @[Decoupled.scala 289:24]
      node wrap = eq(enq_ptr_value, UInt<2>("h2")) @[Counter.scala 73:24]
      node _value_T = add(enq_ptr_value, UInt<1>("h1")) @[Counter.scala 77:24]
      node _value_T_1 = tail(_value_T, 1) @[Counter.scala 77:24]
      enq_ptr_value <= _value_T_1 @[Counter.scala 77:15]
      when wrap : @[Counter.scala 87:20]
        enq_ptr_value <= UInt<1>("h0") @[Counter.scala 87:28]
    when do_deq : @[Decoupled.scala 292:16]
      node wrap_1 = eq(deq_ptr_value, UInt<2>("h2")) @[Counter.scala 73:24]
      node _value_T_2 = add(deq_ptr_value, UInt<1>("h1")) @[Counter.scala 77:24]
      node _value_T_3 = tail(_value_T_2, 1) @[Counter.scala 77:24]
      deq_ptr_value <= _value_T_3 @[Counter.scala 77:15]
      when wrap_1 : @[Counter.scala 87:20]
        deq_ptr_value <= UInt<1>("h0") @[Counter.scala 87:28]
    node _T = neq(do_enq, do_deq) @[Decoupled.scala 295:15]
    when _T : @[Decoupled.scala 295:27]
      maybe_full <= do_enq @[Decoupled.scala 296:16]
    when UInt<1>("h0") : @[Decoupled.scala 298:15]
      enq_ptr_value <= UInt<1>("h0") @[Counter.scala 98:11]
      deq_ptr_value <= UInt<1>("h0") @[Counter.scala 98:11]
      maybe_full <= UInt<1>("h0") @[Decoupled.scala 301:16]
    node _io_deq_valid_T = eq(empty, UInt<1>("h0")) @[Decoupled.scala 304:19]
    io.deq.valid <= _io_deq_valid_T @[Decoupled.scala 304:16]
    node _io_enq_ready_T = eq(full, UInt<1>("h0")) @[Decoupled.scala 305:19]
    io.enq.ready <= _io_enq_ready_T @[Decoupled.scala 305:16]
    infer mport io_deq_bits_MPORT = ram[deq_ptr_value], clock @[Decoupled.scala 312:23]
    io.deq.bits <= io_deq_bits_MPORT @[Decoupled.scala 312:17]
    node _ptr_diff_T = sub(enq_ptr_value, deq_ptr_value) @[Decoupled.scala 328:32]
    node ptr_diff = tail(_ptr_diff_T, 1) @[Decoupled.scala 328:32]
    node _io_count_T = mux(maybe_full, UInt<2>("h3"), UInt<1>("h0")) @[Decoupled.scala 335:10]
    node _io_count_T_1 = gt(deq_ptr_value, enq_ptr_value) @[Decoupled.scala 336:25]
    node _io_count_T_2 = add(UInt<2>("h3"), ptr_diff) @[Decoupled.scala 336:57]
    node _io_count_T_3 = tail(_io_count_T_2, 1) @[Decoupled.scala 336:57]
    node _io_count_T_4 = mux(_io_count_T_1, _io_count_T_3, ptr_diff) @[Decoupled.scala 336:10]
    node _io_count_T_5 = mux(ptr_match, _io_count_T, _io_count_T_4) @[Decoupled.scala 333:20]
    io.count <= _io_count_T_5 @[Decoupled.scala 333:14]

  module TreePE_14 :
    input clock : Clock
    input reset : Reset
    output io : { flip sample_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, flip mem : { flip enable_1 : UInt<1>, flip write_1 : UInt<1>, flip addr_1 : UInt<13>, flip dataIn_1 : UInt<64>, dataOut_1 : UInt<64>, flip enable_2 : UInt<1>, flip write_2 : UInt<1>, flip addr_2 : UInt<13>, flip dataIn_2 : UInt<64>, dataOut_2 : UInt<64>}, sample_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}}

    inst queue of Queue_33 @[Decoupled.scala 377:21]
    queue.clock <= clock
    queue.reset <= reset
    queue.io.enq.valid <= io.sample_in.valid @[Decoupled.scala 379:22]
    queue.io.enq.bits.clock_cycles <= io.sample_in.bits.clock_cycles @[Decoupled.scala 380:21]
    queue.io.enq.bits.last <= io.sample_in.bits.last @[Decoupled.scala 380:21]
    queue.io.enq.bits.dest <= io.sample_in.bits.dest @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[0] <= io.sample_in.bits.weights[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[1] <= io.sample_in.bits.weights[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[2] <= io.sample_in.bits.weights[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[3] <= io.sample_in.bits.weights[3] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[4] <= io.sample_in.bits.weights[4] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[0] <= io.sample_in.bits.scores[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[1] <= io.sample_in.bits.scores[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[2] <= io.sample_in.bits.scores[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[3] <= io.sample_in.bits.scores[3] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[4] <= io.sample_in.bits.scores[4] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[5] <= io.sample_in.bits.scores[5] @[Decoupled.scala 380:21]
    queue.io.enq.bits.tree_to_exec <= io.sample_in.bits.tree_to_exec @[Decoupled.scala 380:21]
    queue.io.enq.bits.search_for_root <= io.sample_in.bits.search_for_root @[Decoupled.scala 380:21]
    queue.io.enq.bits.shift <= io.sample_in.bits.shift @[Decoupled.scala 380:21]
    queue.io.enq.bits.offset <= io.sample_in.bits.offset @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[0] <= io.sample_in.bits.features[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[1] <= io.sample_in.bits.features[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[2] <= io.sample_in.bits.features[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[3] <= io.sample_in.bits.features[3] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[4] <= io.sample_in.bits.features[4] @[Decoupled.scala 380:21]
    io.sample_in.ready <= queue.io.enq.ready @[Decoupled.scala 381:17]
    io.mem.enable_1 <= UInt<1>("h1") @[TreePE.scala 23:21]
    io.mem.addr_1 <= queue.io.deq.bits.offset @[TreePE.scala 24:19]
    io.mem.write_1 <= UInt<1>("h0") @[TreePE.scala 25:20]
    io.mem.dataIn_1 <= UInt<1>("h0") @[TreePE.scala 26:21]
    io.mem.enable_2 is invalid @[TreePE.scala 28:21]
    io.mem.addr_2 is invalid @[TreePE.scala 29:19]
    io.mem.write_2 is invalid @[TreePE.scala 30:20]
    io.mem.dataIn_2 is invalid @[TreePE.scala 31:21]
    reg REG : UInt<1>, clock with :
      reset => (UInt<1>("h0"), REG) @[TreePE.scala 35:17]
    REG <= queue.io.deq.valid @[TreePE.scala 35:17]
    when REG : @[TreePE.scala 35:31]
      node attr_id = bits(io.mem.dataOut_1, 34, 32) @[TreePE.scala 37:37]
      node threshold = bits(io.mem.dataOut_1, 15, 0) @[TreePE.scala 38:39]
      node nodeRA = bits(io.mem.dataOut_1, 31, 16) @[TreePE.scala 39:36]
      node leftChildInfo = bits(io.mem.dataOut_1, 44, 35) @[TreePE.scala 40:43]
      node rightChildInfo = bits(io.mem.dataOut_1, 54, 45) @[TreePE.scala 41:44]
      node leftChildType = bits(io.mem.dataOut_1, 55, 55) @[TreePE.scala 42:43]
      node rightChildType = bits(io.mem.dataOut_1, 56, 56) @[TreePE.scala 43:44]
      node is_valid = bits(io.mem.dataOut_1, 57, 57) @[TreePE.scala 44:38]
      node depth_indicator = bits(io.mem.dataOut_1, 60, 58) @[TreePE.scala 45:45]
      reg REG_1 : Fixed<32><<16>>[5], clock with :
        reset => (UInt<1>("h0"), REG_1) @[TreePE.scala 47:45]
      REG_1 <= queue.io.deq.bits.features @[TreePE.scala 47:45]
      io.sample_out.bits.features <= REG_1 @[TreePE.scala 47:35]
      reg REG_2 : Fixed<16><<8>>[5], clock with :
        reset => (UInt<1>("h0"), REG_2) @[TreePE.scala 48:44]
      REG_2 <= queue.io.deq.bits.weights @[TreePE.scala 48:44]
      io.sample_out.bits.weights <= REG_2 @[TreePE.scala 48:34]
      reg io_sample_out_bits_tree_to_exec_REG : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_tree_to_exec_REG) @[TreePE.scala 49:49]
      io_sample_out_bits_tree_to_exec_REG <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 49:49]
      io.sample_out.bits.tree_to_exec <= io_sample_out_bits_tree_to_exec_REG @[TreePE.scala 49:39]
      reg REG_3 : Fixed<16><<8>>[6], clock with :
        reset => (UInt<1>("h0"), REG_3) @[TreePE.scala 50:43]
      REG_3 <= queue.io.deq.bits.scores @[TreePE.scala 50:43]
      io.sample_out.bits.scores <= REG_3 @[TreePE.scala 50:33]
      io.sample_out.valid <= UInt<1>("h1") @[TreePE.scala 51:27]
      reg io_sample_out_bits_clock_cycles_REG : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_clock_cycles_REG) @[TreePE.scala 52:49]
      io_sample_out_bits_clock_cycles_REG <= queue.io.deq.bits.clock_cycles @[TreePE.scala 52:49]
      io.sample_out.bits.clock_cycles <= io_sample_out_bits_clock_cycles_REG @[TreePE.scala 52:39]
      wire offset : UInt<10> @[TreePE.scala 71:26]
      wire shift : UInt<1> @[TreePE.scala 72:25]
      reg features_bits : Fixed<32><<16>>[5], clock with :
        reset => (UInt<1>("h0"), features_bits) @[TreePE.scala 73:36]
      features_bits <= queue.io.deq.bits.features @[TreePE.scala 73:36]
      reg scores_bits : Fixed<16><<8>>[6], clock with :
        reset => (UInt<1>("h0"), scores_bits) @[TreePE.scala 74:34]
      scores_bits <= queue.io.deq.bits.scores @[TreePE.scala 74:34]
      reg weights_bits : Fixed<16><<8>>[5], clock with :
        reset => (UInt<1>("h0"), weights_bits) @[TreePE.scala 75:35]
      weights_bits <= queue.io.deq.bits.weights @[TreePE.scala 75:35]
      node _shift_T = asFixedPoint(threshold, 8) @[TreePE.scala 76:69]
      node _shift_T_1 = lt(features_bits[attr_id], _shift_T) @[TreePE.scala 76:45]
      node _shift_T_2 = mux(_shift_T_1, leftChildType, rightChildType) @[TreePE.scala 76:21]
      shift <= _shift_T_2 @[TreePE.scala 76:15]
      node _offset_T = asFixedPoint(threshold, 8) @[TreePE.scala 77:70]
      node _offset_T_1 = lt(features_bits[attr_id], _offset_T) @[TreePE.scala 77:46]
      node _offset_T_2 = mux(_offset_T_1, leftChildInfo, rightChildInfo) @[TreePE.scala 77:22]
      offset <= _offset_T_2 @[TreePE.scala 77:16]
      node _io_sample_out_bits_offset_T = eq(shift, UInt<1>("h0")) @[TreePE.scala 78:48]
      reg io_sample_out_bits_offset_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_offset_REG) @[TreePE.scala 78:70]
      io_sample_out_bits_offset_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 78:70]
      node _io_sample_out_bits_offset_T_1 = or(_io_sample_out_bits_offset_T, io_sample_out_bits_offset_REG) @[TreePE.scala 78:60]
      reg io_sample_out_bits_offset_REG_1 : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_offset_REG_1) @[TreePE.scala 78:106]
      io_sample_out_bits_offset_REG_1 <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 78:106]
      node _io_sample_out_bits_offset_T_2 = mux(_io_sample_out_bits_offset_T_1, io_sample_out_bits_offset_REG_1, offset) @[TreePE.scala 78:41]
      io.sample_out.bits.offset <= _io_sample_out_bits_offset_T_2 @[TreePE.scala 78:35]
      io.sample_out.bits.shift <= UInt<1>("h0") @[TreePE.scala 79:34]
      node _io_sample_out_bits_search_for_root_T = eq(shift, UInt<1>("h0")) @[TreePE.scala 80:47]
      reg io_sample_out_bits_search_for_root_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_search_for_root_REG) @[TreePE.scala 80:64]
      io_sample_out_bits_search_for_root_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 80:64]
      node _io_sample_out_bits_search_for_root_T_1 = or(_io_sample_out_bits_search_for_root_T, io_sample_out_bits_search_for_root_REG) @[TreePE.scala 80:54]
      io.sample_out.bits.search_for_root <= _io_sample_out_bits_search_for_root_T_1 @[TreePE.scala 80:44]
      reg io_sample_out_bits_scores_0_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_scores_0_REG) @[TreePE.scala 82:74]
      io_sample_out_bits_scores_0_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 82:74]
      node _io_sample_out_bits_scores_0_T = eq(io_sample_out_bits_scores_0_REG, UInt<1>("h0")) @[TreePE.scala 82:66]
      node _io_sample_out_bits_scores_0_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 82:111]
      node _io_sample_out_bits_scores_0_T_2 = and(_io_sample_out_bits_scores_0_T, _io_sample_out_bits_scores_0_T_1) @[TreePE.scala 82:103]
      node _io_sample_out_bits_scores_0_T_3 = and(_io_sample_out_bits_scores_0_T_2, is_valid) @[TreePE.scala 82:123]
      node _io_sample_out_bits_scores_0_T_4 = eq(UInt<1>("h0"), offset) @[TreePE.scala 82:141]
      node _io_sample_out_bits_scores_0_T_5 = and(_io_sample_out_bits_scores_0_T_3, _io_sample_out_bits_scores_0_T_4) @[TreePE.scala 82:134]
      node _io_sample_out_bits_scores_0_T_6 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 82:190]
      node _io_sample_out_bits_scores_0_T_7 = mux(_io_sample_out_bits_scores_0_T_5, _io_sample_out_bits_scores_0_T_6, UInt<16>("h0")) @[TreePE.scala 82:64]
      node _io_sample_out_bits_scores_0_T_8 = asFixedPoint(_io_sample_out_bits_scores_0_T_7, 8) @[TreePE.scala 82:217]
      node _io_sample_out_bits_scores_0_T_9 = add(scores_bits[0], _io_sample_out_bits_scores_0_T_8) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_0_T_10 = tail(_io_sample_out_bits_scores_0_T_9, 1) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_0_T_11 = asFixedPoint(_io_sample_out_bits_scores_0_T_10, 8) @[TreePE.scala 82:58]
      io.sample_out.bits.scores[0] <= _io_sample_out_bits_scores_0_T_11 @[TreePE.scala 82:40]
      reg io_sample_out_bits_scores_1_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_scores_1_REG) @[TreePE.scala 82:74]
      io_sample_out_bits_scores_1_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 82:74]
      node _io_sample_out_bits_scores_1_T = eq(io_sample_out_bits_scores_1_REG, UInt<1>("h0")) @[TreePE.scala 82:66]
      node _io_sample_out_bits_scores_1_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 82:111]
      node _io_sample_out_bits_scores_1_T_2 = and(_io_sample_out_bits_scores_1_T, _io_sample_out_bits_scores_1_T_1) @[TreePE.scala 82:103]
      node _io_sample_out_bits_scores_1_T_3 = and(_io_sample_out_bits_scores_1_T_2, is_valid) @[TreePE.scala 82:123]
      node _io_sample_out_bits_scores_1_T_4 = eq(UInt<1>("h1"), offset) @[TreePE.scala 82:141]
      node _io_sample_out_bits_scores_1_T_5 = and(_io_sample_out_bits_scores_1_T_3, _io_sample_out_bits_scores_1_T_4) @[TreePE.scala 82:134]
      node _io_sample_out_bits_scores_1_T_6 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 82:190]
      node _io_sample_out_bits_scores_1_T_7 = mux(_io_sample_out_bits_scores_1_T_5, _io_sample_out_bits_scores_1_T_6, UInt<16>("h0")) @[TreePE.scala 82:64]
      node _io_sample_out_bits_scores_1_T_8 = asFixedPoint(_io_sample_out_bits_scores_1_T_7, 8) @[TreePE.scala 82:217]
      node _io_sample_out_bits_scores_1_T_9 = add(scores_bits[1], _io_sample_out_bits_scores_1_T_8) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_1_T_10 = tail(_io_sample_out_bits_scores_1_T_9, 1) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_1_T_11 = asFixedPoint(_io_sample_out_bits_scores_1_T_10, 8) @[TreePE.scala 82:58]
      io.sample_out.bits.scores[1] <= _io_sample_out_bits_scores_1_T_11 @[TreePE.scala 82:40]
      reg io_sample_out_bits_scores_2_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_scores_2_REG) @[TreePE.scala 82:74]
      io_sample_out_bits_scores_2_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 82:74]
      node _io_sample_out_bits_scores_2_T = eq(io_sample_out_bits_scores_2_REG, UInt<1>("h0")) @[TreePE.scala 82:66]
      node _io_sample_out_bits_scores_2_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 82:111]
      node _io_sample_out_bits_scores_2_T_2 = and(_io_sample_out_bits_scores_2_T, _io_sample_out_bits_scores_2_T_1) @[TreePE.scala 82:103]
      node _io_sample_out_bits_scores_2_T_3 = and(_io_sample_out_bits_scores_2_T_2, is_valid) @[TreePE.scala 82:123]
      node _io_sample_out_bits_scores_2_T_4 = eq(UInt<2>("h2"), offset) @[TreePE.scala 82:141]
      node _io_sample_out_bits_scores_2_T_5 = and(_io_sample_out_bits_scores_2_T_3, _io_sample_out_bits_scores_2_T_4) @[TreePE.scala 82:134]
      node _io_sample_out_bits_scores_2_T_6 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 82:190]
      node _io_sample_out_bits_scores_2_T_7 = mux(_io_sample_out_bits_scores_2_T_5, _io_sample_out_bits_scores_2_T_6, UInt<16>("h0")) @[TreePE.scala 82:64]
      node _io_sample_out_bits_scores_2_T_8 = asFixedPoint(_io_sample_out_bits_scores_2_T_7, 8) @[TreePE.scala 82:217]
      node _io_sample_out_bits_scores_2_T_9 = add(scores_bits[2], _io_sample_out_bits_scores_2_T_8) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_2_T_10 = tail(_io_sample_out_bits_scores_2_T_9, 1) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_2_T_11 = asFixedPoint(_io_sample_out_bits_scores_2_T_10, 8) @[TreePE.scala 82:58]
      io.sample_out.bits.scores[2] <= _io_sample_out_bits_scores_2_T_11 @[TreePE.scala 82:40]
      reg io_sample_out_bits_scores_3_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_scores_3_REG) @[TreePE.scala 82:74]
      io_sample_out_bits_scores_3_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 82:74]
      node _io_sample_out_bits_scores_3_T = eq(io_sample_out_bits_scores_3_REG, UInt<1>("h0")) @[TreePE.scala 82:66]
      node _io_sample_out_bits_scores_3_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 82:111]
      node _io_sample_out_bits_scores_3_T_2 = and(_io_sample_out_bits_scores_3_T, _io_sample_out_bits_scores_3_T_1) @[TreePE.scala 82:103]
      node _io_sample_out_bits_scores_3_T_3 = and(_io_sample_out_bits_scores_3_T_2, is_valid) @[TreePE.scala 82:123]
      node _io_sample_out_bits_scores_3_T_4 = eq(UInt<2>("h3"), offset) @[TreePE.scala 82:141]
      node _io_sample_out_bits_scores_3_T_5 = and(_io_sample_out_bits_scores_3_T_3, _io_sample_out_bits_scores_3_T_4) @[TreePE.scala 82:134]
      node _io_sample_out_bits_scores_3_T_6 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 82:190]
      node _io_sample_out_bits_scores_3_T_7 = mux(_io_sample_out_bits_scores_3_T_5, _io_sample_out_bits_scores_3_T_6, UInt<16>("h0")) @[TreePE.scala 82:64]
      node _io_sample_out_bits_scores_3_T_8 = asFixedPoint(_io_sample_out_bits_scores_3_T_7, 8) @[TreePE.scala 82:217]
      node _io_sample_out_bits_scores_3_T_9 = add(scores_bits[3], _io_sample_out_bits_scores_3_T_8) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_3_T_10 = tail(_io_sample_out_bits_scores_3_T_9, 1) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_3_T_11 = asFixedPoint(_io_sample_out_bits_scores_3_T_10, 8) @[TreePE.scala 82:58]
      io.sample_out.bits.scores[3] <= _io_sample_out_bits_scores_3_T_11 @[TreePE.scala 82:40]
      reg io_sample_out_bits_scores_4_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_scores_4_REG) @[TreePE.scala 82:74]
      io_sample_out_bits_scores_4_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 82:74]
      node _io_sample_out_bits_scores_4_T = eq(io_sample_out_bits_scores_4_REG, UInt<1>("h0")) @[TreePE.scala 82:66]
      node _io_sample_out_bits_scores_4_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 82:111]
      node _io_sample_out_bits_scores_4_T_2 = and(_io_sample_out_bits_scores_4_T, _io_sample_out_bits_scores_4_T_1) @[TreePE.scala 82:103]
      node _io_sample_out_bits_scores_4_T_3 = and(_io_sample_out_bits_scores_4_T_2, is_valid) @[TreePE.scala 82:123]
      node _io_sample_out_bits_scores_4_T_4 = eq(UInt<3>("h4"), offset) @[TreePE.scala 82:141]
      node _io_sample_out_bits_scores_4_T_5 = and(_io_sample_out_bits_scores_4_T_3, _io_sample_out_bits_scores_4_T_4) @[TreePE.scala 82:134]
      node _io_sample_out_bits_scores_4_T_6 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 82:190]
      node _io_sample_out_bits_scores_4_T_7 = mux(_io_sample_out_bits_scores_4_T_5, _io_sample_out_bits_scores_4_T_6, UInt<16>("h0")) @[TreePE.scala 82:64]
      node _io_sample_out_bits_scores_4_T_8 = asFixedPoint(_io_sample_out_bits_scores_4_T_7, 8) @[TreePE.scala 82:217]
      node _io_sample_out_bits_scores_4_T_9 = add(scores_bits[4], _io_sample_out_bits_scores_4_T_8) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_4_T_10 = tail(_io_sample_out_bits_scores_4_T_9, 1) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_4_T_11 = asFixedPoint(_io_sample_out_bits_scores_4_T_10, 8) @[TreePE.scala 82:58]
      io.sample_out.bits.scores[4] <= _io_sample_out_bits_scores_4_T_11 @[TreePE.scala 82:40]
      reg io_sample_out_bits_scores_5_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_scores_5_REG) @[TreePE.scala 82:74]
      io_sample_out_bits_scores_5_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 82:74]
      node _io_sample_out_bits_scores_5_T = eq(io_sample_out_bits_scores_5_REG, UInt<1>("h0")) @[TreePE.scala 82:66]
      node _io_sample_out_bits_scores_5_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 82:111]
      node _io_sample_out_bits_scores_5_T_2 = and(_io_sample_out_bits_scores_5_T, _io_sample_out_bits_scores_5_T_1) @[TreePE.scala 82:103]
      node _io_sample_out_bits_scores_5_T_3 = and(_io_sample_out_bits_scores_5_T_2, is_valid) @[TreePE.scala 82:123]
      node _io_sample_out_bits_scores_5_T_4 = eq(UInt<3>("h5"), offset) @[TreePE.scala 82:141]
      node _io_sample_out_bits_scores_5_T_5 = and(_io_sample_out_bits_scores_5_T_3, _io_sample_out_bits_scores_5_T_4) @[TreePE.scala 82:134]
      node _io_sample_out_bits_scores_5_T_6 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 82:190]
      node _io_sample_out_bits_scores_5_T_7 = mux(_io_sample_out_bits_scores_5_T_5, _io_sample_out_bits_scores_5_T_6, UInt<16>("h0")) @[TreePE.scala 82:64]
      node _io_sample_out_bits_scores_5_T_8 = asFixedPoint(_io_sample_out_bits_scores_5_T_7, 8) @[TreePE.scala 82:217]
      node _io_sample_out_bits_scores_5_T_9 = add(scores_bits[5], _io_sample_out_bits_scores_5_T_8) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_5_T_10 = tail(_io_sample_out_bits_scores_5_T_9, 1) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_5_T_11 = asFixedPoint(_io_sample_out_bits_scores_5_T_10, 8) @[TreePE.scala 82:58]
      io.sample_out.bits.scores[5] <= _io_sample_out_bits_scores_5_T_11 @[TreePE.scala 82:40]
      reg io_sample_out_bits_dest_REG : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_dest_REG) @[TreePE.scala 84:43]
      io_sample_out_bits_dest_REG <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 84:43]
      node _io_sample_out_bits_dest_T = eq(io_sample_out_bits_dest_REG, UInt<1>("h1")) @[TreePE.scala 84:69]
      io.sample_out.bits.dest <= _io_sample_out_bits_dest_T @[TreePE.scala 84:33]
      reg io_sample_out_bits_last_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_last_REG) @[TreePE.scala 85:43]
      io_sample_out_bits_last_REG <= queue.io.deq.bits.last @[TreePE.scala 85:43]
      io.sample_out.bits.last <= io_sample_out_bits_last_REG @[TreePE.scala 85:33]
    else :
      io.sample_out.bits.clock_cycles is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.last is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.dest is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[0] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[1] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[2] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[3] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[4] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[0] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[1] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[2] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[3] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[4] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[5] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.tree_to_exec is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.search_for_root is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.shift is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.offset is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[0] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[1] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[2] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[3] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[4] is invalid @[TreePE.scala 88:26]
      io.sample_out.valid <= UInt<1>("h0") @[TreePE.scala 89:27]
    queue.io.deq.ready <= io.sample_out.ready @[TreePE.scala 92:17]

  module TreePEwithBRAM_14 :
    input clock : Clock
    input reset : Reset
    output pe_io : { flip sample_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, flip mem : { flip enable_1 : UInt<1>, flip write_1 : UInt<1>, flip addr_1 : UInt<13>, flip dataIn_1 : UInt<64>, dataOut_1 : UInt<64>, flip enable_2 : UInt<1>, flip write_2 : UInt<1>, flip addr_2 : UInt<13>, flip dataIn_2 : UInt<64>, dataOut_2 : UInt<64>}, sample_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}}

    inst pe of TreePE_14 @[TreePE.scala 104:18]
    pe.clock <= clock
    pe.reset <= reset
    pe_io.sample_out.bits <= pe.io.sample_out.bits @[TreePE.scala 106:9]
    pe_io.sample_out.valid <= pe.io.sample_out.valid @[TreePE.scala 106:9]
    pe.io.sample_out.ready <= pe_io.sample_out.ready @[TreePE.scala 106:9]
    pe.io.mem <= pe_io.mem @[TreePE.scala 106:9]
    pe.io.sample_in <= pe_io.sample_in @[TreePE.scala 106:9]

  extmodule BRAMBlackBoxSingle_10 :
    input clk : Clock
    input a_wr : UInt<1>
    input a_addr : UInt<11>
    input a_din : UInt<32>
    output a_dout : UInt<32>
    input b_wr : UInt<1>
    input b_addr : UInt<11>
    input b_din : UInt<32>
    output b_dout : UInt<32>
    defname = BRAMBlackBoxSingle
    parameter DATA = 32
    parameter ADDR = 11

  module BRAMBlackBoxAsymm_10 :
    input clock : Clock
    input reset : Reset
    output io : { flip clk : Clock, flip a_en : UInt<1>, flip a_wr : UInt<1>, flip a_addr : UInt<13>, flip a_din : UInt<32>, a_dout : UInt<32>, flip b_en : UInt<1>, flip b_wr : UInt<1>, flip b_addr : UInt<11>, flip b_din : UInt<64>, b_dout : UInt<64>}

    inst bram_1 of BRAMBlackBoxSingle_10 @[ME.scala 202:24]
    bram_1.b_dout is invalid
    bram_1.b_din is invalid
    bram_1.b_addr is invalid
    bram_1.b_wr is invalid
    bram_1.a_dout is invalid
    bram_1.a_din is invalid
    bram_1.a_addr is invalid
    bram_1.a_wr is invalid
    bram_1.clk is invalid
    node _bram_1_io_a_wr_T = mux(io.a_en, io.a_wr, io.b_wr) @[ME.scala 204:26]
    bram_1.a_wr <= _bram_1_io_a_wr_T @[ME.scala 204:20]
    node _bram_1_io_a_addr_T = shr(io.a_addr, 2) @[ME.scala 205:49]
    node _bram_1_io_a_addr_T_1 = shl(io.b_addr, 1) @[ME.scala 205:67]
    node _bram_1_io_a_addr_T_2 = mux(io.a_en, _bram_1_io_a_addr_T, _bram_1_io_a_addr_T_1) @[ME.scala 205:28]
    bram_1.a_addr <= _bram_1_io_a_addr_T_2 @[ME.scala 205:22]
    node _bram_1_io_a_din_T = bits(io.b_din, 31, 0) @[ME.scala 206:55]
    node _bram_1_io_a_din_T_1 = mux(io.a_en, io.a_din, _bram_1_io_a_din_T) @[ME.scala 206:27]
    bram_1.a_din <= _bram_1_io_a_din_T_1 @[ME.scala 206:21]
    node _io_b_dout_T = cat(bram_1.b_dout, bram_1.a_dout) @[Cat.scala 33:92]
    io.b_dout <= _io_b_dout_T @[ME.scala 207:15]
    node _bram_1_io_b_wr_T = mux(io.a_en, UInt<1>("h0"), io.b_wr) @[ME.scala 208:26]
    bram_1.b_wr <= _bram_1_io_b_wr_T @[ME.scala 208:20]
    node _bram_1_io_b_addr_T = shl(io.b_addr, 1) @[ME.scala 209:36]
    node _bram_1_io_b_addr_T_1 = add(_bram_1_io_b_addr_T, UInt<1>("h1")) @[ME.scala 209:42]
    node _bram_1_io_b_addr_T_2 = tail(_bram_1_io_b_addr_T_1, 1) @[ME.scala 209:42]
    bram_1.b_addr <= _bram_1_io_b_addr_T_2 @[ME.scala 209:22]
    node _bram_1_io_b_din_T = bits(io.b_din, 63, 32) @[ME.scala 210:32]
    bram_1.b_din <= _bram_1_io_b_din_T @[ME.scala 210:21]
    io.a_dout <= bram_1.a_dout @[ME.scala 211:15]
    bram_1.clk <= io.clk @[ME.scala 212:19]

  extmodule BRAMBlackBoxSingle_11 :
    input clk : Clock
    input a_wr : UInt<1>
    input a_addr : UInt<11>
    input a_din : UInt<32>
    output a_dout : UInt<32>
    input b_wr : UInt<1>
    input b_addr : UInt<11>
    input b_din : UInt<32>
    output b_dout : UInt<32>
    defname = BRAMBlackBoxSingle
    parameter DATA = 32
    parameter ADDR = 11

  module BRAMBlackBoxAsymm_11 :
    input clock : Clock
    input reset : Reset
    output io : { flip clk : Clock, flip a_en : UInt<1>, flip a_wr : UInt<1>, flip a_addr : UInt<13>, flip a_din : UInt<32>, a_dout : UInt<32>, flip b_en : UInt<1>, flip b_wr : UInt<1>, flip b_addr : UInt<11>, flip b_din : UInt<64>, b_dout : UInt<64>}

    inst bram_1 of BRAMBlackBoxSingle_11 @[ME.scala 202:24]
    bram_1.b_dout is invalid
    bram_1.b_din is invalid
    bram_1.b_addr is invalid
    bram_1.b_wr is invalid
    bram_1.a_dout is invalid
    bram_1.a_din is invalid
    bram_1.a_addr is invalid
    bram_1.a_wr is invalid
    bram_1.clk is invalid
    node _bram_1_io_a_wr_T = mux(io.a_en, io.a_wr, io.b_wr) @[ME.scala 204:26]
    bram_1.a_wr <= _bram_1_io_a_wr_T @[ME.scala 204:20]
    node _bram_1_io_a_addr_T = shr(io.a_addr, 2) @[ME.scala 205:49]
    node _bram_1_io_a_addr_T_1 = shl(io.b_addr, 1) @[ME.scala 205:67]
    node _bram_1_io_a_addr_T_2 = mux(io.a_en, _bram_1_io_a_addr_T, _bram_1_io_a_addr_T_1) @[ME.scala 205:28]
    bram_1.a_addr <= _bram_1_io_a_addr_T_2 @[ME.scala 205:22]
    node _bram_1_io_a_din_T = bits(io.b_din, 31, 0) @[ME.scala 206:55]
    node _bram_1_io_a_din_T_1 = mux(io.a_en, io.a_din, _bram_1_io_a_din_T) @[ME.scala 206:27]
    bram_1.a_din <= _bram_1_io_a_din_T_1 @[ME.scala 206:21]
    node _io_b_dout_T = cat(bram_1.b_dout, bram_1.a_dout) @[Cat.scala 33:92]
    io.b_dout <= _io_b_dout_T @[ME.scala 207:15]
    node _bram_1_io_b_wr_T = mux(io.a_en, UInt<1>("h0"), io.b_wr) @[ME.scala 208:26]
    bram_1.b_wr <= _bram_1_io_b_wr_T @[ME.scala 208:20]
    node _bram_1_io_b_addr_T = shl(io.b_addr, 1) @[ME.scala 209:36]
    node _bram_1_io_b_addr_T_1 = add(_bram_1_io_b_addr_T, UInt<1>("h1")) @[ME.scala 209:42]
    node _bram_1_io_b_addr_T_2 = tail(_bram_1_io_b_addr_T_1, 1) @[ME.scala 209:42]
    bram_1.b_addr <= _bram_1_io_b_addr_T_2 @[ME.scala 209:22]
    node _bram_1_io_b_din_T = bits(io.b_din, 63, 32) @[ME.scala 210:32]
    bram_1.b_din <= _bram_1_io_b_din_T @[ME.scala 210:21]
    io.a_dout <= bram_1.a_dout @[ME.scala 211:15]
    bram_1.clk <= io.clk @[ME.scala 212:19]

  extmodule BRAMBlackBoxSingle_12 :
    input clk : Clock
    input a_wr : UInt<1>
    input a_addr : UInt<11>
    input a_din : UInt<32>
    output a_dout : UInt<32>
    input b_wr : UInt<1>
    input b_addr : UInt<11>
    input b_din : UInt<32>
    output b_dout : UInt<32>
    defname = BRAMBlackBoxSingle
    parameter DATA = 32
    parameter ADDR = 11

  module BRAMBlackBoxAsymm_12 :
    input clock : Clock
    input reset : Reset
    output io : { flip clk : Clock, flip a_en : UInt<1>, flip a_wr : UInt<1>, flip a_addr : UInt<13>, flip a_din : UInt<32>, a_dout : UInt<32>, flip b_en : UInt<1>, flip b_wr : UInt<1>, flip b_addr : UInt<11>, flip b_din : UInt<64>, b_dout : UInt<64>}

    inst bram_1 of BRAMBlackBoxSingle_12 @[ME.scala 202:24]
    bram_1.b_dout is invalid
    bram_1.b_din is invalid
    bram_1.b_addr is invalid
    bram_1.b_wr is invalid
    bram_1.a_dout is invalid
    bram_1.a_din is invalid
    bram_1.a_addr is invalid
    bram_1.a_wr is invalid
    bram_1.clk is invalid
    node _bram_1_io_a_wr_T = mux(io.a_en, io.a_wr, io.b_wr) @[ME.scala 204:26]
    bram_1.a_wr <= _bram_1_io_a_wr_T @[ME.scala 204:20]
    node _bram_1_io_a_addr_T = shr(io.a_addr, 2) @[ME.scala 205:49]
    node _bram_1_io_a_addr_T_1 = shl(io.b_addr, 1) @[ME.scala 205:67]
    node _bram_1_io_a_addr_T_2 = mux(io.a_en, _bram_1_io_a_addr_T, _bram_1_io_a_addr_T_1) @[ME.scala 205:28]
    bram_1.a_addr <= _bram_1_io_a_addr_T_2 @[ME.scala 205:22]
    node _bram_1_io_a_din_T = bits(io.b_din, 31, 0) @[ME.scala 206:55]
    node _bram_1_io_a_din_T_1 = mux(io.a_en, io.a_din, _bram_1_io_a_din_T) @[ME.scala 206:27]
    bram_1.a_din <= _bram_1_io_a_din_T_1 @[ME.scala 206:21]
    node _io_b_dout_T = cat(bram_1.b_dout, bram_1.a_dout) @[Cat.scala 33:92]
    io.b_dout <= _io_b_dout_T @[ME.scala 207:15]
    node _bram_1_io_b_wr_T = mux(io.a_en, UInt<1>("h0"), io.b_wr) @[ME.scala 208:26]
    bram_1.b_wr <= _bram_1_io_b_wr_T @[ME.scala 208:20]
    node _bram_1_io_b_addr_T = shl(io.b_addr, 1) @[ME.scala 209:36]
    node _bram_1_io_b_addr_T_1 = add(_bram_1_io_b_addr_T, UInt<1>("h1")) @[ME.scala 209:42]
    node _bram_1_io_b_addr_T_2 = tail(_bram_1_io_b_addr_T_1, 1) @[ME.scala 209:42]
    bram_1.b_addr <= _bram_1_io_b_addr_T_2 @[ME.scala 209:22]
    node _bram_1_io_b_din_T = bits(io.b_din, 63, 32) @[ME.scala 210:32]
    bram_1.b_din <= _bram_1_io_b_din_T @[ME.scala 210:21]
    io.a_dout <= bram_1.a_dout @[ME.scala 211:15]
    bram_1.clk <= io.clk @[ME.scala 212:19]

  extmodule BRAMBlackBoxSingle_13 :
    input clk : Clock
    input a_wr : UInt<1>
    input a_addr : UInt<11>
    input a_din : UInt<32>
    output a_dout : UInt<32>
    input b_wr : UInt<1>
    input b_addr : UInt<11>
    input b_din : UInt<32>
    output b_dout : UInt<32>
    defname = BRAMBlackBoxSingle
    parameter DATA = 32
    parameter ADDR = 11

  module BRAMBlackBoxAsymm_13 :
    input clock : Clock
    input reset : Reset
    output io : { flip clk : Clock, flip a_en : UInt<1>, flip a_wr : UInt<1>, flip a_addr : UInt<13>, flip a_din : UInt<32>, a_dout : UInt<32>, flip b_en : UInt<1>, flip b_wr : UInt<1>, flip b_addr : UInt<11>, flip b_din : UInt<64>, b_dout : UInt<64>}

    inst bram_1 of BRAMBlackBoxSingle_13 @[ME.scala 202:24]
    bram_1.b_dout is invalid
    bram_1.b_din is invalid
    bram_1.b_addr is invalid
    bram_1.b_wr is invalid
    bram_1.a_dout is invalid
    bram_1.a_din is invalid
    bram_1.a_addr is invalid
    bram_1.a_wr is invalid
    bram_1.clk is invalid
    node _bram_1_io_a_wr_T = mux(io.a_en, io.a_wr, io.b_wr) @[ME.scala 204:26]
    bram_1.a_wr <= _bram_1_io_a_wr_T @[ME.scala 204:20]
    node _bram_1_io_a_addr_T = shr(io.a_addr, 2) @[ME.scala 205:49]
    node _bram_1_io_a_addr_T_1 = shl(io.b_addr, 1) @[ME.scala 205:67]
    node _bram_1_io_a_addr_T_2 = mux(io.a_en, _bram_1_io_a_addr_T, _bram_1_io_a_addr_T_1) @[ME.scala 205:28]
    bram_1.a_addr <= _bram_1_io_a_addr_T_2 @[ME.scala 205:22]
    node _bram_1_io_a_din_T = bits(io.b_din, 31, 0) @[ME.scala 206:55]
    node _bram_1_io_a_din_T_1 = mux(io.a_en, io.a_din, _bram_1_io_a_din_T) @[ME.scala 206:27]
    bram_1.a_din <= _bram_1_io_a_din_T_1 @[ME.scala 206:21]
    node _io_b_dout_T = cat(bram_1.b_dout, bram_1.a_dout) @[Cat.scala 33:92]
    io.b_dout <= _io_b_dout_T @[ME.scala 207:15]
    node _bram_1_io_b_wr_T = mux(io.a_en, UInt<1>("h0"), io.b_wr) @[ME.scala 208:26]
    bram_1.b_wr <= _bram_1_io_b_wr_T @[ME.scala 208:20]
    node _bram_1_io_b_addr_T = shl(io.b_addr, 1) @[ME.scala 209:36]
    node _bram_1_io_b_addr_T_1 = add(_bram_1_io_b_addr_T, UInt<1>("h1")) @[ME.scala 209:42]
    node _bram_1_io_b_addr_T_2 = tail(_bram_1_io_b_addr_T_1, 1) @[ME.scala 209:42]
    bram_1.b_addr <= _bram_1_io_b_addr_T_2 @[ME.scala 209:22]
    node _bram_1_io_b_din_T = bits(io.b_din, 63, 32) @[ME.scala 210:32]
    bram_1.b_din <= _bram_1_io_b_din_T @[ME.scala 210:21]
    io.a_dout <= bram_1.a_dout @[ME.scala 211:15]
    bram_1.clk <= io.clk @[ME.scala 212:19]

  extmodule BRAMBlackBoxSingle_14 :
    input clk : Clock
    input a_wr : UInt<1>
    input a_addr : UInt<11>
    input a_din : UInt<32>
    output a_dout : UInt<32>
    input b_wr : UInt<1>
    input b_addr : UInt<11>
    input b_din : UInt<32>
    output b_dout : UInt<32>
    defname = BRAMBlackBoxSingle
    parameter DATA = 32
    parameter ADDR = 11

  module BRAMBlackBoxAsymm_14 :
    input clock : Clock
    input reset : Reset
    output io : { flip clk : Clock, flip a_en : UInt<1>, flip a_wr : UInt<1>, flip a_addr : UInt<13>, flip a_din : UInt<32>, a_dout : UInt<32>, flip b_en : UInt<1>, flip b_wr : UInt<1>, flip b_addr : UInt<11>, flip b_din : UInt<64>, b_dout : UInt<64>}

    inst bram_1 of BRAMBlackBoxSingle_14 @[ME.scala 202:24]
    bram_1.b_dout is invalid
    bram_1.b_din is invalid
    bram_1.b_addr is invalid
    bram_1.b_wr is invalid
    bram_1.a_dout is invalid
    bram_1.a_din is invalid
    bram_1.a_addr is invalid
    bram_1.a_wr is invalid
    bram_1.clk is invalid
    node _bram_1_io_a_wr_T = mux(io.a_en, io.a_wr, io.b_wr) @[ME.scala 204:26]
    bram_1.a_wr <= _bram_1_io_a_wr_T @[ME.scala 204:20]
    node _bram_1_io_a_addr_T = shr(io.a_addr, 2) @[ME.scala 205:49]
    node _bram_1_io_a_addr_T_1 = shl(io.b_addr, 1) @[ME.scala 205:67]
    node _bram_1_io_a_addr_T_2 = mux(io.a_en, _bram_1_io_a_addr_T, _bram_1_io_a_addr_T_1) @[ME.scala 205:28]
    bram_1.a_addr <= _bram_1_io_a_addr_T_2 @[ME.scala 205:22]
    node _bram_1_io_a_din_T = bits(io.b_din, 31, 0) @[ME.scala 206:55]
    node _bram_1_io_a_din_T_1 = mux(io.a_en, io.a_din, _bram_1_io_a_din_T) @[ME.scala 206:27]
    bram_1.a_din <= _bram_1_io_a_din_T_1 @[ME.scala 206:21]
    node _io_b_dout_T = cat(bram_1.b_dout, bram_1.a_dout) @[Cat.scala 33:92]
    io.b_dout <= _io_b_dout_T @[ME.scala 207:15]
    node _bram_1_io_b_wr_T = mux(io.a_en, UInt<1>("h0"), io.b_wr) @[ME.scala 208:26]
    bram_1.b_wr <= _bram_1_io_b_wr_T @[ME.scala 208:20]
    node _bram_1_io_b_addr_T = shl(io.b_addr, 1) @[ME.scala 209:36]
    node _bram_1_io_b_addr_T_1 = add(_bram_1_io_b_addr_T, UInt<1>("h1")) @[ME.scala 209:42]
    node _bram_1_io_b_addr_T_2 = tail(_bram_1_io_b_addr_T_1, 1) @[ME.scala 209:42]
    bram_1.b_addr <= _bram_1_io_b_addr_T_2 @[ME.scala 209:22]
    node _bram_1_io_b_din_T = bits(io.b_din, 63, 32) @[ME.scala 210:32]
    bram_1.b_din <= _bram_1_io_b_din_T @[ME.scala 210:21]
    io.a_dout <= bram_1.a_dout @[ME.scala 211:15]
    bram_1.clk <= io.clk @[ME.scala 212:19]

  module Queue_34 :
    input clock : Clock
    input reset : Reset
    output io : { flip enq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, deq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, count : UInt<8>}

    cmem ram : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>} [128] @[Decoupled.scala 275:95]
    reg enq_ptr_value : UInt<7>, clock with :
      reset => (reset, UInt<7>("h0")) @[Counter.scala 61:40]
    reg deq_ptr_value : UInt<7>, clock with :
      reset => (reset, UInt<7>("h0")) @[Counter.scala 61:40]
    reg maybe_full : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[Decoupled.scala 278:27]
    node ptr_match = eq(enq_ptr_value, deq_ptr_value) @[Decoupled.scala 279:33]
    node _empty_T = eq(maybe_full, UInt<1>("h0")) @[Decoupled.scala 280:28]
    node empty = and(ptr_match, _empty_T) @[Decoupled.scala 280:25]
    node full = and(ptr_match, maybe_full) @[Decoupled.scala 281:24]
    node _do_enq_T = and(io.enq.ready, io.enq.valid) @[Decoupled.scala 52:35]
    wire do_enq : UInt<1>
    do_enq <= _do_enq_T
    node _do_deq_T = and(io.deq.ready, io.deq.valid) @[Decoupled.scala 52:35]
    wire do_deq : UInt<1>
    do_deq <= _do_deq_T
    when do_enq : @[Decoupled.scala 288:16]
      infer mport MPORT = ram[enq_ptr_value], clock @[Decoupled.scala 289:8]
      MPORT <= io.enq.bits @[Decoupled.scala 289:24]
      node wrap = eq(enq_ptr_value, UInt<7>("h7f")) @[Counter.scala 73:24]
      node _value_T = add(enq_ptr_value, UInt<1>("h1")) @[Counter.scala 77:24]
      node _value_T_1 = tail(_value_T, 1) @[Counter.scala 77:24]
      enq_ptr_value <= _value_T_1 @[Counter.scala 77:15]
    when do_deq : @[Decoupled.scala 292:16]
      node wrap_1 = eq(deq_ptr_value, UInt<7>("h7f")) @[Counter.scala 73:24]
      node _value_T_2 = add(deq_ptr_value, UInt<1>("h1")) @[Counter.scala 77:24]
      node _value_T_3 = tail(_value_T_2, 1) @[Counter.scala 77:24]
      deq_ptr_value <= _value_T_3 @[Counter.scala 77:15]
    node _T = neq(do_enq, do_deq) @[Decoupled.scala 295:15]
    when _T : @[Decoupled.scala 295:27]
      maybe_full <= do_enq @[Decoupled.scala 296:16]
    when UInt<1>("h0") : @[Decoupled.scala 298:15]
      enq_ptr_value <= UInt<1>("h0") @[Counter.scala 98:11]
      deq_ptr_value <= UInt<1>("h0") @[Counter.scala 98:11]
      maybe_full <= UInt<1>("h0") @[Decoupled.scala 301:16]
    node _io_deq_valid_T = eq(empty, UInt<1>("h0")) @[Decoupled.scala 304:19]
    io.deq.valid <= _io_deq_valid_T @[Decoupled.scala 304:16]
    node _io_enq_ready_T = eq(full, UInt<1>("h0")) @[Decoupled.scala 305:19]
    io.enq.ready <= _io_enq_ready_T @[Decoupled.scala 305:16]
    infer mport io_deq_bits_MPORT = ram[deq_ptr_value], clock @[Decoupled.scala 312:23]
    io.deq.bits <= io_deq_bits_MPORT @[Decoupled.scala 312:17]
    node _ptr_diff_T = sub(enq_ptr_value, deq_ptr_value) @[Decoupled.scala 328:32]
    node ptr_diff = tail(_ptr_diff_T, 1) @[Decoupled.scala 328:32]
    node _io_count_T = and(maybe_full, ptr_match) @[Decoupled.scala 331:32]
    node _io_count_T_1 = mux(_io_count_T, UInt<8>("h80"), UInt<1>("h0")) @[Decoupled.scala 331:20]
    node _io_count_T_2 = or(_io_count_T_1, ptr_diff) @[Decoupled.scala 331:62]
    io.count <= _io_count_T_2 @[Decoupled.scala 331:14]

  module Queue_35 :
    input clock : Clock
    input reset : Reset
    output io : { flip enq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, deq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, count : UInt<8>}

    cmem ram : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>} [128] @[Decoupled.scala 275:95]
    reg enq_ptr_value : UInt<7>, clock with :
      reset => (reset, UInt<7>("h0")) @[Counter.scala 61:40]
    reg deq_ptr_value : UInt<7>, clock with :
      reset => (reset, UInt<7>("h0")) @[Counter.scala 61:40]
    reg maybe_full : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[Decoupled.scala 278:27]
    node ptr_match = eq(enq_ptr_value, deq_ptr_value) @[Decoupled.scala 279:33]
    node _empty_T = eq(maybe_full, UInt<1>("h0")) @[Decoupled.scala 280:28]
    node empty = and(ptr_match, _empty_T) @[Decoupled.scala 280:25]
    node full = and(ptr_match, maybe_full) @[Decoupled.scala 281:24]
    node _do_enq_T = and(io.enq.ready, io.enq.valid) @[Decoupled.scala 52:35]
    wire do_enq : UInt<1>
    do_enq <= _do_enq_T
    node _do_deq_T = and(io.deq.ready, io.deq.valid) @[Decoupled.scala 52:35]
    wire do_deq : UInt<1>
    do_deq <= _do_deq_T
    when do_enq : @[Decoupled.scala 288:16]
      infer mport MPORT = ram[enq_ptr_value], clock @[Decoupled.scala 289:8]
      MPORT <= io.enq.bits @[Decoupled.scala 289:24]
      node wrap = eq(enq_ptr_value, UInt<7>("h7f")) @[Counter.scala 73:24]
      node _value_T = add(enq_ptr_value, UInt<1>("h1")) @[Counter.scala 77:24]
      node _value_T_1 = tail(_value_T, 1) @[Counter.scala 77:24]
      enq_ptr_value <= _value_T_1 @[Counter.scala 77:15]
    when do_deq : @[Decoupled.scala 292:16]
      node wrap_1 = eq(deq_ptr_value, UInt<7>("h7f")) @[Counter.scala 73:24]
      node _value_T_2 = add(deq_ptr_value, UInt<1>("h1")) @[Counter.scala 77:24]
      node _value_T_3 = tail(_value_T_2, 1) @[Counter.scala 77:24]
      deq_ptr_value <= _value_T_3 @[Counter.scala 77:15]
    node _T = neq(do_enq, do_deq) @[Decoupled.scala 295:15]
    when _T : @[Decoupled.scala 295:27]
      maybe_full <= do_enq @[Decoupled.scala 296:16]
    when UInt<1>("h0") : @[Decoupled.scala 298:15]
      enq_ptr_value <= UInt<1>("h0") @[Counter.scala 98:11]
      deq_ptr_value <= UInt<1>("h0") @[Counter.scala 98:11]
      maybe_full <= UInt<1>("h0") @[Decoupled.scala 301:16]
    node _io_deq_valid_T = eq(empty, UInt<1>("h0")) @[Decoupled.scala 304:19]
    io.deq.valid <= _io_deq_valid_T @[Decoupled.scala 304:16]
    node _io_enq_ready_T = eq(full, UInt<1>("h0")) @[Decoupled.scala 305:19]
    io.enq.ready <= _io_enq_ready_T @[Decoupled.scala 305:16]
    infer mport io_deq_bits_MPORT = ram[deq_ptr_value], clock @[Decoupled.scala 312:23]
    io.deq.bits <= io_deq_bits_MPORT @[Decoupled.scala 312:17]
    node _ptr_diff_T = sub(enq_ptr_value, deq_ptr_value) @[Decoupled.scala 328:32]
    node ptr_diff = tail(_ptr_diff_T, 1) @[Decoupled.scala 328:32]
    node _io_count_T = and(maybe_full, ptr_match) @[Decoupled.scala 331:32]
    node _io_count_T_1 = mux(_io_count_T, UInt<8>("h80"), UInt<1>("h0")) @[Decoupled.scala 331:20]
    node _io_count_T_2 = or(_io_count_T_1, ptr_diff) @[Decoupled.scala 331:62]
    io.count <= _io_count_T_2 @[Decoupled.scala 331:14]

  module RRArbiter_3 :
    input clock : Clock
    input reset : Reset
    output io : { flip in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}[2], out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, chosen : UInt<1>}

    wire choice : UInt
    choice <= UInt<1>("h1")
    io.chosen <= choice @[Arbiter.scala 54:13]
    io.out.valid <= io.in[io.chosen].valid @[Arbiter.scala 55:16]
    io.out.bits <= io.in[io.chosen].bits @[Arbiter.scala 56:15]
    node _ctrl_validMask_grantMask_lastGrant_T = and(io.out.ready, io.out.valid) @[Decoupled.scala 52:35]
    reg lastGrant : UInt<1>, clock with :
      reset => (UInt<1>("h0"), lastGrant) @[Reg.scala 19:16]
    when _ctrl_validMask_grantMask_lastGrant_T : @[Reg.scala 20:18]
      lastGrant <= io.chosen @[Reg.scala 20:22]
    node grantMask_0 = gt(UInt<1>("h0"), lastGrant) @[Arbiter.scala 81:49]
    node grantMask_1 = gt(UInt<1>("h1"), lastGrant) @[Arbiter.scala 81:49]
    node validMask_0 = and(io.in[0].valid, grantMask_0) @[Arbiter.scala 82:76]
    node validMask_1 = and(io.in[1].valid, grantMask_1) @[Arbiter.scala 82:76]
    node _ctrl_T = or(validMask_0, validMask_1) @[Arbiter.scala 45:68]
    node _ctrl_T_1 = or(_ctrl_T, io.in[0].valid) @[Arbiter.scala 45:68]
    node ctrl_1 = eq(validMask_0, UInt<1>("h0")) @[Arbiter.scala 45:78]
    node ctrl_2 = eq(_ctrl_T, UInt<1>("h0")) @[Arbiter.scala 45:78]
    node ctrl_3 = eq(_ctrl_T_1, UInt<1>("h0")) @[Arbiter.scala 45:78]
    node _T = and(UInt<1>("h1"), grantMask_0) @[Arbiter.scala 86:34]
    node _T_1 = or(_T, ctrl_2) @[Arbiter.scala 86:50]
    node _T_2 = and(ctrl_1, grantMask_1) @[Arbiter.scala 86:34]
    node _T_3 = or(_T_2, ctrl_3) @[Arbiter.scala 86:50]
    node _io_in_0_ready_T = and(_T_1, io.out.ready) @[Arbiter.scala 74:21]
    io.in[0].ready <= _io_in_0_ready_T @[Arbiter.scala 74:16]
    node _io_in_1_ready_T = and(_T_3, io.out.ready) @[Arbiter.scala 74:21]
    io.in[1].ready <= _io_in_1_ready_T @[Arbiter.scala 74:16]
    when io.in[0].valid : @[Arbiter.scala 91:26]
      choice <= UInt<1>("h0") @[Arbiter.scala 91:35]
    when validMask_1 : @[Arbiter.scala 93:24]
      choice <= UInt<1>("h1") @[Arbiter.scala 93:33]

  module FirstInterconnectPE_3 :
    input clock : Clock
    input reset : Reset
    output io : { flip sample_entering : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, flip sample_looping : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, sample_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}}

    inst queue_entering of Queue_34 @[Decoupled.scala 377:21]
    queue_entering.clock <= clock
    queue_entering.reset <= reset
    queue_entering.io.enq.valid <= io.sample_entering.valid @[Decoupled.scala 379:22]
    queue_entering.io.enq.bits.clock_cycles <= io.sample_entering.bits.clock_cycles @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.last <= io.sample_entering.bits.last @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.dest <= io.sample_entering.bits.dest @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.weights[0] <= io.sample_entering.bits.weights[0] @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.weights[1] <= io.sample_entering.bits.weights[1] @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.weights[2] <= io.sample_entering.bits.weights[2] @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.weights[3] <= io.sample_entering.bits.weights[3] @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.weights[4] <= io.sample_entering.bits.weights[4] @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.scores[0] <= io.sample_entering.bits.scores[0] @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.scores[1] <= io.sample_entering.bits.scores[1] @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.scores[2] <= io.sample_entering.bits.scores[2] @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.scores[3] <= io.sample_entering.bits.scores[3] @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.scores[4] <= io.sample_entering.bits.scores[4] @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.scores[5] <= io.sample_entering.bits.scores[5] @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.tree_to_exec <= io.sample_entering.bits.tree_to_exec @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.search_for_root <= io.sample_entering.bits.search_for_root @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.shift <= io.sample_entering.bits.shift @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.offset <= io.sample_entering.bits.offset @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.features[0] <= io.sample_entering.bits.features[0] @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.features[1] <= io.sample_entering.bits.features[1] @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.features[2] <= io.sample_entering.bits.features[2] @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.features[3] <= io.sample_entering.bits.features[3] @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.features[4] <= io.sample_entering.bits.features[4] @[Decoupled.scala 380:21]
    io.sample_entering.ready <= queue_entering.io.enq.ready @[Decoupled.scala 381:17]
    inst queue_looping of Queue_35 @[Decoupled.scala 377:21]
    queue_looping.clock <= clock
    queue_looping.reset <= reset
    queue_looping.io.enq.valid <= io.sample_looping.valid @[Decoupled.scala 379:22]
    queue_looping.io.enq.bits.clock_cycles <= io.sample_looping.bits.clock_cycles @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.last <= io.sample_looping.bits.last @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.dest <= io.sample_looping.bits.dest @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.weights[0] <= io.sample_looping.bits.weights[0] @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.weights[1] <= io.sample_looping.bits.weights[1] @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.weights[2] <= io.sample_looping.bits.weights[2] @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.weights[3] <= io.sample_looping.bits.weights[3] @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.weights[4] <= io.sample_looping.bits.weights[4] @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.scores[0] <= io.sample_looping.bits.scores[0] @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.scores[1] <= io.sample_looping.bits.scores[1] @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.scores[2] <= io.sample_looping.bits.scores[2] @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.scores[3] <= io.sample_looping.bits.scores[3] @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.scores[4] <= io.sample_looping.bits.scores[4] @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.scores[5] <= io.sample_looping.bits.scores[5] @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.tree_to_exec <= io.sample_looping.bits.tree_to_exec @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.search_for_root <= io.sample_looping.bits.search_for_root @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.shift <= io.sample_looping.bits.shift @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.offset <= io.sample_looping.bits.offset @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.features[0] <= io.sample_looping.bits.features[0] @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.features[1] <= io.sample_looping.bits.features[1] @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.features[2] <= io.sample_looping.bits.features[2] @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.features[3] <= io.sample_looping.bits.features[3] @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.features[4] <= io.sample_looping.bits.features[4] @[Decoupled.scala 380:21]
    io.sample_looping.ready <= queue_looping.io.enq.ready @[Decoupled.scala 381:17]
    inst arbiter of RRArbiter_3 @[Interconnect.scala 54:25]
    arbiter.clock <= clock
    arbiter.reset <= reset
    arbiter.io.in[0] <= queue_entering.io.deq @[Interconnect.scala 55:22]
    arbiter.io.in[1] <= queue_looping.io.deq @[Interconnect.scala 56:22]
    io.sample_out.bits <= arbiter.io.out.bits @[Interconnect.scala 57:19]
    io.sample_out.valid <= arbiter.io.out.valid @[Interconnect.scala 57:19]
    arbiter.io.out.ready <= io.sample_out.ready @[Interconnect.scala 57:19]

  module Queue_36 :
    input clock : Clock
    input reset : Reset
    output io : { flip enq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, deq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, count : UInt<3>}

    cmem ram : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>} [4] @[Decoupled.scala 275:95]
    reg enq_ptr_value : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[Counter.scala 61:40]
    reg deq_ptr_value : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[Counter.scala 61:40]
    reg maybe_full : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[Decoupled.scala 278:27]
    node ptr_match = eq(enq_ptr_value, deq_ptr_value) @[Decoupled.scala 279:33]
    node _empty_T = eq(maybe_full, UInt<1>("h0")) @[Decoupled.scala 280:28]
    node empty = and(ptr_match, _empty_T) @[Decoupled.scala 280:25]
    node full = and(ptr_match, maybe_full) @[Decoupled.scala 281:24]
    node _do_enq_T = and(io.enq.ready, io.enq.valid) @[Decoupled.scala 52:35]
    wire do_enq : UInt<1>
    do_enq <= _do_enq_T
    node _do_deq_T = and(io.deq.ready, io.deq.valid) @[Decoupled.scala 52:35]
    wire do_deq : UInt<1>
    do_deq <= _do_deq_T
    when do_enq : @[Decoupled.scala 288:16]
      infer mport MPORT = ram[enq_ptr_value], clock @[Decoupled.scala 289:8]
      MPORT <= io.enq.bits @[Decoupled.scala 289:24]
      node wrap = eq(enq_ptr_value, UInt<2>("h3")) @[Counter.scala 73:24]
      node _value_T = add(enq_ptr_value, UInt<1>("h1")) @[Counter.scala 77:24]
      node _value_T_1 = tail(_value_T, 1) @[Counter.scala 77:24]
      enq_ptr_value <= _value_T_1 @[Counter.scala 77:15]
    when do_deq : @[Decoupled.scala 292:16]
      node wrap_1 = eq(deq_ptr_value, UInt<2>("h3")) @[Counter.scala 73:24]
      node _value_T_2 = add(deq_ptr_value, UInt<1>("h1")) @[Counter.scala 77:24]
      node _value_T_3 = tail(_value_T_2, 1) @[Counter.scala 77:24]
      deq_ptr_value <= _value_T_3 @[Counter.scala 77:15]
    node _T = neq(do_enq, do_deq) @[Decoupled.scala 295:15]
    when _T : @[Decoupled.scala 295:27]
      maybe_full <= do_enq @[Decoupled.scala 296:16]
    when UInt<1>("h0") : @[Decoupled.scala 298:15]
      enq_ptr_value <= UInt<1>("h0") @[Counter.scala 98:11]
      deq_ptr_value <= UInt<1>("h0") @[Counter.scala 98:11]
      maybe_full <= UInt<1>("h0") @[Decoupled.scala 301:16]
    node _io_deq_valid_T = eq(empty, UInt<1>("h0")) @[Decoupled.scala 304:19]
    io.deq.valid <= _io_deq_valid_T @[Decoupled.scala 304:16]
    node _io_enq_ready_T = eq(full, UInt<1>("h0")) @[Decoupled.scala 305:19]
    io.enq.ready <= _io_enq_ready_T @[Decoupled.scala 305:16]
    infer mport io_deq_bits_MPORT = ram[deq_ptr_value], clock @[Decoupled.scala 312:23]
    io.deq.bits <= io_deq_bits_MPORT @[Decoupled.scala 312:17]
    node _ptr_diff_T = sub(enq_ptr_value, deq_ptr_value) @[Decoupled.scala 328:32]
    node ptr_diff = tail(_ptr_diff_T, 1) @[Decoupled.scala 328:32]
    node _io_count_T = and(maybe_full, ptr_match) @[Decoupled.scala 331:32]
    node _io_count_T_1 = mux(_io_count_T, UInt<3>("h4"), UInt<1>("h0")) @[Decoupled.scala 331:20]
    node _io_count_T_2 = or(_io_count_T_1, ptr_diff) @[Decoupled.scala 331:62]
    io.count <= _io_count_T_2 @[Decoupled.scala 331:14]

  module LastInterconnectPE_3 :
    input clock : Clock
    input reset : Reset
    output io : { flip sample_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, sample_looping : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, sample_leaving : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}}

    inst queue of Queue_36 @[Decoupled.scala 377:21]
    queue.clock <= clock
    queue.reset <= reset
    queue.io.enq.valid <= io.sample_in.valid @[Decoupled.scala 379:22]
    queue.io.enq.bits.clock_cycles <= io.sample_in.bits.clock_cycles @[Decoupled.scala 380:21]
    queue.io.enq.bits.last <= io.sample_in.bits.last @[Decoupled.scala 380:21]
    queue.io.enq.bits.dest <= io.sample_in.bits.dest @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[0] <= io.sample_in.bits.weights[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[1] <= io.sample_in.bits.weights[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[2] <= io.sample_in.bits.weights[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[3] <= io.sample_in.bits.weights[3] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[4] <= io.sample_in.bits.weights[4] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[0] <= io.sample_in.bits.scores[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[1] <= io.sample_in.bits.scores[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[2] <= io.sample_in.bits.scores[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[3] <= io.sample_in.bits.scores[3] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[4] <= io.sample_in.bits.scores[4] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[5] <= io.sample_in.bits.scores[5] @[Decoupled.scala 380:21]
    queue.io.enq.bits.tree_to_exec <= io.sample_in.bits.tree_to_exec @[Decoupled.scala 380:21]
    queue.io.enq.bits.search_for_root <= io.sample_in.bits.search_for_root @[Decoupled.scala 380:21]
    queue.io.enq.bits.shift <= io.sample_in.bits.shift @[Decoupled.scala 380:21]
    queue.io.enq.bits.offset <= io.sample_in.bits.offset @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[0] <= io.sample_in.bits.features[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[1] <= io.sample_in.bits.features[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[2] <= io.sample_in.bits.features[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[3] <= io.sample_in.bits.features[3] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[4] <= io.sample_in.bits.features[4] @[Decoupled.scala 380:21]
    io.sample_in.ready <= queue.io.enq.ready @[Decoupled.scala 381:17]
    io.sample_looping.bits <= queue.io.deq.bits @[Interconnect.scala 18:28]
    io.sample_leaving.bits.features <= queue.io.deq.bits.features @[Interconnect.scala 19:37]
    io.sample_leaving.bits.offset <= queue.io.deq.bits.offset @[Interconnect.scala 20:35]
    io.sample_leaving.bits.shift <= queue.io.deq.bits.shift @[Interconnect.scala 21:34]
    io.sample_leaving.bits.search_for_root <= queue.io.deq.bits.search_for_root @[Interconnect.scala 22:44]
    io.sample_leaving.bits.tree_to_exec <= queue.io.deq.bits.tree_to_exec @[Interconnect.scala 23:41]
    io.sample_leaving.bits.scores <= queue.io.deq.bits.scores @[Interconnect.scala 24:35]
    io.sample_leaving.bits.weights <= queue.io.deq.bits.weights @[Interconnect.scala 25:36]
    io.sample_leaving.bits.dest <= queue.io.deq.bits.dest @[Interconnect.scala 26:33]
    node _io_sample_leaving_bits_last_T = and(queue.io.deq.bits.last, queue.io.deq.bits.dest) @[Interconnect.scala 27:52]
    io.sample_leaving.bits.last <= _io_sample_leaving_bits_last_T @[Interconnect.scala 27:33]
    node _io_sample_looping_valid_T = eq(queue.io.deq.bits.dest, UInt<1>("h0")) @[Interconnect.scala 28:46]
    node _io_sample_looping_valid_T_1 = and(queue.io.deq.valid, _io_sample_looping_valid_T) @[Interconnect.scala 28:44]
    io.sample_looping.valid <= _io_sample_looping_valid_T_1 @[Interconnect.scala 28:29]
    node _io_sample_leaving_valid_T = and(queue.io.deq.valid, queue.io.deq.bits.dest) @[Interconnect.scala 29:44]
    io.sample_leaving.valid <= _io_sample_leaving_valid_T @[Interconnect.scala 29:29]
    io.sample_leaving.bits.clock_cycles <= queue.io.deq.bits.clock_cycles @[Interconnect.scala 30:41]
    node _queue_io_deq_ready_T = and(io.sample_leaving.ready, queue.io.deq.bits.dest) @[Interconnect.scala 32:45]
    node _queue_io_deq_ready_T_1 = eq(queue.io.deq.bits.dest, UInt<1>("h0")) @[Interconnect.scala 32:93]
    node _queue_io_deq_ready_T_2 = and(io.sample_looping.ready, _queue_io_deq_ready_T_1) @[Interconnect.scala 32:91]
    node _queue_io_deq_ready_T_3 = or(_queue_io_deq_ready_T, _queue_io_deq_ready_T_2) @[Interconnect.scala 32:64]
    queue.io.deq.ready <= _queue_io_deq_ready_T_3 @[Interconnect.scala 32:17]

  module Queue_37 :
    input clock : Clock
    input reset : Reset
    output io : { flip enq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, deq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, count : UInt<2>}

    cmem ram : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>} [3] @[Decoupled.scala 275:95]
    reg enq_ptr_value : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[Counter.scala 61:40]
    reg deq_ptr_value : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[Counter.scala 61:40]
    reg maybe_full : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[Decoupled.scala 278:27]
    node ptr_match = eq(enq_ptr_value, deq_ptr_value) @[Decoupled.scala 279:33]
    node _empty_T = eq(maybe_full, UInt<1>("h0")) @[Decoupled.scala 280:28]
    node empty = and(ptr_match, _empty_T) @[Decoupled.scala 280:25]
    node full = and(ptr_match, maybe_full) @[Decoupled.scala 281:24]
    node _do_enq_T = and(io.enq.ready, io.enq.valid) @[Decoupled.scala 52:35]
    wire do_enq : UInt<1>
    do_enq <= _do_enq_T
    node _do_deq_T = and(io.deq.ready, io.deq.valid) @[Decoupled.scala 52:35]
    wire do_deq : UInt<1>
    do_deq <= _do_deq_T
    when do_enq : @[Decoupled.scala 288:16]
      infer mport MPORT = ram[enq_ptr_value], clock @[Decoupled.scala 289:8]
      MPORT <= io.enq.bits @[Decoupled.scala 289:24]
      node wrap = eq(enq_ptr_value, UInt<2>("h2")) @[Counter.scala 73:24]
      node _value_T = add(enq_ptr_value, UInt<1>("h1")) @[Counter.scala 77:24]
      node _value_T_1 = tail(_value_T, 1) @[Counter.scala 77:24]
      enq_ptr_value <= _value_T_1 @[Counter.scala 77:15]
      when wrap : @[Counter.scala 87:20]
        enq_ptr_value <= UInt<1>("h0") @[Counter.scala 87:28]
    when do_deq : @[Decoupled.scala 292:16]
      node wrap_1 = eq(deq_ptr_value, UInt<2>("h2")) @[Counter.scala 73:24]
      node _value_T_2 = add(deq_ptr_value, UInt<1>("h1")) @[Counter.scala 77:24]
      node _value_T_3 = tail(_value_T_2, 1) @[Counter.scala 77:24]
      deq_ptr_value <= _value_T_3 @[Counter.scala 77:15]
      when wrap_1 : @[Counter.scala 87:20]
        deq_ptr_value <= UInt<1>("h0") @[Counter.scala 87:28]
    node _T = neq(do_enq, do_deq) @[Decoupled.scala 295:15]
    when _T : @[Decoupled.scala 295:27]
      maybe_full <= do_enq @[Decoupled.scala 296:16]
    when UInt<1>("h0") : @[Decoupled.scala 298:15]
      enq_ptr_value <= UInt<1>("h0") @[Counter.scala 98:11]
      deq_ptr_value <= UInt<1>("h0") @[Counter.scala 98:11]
      maybe_full <= UInt<1>("h0") @[Decoupled.scala 301:16]
    node _io_deq_valid_T = eq(empty, UInt<1>("h0")) @[Decoupled.scala 304:19]
    io.deq.valid <= _io_deq_valid_T @[Decoupled.scala 304:16]
    node _io_enq_ready_T = eq(full, UInt<1>("h0")) @[Decoupled.scala 305:19]
    io.enq.ready <= _io_enq_ready_T @[Decoupled.scala 305:16]
    infer mport io_deq_bits_MPORT = ram[deq_ptr_value], clock @[Decoupled.scala 312:23]
    io.deq.bits <= io_deq_bits_MPORT @[Decoupled.scala 312:17]
    node _ptr_diff_T = sub(enq_ptr_value, deq_ptr_value) @[Decoupled.scala 328:32]
    node ptr_diff = tail(_ptr_diff_T, 1) @[Decoupled.scala 328:32]
    node _io_count_T = mux(maybe_full, UInt<2>("h3"), UInt<1>("h0")) @[Decoupled.scala 335:10]
    node _io_count_T_1 = gt(deq_ptr_value, enq_ptr_value) @[Decoupled.scala 336:25]
    node _io_count_T_2 = add(UInt<2>("h3"), ptr_diff) @[Decoupled.scala 336:57]
    node _io_count_T_3 = tail(_io_count_T_2, 1) @[Decoupled.scala 336:57]
    node _io_count_T_4 = mux(_io_count_T_1, _io_count_T_3, ptr_diff) @[Decoupled.scala 336:10]
    node _io_count_T_5 = mux(ptr_match, _io_count_T, _io_count_T_4) @[Decoupled.scala 333:20]
    io.count <= _io_count_T_5 @[Decoupled.scala 333:14]

  module IncrementTreePE_3 :
    input clock : Clock
    input reset : Reset
    output io : { flip sample_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, sample_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}}

    inst queue of Queue_37 @[Decoupled.scala 377:21]
    queue.clock <= clock
    queue.reset <= reset
    queue.io.enq.valid <= io.sample_in.valid @[Decoupled.scala 379:22]
    queue.io.enq.bits.clock_cycles <= io.sample_in.bits.clock_cycles @[Decoupled.scala 380:21]
    queue.io.enq.bits.last <= io.sample_in.bits.last @[Decoupled.scala 380:21]
    queue.io.enq.bits.dest <= io.sample_in.bits.dest @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[0] <= io.sample_in.bits.weights[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[1] <= io.sample_in.bits.weights[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[2] <= io.sample_in.bits.weights[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[3] <= io.sample_in.bits.weights[3] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[4] <= io.sample_in.bits.weights[4] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[0] <= io.sample_in.bits.scores[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[1] <= io.sample_in.bits.scores[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[2] <= io.sample_in.bits.scores[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[3] <= io.sample_in.bits.scores[3] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[4] <= io.sample_in.bits.scores[4] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[5] <= io.sample_in.bits.scores[5] @[Decoupled.scala 380:21]
    queue.io.enq.bits.tree_to_exec <= io.sample_in.bits.tree_to_exec @[Decoupled.scala 380:21]
    queue.io.enq.bits.search_for_root <= io.sample_in.bits.search_for_root @[Decoupled.scala 380:21]
    queue.io.enq.bits.shift <= io.sample_in.bits.shift @[Decoupled.scala 380:21]
    queue.io.enq.bits.offset <= io.sample_in.bits.offset @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[0] <= io.sample_in.bits.features[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[1] <= io.sample_in.bits.features[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[2] <= io.sample_in.bits.features[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[3] <= io.sample_in.bits.features[3] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[4] <= io.sample_in.bits.features[4] @[Decoupled.scala 380:21]
    io.sample_in.ready <= queue.io.enq.ready @[Decoupled.scala 381:17]
    io.sample_out.bits.features <= queue.io.deq.bits.features @[IncrementTreePE.scala 17:33]
    io.sample_out.bits.weights <= queue.io.deq.bits.weights @[IncrementTreePE.scala 18:32]
    node _io_sample_out_bits_tree_to_exec_T = add(queue.io.deq.bits.tree_to_exec, UInt<1>("h1")) @[IncrementTreePE.scala 19:64]
    node _io_sample_out_bits_tree_to_exec_T_1 = tail(_io_sample_out_bits_tree_to_exec_T, 1) @[IncrementTreePE.scala 19:64]
    io.sample_out.bits.tree_to_exec <= _io_sample_out_bits_tree_to_exec_T_1 @[IncrementTreePE.scala 19:37]
    io.sample_out.bits.shift <= queue.io.deq.bits.shift @[IncrementTreePE.scala 20:30]
    node _io_sample_out_bits_offset_T = add(queue.io.deq.bits.tree_to_exec, UInt<1>("h1")) @[IncrementTreePE.scala 21:58]
    node _io_sample_out_bits_offset_T_1 = tail(_io_sample_out_bits_offset_T, 1) @[IncrementTreePE.scala 21:58]
    io.sample_out.bits.offset <= _io_sample_out_bits_offset_T_1 @[IncrementTreePE.scala 21:31]
    io.sample_out.bits.scores <= queue.io.deq.bits.scores @[IncrementTreePE.scala 22:31]
    io.sample_out.bits.search_for_root <= queue.io.deq.bits.search_for_root @[IncrementTreePE.scala 23:40]
    io.sample_out.bits.dest <= queue.io.deq.bits.dest @[IncrementTreePE.scala 24:29]
    io.sample_out.bits.last <= queue.io.deq.bits.last @[IncrementTreePE.scala 25:29]
    io.sample_out.bits.clock_cycles <= queue.io.deq.bits.clock_cycles @[IncrementTreePE.scala 26:37]
    io.sample_out.valid <= queue.io.deq.valid @[IncrementTreePE.scala 28:25]
    queue.io.deq.ready <= io.sample_out.ready @[IncrementTreePE.scala 30:17]

  module Queue_38 :
    input clock : Clock
    input reset : Reset
    output io : { flip enq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, deq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, count : UInt<2>}

    cmem ram : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>} [3] @[Decoupled.scala 275:95]
    reg enq_ptr_value : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[Counter.scala 61:40]
    reg deq_ptr_value : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[Counter.scala 61:40]
    reg maybe_full : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[Decoupled.scala 278:27]
    node ptr_match = eq(enq_ptr_value, deq_ptr_value) @[Decoupled.scala 279:33]
    node _empty_T = eq(maybe_full, UInt<1>("h0")) @[Decoupled.scala 280:28]
    node empty = and(ptr_match, _empty_T) @[Decoupled.scala 280:25]
    node full = and(ptr_match, maybe_full) @[Decoupled.scala 281:24]
    node _do_enq_T = and(io.enq.ready, io.enq.valid) @[Decoupled.scala 52:35]
    wire do_enq : UInt<1>
    do_enq <= _do_enq_T
    node _do_deq_T = and(io.deq.ready, io.deq.valid) @[Decoupled.scala 52:35]
    wire do_deq : UInt<1>
    do_deq <= _do_deq_T
    when do_enq : @[Decoupled.scala 288:16]
      infer mport MPORT = ram[enq_ptr_value], clock @[Decoupled.scala 289:8]
      MPORT <= io.enq.bits @[Decoupled.scala 289:24]
      node wrap = eq(enq_ptr_value, UInt<2>("h2")) @[Counter.scala 73:24]
      node _value_T = add(enq_ptr_value, UInt<1>("h1")) @[Counter.scala 77:24]
      node _value_T_1 = tail(_value_T, 1) @[Counter.scala 77:24]
      enq_ptr_value <= _value_T_1 @[Counter.scala 77:15]
      when wrap : @[Counter.scala 87:20]
        enq_ptr_value <= UInt<1>("h0") @[Counter.scala 87:28]
    when do_deq : @[Decoupled.scala 292:16]
      node wrap_1 = eq(deq_ptr_value, UInt<2>("h2")) @[Counter.scala 73:24]
      node _value_T_2 = add(deq_ptr_value, UInt<1>("h1")) @[Counter.scala 77:24]
      node _value_T_3 = tail(_value_T_2, 1) @[Counter.scala 77:24]
      deq_ptr_value <= _value_T_3 @[Counter.scala 77:15]
      when wrap_1 : @[Counter.scala 87:20]
        deq_ptr_value <= UInt<1>("h0") @[Counter.scala 87:28]
    node _T = neq(do_enq, do_deq) @[Decoupled.scala 295:15]
    when _T : @[Decoupled.scala 295:27]
      maybe_full <= do_enq @[Decoupled.scala 296:16]
    when UInt<1>("h0") : @[Decoupled.scala 298:15]
      enq_ptr_value <= UInt<1>("h0") @[Counter.scala 98:11]
      deq_ptr_value <= UInt<1>("h0") @[Counter.scala 98:11]
      maybe_full <= UInt<1>("h0") @[Decoupled.scala 301:16]
    node _io_deq_valid_T = eq(empty, UInt<1>("h0")) @[Decoupled.scala 304:19]
    io.deq.valid <= _io_deq_valid_T @[Decoupled.scala 304:16]
    node _io_enq_ready_T = eq(full, UInt<1>("h0")) @[Decoupled.scala 305:19]
    io.enq.ready <= _io_enq_ready_T @[Decoupled.scala 305:16]
    infer mport io_deq_bits_MPORT = ram[deq_ptr_value], clock @[Decoupled.scala 312:23]
    io.deq.bits <= io_deq_bits_MPORT @[Decoupled.scala 312:17]
    node _ptr_diff_T = sub(enq_ptr_value, deq_ptr_value) @[Decoupled.scala 328:32]
    node ptr_diff = tail(_ptr_diff_T, 1) @[Decoupled.scala 328:32]
    node _io_count_T = mux(maybe_full, UInt<2>("h3"), UInt<1>("h0")) @[Decoupled.scala 335:10]
    node _io_count_T_1 = gt(deq_ptr_value, enq_ptr_value) @[Decoupled.scala 336:25]
    node _io_count_T_2 = add(UInt<2>("h3"), ptr_diff) @[Decoupled.scala 336:57]
    node _io_count_T_3 = tail(_io_count_T_2, 1) @[Decoupled.scala 336:57]
    node _io_count_T_4 = mux(_io_count_T_1, _io_count_T_3, ptr_diff) @[Decoupled.scala 336:10]
    node _io_count_T_5 = mux(ptr_match, _io_count_T, _io_count_T_4) @[Decoupled.scala 333:20]
    io.count <= _io_count_T_5 @[Decoupled.scala 333:14]

  module TreePE_15 :
    input clock : Clock
    input reset : Reset
    output io : { flip sample_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, flip mem : { flip enable_1 : UInt<1>, flip write_1 : UInt<1>, flip addr_1 : UInt<13>, flip dataIn_1 : UInt<64>, dataOut_1 : UInt<64>, flip enable_2 : UInt<1>, flip write_2 : UInt<1>, flip addr_2 : UInt<13>, flip dataIn_2 : UInt<64>, dataOut_2 : UInt<64>}, sample_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}}

    inst queue of Queue_38 @[Decoupled.scala 377:21]
    queue.clock <= clock
    queue.reset <= reset
    queue.io.enq.valid <= io.sample_in.valid @[Decoupled.scala 379:22]
    queue.io.enq.bits.clock_cycles <= io.sample_in.bits.clock_cycles @[Decoupled.scala 380:21]
    queue.io.enq.bits.last <= io.sample_in.bits.last @[Decoupled.scala 380:21]
    queue.io.enq.bits.dest <= io.sample_in.bits.dest @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[0] <= io.sample_in.bits.weights[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[1] <= io.sample_in.bits.weights[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[2] <= io.sample_in.bits.weights[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[3] <= io.sample_in.bits.weights[3] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[4] <= io.sample_in.bits.weights[4] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[0] <= io.sample_in.bits.scores[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[1] <= io.sample_in.bits.scores[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[2] <= io.sample_in.bits.scores[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[3] <= io.sample_in.bits.scores[3] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[4] <= io.sample_in.bits.scores[4] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[5] <= io.sample_in.bits.scores[5] @[Decoupled.scala 380:21]
    queue.io.enq.bits.tree_to_exec <= io.sample_in.bits.tree_to_exec @[Decoupled.scala 380:21]
    queue.io.enq.bits.search_for_root <= io.sample_in.bits.search_for_root @[Decoupled.scala 380:21]
    queue.io.enq.bits.shift <= io.sample_in.bits.shift @[Decoupled.scala 380:21]
    queue.io.enq.bits.offset <= io.sample_in.bits.offset @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[0] <= io.sample_in.bits.features[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[1] <= io.sample_in.bits.features[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[2] <= io.sample_in.bits.features[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[3] <= io.sample_in.bits.features[3] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[4] <= io.sample_in.bits.features[4] @[Decoupled.scala 380:21]
    io.sample_in.ready <= queue.io.enq.ready @[Decoupled.scala 381:17]
    io.mem.enable_1 <= UInt<1>("h1") @[TreePE.scala 23:21]
    io.mem.addr_1 <= queue.io.deq.bits.offset @[TreePE.scala 24:19]
    io.mem.write_1 <= UInt<1>("h0") @[TreePE.scala 25:20]
    io.mem.dataIn_1 <= UInt<1>("h0") @[TreePE.scala 26:21]
    io.mem.enable_2 is invalid @[TreePE.scala 28:21]
    io.mem.addr_2 is invalid @[TreePE.scala 29:19]
    io.mem.write_2 is invalid @[TreePE.scala 30:20]
    io.mem.dataIn_2 is invalid @[TreePE.scala 31:21]
    reg REG : UInt<1>, clock with :
      reset => (UInt<1>("h0"), REG) @[TreePE.scala 35:17]
    REG <= queue.io.deq.valid @[TreePE.scala 35:17]
    when REG : @[TreePE.scala 35:31]
      node attr_id = bits(io.mem.dataOut_1, 34, 32) @[TreePE.scala 37:37]
      node threshold = bits(io.mem.dataOut_1, 15, 0) @[TreePE.scala 38:39]
      node nodeRA = bits(io.mem.dataOut_1, 31, 16) @[TreePE.scala 39:36]
      node leftChildInfo = bits(io.mem.dataOut_1, 44, 35) @[TreePE.scala 40:43]
      node rightChildInfo = bits(io.mem.dataOut_1, 54, 45) @[TreePE.scala 41:44]
      node leftChildType = bits(io.mem.dataOut_1, 55, 55) @[TreePE.scala 42:43]
      node rightChildType = bits(io.mem.dataOut_1, 56, 56) @[TreePE.scala 43:44]
      node is_valid = bits(io.mem.dataOut_1, 57, 57) @[TreePE.scala 44:38]
      node depth_indicator = bits(io.mem.dataOut_1, 60, 58) @[TreePE.scala 45:45]
      reg REG_1 : Fixed<32><<16>>[5], clock with :
        reset => (UInt<1>("h0"), REG_1) @[TreePE.scala 47:45]
      REG_1 <= queue.io.deq.bits.features @[TreePE.scala 47:45]
      io.sample_out.bits.features <= REG_1 @[TreePE.scala 47:35]
      reg REG_2 : Fixed<16><<8>>[5], clock with :
        reset => (UInt<1>("h0"), REG_2) @[TreePE.scala 48:44]
      REG_2 <= queue.io.deq.bits.weights @[TreePE.scala 48:44]
      io.sample_out.bits.weights <= REG_2 @[TreePE.scala 48:34]
      reg io_sample_out_bits_tree_to_exec_REG : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_tree_to_exec_REG) @[TreePE.scala 49:49]
      io_sample_out_bits_tree_to_exec_REG <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 49:49]
      io.sample_out.bits.tree_to_exec <= io_sample_out_bits_tree_to_exec_REG @[TreePE.scala 49:39]
      reg REG_3 : Fixed<16><<8>>[6], clock with :
        reset => (UInt<1>("h0"), REG_3) @[TreePE.scala 50:43]
      REG_3 <= queue.io.deq.bits.scores @[TreePE.scala 50:43]
      io.sample_out.bits.scores <= REG_3 @[TreePE.scala 50:33]
      io.sample_out.valid <= UInt<1>("h1") @[TreePE.scala 51:27]
      reg io_sample_out_bits_clock_cycles_REG : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_clock_cycles_REG) @[TreePE.scala 52:49]
      io_sample_out_bits_clock_cycles_REG <= queue.io.deq.bits.clock_cycles @[TreePE.scala 52:49]
      io.sample_out.bits.clock_cycles <= io_sample_out_bits_clock_cycles_REG @[TreePE.scala 52:39]
      wire offset : UInt<10> @[TreePE.scala 55:26]
      wire shift : UInt<1> @[TreePE.scala 56:25]
      reg features_bits : Fixed<32><<16>>[5], clock with :
        reset => (UInt<1>("h0"), features_bits) @[TreePE.scala 57:36]
      features_bits <= queue.io.deq.bits.features @[TreePE.scala 57:36]
      reg scores_bits : Fixed<16><<8>>[6], clock with :
        reset => (UInt<1>("h0"), scores_bits) @[TreePE.scala 58:34]
      scores_bits <= queue.io.deq.bits.scores @[TreePE.scala 58:34]
      reg weights_bits : Fixed<16><<8>>[5], clock with :
        reset => (UInt<1>("h0"), weights_bits) @[TreePE.scala 59:35]
      weights_bits <= queue.io.deq.bits.weights @[TreePE.scala 59:35]
      node _shift_T = asFixedPoint(threshold, 8) @[TreePE.scala 60:69]
      node _shift_T_1 = lt(features_bits[attr_id], _shift_T) @[TreePE.scala 60:45]
      node _shift_T_2 = mux(_shift_T_1, leftChildType, rightChildType) @[TreePE.scala 60:21]
      shift <= _shift_T_2 @[TreePE.scala 60:15]
      node _offset_T = asFixedPoint(threshold, 8) @[TreePE.scala 61:70]
      node _offset_T_1 = lt(features_bits[attr_id], _offset_T) @[TreePE.scala 61:46]
      node _offset_T_2 = mux(_offset_T_1, leftChildInfo, rightChildInfo) @[TreePE.scala 61:22]
      offset <= _offset_T_2 @[TreePE.scala 61:16]
      node _io_sample_out_bits_offset_T = eq(shift, UInt<1>("h0")) @[TreePE.scala 62:48]
      reg io_sample_out_bits_offset_REG : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_offset_REG) @[TreePE.scala 62:67]
      io_sample_out_bits_offset_REG <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 62:67]
      node _io_sample_out_bits_offset_T_1 = mux(_io_sample_out_bits_offset_T, io_sample_out_bits_offset_REG, offset) @[TreePE.scala 62:41]
      io.sample_out.bits.offset <= _io_sample_out_bits_offset_T_1 @[TreePE.scala 62:35]
      io.sample_out.bits.shift <= UInt<1>("h0") @[TreePE.scala 63:34]
      node _io_sample_out_bits_search_for_root_T = eq(shift, UInt<1>("h0")) @[TreePE.scala 64:47]
      io.sample_out.bits.search_for_root <= _io_sample_out_bits_search_for_root_T @[TreePE.scala 64:44]
      node _io_sample_out_bits_scores_0_T = eq(shift, UInt<1>("h0")) @[TreePE.scala 66:72]
      node _io_sample_out_bits_scores_0_T_1 = and(_io_sample_out_bits_scores_0_T, is_valid) @[TreePE.scala 66:84]
      node _io_sample_out_bits_scores_0_T_2 = eq(UInt<1>("h0"), offset) @[TreePE.scala 66:102]
      node _io_sample_out_bits_scores_0_T_3 = and(_io_sample_out_bits_scores_0_T_1, _io_sample_out_bits_scores_0_T_2) @[TreePE.scala 66:95]
      node _io_sample_out_bits_scores_0_T_4 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 66:151]
      node _io_sample_out_bits_scores_0_T_5 = mux(_io_sample_out_bits_scores_0_T_3, _io_sample_out_bits_scores_0_T_4, UInt<16>("h0")) @[TreePE.scala 66:64]
      node _io_sample_out_bits_scores_0_T_6 = asFixedPoint(_io_sample_out_bits_scores_0_T_5, 8) @[TreePE.scala 66:178]
      node _io_sample_out_bits_scores_0_T_7 = add(scores_bits[0], _io_sample_out_bits_scores_0_T_6) @[TreePE.scala 66:58]
      node _io_sample_out_bits_scores_0_T_8 = tail(_io_sample_out_bits_scores_0_T_7, 1) @[TreePE.scala 66:58]
      node _io_sample_out_bits_scores_0_T_9 = asFixedPoint(_io_sample_out_bits_scores_0_T_8, 8) @[TreePE.scala 66:58]
      io.sample_out.bits.scores[0] <= _io_sample_out_bits_scores_0_T_9 @[TreePE.scala 66:40]
      node _io_sample_out_bits_scores_1_T = eq(shift, UInt<1>("h0")) @[TreePE.scala 66:72]
      node _io_sample_out_bits_scores_1_T_1 = and(_io_sample_out_bits_scores_1_T, is_valid) @[TreePE.scala 66:84]
      node _io_sample_out_bits_scores_1_T_2 = eq(UInt<1>("h1"), offset) @[TreePE.scala 66:102]
      node _io_sample_out_bits_scores_1_T_3 = and(_io_sample_out_bits_scores_1_T_1, _io_sample_out_bits_scores_1_T_2) @[TreePE.scala 66:95]
      node _io_sample_out_bits_scores_1_T_4 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 66:151]
      node _io_sample_out_bits_scores_1_T_5 = mux(_io_sample_out_bits_scores_1_T_3, _io_sample_out_bits_scores_1_T_4, UInt<16>("h0")) @[TreePE.scala 66:64]
      node _io_sample_out_bits_scores_1_T_6 = asFixedPoint(_io_sample_out_bits_scores_1_T_5, 8) @[TreePE.scala 66:178]
      node _io_sample_out_bits_scores_1_T_7 = add(scores_bits[1], _io_sample_out_bits_scores_1_T_6) @[TreePE.scala 66:58]
      node _io_sample_out_bits_scores_1_T_8 = tail(_io_sample_out_bits_scores_1_T_7, 1) @[TreePE.scala 66:58]
      node _io_sample_out_bits_scores_1_T_9 = asFixedPoint(_io_sample_out_bits_scores_1_T_8, 8) @[TreePE.scala 66:58]
      io.sample_out.bits.scores[1] <= _io_sample_out_bits_scores_1_T_9 @[TreePE.scala 66:40]
      node _io_sample_out_bits_scores_2_T = eq(shift, UInt<1>("h0")) @[TreePE.scala 66:72]
      node _io_sample_out_bits_scores_2_T_1 = and(_io_sample_out_bits_scores_2_T, is_valid) @[TreePE.scala 66:84]
      node _io_sample_out_bits_scores_2_T_2 = eq(UInt<2>("h2"), offset) @[TreePE.scala 66:102]
      node _io_sample_out_bits_scores_2_T_3 = and(_io_sample_out_bits_scores_2_T_1, _io_sample_out_bits_scores_2_T_2) @[TreePE.scala 66:95]
      node _io_sample_out_bits_scores_2_T_4 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 66:151]
      node _io_sample_out_bits_scores_2_T_5 = mux(_io_sample_out_bits_scores_2_T_3, _io_sample_out_bits_scores_2_T_4, UInt<16>("h0")) @[TreePE.scala 66:64]
      node _io_sample_out_bits_scores_2_T_6 = asFixedPoint(_io_sample_out_bits_scores_2_T_5, 8) @[TreePE.scala 66:178]
      node _io_sample_out_bits_scores_2_T_7 = add(scores_bits[2], _io_sample_out_bits_scores_2_T_6) @[TreePE.scala 66:58]
      node _io_sample_out_bits_scores_2_T_8 = tail(_io_sample_out_bits_scores_2_T_7, 1) @[TreePE.scala 66:58]
      node _io_sample_out_bits_scores_2_T_9 = asFixedPoint(_io_sample_out_bits_scores_2_T_8, 8) @[TreePE.scala 66:58]
      io.sample_out.bits.scores[2] <= _io_sample_out_bits_scores_2_T_9 @[TreePE.scala 66:40]
      node _io_sample_out_bits_scores_3_T = eq(shift, UInt<1>("h0")) @[TreePE.scala 66:72]
      node _io_sample_out_bits_scores_3_T_1 = and(_io_sample_out_bits_scores_3_T, is_valid) @[TreePE.scala 66:84]
      node _io_sample_out_bits_scores_3_T_2 = eq(UInt<2>("h3"), offset) @[TreePE.scala 66:102]
      node _io_sample_out_bits_scores_3_T_3 = and(_io_sample_out_bits_scores_3_T_1, _io_sample_out_bits_scores_3_T_2) @[TreePE.scala 66:95]
      node _io_sample_out_bits_scores_3_T_4 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 66:151]
      node _io_sample_out_bits_scores_3_T_5 = mux(_io_sample_out_bits_scores_3_T_3, _io_sample_out_bits_scores_3_T_4, UInt<16>("h0")) @[TreePE.scala 66:64]
      node _io_sample_out_bits_scores_3_T_6 = asFixedPoint(_io_sample_out_bits_scores_3_T_5, 8) @[TreePE.scala 66:178]
      node _io_sample_out_bits_scores_3_T_7 = add(scores_bits[3], _io_sample_out_bits_scores_3_T_6) @[TreePE.scala 66:58]
      node _io_sample_out_bits_scores_3_T_8 = tail(_io_sample_out_bits_scores_3_T_7, 1) @[TreePE.scala 66:58]
      node _io_sample_out_bits_scores_3_T_9 = asFixedPoint(_io_sample_out_bits_scores_3_T_8, 8) @[TreePE.scala 66:58]
      io.sample_out.bits.scores[3] <= _io_sample_out_bits_scores_3_T_9 @[TreePE.scala 66:40]
      node _io_sample_out_bits_scores_4_T = eq(shift, UInt<1>("h0")) @[TreePE.scala 66:72]
      node _io_sample_out_bits_scores_4_T_1 = and(_io_sample_out_bits_scores_4_T, is_valid) @[TreePE.scala 66:84]
      node _io_sample_out_bits_scores_4_T_2 = eq(UInt<3>("h4"), offset) @[TreePE.scala 66:102]
      node _io_sample_out_bits_scores_4_T_3 = and(_io_sample_out_bits_scores_4_T_1, _io_sample_out_bits_scores_4_T_2) @[TreePE.scala 66:95]
      node _io_sample_out_bits_scores_4_T_4 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 66:151]
      node _io_sample_out_bits_scores_4_T_5 = mux(_io_sample_out_bits_scores_4_T_3, _io_sample_out_bits_scores_4_T_4, UInt<16>("h0")) @[TreePE.scala 66:64]
      node _io_sample_out_bits_scores_4_T_6 = asFixedPoint(_io_sample_out_bits_scores_4_T_5, 8) @[TreePE.scala 66:178]
      node _io_sample_out_bits_scores_4_T_7 = add(scores_bits[4], _io_sample_out_bits_scores_4_T_6) @[TreePE.scala 66:58]
      node _io_sample_out_bits_scores_4_T_8 = tail(_io_sample_out_bits_scores_4_T_7, 1) @[TreePE.scala 66:58]
      node _io_sample_out_bits_scores_4_T_9 = asFixedPoint(_io_sample_out_bits_scores_4_T_8, 8) @[TreePE.scala 66:58]
      io.sample_out.bits.scores[4] <= _io_sample_out_bits_scores_4_T_9 @[TreePE.scala 66:40]
      node _io_sample_out_bits_scores_5_T = eq(shift, UInt<1>("h0")) @[TreePE.scala 66:72]
      node _io_sample_out_bits_scores_5_T_1 = and(_io_sample_out_bits_scores_5_T, is_valid) @[TreePE.scala 66:84]
      node _io_sample_out_bits_scores_5_T_2 = eq(UInt<3>("h5"), offset) @[TreePE.scala 66:102]
      node _io_sample_out_bits_scores_5_T_3 = and(_io_sample_out_bits_scores_5_T_1, _io_sample_out_bits_scores_5_T_2) @[TreePE.scala 66:95]
      node _io_sample_out_bits_scores_5_T_4 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 66:151]
      node _io_sample_out_bits_scores_5_T_5 = mux(_io_sample_out_bits_scores_5_T_3, _io_sample_out_bits_scores_5_T_4, UInt<16>("h0")) @[TreePE.scala 66:64]
      node _io_sample_out_bits_scores_5_T_6 = asFixedPoint(_io_sample_out_bits_scores_5_T_5, 8) @[TreePE.scala 66:178]
      node _io_sample_out_bits_scores_5_T_7 = add(scores_bits[5], _io_sample_out_bits_scores_5_T_6) @[TreePE.scala 66:58]
      node _io_sample_out_bits_scores_5_T_8 = tail(_io_sample_out_bits_scores_5_T_7, 1) @[TreePE.scala 66:58]
      node _io_sample_out_bits_scores_5_T_9 = asFixedPoint(_io_sample_out_bits_scores_5_T_8, 8) @[TreePE.scala 66:58]
      io.sample_out.bits.scores[5] <= _io_sample_out_bits_scores_5_T_9 @[TreePE.scala 66:40]
      reg io_sample_out_bits_dest_REG : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_dest_REG) @[TreePE.scala 68:43]
      io_sample_out_bits_dest_REG <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 68:43]
      node _io_sample_out_bits_dest_T = eq(io_sample_out_bits_dest_REG, UInt<1>("h1")) @[TreePE.scala 68:69]
      io.sample_out.bits.dest <= _io_sample_out_bits_dest_T @[TreePE.scala 68:33]
      reg io_sample_out_bits_last_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_last_REG) @[TreePE.scala 69:43]
      io_sample_out_bits_last_REG <= queue.io.deq.bits.last @[TreePE.scala 69:43]
      io.sample_out.bits.last <= io_sample_out_bits_last_REG @[TreePE.scala 69:33]
    else :
      io.sample_out.bits.clock_cycles is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.last is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.dest is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[0] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[1] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[2] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[3] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[4] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[0] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[1] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[2] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[3] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[4] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[5] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.tree_to_exec is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.search_for_root is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.shift is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.offset is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[0] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[1] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[2] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[3] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[4] is invalid @[TreePE.scala 88:26]
      io.sample_out.valid <= UInt<1>("h0") @[TreePE.scala 89:27]
    queue.io.deq.ready <= io.sample_out.ready @[TreePE.scala 92:17]

  module TreePEwithBRAM_15 :
    input clock : Clock
    input reset : Reset
    output pe_io : { flip sample_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, flip mem : { flip enable_1 : UInt<1>, flip write_1 : UInt<1>, flip addr_1 : UInt<13>, flip dataIn_1 : UInt<64>, dataOut_1 : UInt<64>, flip enable_2 : UInt<1>, flip write_2 : UInt<1>, flip addr_2 : UInt<13>, flip dataIn_2 : UInt<64>, dataOut_2 : UInt<64>}, sample_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}}

    inst pe of TreePE_15 @[TreePE.scala 104:18]
    pe.clock <= clock
    pe.reset <= reset
    pe_io.sample_out.bits <= pe.io.sample_out.bits @[TreePE.scala 106:9]
    pe_io.sample_out.valid <= pe.io.sample_out.valid @[TreePE.scala 106:9]
    pe.io.sample_out.ready <= pe_io.sample_out.ready @[TreePE.scala 106:9]
    pe.io.mem <= pe_io.mem @[TreePE.scala 106:9]
    pe.io.sample_in <= pe_io.sample_in @[TreePE.scala 106:9]

  module Queue_39 :
    input clock : Clock
    input reset : Reset
    output io : { flip enq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, deq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, count : UInt<2>}

    cmem ram : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>} [3] @[Decoupled.scala 275:95]
    reg enq_ptr_value : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[Counter.scala 61:40]
    reg deq_ptr_value : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[Counter.scala 61:40]
    reg maybe_full : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[Decoupled.scala 278:27]
    node ptr_match = eq(enq_ptr_value, deq_ptr_value) @[Decoupled.scala 279:33]
    node _empty_T = eq(maybe_full, UInt<1>("h0")) @[Decoupled.scala 280:28]
    node empty = and(ptr_match, _empty_T) @[Decoupled.scala 280:25]
    node full = and(ptr_match, maybe_full) @[Decoupled.scala 281:24]
    node _do_enq_T = and(io.enq.ready, io.enq.valid) @[Decoupled.scala 52:35]
    wire do_enq : UInt<1>
    do_enq <= _do_enq_T
    node _do_deq_T = and(io.deq.ready, io.deq.valid) @[Decoupled.scala 52:35]
    wire do_deq : UInt<1>
    do_deq <= _do_deq_T
    when do_enq : @[Decoupled.scala 288:16]
      infer mport MPORT = ram[enq_ptr_value], clock @[Decoupled.scala 289:8]
      MPORT <= io.enq.bits @[Decoupled.scala 289:24]
      node wrap = eq(enq_ptr_value, UInt<2>("h2")) @[Counter.scala 73:24]
      node _value_T = add(enq_ptr_value, UInt<1>("h1")) @[Counter.scala 77:24]
      node _value_T_1 = tail(_value_T, 1) @[Counter.scala 77:24]
      enq_ptr_value <= _value_T_1 @[Counter.scala 77:15]
      when wrap : @[Counter.scala 87:20]
        enq_ptr_value <= UInt<1>("h0") @[Counter.scala 87:28]
    when do_deq : @[Decoupled.scala 292:16]
      node wrap_1 = eq(deq_ptr_value, UInt<2>("h2")) @[Counter.scala 73:24]
      node _value_T_2 = add(deq_ptr_value, UInt<1>("h1")) @[Counter.scala 77:24]
      node _value_T_3 = tail(_value_T_2, 1) @[Counter.scala 77:24]
      deq_ptr_value <= _value_T_3 @[Counter.scala 77:15]
      when wrap_1 : @[Counter.scala 87:20]
        deq_ptr_value <= UInt<1>("h0") @[Counter.scala 87:28]
    node _T = neq(do_enq, do_deq) @[Decoupled.scala 295:15]
    when _T : @[Decoupled.scala 295:27]
      maybe_full <= do_enq @[Decoupled.scala 296:16]
    when UInt<1>("h0") : @[Decoupled.scala 298:15]
      enq_ptr_value <= UInt<1>("h0") @[Counter.scala 98:11]
      deq_ptr_value <= UInt<1>("h0") @[Counter.scala 98:11]
      maybe_full <= UInt<1>("h0") @[Decoupled.scala 301:16]
    node _io_deq_valid_T = eq(empty, UInt<1>("h0")) @[Decoupled.scala 304:19]
    io.deq.valid <= _io_deq_valid_T @[Decoupled.scala 304:16]
    node _io_enq_ready_T = eq(full, UInt<1>("h0")) @[Decoupled.scala 305:19]
    io.enq.ready <= _io_enq_ready_T @[Decoupled.scala 305:16]
    infer mport io_deq_bits_MPORT = ram[deq_ptr_value], clock @[Decoupled.scala 312:23]
    io.deq.bits <= io_deq_bits_MPORT @[Decoupled.scala 312:17]
    node _ptr_diff_T = sub(enq_ptr_value, deq_ptr_value) @[Decoupled.scala 328:32]
    node ptr_diff = tail(_ptr_diff_T, 1) @[Decoupled.scala 328:32]
    node _io_count_T = mux(maybe_full, UInt<2>("h3"), UInt<1>("h0")) @[Decoupled.scala 335:10]
    node _io_count_T_1 = gt(deq_ptr_value, enq_ptr_value) @[Decoupled.scala 336:25]
    node _io_count_T_2 = add(UInt<2>("h3"), ptr_diff) @[Decoupled.scala 336:57]
    node _io_count_T_3 = tail(_io_count_T_2, 1) @[Decoupled.scala 336:57]
    node _io_count_T_4 = mux(_io_count_T_1, _io_count_T_3, ptr_diff) @[Decoupled.scala 336:10]
    node _io_count_T_5 = mux(ptr_match, _io_count_T, _io_count_T_4) @[Decoupled.scala 333:20]
    io.count <= _io_count_T_5 @[Decoupled.scala 333:14]

  module TreePE_16 :
    input clock : Clock
    input reset : Reset
    output io : { flip sample_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, flip mem : { flip enable_1 : UInt<1>, flip write_1 : UInt<1>, flip addr_1 : UInt<13>, flip dataIn_1 : UInt<64>, dataOut_1 : UInt<64>, flip enable_2 : UInt<1>, flip write_2 : UInt<1>, flip addr_2 : UInt<13>, flip dataIn_2 : UInt<64>, dataOut_2 : UInt<64>}, sample_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}}

    inst queue of Queue_39 @[Decoupled.scala 377:21]
    queue.clock <= clock
    queue.reset <= reset
    queue.io.enq.valid <= io.sample_in.valid @[Decoupled.scala 379:22]
    queue.io.enq.bits.clock_cycles <= io.sample_in.bits.clock_cycles @[Decoupled.scala 380:21]
    queue.io.enq.bits.last <= io.sample_in.bits.last @[Decoupled.scala 380:21]
    queue.io.enq.bits.dest <= io.sample_in.bits.dest @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[0] <= io.sample_in.bits.weights[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[1] <= io.sample_in.bits.weights[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[2] <= io.sample_in.bits.weights[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[3] <= io.sample_in.bits.weights[3] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[4] <= io.sample_in.bits.weights[4] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[0] <= io.sample_in.bits.scores[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[1] <= io.sample_in.bits.scores[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[2] <= io.sample_in.bits.scores[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[3] <= io.sample_in.bits.scores[3] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[4] <= io.sample_in.bits.scores[4] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[5] <= io.sample_in.bits.scores[5] @[Decoupled.scala 380:21]
    queue.io.enq.bits.tree_to_exec <= io.sample_in.bits.tree_to_exec @[Decoupled.scala 380:21]
    queue.io.enq.bits.search_for_root <= io.sample_in.bits.search_for_root @[Decoupled.scala 380:21]
    queue.io.enq.bits.shift <= io.sample_in.bits.shift @[Decoupled.scala 380:21]
    queue.io.enq.bits.offset <= io.sample_in.bits.offset @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[0] <= io.sample_in.bits.features[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[1] <= io.sample_in.bits.features[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[2] <= io.sample_in.bits.features[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[3] <= io.sample_in.bits.features[3] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[4] <= io.sample_in.bits.features[4] @[Decoupled.scala 380:21]
    io.sample_in.ready <= queue.io.enq.ready @[Decoupled.scala 381:17]
    io.mem.enable_1 <= UInt<1>("h1") @[TreePE.scala 23:21]
    io.mem.addr_1 <= queue.io.deq.bits.offset @[TreePE.scala 24:19]
    io.mem.write_1 <= UInt<1>("h0") @[TreePE.scala 25:20]
    io.mem.dataIn_1 <= UInt<1>("h0") @[TreePE.scala 26:21]
    io.mem.enable_2 is invalid @[TreePE.scala 28:21]
    io.mem.addr_2 is invalid @[TreePE.scala 29:19]
    io.mem.write_2 is invalid @[TreePE.scala 30:20]
    io.mem.dataIn_2 is invalid @[TreePE.scala 31:21]
    reg REG : UInt<1>, clock with :
      reset => (UInt<1>("h0"), REG) @[TreePE.scala 35:17]
    REG <= queue.io.deq.valid @[TreePE.scala 35:17]
    when REG : @[TreePE.scala 35:31]
      node attr_id = bits(io.mem.dataOut_1, 34, 32) @[TreePE.scala 37:37]
      node threshold = bits(io.mem.dataOut_1, 15, 0) @[TreePE.scala 38:39]
      node nodeRA = bits(io.mem.dataOut_1, 31, 16) @[TreePE.scala 39:36]
      node leftChildInfo = bits(io.mem.dataOut_1, 44, 35) @[TreePE.scala 40:43]
      node rightChildInfo = bits(io.mem.dataOut_1, 54, 45) @[TreePE.scala 41:44]
      node leftChildType = bits(io.mem.dataOut_1, 55, 55) @[TreePE.scala 42:43]
      node rightChildType = bits(io.mem.dataOut_1, 56, 56) @[TreePE.scala 43:44]
      node is_valid = bits(io.mem.dataOut_1, 57, 57) @[TreePE.scala 44:38]
      node depth_indicator = bits(io.mem.dataOut_1, 60, 58) @[TreePE.scala 45:45]
      reg REG_1 : Fixed<32><<16>>[5], clock with :
        reset => (UInt<1>("h0"), REG_1) @[TreePE.scala 47:45]
      REG_1 <= queue.io.deq.bits.features @[TreePE.scala 47:45]
      io.sample_out.bits.features <= REG_1 @[TreePE.scala 47:35]
      reg REG_2 : Fixed<16><<8>>[5], clock with :
        reset => (UInt<1>("h0"), REG_2) @[TreePE.scala 48:44]
      REG_2 <= queue.io.deq.bits.weights @[TreePE.scala 48:44]
      io.sample_out.bits.weights <= REG_2 @[TreePE.scala 48:34]
      reg io_sample_out_bits_tree_to_exec_REG : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_tree_to_exec_REG) @[TreePE.scala 49:49]
      io_sample_out_bits_tree_to_exec_REG <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 49:49]
      io.sample_out.bits.tree_to_exec <= io_sample_out_bits_tree_to_exec_REG @[TreePE.scala 49:39]
      reg REG_3 : Fixed<16><<8>>[6], clock with :
        reset => (UInt<1>("h0"), REG_3) @[TreePE.scala 50:43]
      REG_3 <= queue.io.deq.bits.scores @[TreePE.scala 50:43]
      io.sample_out.bits.scores <= REG_3 @[TreePE.scala 50:33]
      io.sample_out.valid <= UInt<1>("h1") @[TreePE.scala 51:27]
      reg io_sample_out_bits_clock_cycles_REG : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_clock_cycles_REG) @[TreePE.scala 52:49]
      io_sample_out_bits_clock_cycles_REG <= queue.io.deq.bits.clock_cycles @[TreePE.scala 52:49]
      io.sample_out.bits.clock_cycles <= io_sample_out_bits_clock_cycles_REG @[TreePE.scala 52:39]
      wire offset : UInt<10> @[TreePE.scala 71:26]
      wire shift : UInt<1> @[TreePE.scala 72:25]
      reg features_bits : Fixed<32><<16>>[5], clock with :
        reset => (UInt<1>("h0"), features_bits) @[TreePE.scala 73:36]
      features_bits <= queue.io.deq.bits.features @[TreePE.scala 73:36]
      reg scores_bits : Fixed<16><<8>>[6], clock with :
        reset => (UInt<1>("h0"), scores_bits) @[TreePE.scala 74:34]
      scores_bits <= queue.io.deq.bits.scores @[TreePE.scala 74:34]
      reg weights_bits : Fixed<16><<8>>[5], clock with :
        reset => (UInt<1>("h0"), weights_bits) @[TreePE.scala 75:35]
      weights_bits <= queue.io.deq.bits.weights @[TreePE.scala 75:35]
      node _shift_T = asFixedPoint(threshold, 8) @[TreePE.scala 76:69]
      node _shift_T_1 = lt(features_bits[attr_id], _shift_T) @[TreePE.scala 76:45]
      node _shift_T_2 = mux(_shift_T_1, leftChildType, rightChildType) @[TreePE.scala 76:21]
      shift <= _shift_T_2 @[TreePE.scala 76:15]
      node _offset_T = asFixedPoint(threshold, 8) @[TreePE.scala 77:70]
      node _offset_T_1 = lt(features_bits[attr_id], _offset_T) @[TreePE.scala 77:46]
      node _offset_T_2 = mux(_offset_T_1, leftChildInfo, rightChildInfo) @[TreePE.scala 77:22]
      offset <= _offset_T_2 @[TreePE.scala 77:16]
      node _io_sample_out_bits_offset_T = eq(shift, UInt<1>("h0")) @[TreePE.scala 78:48]
      reg io_sample_out_bits_offset_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_offset_REG) @[TreePE.scala 78:70]
      io_sample_out_bits_offset_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 78:70]
      node _io_sample_out_bits_offset_T_1 = or(_io_sample_out_bits_offset_T, io_sample_out_bits_offset_REG) @[TreePE.scala 78:60]
      reg io_sample_out_bits_offset_REG_1 : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_offset_REG_1) @[TreePE.scala 78:106]
      io_sample_out_bits_offset_REG_1 <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 78:106]
      node _io_sample_out_bits_offset_T_2 = mux(_io_sample_out_bits_offset_T_1, io_sample_out_bits_offset_REG_1, offset) @[TreePE.scala 78:41]
      io.sample_out.bits.offset <= _io_sample_out_bits_offset_T_2 @[TreePE.scala 78:35]
      io.sample_out.bits.shift <= UInt<1>("h0") @[TreePE.scala 79:34]
      node _io_sample_out_bits_search_for_root_T = eq(shift, UInt<1>("h0")) @[TreePE.scala 80:47]
      reg io_sample_out_bits_search_for_root_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_search_for_root_REG) @[TreePE.scala 80:64]
      io_sample_out_bits_search_for_root_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 80:64]
      node _io_sample_out_bits_search_for_root_T_1 = or(_io_sample_out_bits_search_for_root_T, io_sample_out_bits_search_for_root_REG) @[TreePE.scala 80:54]
      io.sample_out.bits.search_for_root <= _io_sample_out_bits_search_for_root_T_1 @[TreePE.scala 80:44]
      reg io_sample_out_bits_scores_0_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_scores_0_REG) @[TreePE.scala 82:74]
      io_sample_out_bits_scores_0_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 82:74]
      node _io_sample_out_bits_scores_0_T = eq(io_sample_out_bits_scores_0_REG, UInt<1>("h0")) @[TreePE.scala 82:66]
      node _io_sample_out_bits_scores_0_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 82:111]
      node _io_sample_out_bits_scores_0_T_2 = and(_io_sample_out_bits_scores_0_T, _io_sample_out_bits_scores_0_T_1) @[TreePE.scala 82:103]
      node _io_sample_out_bits_scores_0_T_3 = and(_io_sample_out_bits_scores_0_T_2, is_valid) @[TreePE.scala 82:123]
      node _io_sample_out_bits_scores_0_T_4 = eq(UInt<1>("h0"), offset) @[TreePE.scala 82:141]
      node _io_sample_out_bits_scores_0_T_5 = and(_io_sample_out_bits_scores_0_T_3, _io_sample_out_bits_scores_0_T_4) @[TreePE.scala 82:134]
      node _io_sample_out_bits_scores_0_T_6 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 82:190]
      node _io_sample_out_bits_scores_0_T_7 = mux(_io_sample_out_bits_scores_0_T_5, _io_sample_out_bits_scores_0_T_6, UInt<16>("h0")) @[TreePE.scala 82:64]
      node _io_sample_out_bits_scores_0_T_8 = asFixedPoint(_io_sample_out_bits_scores_0_T_7, 8) @[TreePE.scala 82:217]
      node _io_sample_out_bits_scores_0_T_9 = add(scores_bits[0], _io_sample_out_bits_scores_0_T_8) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_0_T_10 = tail(_io_sample_out_bits_scores_0_T_9, 1) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_0_T_11 = asFixedPoint(_io_sample_out_bits_scores_0_T_10, 8) @[TreePE.scala 82:58]
      io.sample_out.bits.scores[0] <= _io_sample_out_bits_scores_0_T_11 @[TreePE.scala 82:40]
      reg io_sample_out_bits_scores_1_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_scores_1_REG) @[TreePE.scala 82:74]
      io_sample_out_bits_scores_1_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 82:74]
      node _io_sample_out_bits_scores_1_T = eq(io_sample_out_bits_scores_1_REG, UInt<1>("h0")) @[TreePE.scala 82:66]
      node _io_sample_out_bits_scores_1_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 82:111]
      node _io_sample_out_bits_scores_1_T_2 = and(_io_sample_out_bits_scores_1_T, _io_sample_out_bits_scores_1_T_1) @[TreePE.scala 82:103]
      node _io_sample_out_bits_scores_1_T_3 = and(_io_sample_out_bits_scores_1_T_2, is_valid) @[TreePE.scala 82:123]
      node _io_sample_out_bits_scores_1_T_4 = eq(UInt<1>("h1"), offset) @[TreePE.scala 82:141]
      node _io_sample_out_bits_scores_1_T_5 = and(_io_sample_out_bits_scores_1_T_3, _io_sample_out_bits_scores_1_T_4) @[TreePE.scala 82:134]
      node _io_sample_out_bits_scores_1_T_6 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 82:190]
      node _io_sample_out_bits_scores_1_T_7 = mux(_io_sample_out_bits_scores_1_T_5, _io_sample_out_bits_scores_1_T_6, UInt<16>("h0")) @[TreePE.scala 82:64]
      node _io_sample_out_bits_scores_1_T_8 = asFixedPoint(_io_sample_out_bits_scores_1_T_7, 8) @[TreePE.scala 82:217]
      node _io_sample_out_bits_scores_1_T_9 = add(scores_bits[1], _io_sample_out_bits_scores_1_T_8) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_1_T_10 = tail(_io_sample_out_bits_scores_1_T_9, 1) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_1_T_11 = asFixedPoint(_io_sample_out_bits_scores_1_T_10, 8) @[TreePE.scala 82:58]
      io.sample_out.bits.scores[1] <= _io_sample_out_bits_scores_1_T_11 @[TreePE.scala 82:40]
      reg io_sample_out_bits_scores_2_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_scores_2_REG) @[TreePE.scala 82:74]
      io_sample_out_bits_scores_2_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 82:74]
      node _io_sample_out_bits_scores_2_T = eq(io_sample_out_bits_scores_2_REG, UInt<1>("h0")) @[TreePE.scala 82:66]
      node _io_sample_out_bits_scores_2_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 82:111]
      node _io_sample_out_bits_scores_2_T_2 = and(_io_sample_out_bits_scores_2_T, _io_sample_out_bits_scores_2_T_1) @[TreePE.scala 82:103]
      node _io_sample_out_bits_scores_2_T_3 = and(_io_sample_out_bits_scores_2_T_2, is_valid) @[TreePE.scala 82:123]
      node _io_sample_out_bits_scores_2_T_4 = eq(UInt<2>("h2"), offset) @[TreePE.scala 82:141]
      node _io_sample_out_bits_scores_2_T_5 = and(_io_sample_out_bits_scores_2_T_3, _io_sample_out_bits_scores_2_T_4) @[TreePE.scala 82:134]
      node _io_sample_out_bits_scores_2_T_6 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 82:190]
      node _io_sample_out_bits_scores_2_T_7 = mux(_io_sample_out_bits_scores_2_T_5, _io_sample_out_bits_scores_2_T_6, UInt<16>("h0")) @[TreePE.scala 82:64]
      node _io_sample_out_bits_scores_2_T_8 = asFixedPoint(_io_sample_out_bits_scores_2_T_7, 8) @[TreePE.scala 82:217]
      node _io_sample_out_bits_scores_2_T_9 = add(scores_bits[2], _io_sample_out_bits_scores_2_T_8) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_2_T_10 = tail(_io_sample_out_bits_scores_2_T_9, 1) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_2_T_11 = asFixedPoint(_io_sample_out_bits_scores_2_T_10, 8) @[TreePE.scala 82:58]
      io.sample_out.bits.scores[2] <= _io_sample_out_bits_scores_2_T_11 @[TreePE.scala 82:40]
      reg io_sample_out_bits_scores_3_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_scores_3_REG) @[TreePE.scala 82:74]
      io_sample_out_bits_scores_3_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 82:74]
      node _io_sample_out_bits_scores_3_T = eq(io_sample_out_bits_scores_3_REG, UInt<1>("h0")) @[TreePE.scala 82:66]
      node _io_sample_out_bits_scores_3_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 82:111]
      node _io_sample_out_bits_scores_3_T_2 = and(_io_sample_out_bits_scores_3_T, _io_sample_out_bits_scores_3_T_1) @[TreePE.scala 82:103]
      node _io_sample_out_bits_scores_3_T_3 = and(_io_sample_out_bits_scores_3_T_2, is_valid) @[TreePE.scala 82:123]
      node _io_sample_out_bits_scores_3_T_4 = eq(UInt<2>("h3"), offset) @[TreePE.scala 82:141]
      node _io_sample_out_bits_scores_3_T_5 = and(_io_sample_out_bits_scores_3_T_3, _io_sample_out_bits_scores_3_T_4) @[TreePE.scala 82:134]
      node _io_sample_out_bits_scores_3_T_6 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 82:190]
      node _io_sample_out_bits_scores_3_T_7 = mux(_io_sample_out_bits_scores_3_T_5, _io_sample_out_bits_scores_3_T_6, UInt<16>("h0")) @[TreePE.scala 82:64]
      node _io_sample_out_bits_scores_3_T_8 = asFixedPoint(_io_sample_out_bits_scores_3_T_7, 8) @[TreePE.scala 82:217]
      node _io_sample_out_bits_scores_3_T_9 = add(scores_bits[3], _io_sample_out_bits_scores_3_T_8) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_3_T_10 = tail(_io_sample_out_bits_scores_3_T_9, 1) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_3_T_11 = asFixedPoint(_io_sample_out_bits_scores_3_T_10, 8) @[TreePE.scala 82:58]
      io.sample_out.bits.scores[3] <= _io_sample_out_bits_scores_3_T_11 @[TreePE.scala 82:40]
      reg io_sample_out_bits_scores_4_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_scores_4_REG) @[TreePE.scala 82:74]
      io_sample_out_bits_scores_4_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 82:74]
      node _io_sample_out_bits_scores_4_T = eq(io_sample_out_bits_scores_4_REG, UInt<1>("h0")) @[TreePE.scala 82:66]
      node _io_sample_out_bits_scores_4_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 82:111]
      node _io_sample_out_bits_scores_4_T_2 = and(_io_sample_out_bits_scores_4_T, _io_sample_out_bits_scores_4_T_1) @[TreePE.scala 82:103]
      node _io_sample_out_bits_scores_4_T_3 = and(_io_sample_out_bits_scores_4_T_2, is_valid) @[TreePE.scala 82:123]
      node _io_sample_out_bits_scores_4_T_4 = eq(UInt<3>("h4"), offset) @[TreePE.scala 82:141]
      node _io_sample_out_bits_scores_4_T_5 = and(_io_sample_out_bits_scores_4_T_3, _io_sample_out_bits_scores_4_T_4) @[TreePE.scala 82:134]
      node _io_sample_out_bits_scores_4_T_6 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 82:190]
      node _io_sample_out_bits_scores_4_T_7 = mux(_io_sample_out_bits_scores_4_T_5, _io_sample_out_bits_scores_4_T_6, UInt<16>("h0")) @[TreePE.scala 82:64]
      node _io_sample_out_bits_scores_4_T_8 = asFixedPoint(_io_sample_out_bits_scores_4_T_7, 8) @[TreePE.scala 82:217]
      node _io_sample_out_bits_scores_4_T_9 = add(scores_bits[4], _io_sample_out_bits_scores_4_T_8) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_4_T_10 = tail(_io_sample_out_bits_scores_4_T_9, 1) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_4_T_11 = asFixedPoint(_io_sample_out_bits_scores_4_T_10, 8) @[TreePE.scala 82:58]
      io.sample_out.bits.scores[4] <= _io_sample_out_bits_scores_4_T_11 @[TreePE.scala 82:40]
      reg io_sample_out_bits_scores_5_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_scores_5_REG) @[TreePE.scala 82:74]
      io_sample_out_bits_scores_5_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 82:74]
      node _io_sample_out_bits_scores_5_T = eq(io_sample_out_bits_scores_5_REG, UInt<1>("h0")) @[TreePE.scala 82:66]
      node _io_sample_out_bits_scores_5_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 82:111]
      node _io_sample_out_bits_scores_5_T_2 = and(_io_sample_out_bits_scores_5_T, _io_sample_out_bits_scores_5_T_1) @[TreePE.scala 82:103]
      node _io_sample_out_bits_scores_5_T_3 = and(_io_sample_out_bits_scores_5_T_2, is_valid) @[TreePE.scala 82:123]
      node _io_sample_out_bits_scores_5_T_4 = eq(UInt<3>("h5"), offset) @[TreePE.scala 82:141]
      node _io_sample_out_bits_scores_5_T_5 = and(_io_sample_out_bits_scores_5_T_3, _io_sample_out_bits_scores_5_T_4) @[TreePE.scala 82:134]
      node _io_sample_out_bits_scores_5_T_6 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 82:190]
      node _io_sample_out_bits_scores_5_T_7 = mux(_io_sample_out_bits_scores_5_T_5, _io_sample_out_bits_scores_5_T_6, UInt<16>("h0")) @[TreePE.scala 82:64]
      node _io_sample_out_bits_scores_5_T_8 = asFixedPoint(_io_sample_out_bits_scores_5_T_7, 8) @[TreePE.scala 82:217]
      node _io_sample_out_bits_scores_5_T_9 = add(scores_bits[5], _io_sample_out_bits_scores_5_T_8) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_5_T_10 = tail(_io_sample_out_bits_scores_5_T_9, 1) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_5_T_11 = asFixedPoint(_io_sample_out_bits_scores_5_T_10, 8) @[TreePE.scala 82:58]
      io.sample_out.bits.scores[5] <= _io_sample_out_bits_scores_5_T_11 @[TreePE.scala 82:40]
      reg io_sample_out_bits_dest_REG : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_dest_REG) @[TreePE.scala 84:43]
      io_sample_out_bits_dest_REG <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 84:43]
      node _io_sample_out_bits_dest_T = eq(io_sample_out_bits_dest_REG, UInt<1>("h1")) @[TreePE.scala 84:69]
      io.sample_out.bits.dest <= _io_sample_out_bits_dest_T @[TreePE.scala 84:33]
      reg io_sample_out_bits_last_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_last_REG) @[TreePE.scala 85:43]
      io_sample_out_bits_last_REG <= queue.io.deq.bits.last @[TreePE.scala 85:43]
      io.sample_out.bits.last <= io_sample_out_bits_last_REG @[TreePE.scala 85:33]
    else :
      io.sample_out.bits.clock_cycles is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.last is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.dest is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[0] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[1] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[2] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[3] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[4] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[0] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[1] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[2] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[3] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[4] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[5] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.tree_to_exec is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.search_for_root is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.shift is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.offset is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[0] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[1] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[2] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[3] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[4] is invalid @[TreePE.scala 88:26]
      io.sample_out.valid <= UInt<1>("h0") @[TreePE.scala 89:27]
    queue.io.deq.ready <= io.sample_out.ready @[TreePE.scala 92:17]

  module TreePEwithBRAM_16 :
    input clock : Clock
    input reset : Reset
    output pe_io : { flip sample_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, flip mem : { flip enable_1 : UInt<1>, flip write_1 : UInt<1>, flip addr_1 : UInt<13>, flip dataIn_1 : UInt<64>, dataOut_1 : UInt<64>, flip enable_2 : UInt<1>, flip write_2 : UInt<1>, flip addr_2 : UInt<13>, flip dataIn_2 : UInt<64>, dataOut_2 : UInt<64>}, sample_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}}

    inst pe of TreePE_16 @[TreePE.scala 104:18]
    pe.clock <= clock
    pe.reset <= reset
    pe_io.sample_out.bits <= pe.io.sample_out.bits @[TreePE.scala 106:9]
    pe_io.sample_out.valid <= pe.io.sample_out.valid @[TreePE.scala 106:9]
    pe.io.sample_out.ready <= pe_io.sample_out.ready @[TreePE.scala 106:9]
    pe.io.mem <= pe_io.mem @[TreePE.scala 106:9]
    pe.io.sample_in <= pe_io.sample_in @[TreePE.scala 106:9]

  module Queue_40 :
    input clock : Clock
    input reset : Reset
    output io : { flip enq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, deq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, count : UInt<2>}

    cmem ram : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>} [3] @[Decoupled.scala 275:95]
    reg enq_ptr_value : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[Counter.scala 61:40]
    reg deq_ptr_value : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[Counter.scala 61:40]
    reg maybe_full : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[Decoupled.scala 278:27]
    node ptr_match = eq(enq_ptr_value, deq_ptr_value) @[Decoupled.scala 279:33]
    node _empty_T = eq(maybe_full, UInt<1>("h0")) @[Decoupled.scala 280:28]
    node empty = and(ptr_match, _empty_T) @[Decoupled.scala 280:25]
    node full = and(ptr_match, maybe_full) @[Decoupled.scala 281:24]
    node _do_enq_T = and(io.enq.ready, io.enq.valid) @[Decoupled.scala 52:35]
    wire do_enq : UInt<1>
    do_enq <= _do_enq_T
    node _do_deq_T = and(io.deq.ready, io.deq.valid) @[Decoupled.scala 52:35]
    wire do_deq : UInt<1>
    do_deq <= _do_deq_T
    when do_enq : @[Decoupled.scala 288:16]
      infer mport MPORT = ram[enq_ptr_value], clock @[Decoupled.scala 289:8]
      MPORT <= io.enq.bits @[Decoupled.scala 289:24]
      node wrap = eq(enq_ptr_value, UInt<2>("h2")) @[Counter.scala 73:24]
      node _value_T = add(enq_ptr_value, UInt<1>("h1")) @[Counter.scala 77:24]
      node _value_T_1 = tail(_value_T, 1) @[Counter.scala 77:24]
      enq_ptr_value <= _value_T_1 @[Counter.scala 77:15]
      when wrap : @[Counter.scala 87:20]
        enq_ptr_value <= UInt<1>("h0") @[Counter.scala 87:28]
    when do_deq : @[Decoupled.scala 292:16]
      node wrap_1 = eq(deq_ptr_value, UInt<2>("h2")) @[Counter.scala 73:24]
      node _value_T_2 = add(deq_ptr_value, UInt<1>("h1")) @[Counter.scala 77:24]
      node _value_T_3 = tail(_value_T_2, 1) @[Counter.scala 77:24]
      deq_ptr_value <= _value_T_3 @[Counter.scala 77:15]
      when wrap_1 : @[Counter.scala 87:20]
        deq_ptr_value <= UInt<1>("h0") @[Counter.scala 87:28]
    node _T = neq(do_enq, do_deq) @[Decoupled.scala 295:15]
    when _T : @[Decoupled.scala 295:27]
      maybe_full <= do_enq @[Decoupled.scala 296:16]
    when UInt<1>("h0") : @[Decoupled.scala 298:15]
      enq_ptr_value <= UInt<1>("h0") @[Counter.scala 98:11]
      deq_ptr_value <= UInt<1>("h0") @[Counter.scala 98:11]
      maybe_full <= UInt<1>("h0") @[Decoupled.scala 301:16]
    node _io_deq_valid_T = eq(empty, UInt<1>("h0")) @[Decoupled.scala 304:19]
    io.deq.valid <= _io_deq_valid_T @[Decoupled.scala 304:16]
    node _io_enq_ready_T = eq(full, UInt<1>("h0")) @[Decoupled.scala 305:19]
    io.enq.ready <= _io_enq_ready_T @[Decoupled.scala 305:16]
    infer mport io_deq_bits_MPORT = ram[deq_ptr_value], clock @[Decoupled.scala 312:23]
    io.deq.bits <= io_deq_bits_MPORT @[Decoupled.scala 312:17]
    node _ptr_diff_T = sub(enq_ptr_value, deq_ptr_value) @[Decoupled.scala 328:32]
    node ptr_diff = tail(_ptr_diff_T, 1) @[Decoupled.scala 328:32]
    node _io_count_T = mux(maybe_full, UInt<2>("h3"), UInt<1>("h0")) @[Decoupled.scala 335:10]
    node _io_count_T_1 = gt(deq_ptr_value, enq_ptr_value) @[Decoupled.scala 336:25]
    node _io_count_T_2 = add(UInt<2>("h3"), ptr_diff) @[Decoupled.scala 336:57]
    node _io_count_T_3 = tail(_io_count_T_2, 1) @[Decoupled.scala 336:57]
    node _io_count_T_4 = mux(_io_count_T_1, _io_count_T_3, ptr_diff) @[Decoupled.scala 336:10]
    node _io_count_T_5 = mux(ptr_match, _io_count_T, _io_count_T_4) @[Decoupled.scala 333:20]
    io.count <= _io_count_T_5 @[Decoupled.scala 333:14]

  module TreePE_17 :
    input clock : Clock
    input reset : Reset
    output io : { flip sample_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, flip mem : { flip enable_1 : UInt<1>, flip write_1 : UInt<1>, flip addr_1 : UInt<13>, flip dataIn_1 : UInt<64>, dataOut_1 : UInt<64>, flip enable_2 : UInt<1>, flip write_2 : UInt<1>, flip addr_2 : UInt<13>, flip dataIn_2 : UInt<64>, dataOut_2 : UInt<64>}, sample_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}}

    inst queue of Queue_40 @[Decoupled.scala 377:21]
    queue.clock <= clock
    queue.reset <= reset
    queue.io.enq.valid <= io.sample_in.valid @[Decoupled.scala 379:22]
    queue.io.enq.bits.clock_cycles <= io.sample_in.bits.clock_cycles @[Decoupled.scala 380:21]
    queue.io.enq.bits.last <= io.sample_in.bits.last @[Decoupled.scala 380:21]
    queue.io.enq.bits.dest <= io.sample_in.bits.dest @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[0] <= io.sample_in.bits.weights[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[1] <= io.sample_in.bits.weights[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[2] <= io.sample_in.bits.weights[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[3] <= io.sample_in.bits.weights[3] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[4] <= io.sample_in.bits.weights[4] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[0] <= io.sample_in.bits.scores[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[1] <= io.sample_in.bits.scores[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[2] <= io.sample_in.bits.scores[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[3] <= io.sample_in.bits.scores[3] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[4] <= io.sample_in.bits.scores[4] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[5] <= io.sample_in.bits.scores[5] @[Decoupled.scala 380:21]
    queue.io.enq.bits.tree_to_exec <= io.sample_in.bits.tree_to_exec @[Decoupled.scala 380:21]
    queue.io.enq.bits.search_for_root <= io.sample_in.bits.search_for_root @[Decoupled.scala 380:21]
    queue.io.enq.bits.shift <= io.sample_in.bits.shift @[Decoupled.scala 380:21]
    queue.io.enq.bits.offset <= io.sample_in.bits.offset @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[0] <= io.sample_in.bits.features[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[1] <= io.sample_in.bits.features[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[2] <= io.sample_in.bits.features[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[3] <= io.sample_in.bits.features[3] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[4] <= io.sample_in.bits.features[4] @[Decoupled.scala 380:21]
    io.sample_in.ready <= queue.io.enq.ready @[Decoupled.scala 381:17]
    io.mem.enable_1 <= UInt<1>("h1") @[TreePE.scala 23:21]
    io.mem.addr_1 <= queue.io.deq.bits.offset @[TreePE.scala 24:19]
    io.mem.write_1 <= UInt<1>("h0") @[TreePE.scala 25:20]
    io.mem.dataIn_1 <= UInt<1>("h0") @[TreePE.scala 26:21]
    io.mem.enable_2 is invalid @[TreePE.scala 28:21]
    io.mem.addr_2 is invalid @[TreePE.scala 29:19]
    io.mem.write_2 is invalid @[TreePE.scala 30:20]
    io.mem.dataIn_2 is invalid @[TreePE.scala 31:21]
    reg REG : UInt<1>, clock with :
      reset => (UInt<1>("h0"), REG) @[TreePE.scala 35:17]
    REG <= queue.io.deq.valid @[TreePE.scala 35:17]
    when REG : @[TreePE.scala 35:31]
      node attr_id = bits(io.mem.dataOut_1, 34, 32) @[TreePE.scala 37:37]
      node threshold = bits(io.mem.dataOut_1, 15, 0) @[TreePE.scala 38:39]
      node nodeRA = bits(io.mem.dataOut_1, 31, 16) @[TreePE.scala 39:36]
      node leftChildInfo = bits(io.mem.dataOut_1, 44, 35) @[TreePE.scala 40:43]
      node rightChildInfo = bits(io.mem.dataOut_1, 54, 45) @[TreePE.scala 41:44]
      node leftChildType = bits(io.mem.dataOut_1, 55, 55) @[TreePE.scala 42:43]
      node rightChildType = bits(io.mem.dataOut_1, 56, 56) @[TreePE.scala 43:44]
      node is_valid = bits(io.mem.dataOut_1, 57, 57) @[TreePE.scala 44:38]
      node depth_indicator = bits(io.mem.dataOut_1, 60, 58) @[TreePE.scala 45:45]
      reg REG_1 : Fixed<32><<16>>[5], clock with :
        reset => (UInt<1>("h0"), REG_1) @[TreePE.scala 47:45]
      REG_1 <= queue.io.deq.bits.features @[TreePE.scala 47:45]
      io.sample_out.bits.features <= REG_1 @[TreePE.scala 47:35]
      reg REG_2 : Fixed<16><<8>>[5], clock with :
        reset => (UInt<1>("h0"), REG_2) @[TreePE.scala 48:44]
      REG_2 <= queue.io.deq.bits.weights @[TreePE.scala 48:44]
      io.sample_out.bits.weights <= REG_2 @[TreePE.scala 48:34]
      reg io_sample_out_bits_tree_to_exec_REG : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_tree_to_exec_REG) @[TreePE.scala 49:49]
      io_sample_out_bits_tree_to_exec_REG <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 49:49]
      io.sample_out.bits.tree_to_exec <= io_sample_out_bits_tree_to_exec_REG @[TreePE.scala 49:39]
      reg REG_3 : Fixed<16><<8>>[6], clock with :
        reset => (UInt<1>("h0"), REG_3) @[TreePE.scala 50:43]
      REG_3 <= queue.io.deq.bits.scores @[TreePE.scala 50:43]
      io.sample_out.bits.scores <= REG_3 @[TreePE.scala 50:33]
      io.sample_out.valid <= UInt<1>("h1") @[TreePE.scala 51:27]
      reg io_sample_out_bits_clock_cycles_REG : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_clock_cycles_REG) @[TreePE.scala 52:49]
      io_sample_out_bits_clock_cycles_REG <= queue.io.deq.bits.clock_cycles @[TreePE.scala 52:49]
      io.sample_out.bits.clock_cycles <= io_sample_out_bits_clock_cycles_REG @[TreePE.scala 52:39]
      wire offset : UInt<10> @[TreePE.scala 71:26]
      wire shift : UInt<1> @[TreePE.scala 72:25]
      reg features_bits : Fixed<32><<16>>[5], clock with :
        reset => (UInt<1>("h0"), features_bits) @[TreePE.scala 73:36]
      features_bits <= queue.io.deq.bits.features @[TreePE.scala 73:36]
      reg scores_bits : Fixed<16><<8>>[6], clock with :
        reset => (UInt<1>("h0"), scores_bits) @[TreePE.scala 74:34]
      scores_bits <= queue.io.deq.bits.scores @[TreePE.scala 74:34]
      reg weights_bits : Fixed<16><<8>>[5], clock with :
        reset => (UInt<1>("h0"), weights_bits) @[TreePE.scala 75:35]
      weights_bits <= queue.io.deq.bits.weights @[TreePE.scala 75:35]
      node _shift_T = asFixedPoint(threshold, 8) @[TreePE.scala 76:69]
      node _shift_T_1 = lt(features_bits[attr_id], _shift_T) @[TreePE.scala 76:45]
      node _shift_T_2 = mux(_shift_T_1, leftChildType, rightChildType) @[TreePE.scala 76:21]
      shift <= _shift_T_2 @[TreePE.scala 76:15]
      node _offset_T = asFixedPoint(threshold, 8) @[TreePE.scala 77:70]
      node _offset_T_1 = lt(features_bits[attr_id], _offset_T) @[TreePE.scala 77:46]
      node _offset_T_2 = mux(_offset_T_1, leftChildInfo, rightChildInfo) @[TreePE.scala 77:22]
      offset <= _offset_T_2 @[TreePE.scala 77:16]
      node _io_sample_out_bits_offset_T = eq(shift, UInt<1>("h0")) @[TreePE.scala 78:48]
      reg io_sample_out_bits_offset_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_offset_REG) @[TreePE.scala 78:70]
      io_sample_out_bits_offset_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 78:70]
      node _io_sample_out_bits_offset_T_1 = or(_io_sample_out_bits_offset_T, io_sample_out_bits_offset_REG) @[TreePE.scala 78:60]
      reg io_sample_out_bits_offset_REG_1 : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_offset_REG_1) @[TreePE.scala 78:106]
      io_sample_out_bits_offset_REG_1 <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 78:106]
      node _io_sample_out_bits_offset_T_2 = mux(_io_sample_out_bits_offset_T_1, io_sample_out_bits_offset_REG_1, offset) @[TreePE.scala 78:41]
      io.sample_out.bits.offset <= _io_sample_out_bits_offset_T_2 @[TreePE.scala 78:35]
      io.sample_out.bits.shift <= UInt<1>("h0") @[TreePE.scala 79:34]
      node _io_sample_out_bits_search_for_root_T = eq(shift, UInt<1>("h0")) @[TreePE.scala 80:47]
      reg io_sample_out_bits_search_for_root_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_search_for_root_REG) @[TreePE.scala 80:64]
      io_sample_out_bits_search_for_root_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 80:64]
      node _io_sample_out_bits_search_for_root_T_1 = or(_io_sample_out_bits_search_for_root_T, io_sample_out_bits_search_for_root_REG) @[TreePE.scala 80:54]
      io.sample_out.bits.search_for_root <= _io_sample_out_bits_search_for_root_T_1 @[TreePE.scala 80:44]
      reg io_sample_out_bits_scores_0_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_scores_0_REG) @[TreePE.scala 82:74]
      io_sample_out_bits_scores_0_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 82:74]
      node _io_sample_out_bits_scores_0_T = eq(io_sample_out_bits_scores_0_REG, UInt<1>("h0")) @[TreePE.scala 82:66]
      node _io_sample_out_bits_scores_0_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 82:111]
      node _io_sample_out_bits_scores_0_T_2 = and(_io_sample_out_bits_scores_0_T, _io_sample_out_bits_scores_0_T_1) @[TreePE.scala 82:103]
      node _io_sample_out_bits_scores_0_T_3 = and(_io_sample_out_bits_scores_0_T_2, is_valid) @[TreePE.scala 82:123]
      node _io_sample_out_bits_scores_0_T_4 = eq(UInt<1>("h0"), offset) @[TreePE.scala 82:141]
      node _io_sample_out_bits_scores_0_T_5 = and(_io_sample_out_bits_scores_0_T_3, _io_sample_out_bits_scores_0_T_4) @[TreePE.scala 82:134]
      node _io_sample_out_bits_scores_0_T_6 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 82:190]
      node _io_sample_out_bits_scores_0_T_7 = mux(_io_sample_out_bits_scores_0_T_5, _io_sample_out_bits_scores_0_T_6, UInt<16>("h0")) @[TreePE.scala 82:64]
      node _io_sample_out_bits_scores_0_T_8 = asFixedPoint(_io_sample_out_bits_scores_0_T_7, 8) @[TreePE.scala 82:217]
      node _io_sample_out_bits_scores_0_T_9 = add(scores_bits[0], _io_sample_out_bits_scores_0_T_8) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_0_T_10 = tail(_io_sample_out_bits_scores_0_T_9, 1) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_0_T_11 = asFixedPoint(_io_sample_out_bits_scores_0_T_10, 8) @[TreePE.scala 82:58]
      io.sample_out.bits.scores[0] <= _io_sample_out_bits_scores_0_T_11 @[TreePE.scala 82:40]
      reg io_sample_out_bits_scores_1_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_scores_1_REG) @[TreePE.scala 82:74]
      io_sample_out_bits_scores_1_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 82:74]
      node _io_sample_out_bits_scores_1_T = eq(io_sample_out_bits_scores_1_REG, UInt<1>("h0")) @[TreePE.scala 82:66]
      node _io_sample_out_bits_scores_1_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 82:111]
      node _io_sample_out_bits_scores_1_T_2 = and(_io_sample_out_bits_scores_1_T, _io_sample_out_bits_scores_1_T_1) @[TreePE.scala 82:103]
      node _io_sample_out_bits_scores_1_T_3 = and(_io_sample_out_bits_scores_1_T_2, is_valid) @[TreePE.scala 82:123]
      node _io_sample_out_bits_scores_1_T_4 = eq(UInt<1>("h1"), offset) @[TreePE.scala 82:141]
      node _io_sample_out_bits_scores_1_T_5 = and(_io_sample_out_bits_scores_1_T_3, _io_sample_out_bits_scores_1_T_4) @[TreePE.scala 82:134]
      node _io_sample_out_bits_scores_1_T_6 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 82:190]
      node _io_sample_out_bits_scores_1_T_7 = mux(_io_sample_out_bits_scores_1_T_5, _io_sample_out_bits_scores_1_T_6, UInt<16>("h0")) @[TreePE.scala 82:64]
      node _io_sample_out_bits_scores_1_T_8 = asFixedPoint(_io_sample_out_bits_scores_1_T_7, 8) @[TreePE.scala 82:217]
      node _io_sample_out_bits_scores_1_T_9 = add(scores_bits[1], _io_sample_out_bits_scores_1_T_8) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_1_T_10 = tail(_io_sample_out_bits_scores_1_T_9, 1) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_1_T_11 = asFixedPoint(_io_sample_out_bits_scores_1_T_10, 8) @[TreePE.scala 82:58]
      io.sample_out.bits.scores[1] <= _io_sample_out_bits_scores_1_T_11 @[TreePE.scala 82:40]
      reg io_sample_out_bits_scores_2_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_scores_2_REG) @[TreePE.scala 82:74]
      io_sample_out_bits_scores_2_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 82:74]
      node _io_sample_out_bits_scores_2_T = eq(io_sample_out_bits_scores_2_REG, UInt<1>("h0")) @[TreePE.scala 82:66]
      node _io_sample_out_bits_scores_2_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 82:111]
      node _io_sample_out_bits_scores_2_T_2 = and(_io_sample_out_bits_scores_2_T, _io_sample_out_bits_scores_2_T_1) @[TreePE.scala 82:103]
      node _io_sample_out_bits_scores_2_T_3 = and(_io_sample_out_bits_scores_2_T_2, is_valid) @[TreePE.scala 82:123]
      node _io_sample_out_bits_scores_2_T_4 = eq(UInt<2>("h2"), offset) @[TreePE.scala 82:141]
      node _io_sample_out_bits_scores_2_T_5 = and(_io_sample_out_bits_scores_2_T_3, _io_sample_out_bits_scores_2_T_4) @[TreePE.scala 82:134]
      node _io_sample_out_bits_scores_2_T_6 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 82:190]
      node _io_sample_out_bits_scores_2_T_7 = mux(_io_sample_out_bits_scores_2_T_5, _io_sample_out_bits_scores_2_T_6, UInt<16>("h0")) @[TreePE.scala 82:64]
      node _io_sample_out_bits_scores_2_T_8 = asFixedPoint(_io_sample_out_bits_scores_2_T_7, 8) @[TreePE.scala 82:217]
      node _io_sample_out_bits_scores_2_T_9 = add(scores_bits[2], _io_sample_out_bits_scores_2_T_8) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_2_T_10 = tail(_io_sample_out_bits_scores_2_T_9, 1) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_2_T_11 = asFixedPoint(_io_sample_out_bits_scores_2_T_10, 8) @[TreePE.scala 82:58]
      io.sample_out.bits.scores[2] <= _io_sample_out_bits_scores_2_T_11 @[TreePE.scala 82:40]
      reg io_sample_out_bits_scores_3_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_scores_3_REG) @[TreePE.scala 82:74]
      io_sample_out_bits_scores_3_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 82:74]
      node _io_sample_out_bits_scores_3_T = eq(io_sample_out_bits_scores_3_REG, UInt<1>("h0")) @[TreePE.scala 82:66]
      node _io_sample_out_bits_scores_3_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 82:111]
      node _io_sample_out_bits_scores_3_T_2 = and(_io_sample_out_bits_scores_3_T, _io_sample_out_bits_scores_3_T_1) @[TreePE.scala 82:103]
      node _io_sample_out_bits_scores_3_T_3 = and(_io_sample_out_bits_scores_3_T_2, is_valid) @[TreePE.scala 82:123]
      node _io_sample_out_bits_scores_3_T_4 = eq(UInt<2>("h3"), offset) @[TreePE.scala 82:141]
      node _io_sample_out_bits_scores_3_T_5 = and(_io_sample_out_bits_scores_3_T_3, _io_sample_out_bits_scores_3_T_4) @[TreePE.scala 82:134]
      node _io_sample_out_bits_scores_3_T_6 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 82:190]
      node _io_sample_out_bits_scores_3_T_7 = mux(_io_sample_out_bits_scores_3_T_5, _io_sample_out_bits_scores_3_T_6, UInt<16>("h0")) @[TreePE.scala 82:64]
      node _io_sample_out_bits_scores_3_T_8 = asFixedPoint(_io_sample_out_bits_scores_3_T_7, 8) @[TreePE.scala 82:217]
      node _io_sample_out_bits_scores_3_T_9 = add(scores_bits[3], _io_sample_out_bits_scores_3_T_8) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_3_T_10 = tail(_io_sample_out_bits_scores_3_T_9, 1) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_3_T_11 = asFixedPoint(_io_sample_out_bits_scores_3_T_10, 8) @[TreePE.scala 82:58]
      io.sample_out.bits.scores[3] <= _io_sample_out_bits_scores_3_T_11 @[TreePE.scala 82:40]
      reg io_sample_out_bits_scores_4_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_scores_4_REG) @[TreePE.scala 82:74]
      io_sample_out_bits_scores_4_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 82:74]
      node _io_sample_out_bits_scores_4_T = eq(io_sample_out_bits_scores_4_REG, UInt<1>("h0")) @[TreePE.scala 82:66]
      node _io_sample_out_bits_scores_4_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 82:111]
      node _io_sample_out_bits_scores_4_T_2 = and(_io_sample_out_bits_scores_4_T, _io_sample_out_bits_scores_4_T_1) @[TreePE.scala 82:103]
      node _io_sample_out_bits_scores_4_T_3 = and(_io_sample_out_bits_scores_4_T_2, is_valid) @[TreePE.scala 82:123]
      node _io_sample_out_bits_scores_4_T_4 = eq(UInt<3>("h4"), offset) @[TreePE.scala 82:141]
      node _io_sample_out_bits_scores_4_T_5 = and(_io_sample_out_bits_scores_4_T_3, _io_sample_out_bits_scores_4_T_4) @[TreePE.scala 82:134]
      node _io_sample_out_bits_scores_4_T_6 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 82:190]
      node _io_sample_out_bits_scores_4_T_7 = mux(_io_sample_out_bits_scores_4_T_5, _io_sample_out_bits_scores_4_T_6, UInt<16>("h0")) @[TreePE.scala 82:64]
      node _io_sample_out_bits_scores_4_T_8 = asFixedPoint(_io_sample_out_bits_scores_4_T_7, 8) @[TreePE.scala 82:217]
      node _io_sample_out_bits_scores_4_T_9 = add(scores_bits[4], _io_sample_out_bits_scores_4_T_8) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_4_T_10 = tail(_io_sample_out_bits_scores_4_T_9, 1) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_4_T_11 = asFixedPoint(_io_sample_out_bits_scores_4_T_10, 8) @[TreePE.scala 82:58]
      io.sample_out.bits.scores[4] <= _io_sample_out_bits_scores_4_T_11 @[TreePE.scala 82:40]
      reg io_sample_out_bits_scores_5_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_scores_5_REG) @[TreePE.scala 82:74]
      io_sample_out_bits_scores_5_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 82:74]
      node _io_sample_out_bits_scores_5_T = eq(io_sample_out_bits_scores_5_REG, UInt<1>("h0")) @[TreePE.scala 82:66]
      node _io_sample_out_bits_scores_5_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 82:111]
      node _io_sample_out_bits_scores_5_T_2 = and(_io_sample_out_bits_scores_5_T, _io_sample_out_bits_scores_5_T_1) @[TreePE.scala 82:103]
      node _io_sample_out_bits_scores_5_T_3 = and(_io_sample_out_bits_scores_5_T_2, is_valid) @[TreePE.scala 82:123]
      node _io_sample_out_bits_scores_5_T_4 = eq(UInt<3>("h5"), offset) @[TreePE.scala 82:141]
      node _io_sample_out_bits_scores_5_T_5 = and(_io_sample_out_bits_scores_5_T_3, _io_sample_out_bits_scores_5_T_4) @[TreePE.scala 82:134]
      node _io_sample_out_bits_scores_5_T_6 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 82:190]
      node _io_sample_out_bits_scores_5_T_7 = mux(_io_sample_out_bits_scores_5_T_5, _io_sample_out_bits_scores_5_T_6, UInt<16>("h0")) @[TreePE.scala 82:64]
      node _io_sample_out_bits_scores_5_T_8 = asFixedPoint(_io_sample_out_bits_scores_5_T_7, 8) @[TreePE.scala 82:217]
      node _io_sample_out_bits_scores_5_T_9 = add(scores_bits[5], _io_sample_out_bits_scores_5_T_8) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_5_T_10 = tail(_io_sample_out_bits_scores_5_T_9, 1) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_5_T_11 = asFixedPoint(_io_sample_out_bits_scores_5_T_10, 8) @[TreePE.scala 82:58]
      io.sample_out.bits.scores[5] <= _io_sample_out_bits_scores_5_T_11 @[TreePE.scala 82:40]
      reg io_sample_out_bits_dest_REG : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_dest_REG) @[TreePE.scala 84:43]
      io_sample_out_bits_dest_REG <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 84:43]
      node _io_sample_out_bits_dest_T = eq(io_sample_out_bits_dest_REG, UInt<1>("h1")) @[TreePE.scala 84:69]
      io.sample_out.bits.dest <= _io_sample_out_bits_dest_T @[TreePE.scala 84:33]
      reg io_sample_out_bits_last_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_last_REG) @[TreePE.scala 85:43]
      io_sample_out_bits_last_REG <= queue.io.deq.bits.last @[TreePE.scala 85:43]
      io.sample_out.bits.last <= io_sample_out_bits_last_REG @[TreePE.scala 85:33]
    else :
      io.sample_out.bits.clock_cycles is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.last is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.dest is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[0] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[1] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[2] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[3] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[4] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[0] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[1] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[2] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[3] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[4] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[5] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.tree_to_exec is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.search_for_root is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.shift is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.offset is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[0] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[1] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[2] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[3] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[4] is invalid @[TreePE.scala 88:26]
      io.sample_out.valid <= UInt<1>("h0") @[TreePE.scala 89:27]
    queue.io.deq.ready <= io.sample_out.ready @[TreePE.scala 92:17]

  module TreePEwithBRAM_17 :
    input clock : Clock
    input reset : Reset
    output pe_io : { flip sample_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, flip mem : { flip enable_1 : UInt<1>, flip write_1 : UInt<1>, flip addr_1 : UInt<13>, flip dataIn_1 : UInt<64>, dataOut_1 : UInt<64>, flip enable_2 : UInt<1>, flip write_2 : UInt<1>, flip addr_2 : UInt<13>, flip dataIn_2 : UInt<64>, dataOut_2 : UInt<64>}, sample_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}}

    inst pe of TreePE_17 @[TreePE.scala 104:18]
    pe.clock <= clock
    pe.reset <= reset
    pe_io.sample_out.bits <= pe.io.sample_out.bits @[TreePE.scala 106:9]
    pe_io.sample_out.valid <= pe.io.sample_out.valid @[TreePE.scala 106:9]
    pe.io.sample_out.ready <= pe_io.sample_out.ready @[TreePE.scala 106:9]
    pe.io.mem <= pe_io.mem @[TreePE.scala 106:9]
    pe.io.sample_in <= pe_io.sample_in @[TreePE.scala 106:9]

  module Queue_41 :
    input clock : Clock
    input reset : Reset
    output io : { flip enq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, deq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, count : UInt<2>}

    cmem ram : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>} [3] @[Decoupled.scala 275:95]
    reg enq_ptr_value : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[Counter.scala 61:40]
    reg deq_ptr_value : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[Counter.scala 61:40]
    reg maybe_full : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[Decoupled.scala 278:27]
    node ptr_match = eq(enq_ptr_value, deq_ptr_value) @[Decoupled.scala 279:33]
    node _empty_T = eq(maybe_full, UInt<1>("h0")) @[Decoupled.scala 280:28]
    node empty = and(ptr_match, _empty_T) @[Decoupled.scala 280:25]
    node full = and(ptr_match, maybe_full) @[Decoupled.scala 281:24]
    node _do_enq_T = and(io.enq.ready, io.enq.valid) @[Decoupled.scala 52:35]
    wire do_enq : UInt<1>
    do_enq <= _do_enq_T
    node _do_deq_T = and(io.deq.ready, io.deq.valid) @[Decoupled.scala 52:35]
    wire do_deq : UInt<1>
    do_deq <= _do_deq_T
    when do_enq : @[Decoupled.scala 288:16]
      infer mport MPORT = ram[enq_ptr_value], clock @[Decoupled.scala 289:8]
      MPORT <= io.enq.bits @[Decoupled.scala 289:24]
      node wrap = eq(enq_ptr_value, UInt<2>("h2")) @[Counter.scala 73:24]
      node _value_T = add(enq_ptr_value, UInt<1>("h1")) @[Counter.scala 77:24]
      node _value_T_1 = tail(_value_T, 1) @[Counter.scala 77:24]
      enq_ptr_value <= _value_T_1 @[Counter.scala 77:15]
      when wrap : @[Counter.scala 87:20]
        enq_ptr_value <= UInt<1>("h0") @[Counter.scala 87:28]
    when do_deq : @[Decoupled.scala 292:16]
      node wrap_1 = eq(deq_ptr_value, UInt<2>("h2")) @[Counter.scala 73:24]
      node _value_T_2 = add(deq_ptr_value, UInt<1>("h1")) @[Counter.scala 77:24]
      node _value_T_3 = tail(_value_T_2, 1) @[Counter.scala 77:24]
      deq_ptr_value <= _value_T_3 @[Counter.scala 77:15]
      when wrap_1 : @[Counter.scala 87:20]
        deq_ptr_value <= UInt<1>("h0") @[Counter.scala 87:28]
    node _T = neq(do_enq, do_deq) @[Decoupled.scala 295:15]
    when _T : @[Decoupled.scala 295:27]
      maybe_full <= do_enq @[Decoupled.scala 296:16]
    when UInt<1>("h0") : @[Decoupled.scala 298:15]
      enq_ptr_value <= UInt<1>("h0") @[Counter.scala 98:11]
      deq_ptr_value <= UInt<1>("h0") @[Counter.scala 98:11]
      maybe_full <= UInt<1>("h0") @[Decoupled.scala 301:16]
    node _io_deq_valid_T = eq(empty, UInt<1>("h0")) @[Decoupled.scala 304:19]
    io.deq.valid <= _io_deq_valid_T @[Decoupled.scala 304:16]
    node _io_enq_ready_T = eq(full, UInt<1>("h0")) @[Decoupled.scala 305:19]
    io.enq.ready <= _io_enq_ready_T @[Decoupled.scala 305:16]
    infer mport io_deq_bits_MPORT = ram[deq_ptr_value], clock @[Decoupled.scala 312:23]
    io.deq.bits <= io_deq_bits_MPORT @[Decoupled.scala 312:17]
    node _ptr_diff_T = sub(enq_ptr_value, deq_ptr_value) @[Decoupled.scala 328:32]
    node ptr_diff = tail(_ptr_diff_T, 1) @[Decoupled.scala 328:32]
    node _io_count_T = mux(maybe_full, UInt<2>("h3"), UInt<1>("h0")) @[Decoupled.scala 335:10]
    node _io_count_T_1 = gt(deq_ptr_value, enq_ptr_value) @[Decoupled.scala 336:25]
    node _io_count_T_2 = add(UInt<2>("h3"), ptr_diff) @[Decoupled.scala 336:57]
    node _io_count_T_3 = tail(_io_count_T_2, 1) @[Decoupled.scala 336:57]
    node _io_count_T_4 = mux(_io_count_T_1, _io_count_T_3, ptr_diff) @[Decoupled.scala 336:10]
    node _io_count_T_5 = mux(ptr_match, _io_count_T, _io_count_T_4) @[Decoupled.scala 333:20]
    io.count <= _io_count_T_5 @[Decoupled.scala 333:14]

  module TreePE_18 :
    input clock : Clock
    input reset : Reset
    output io : { flip sample_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, flip mem : { flip enable_1 : UInt<1>, flip write_1 : UInt<1>, flip addr_1 : UInt<13>, flip dataIn_1 : UInt<64>, dataOut_1 : UInt<64>, flip enable_2 : UInt<1>, flip write_2 : UInt<1>, flip addr_2 : UInt<13>, flip dataIn_2 : UInt<64>, dataOut_2 : UInt<64>}, sample_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}}

    inst queue of Queue_41 @[Decoupled.scala 377:21]
    queue.clock <= clock
    queue.reset <= reset
    queue.io.enq.valid <= io.sample_in.valid @[Decoupled.scala 379:22]
    queue.io.enq.bits.clock_cycles <= io.sample_in.bits.clock_cycles @[Decoupled.scala 380:21]
    queue.io.enq.bits.last <= io.sample_in.bits.last @[Decoupled.scala 380:21]
    queue.io.enq.bits.dest <= io.sample_in.bits.dest @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[0] <= io.sample_in.bits.weights[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[1] <= io.sample_in.bits.weights[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[2] <= io.sample_in.bits.weights[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[3] <= io.sample_in.bits.weights[3] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[4] <= io.sample_in.bits.weights[4] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[0] <= io.sample_in.bits.scores[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[1] <= io.sample_in.bits.scores[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[2] <= io.sample_in.bits.scores[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[3] <= io.sample_in.bits.scores[3] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[4] <= io.sample_in.bits.scores[4] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[5] <= io.sample_in.bits.scores[5] @[Decoupled.scala 380:21]
    queue.io.enq.bits.tree_to_exec <= io.sample_in.bits.tree_to_exec @[Decoupled.scala 380:21]
    queue.io.enq.bits.search_for_root <= io.sample_in.bits.search_for_root @[Decoupled.scala 380:21]
    queue.io.enq.bits.shift <= io.sample_in.bits.shift @[Decoupled.scala 380:21]
    queue.io.enq.bits.offset <= io.sample_in.bits.offset @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[0] <= io.sample_in.bits.features[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[1] <= io.sample_in.bits.features[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[2] <= io.sample_in.bits.features[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[3] <= io.sample_in.bits.features[3] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[4] <= io.sample_in.bits.features[4] @[Decoupled.scala 380:21]
    io.sample_in.ready <= queue.io.enq.ready @[Decoupled.scala 381:17]
    io.mem.enable_1 <= UInt<1>("h1") @[TreePE.scala 23:21]
    io.mem.addr_1 <= queue.io.deq.bits.offset @[TreePE.scala 24:19]
    io.mem.write_1 <= UInt<1>("h0") @[TreePE.scala 25:20]
    io.mem.dataIn_1 <= UInt<1>("h0") @[TreePE.scala 26:21]
    io.mem.enable_2 is invalid @[TreePE.scala 28:21]
    io.mem.addr_2 is invalid @[TreePE.scala 29:19]
    io.mem.write_2 is invalid @[TreePE.scala 30:20]
    io.mem.dataIn_2 is invalid @[TreePE.scala 31:21]
    reg REG : UInt<1>, clock with :
      reset => (UInt<1>("h0"), REG) @[TreePE.scala 35:17]
    REG <= queue.io.deq.valid @[TreePE.scala 35:17]
    when REG : @[TreePE.scala 35:31]
      node attr_id = bits(io.mem.dataOut_1, 34, 32) @[TreePE.scala 37:37]
      node threshold = bits(io.mem.dataOut_1, 15, 0) @[TreePE.scala 38:39]
      node nodeRA = bits(io.mem.dataOut_1, 31, 16) @[TreePE.scala 39:36]
      node leftChildInfo = bits(io.mem.dataOut_1, 44, 35) @[TreePE.scala 40:43]
      node rightChildInfo = bits(io.mem.dataOut_1, 54, 45) @[TreePE.scala 41:44]
      node leftChildType = bits(io.mem.dataOut_1, 55, 55) @[TreePE.scala 42:43]
      node rightChildType = bits(io.mem.dataOut_1, 56, 56) @[TreePE.scala 43:44]
      node is_valid = bits(io.mem.dataOut_1, 57, 57) @[TreePE.scala 44:38]
      node depth_indicator = bits(io.mem.dataOut_1, 60, 58) @[TreePE.scala 45:45]
      reg REG_1 : Fixed<32><<16>>[5], clock with :
        reset => (UInt<1>("h0"), REG_1) @[TreePE.scala 47:45]
      REG_1 <= queue.io.deq.bits.features @[TreePE.scala 47:45]
      io.sample_out.bits.features <= REG_1 @[TreePE.scala 47:35]
      reg REG_2 : Fixed<16><<8>>[5], clock with :
        reset => (UInt<1>("h0"), REG_2) @[TreePE.scala 48:44]
      REG_2 <= queue.io.deq.bits.weights @[TreePE.scala 48:44]
      io.sample_out.bits.weights <= REG_2 @[TreePE.scala 48:34]
      reg io_sample_out_bits_tree_to_exec_REG : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_tree_to_exec_REG) @[TreePE.scala 49:49]
      io_sample_out_bits_tree_to_exec_REG <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 49:49]
      io.sample_out.bits.tree_to_exec <= io_sample_out_bits_tree_to_exec_REG @[TreePE.scala 49:39]
      reg REG_3 : Fixed<16><<8>>[6], clock with :
        reset => (UInt<1>("h0"), REG_3) @[TreePE.scala 50:43]
      REG_3 <= queue.io.deq.bits.scores @[TreePE.scala 50:43]
      io.sample_out.bits.scores <= REG_3 @[TreePE.scala 50:33]
      io.sample_out.valid <= UInt<1>("h1") @[TreePE.scala 51:27]
      reg io_sample_out_bits_clock_cycles_REG : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_clock_cycles_REG) @[TreePE.scala 52:49]
      io_sample_out_bits_clock_cycles_REG <= queue.io.deq.bits.clock_cycles @[TreePE.scala 52:49]
      io.sample_out.bits.clock_cycles <= io_sample_out_bits_clock_cycles_REG @[TreePE.scala 52:39]
      wire offset : UInt<10> @[TreePE.scala 71:26]
      wire shift : UInt<1> @[TreePE.scala 72:25]
      reg features_bits : Fixed<32><<16>>[5], clock with :
        reset => (UInt<1>("h0"), features_bits) @[TreePE.scala 73:36]
      features_bits <= queue.io.deq.bits.features @[TreePE.scala 73:36]
      reg scores_bits : Fixed<16><<8>>[6], clock with :
        reset => (UInt<1>("h0"), scores_bits) @[TreePE.scala 74:34]
      scores_bits <= queue.io.deq.bits.scores @[TreePE.scala 74:34]
      reg weights_bits : Fixed<16><<8>>[5], clock with :
        reset => (UInt<1>("h0"), weights_bits) @[TreePE.scala 75:35]
      weights_bits <= queue.io.deq.bits.weights @[TreePE.scala 75:35]
      node _shift_T = asFixedPoint(threshold, 8) @[TreePE.scala 76:69]
      node _shift_T_1 = lt(features_bits[attr_id], _shift_T) @[TreePE.scala 76:45]
      node _shift_T_2 = mux(_shift_T_1, leftChildType, rightChildType) @[TreePE.scala 76:21]
      shift <= _shift_T_2 @[TreePE.scala 76:15]
      node _offset_T = asFixedPoint(threshold, 8) @[TreePE.scala 77:70]
      node _offset_T_1 = lt(features_bits[attr_id], _offset_T) @[TreePE.scala 77:46]
      node _offset_T_2 = mux(_offset_T_1, leftChildInfo, rightChildInfo) @[TreePE.scala 77:22]
      offset <= _offset_T_2 @[TreePE.scala 77:16]
      node _io_sample_out_bits_offset_T = eq(shift, UInt<1>("h0")) @[TreePE.scala 78:48]
      reg io_sample_out_bits_offset_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_offset_REG) @[TreePE.scala 78:70]
      io_sample_out_bits_offset_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 78:70]
      node _io_sample_out_bits_offset_T_1 = or(_io_sample_out_bits_offset_T, io_sample_out_bits_offset_REG) @[TreePE.scala 78:60]
      reg io_sample_out_bits_offset_REG_1 : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_offset_REG_1) @[TreePE.scala 78:106]
      io_sample_out_bits_offset_REG_1 <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 78:106]
      node _io_sample_out_bits_offset_T_2 = mux(_io_sample_out_bits_offset_T_1, io_sample_out_bits_offset_REG_1, offset) @[TreePE.scala 78:41]
      io.sample_out.bits.offset <= _io_sample_out_bits_offset_T_2 @[TreePE.scala 78:35]
      io.sample_out.bits.shift <= UInt<1>("h0") @[TreePE.scala 79:34]
      node _io_sample_out_bits_search_for_root_T = eq(shift, UInt<1>("h0")) @[TreePE.scala 80:47]
      reg io_sample_out_bits_search_for_root_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_search_for_root_REG) @[TreePE.scala 80:64]
      io_sample_out_bits_search_for_root_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 80:64]
      node _io_sample_out_bits_search_for_root_T_1 = or(_io_sample_out_bits_search_for_root_T, io_sample_out_bits_search_for_root_REG) @[TreePE.scala 80:54]
      io.sample_out.bits.search_for_root <= _io_sample_out_bits_search_for_root_T_1 @[TreePE.scala 80:44]
      reg io_sample_out_bits_scores_0_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_scores_0_REG) @[TreePE.scala 82:74]
      io_sample_out_bits_scores_0_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 82:74]
      node _io_sample_out_bits_scores_0_T = eq(io_sample_out_bits_scores_0_REG, UInt<1>("h0")) @[TreePE.scala 82:66]
      node _io_sample_out_bits_scores_0_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 82:111]
      node _io_sample_out_bits_scores_0_T_2 = and(_io_sample_out_bits_scores_0_T, _io_sample_out_bits_scores_0_T_1) @[TreePE.scala 82:103]
      node _io_sample_out_bits_scores_0_T_3 = and(_io_sample_out_bits_scores_0_T_2, is_valid) @[TreePE.scala 82:123]
      node _io_sample_out_bits_scores_0_T_4 = eq(UInt<1>("h0"), offset) @[TreePE.scala 82:141]
      node _io_sample_out_bits_scores_0_T_5 = and(_io_sample_out_bits_scores_0_T_3, _io_sample_out_bits_scores_0_T_4) @[TreePE.scala 82:134]
      node _io_sample_out_bits_scores_0_T_6 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 82:190]
      node _io_sample_out_bits_scores_0_T_7 = mux(_io_sample_out_bits_scores_0_T_5, _io_sample_out_bits_scores_0_T_6, UInt<16>("h0")) @[TreePE.scala 82:64]
      node _io_sample_out_bits_scores_0_T_8 = asFixedPoint(_io_sample_out_bits_scores_0_T_7, 8) @[TreePE.scala 82:217]
      node _io_sample_out_bits_scores_0_T_9 = add(scores_bits[0], _io_sample_out_bits_scores_0_T_8) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_0_T_10 = tail(_io_sample_out_bits_scores_0_T_9, 1) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_0_T_11 = asFixedPoint(_io_sample_out_bits_scores_0_T_10, 8) @[TreePE.scala 82:58]
      io.sample_out.bits.scores[0] <= _io_sample_out_bits_scores_0_T_11 @[TreePE.scala 82:40]
      reg io_sample_out_bits_scores_1_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_scores_1_REG) @[TreePE.scala 82:74]
      io_sample_out_bits_scores_1_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 82:74]
      node _io_sample_out_bits_scores_1_T = eq(io_sample_out_bits_scores_1_REG, UInt<1>("h0")) @[TreePE.scala 82:66]
      node _io_sample_out_bits_scores_1_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 82:111]
      node _io_sample_out_bits_scores_1_T_2 = and(_io_sample_out_bits_scores_1_T, _io_sample_out_bits_scores_1_T_1) @[TreePE.scala 82:103]
      node _io_sample_out_bits_scores_1_T_3 = and(_io_sample_out_bits_scores_1_T_2, is_valid) @[TreePE.scala 82:123]
      node _io_sample_out_bits_scores_1_T_4 = eq(UInt<1>("h1"), offset) @[TreePE.scala 82:141]
      node _io_sample_out_bits_scores_1_T_5 = and(_io_sample_out_bits_scores_1_T_3, _io_sample_out_bits_scores_1_T_4) @[TreePE.scala 82:134]
      node _io_sample_out_bits_scores_1_T_6 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 82:190]
      node _io_sample_out_bits_scores_1_T_7 = mux(_io_sample_out_bits_scores_1_T_5, _io_sample_out_bits_scores_1_T_6, UInt<16>("h0")) @[TreePE.scala 82:64]
      node _io_sample_out_bits_scores_1_T_8 = asFixedPoint(_io_sample_out_bits_scores_1_T_7, 8) @[TreePE.scala 82:217]
      node _io_sample_out_bits_scores_1_T_9 = add(scores_bits[1], _io_sample_out_bits_scores_1_T_8) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_1_T_10 = tail(_io_sample_out_bits_scores_1_T_9, 1) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_1_T_11 = asFixedPoint(_io_sample_out_bits_scores_1_T_10, 8) @[TreePE.scala 82:58]
      io.sample_out.bits.scores[1] <= _io_sample_out_bits_scores_1_T_11 @[TreePE.scala 82:40]
      reg io_sample_out_bits_scores_2_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_scores_2_REG) @[TreePE.scala 82:74]
      io_sample_out_bits_scores_2_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 82:74]
      node _io_sample_out_bits_scores_2_T = eq(io_sample_out_bits_scores_2_REG, UInt<1>("h0")) @[TreePE.scala 82:66]
      node _io_sample_out_bits_scores_2_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 82:111]
      node _io_sample_out_bits_scores_2_T_2 = and(_io_sample_out_bits_scores_2_T, _io_sample_out_bits_scores_2_T_1) @[TreePE.scala 82:103]
      node _io_sample_out_bits_scores_2_T_3 = and(_io_sample_out_bits_scores_2_T_2, is_valid) @[TreePE.scala 82:123]
      node _io_sample_out_bits_scores_2_T_4 = eq(UInt<2>("h2"), offset) @[TreePE.scala 82:141]
      node _io_sample_out_bits_scores_2_T_5 = and(_io_sample_out_bits_scores_2_T_3, _io_sample_out_bits_scores_2_T_4) @[TreePE.scala 82:134]
      node _io_sample_out_bits_scores_2_T_6 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 82:190]
      node _io_sample_out_bits_scores_2_T_7 = mux(_io_sample_out_bits_scores_2_T_5, _io_sample_out_bits_scores_2_T_6, UInt<16>("h0")) @[TreePE.scala 82:64]
      node _io_sample_out_bits_scores_2_T_8 = asFixedPoint(_io_sample_out_bits_scores_2_T_7, 8) @[TreePE.scala 82:217]
      node _io_sample_out_bits_scores_2_T_9 = add(scores_bits[2], _io_sample_out_bits_scores_2_T_8) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_2_T_10 = tail(_io_sample_out_bits_scores_2_T_9, 1) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_2_T_11 = asFixedPoint(_io_sample_out_bits_scores_2_T_10, 8) @[TreePE.scala 82:58]
      io.sample_out.bits.scores[2] <= _io_sample_out_bits_scores_2_T_11 @[TreePE.scala 82:40]
      reg io_sample_out_bits_scores_3_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_scores_3_REG) @[TreePE.scala 82:74]
      io_sample_out_bits_scores_3_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 82:74]
      node _io_sample_out_bits_scores_3_T = eq(io_sample_out_bits_scores_3_REG, UInt<1>("h0")) @[TreePE.scala 82:66]
      node _io_sample_out_bits_scores_3_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 82:111]
      node _io_sample_out_bits_scores_3_T_2 = and(_io_sample_out_bits_scores_3_T, _io_sample_out_bits_scores_3_T_1) @[TreePE.scala 82:103]
      node _io_sample_out_bits_scores_3_T_3 = and(_io_sample_out_bits_scores_3_T_2, is_valid) @[TreePE.scala 82:123]
      node _io_sample_out_bits_scores_3_T_4 = eq(UInt<2>("h3"), offset) @[TreePE.scala 82:141]
      node _io_sample_out_bits_scores_3_T_5 = and(_io_sample_out_bits_scores_3_T_3, _io_sample_out_bits_scores_3_T_4) @[TreePE.scala 82:134]
      node _io_sample_out_bits_scores_3_T_6 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 82:190]
      node _io_sample_out_bits_scores_3_T_7 = mux(_io_sample_out_bits_scores_3_T_5, _io_sample_out_bits_scores_3_T_6, UInt<16>("h0")) @[TreePE.scala 82:64]
      node _io_sample_out_bits_scores_3_T_8 = asFixedPoint(_io_sample_out_bits_scores_3_T_7, 8) @[TreePE.scala 82:217]
      node _io_sample_out_bits_scores_3_T_9 = add(scores_bits[3], _io_sample_out_bits_scores_3_T_8) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_3_T_10 = tail(_io_sample_out_bits_scores_3_T_9, 1) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_3_T_11 = asFixedPoint(_io_sample_out_bits_scores_3_T_10, 8) @[TreePE.scala 82:58]
      io.sample_out.bits.scores[3] <= _io_sample_out_bits_scores_3_T_11 @[TreePE.scala 82:40]
      reg io_sample_out_bits_scores_4_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_scores_4_REG) @[TreePE.scala 82:74]
      io_sample_out_bits_scores_4_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 82:74]
      node _io_sample_out_bits_scores_4_T = eq(io_sample_out_bits_scores_4_REG, UInt<1>("h0")) @[TreePE.scala 82:66]
      node _io_sample_out_bits_scores_4_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 82:111]
      node _io_sample_out_bits_scores_4_T_2 = and(_io_sample_out_bits_scores_4_T, _io_sample_out_bits_scores_4_T_1) @[TreePE.scala 82:103]
      node _io_sample_out_bits_scores_4_T_3 = and(_io_sample_out_bits_scores_4_T_2, is_valid) @[TreePE.scala 82:123]
      node _io_sample_out_bits_scores_4_T_4 = eq(UInt<3>("h4"), offset) @[TreePE.scala 82:141]
      node _io_sample_out_bits_scores_4_T_5 = and(_io_sample_out_bits_scores_4_T_3, _io_sample_out_bits_scores_4_T_4) @[TreePE.scala 82:134]
      node _io_sample_out_bits_scores_4_T_6 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 82:190]
      node _io_sample_out_bits_scores_4_T_7 = mux(_io_sample_out_bits_scores_4_T_5, _io_sample_out_bits_scores_4_T_6, UInt<16>("h0")) @[TreePE.scala 82:64]
      node _io_sample_out_bits_scores_4_T_8 = asFixedPoint(_io_sample_out_bits_scores_4_T_7, 8) @[TreePE.scala 82:217]
      node _io_sample_out_bits_scores_4_T_9 = add(scores_bits[4], _io_sample_out_bits_scores_4_T_8) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_4_T_10 = tail(_io_sample_out_bits_scores_4_T_9, 1) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_4_T_11 = asFixedPoint(_io_sample_out_bits_scores_4_T_10, 8) @[TreePE.scala 82:58]
      io.sample_out.bits.scores[4] <= _io_sample_out_bits_scores_4_T_11 @[TreePE.scala 82:40]
      reg io_sample_out_bits_scores_5_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_scores_5_REG) @[TreePE.scala 82:74]
      io_sample_out_bits_scores_5_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 82:74]
      node _io_sample_out_bits_scores_5_T = eq(io_sample_out_bits_scores_5_REG, UInt<1>("h0")) @[TreePE.scala 82:66]
      node _io_sample_out_bits_scores_5_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 82:111]
      node _io_sample_out_bits_scores_5_T_2 = and(_io_sample_out_bits_scores_5_T, _io_sample_out_bits_scores_5_T_1) @[TreePE.scala 82:103]
      node _io_sample_out_bits_scores_5_T_3 = and(_io_sample_out_bits_scores_5_T_2, is_valid) @[TreePE.scala 82:123]
      node _io_sample_out_bits_scores_5_T_4 = eq(UInt<3>("h5"), offset) @[TreePE.scala 82:141]
      node _io_sample_out_bits_scores_5_T_5 = and(_io_sample_out_bits_scores_5_T_3, _io_sample_out_bits_scores_5_T_4) @[TreePE.scala 82:134]
      node _io_sample_out_bits_scores_5_T_6 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 82:190]
      node _io_sample_out_bits_scores_5_T_7 = mux(_io_sample_out_bits_scores_5_T_5, _io_sample_out_bits_scores_5_T_6, UInt<16>("h0")) @[TreePE.scala 82:64]
      node _io_sample_out_bits_scores_5_T_8 = asFixedPoint(_io_sample_out_bits_scores_5_T_7, 8) @[TreePE.scala 82:217]
      node _io_sample_out_bits_scores_5_T_9 = add(scores_bits[5], _io_sample_out_bits_scores_5_T_8) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_5_T_10 = tail(_io_sample_out_bits_scores_5_T_9, 1) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_5_T_11 = asFixedPoint(_io_sample_out_bits_scores_5_T_10, 8) @[TreePE.scala 82:58]
      io.sample_out.bits.scores[5] <= _io_sample_out_bits_scores_5_T_11 @[TreePE.scala 82:40]
      reg io_sample_out_bits_dest_REG : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_dest_REG) @[TreePE.scala 84:43]
      io_sample_out_bits_dest_REG <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 84:43]
      node _io_sample_out_bits_dest_T = eq(io_sample_out_bits_dest_REG, UInt<1>("h1")) @[TreePE.scala 84:69]
      io.sample_out.bits.dest <= _io_sample_out_bits_dest_T @[TreePE.scala 84:33]
      reg io_sample_out_bits_last_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_last_REG) @[TreePE.scala 85:43]
      io_sample_out_bits_last_REG <= queue.io.deq.bits.last @[TreePE.scala 85:43]
      io.sample_out.bits.last <= io_sample_out_bits_last_REG @[TreePE.scala 85:33]
    else :
      io.sample_out.bits.clock_cycles is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.last is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.dest is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[0] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[1] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[2] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[3] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[4] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[0] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[1] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[2] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[3] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[4] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[5] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.tree_to_exec is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.search_for_root is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.shift is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.offset is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[0] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[1] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[2] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[3] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[4] is invalid @[TreePE.scala 88:26]
      io.sample_out.valid <= UInt<1>("h0") @[TreePE.scala 89:27]
    queue.io.deq.ready <= io.sample_out.ready @[TreePE.scala 92:17]

  module TreePEwithBRAM_18 :
    input clock : Clock
    input reset : Reset
    output pe_io : { flip sample_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, flip mem : { flip enable_1 : UInt<1>, flip write_1 : UInt<1>, flip addr_1 : UInt<13>, flip dataIn_1 : UInt<64>, dataOut_1 : UInt<64>, flip enable_2 : UInt<1>, flip write_2 : UInt<1>, flip addr_2 : UInt<13>, flip dataIn_2 : UInt<64>, dataOut_2 : UInt<64>}, sample_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}}

    inst pe of TreePE_18 @[TreePE.scala 104:18]
    pe.clock <= clock
    pe.reset <= reset
    pe_io.sample_out.bits <= pe.io.sample_out.bits @[TreePE.scala 106:9]
    pe_io.sample_out.valid <= pe.io.sample_out.valid @[TreePE.scala 106:9]
    pe.io.sample_out.ready <= pe_io.sample_out.ready @[TreePE.scala 106:9]
    pe.io.mem <= pe_io.mem @[TreePE.scala 106:9]
    pe.io.sample_in <= pe_io.sample_in @[TreePE.scala 106:9]

  module Queue_42 :
    input clock : Clock
    input reset : Reset
    output io : { flip enq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, deq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, count : UInt<2>}

    cmem ram : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>} [3] @[Decoupled.scala 275:95]
    reg enq_ptr_value : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[Counter.scala 61:40]
    reg deq_ptr_value : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[Counter.scala 61:40]
    reg maybe_full : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[Decoupled.scala 278:27]
    node ptr_match = eq(enq_ptr_value, deq_ptr_value) @[Decoupled.scala 279:33]
    node _empty_T = eq(maybe_full, UInt<1>("h0")) @[Decoupled.scala 280:28]
    node empty = and(ptr_match, _empty_T) @[Decoupled.scala 280:25]
    node full = and(ptr_match, maybe_full) @[Decoupled.scala 281:24]
    node _do_enq_T = and(io.enq.ready, io.enq.valid) @[Decoupled.scala 52:35]
    wire do_enq : UInt<1>
    do_enq <= _do_enq_T
    node _do_deq_T = and(io.deq.ready, io.deq.valid) @[Decoupled.scala 52:35]
    wire do_deq : UInt<1>
    do_deq <= _do_deq_T
    when do_enq : @[Decoupled.scala 288:16]
      infer mport MPORT = ram[enq_ptr_value], clock @[Decoupled.scala 289:8]
      MPORT <= io.enq.bits @[Decoupled.scala 289:24]
      node wrap = eq(enq_ptr_value, UInt<2>("h2")) @[Counter.scala 73:24]
      node _value_T = add(enq_ptr_value, UInt<1>("h1")) @[Counter.scala 77:24]
      node _value_T_1 = tail(_value_T, 1) @[Counter.scala 77:24]
      enq_ptr_value <= _value_T_1 @[Counter.scala 77:15]
      when wrap : @[Counter.scala 87:20]
        enq_ptr_value <= UInt<1>("h0") @[Counter.scala 87:28]
    when do_deq : @[Decoupled.scala 292:16]
      node wrap_1 = eq(deq_ptr_value, UInt<2>("h2")) @[Counter.scala 73:24]
      node _value_T_2 = add(deq_ptr_value, UInt<1>("h1")) @[Counter.scala 77:24]
      node _value_T_3 = tail(_value_T_2, 1) @[Counter.scala 77:24]
      deq_ptr_value <= _value_T_3 @[Counter.scala 77:15]
      when wrap_1 : @[Counter.scala 87:20]
        deq_ptr_value <= UInt<1>("h0") @[Counter.scala 87:28]
    node _T = neq(do_enq, do_deq) @[Decoupled.scala 295:15]
    when _T : @[Decoupled.scala 295:27]
      maybe_full <= do_enq @[Decoupled.scala 296:16]
    when UInt<1>("h0") : @[Decoupled.scala 298:15]
      enq_ptr_value <= UInt<1>("h0") @[Counter.scala 98:11]
      deq_ptr_value <= UInt<1>("h0") @[Counter.scala 98:11]
      maybe_full <= UInt<1>("h0") @[Decoupled.scala 301:16]
    node _io_deq_valid_T = eq(empty, UInt<1>("h0")) @[Decoupled.scala 304:19]
    io.deq.valid <= _io_deq_valid_T @[Decoupled.scala 304:16]
    node _io_enq_ready_T = eq(full, UInt<1>("h0")) @[Decoupled.scala 305:19]
    io.enq.ready <= _io_enq_ready_T @[Decoupled.scala 305:16]
    infer mport io_deq_bits_MPORT = ram[deq_ptr_value], clock @[Decoupled.scala 312:23]
    io.deq.bits <= io_deq_bits_MPORT @[Decoupled.scala 312:17]
    node _ptr_diff_T = sub(enq_ptr_value, deq_ptr_value) @[Decoupled.scala 328:32]
    node ptr_diff = tail(_ptr_diff_T, 1) @[Decoupled.scala 328:32]
    node _io_count_T = mux(maybe_full, UInt<2>("h3"), UInt<1>("h0")) @[Decoupled.scala 335:10]
    node _io_count_T_1 = gt(deq_ptr_value, enq_ptr_value) @[Decoupled.scala 336:25]
    node _io_count_T_2 = add(UInt<2>("h3"), ptr_diff) @[Decoupled.scala 336:57]
    node _io_count_T_3 = tail(_io_count_T_2, 1) @[Decoupled.scala 336:57]
    node _io_count_T_4 = mux(_io_count_T_1, _io_count_T_3, ptr_diff) @[Decoupled.scala 336:10]
    node _io_count_T_5 = mux(ptr_match, _io_count_T, _io_count_T_4) @[Decoupled.scala 333:20]
    io.count <= _io_count_T_5 @[Decoupled.scala 333:14]

  module TreePE_19 :
    input clock : Clock
    input reset : Reset
    output io : { flip sample_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, flip mem : { flip enable_1 : UInt<1>, flip write_1 : UInt<1>, flip addr_1 : UInt<13>, flip dataIn_1 : UInt<64>, dataOut_1 : UInt<64>, flip enable_2 : UInt<1>, flip write_2 : UInt<1>, flip addr_2 : UInt<13>, flip dataIn_2 : UInt<64>, dataOut_2 : UInt<64>}, sample_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}}

    inst queue of Queue_42 @[Decoupled.scala 377:21]
    queue.clock <= clock
    queue.reset <= reset
    queue.io.enq.valid <= io.sample_in.valid @[Decoupled.scala 379:22]
    queue.io.enq.bits.clock_cycles <= io.sample_in.bits.clock_cycles @[Decoupled.scala 380:21]
    queue.io.enq.bits.last <= io.sample_in.bits.last @[Decoupled.scala 380:21]
    queue.io.enq.bits.dest <= io.sample_in.bits.dest @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[0] <= io.sample_in.bits.weights[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[1] <= io.sample_in.bits.weights[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[2] <= io.sample_in.bits.weights[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[3] <= io.sample_in.bits.weights[3] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[4] <= io.sample_in.bits.weights[4] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[0] <= io.sample_in.bits.scores[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[1] <= io.sample_in.bits.scores[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[2] <= io.sample_in.bits.scores[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[3] <= io.sample_in.bits.scores[3] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[4] <= io.sample_in.bits.scores[4] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[5] <= io.sample_in.bits.scores[5] @[Decoupled.scala 380:21]
    queue.io.enq.bits.tree_to_exec <= io.sample_in.bits.tree_to_exec @[Decoupled.scala 380:21]
    queue.io.enq.bits.search_for_root <= io.sample_in.bits.search_for_root @[Decoupled.scala 380:21]
    queue.io.enq.bits.shift <= io.sample_in.bits.shift @[Decoupled.scala 380:21]
    queue.io.enq.bits.offset <= io.sample_in.bits.offset @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[0] <= io.sample_in.bits.features[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[1] <= io.sample_in.bits.features[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[2] <= io.sample_in.bits.features[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[3] <= io.sample_in.bits.features[3] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[4] <= io.sample_in.bits.features[4] @[Decoupled.scala 380:21]
    io.sample_in.ready <= queue.io.enq.ready @[Decoupled.scala 381:17]
    io.mem.enable_1 <= UInt<1>("h1") @[TreePE.scala 23:21]
    io.mem.addr_1 <= queue.io.deq.bits.offset @[TreePE.scala 24:19]
    io.mem.write_1 <= UInt<1>("h0") @[TreePE.scala 25:20]
    io.mem.dataIn_1 <= UInt<1>("h0") @[TreePE.scala 26:21]
    io.mem.enable_2 is invalid @[TreePE.scala 28:21]
    io.mem.addr_2 is invalid @[TreePE.scala 29:19]
    io.mem.write_2 is invalid @[TreePE.scala 30:20]
    io.mem.dataIn_2 is invalid @[TreePE.scala 31:21]
    reg REG : UInt<1>, clock with :
      reset => (UInt<1>("h0"), REG) @[TreePE.scala 35:17]
    REG <= queue.io.deq.valid @[TreePE.scala 35:17]
    when REG : @[TreePE.scala 35:31]
      node attr_id = bits(io.mem.dataOut_1, 34, 32) @[TreePE.scala 37:37]
      node threshold = bits(io.mem.dataOut_1, 15, 0) @[TreePE.scala 38:39]
      node nodeRA = bits(io.mem.dataOut_1, 31, 16) @[TreePE.scala 39:36]
      node leftChildInfo = bits(io.mem.dataOut_1, 44, 35) @[TreePE.scala 40:43]
      node rightChildInfo = bits(io.mem.dataOut_1, 54, 45) @[TreePE.scala 41:44]
      node leftChildType = bits(io.mem.dataOut_1, 55, 55) @[TreePE.scala 42:43]
      node rightChildType = bits(io.mem.dataOut_1, 56, 56) @[TreePE.scala 43:44]
      node is_valid = bits(io.mem.dataOut_1, 57, 57) @[TreePE.scala 44:38]
      node depth_indicator = bits(io.mem.dataOut_1, 60, 58) @[TreePE.scala 45:45]
      reg REG_1 : Fixed<32><<16>>[5], clock with :
        reset => (UInt<1>("h0"), REG_1) @[TreePE.scala 47:45]
      REG_1 <= queue.io.deq.bits.features @[TreePE.scala 47:45]
      io.sample_out.bits.features <= REG_1 @[TreePE.scala 47:35]
      reg REG_2 : Fixed<16><<8>>[5], clock with :
        reset => (UInt<1>("h0"), REG_2) @[TreePE.scala 48:44]
      REG_2 <= queue.io.deq.bits.weights @[TreePE.scala 48:44]
      io.sample_out.bits.weights <= REG_2 @[TreePE.scala 48:34]
      reg io_sample_out_bits_tree_to_exec_REG : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_tree_to_exec_REG) @[TreePE.scala 49:49]
      io_sample_out_bits_tree_to_exec_REG <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 49:49]
      io.sample_out.bits.tree_to_exec <= io_sample_out_bits_tree_to_exec_REG @[TreePE.scala 49:39]
      reg REG_3 : Fixed<16><<8>>[6], clock with :
        reset => (UInt<1>("h0"), REG_3) @[TreePE.scala 50:43]
      REG_3 <= queue.io.deq.bits.scores @[TreePE.scala 50:43]
      io.sample_out.bits.scores <= REG_3 @[TreePE.scala 50:33]
      io.sample_out.valid <= UInt<1>("h1") @[TreePE.scala 51:27]
      reg io_sample_out_bits_clock_cycles_REG : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_clock_cycles_REG) @[TreePE.scala 52:49]
      io_sample_out_bits_clock_cycles_REG <= queue.io.deq.bits.clock_cycles @[TreePE.scala 52:49]
      io.sample_out.bits.clock_cycles <= io_sample_out_bits_clock_cycles_REG @[TreePE.scala 52:39]
      wire offset : UInt<10> @[TreePE.scala 71:26]
      wire shift : UInt<1> @[TreePE.scala 72:25]
      reg features_bits : Fixed<32><<16>>[5], clock with :
        reset => (UInt<1>("h0"), features_bits) @[TreePE.scala 73:36]
      features_bits <= queue.io.deq.bits.features @[TreePE.scala 73:36]
      reg scores_bits : Fixed<16><<8>>[6], clock with :
        reset => (UInt<1>("h0"), scores_bits) @[TreePE.scala 74:34]
      scores_bits <= queue.io.deq.bits.scores @[TreePE.scala 74:34]
      reg weights_bits : Fixed<16><<8>>[5], clock with :
        reset => (UInt<1>("h0"), weights_bits) @[TreePE.scala 75:35]
      weights_bits <= queue.io.deq.bits.weights @[TreePE.scala 75:35]
      node _shift_T = asFixedPoint(threshold, 8) @[TreePE.scala 76:69]
      node _shift_T_1 = lt(features_bits[attr_id], _shift_T) @[TreePE.scala 76:45]
      node _shift_T_2 = mux(_shift_T_1, leftChildType, rightChildType) @[TreePE.scala 76:21]
      shift <= _shift_T_2 @[TreePE.scala 76:15]
      node _offset_T = asFixedPoint(threshold, 8) @[TreePE.scala 77:70]
      node _offset_T_1 = lt(features_bits[attr_id], _offset_T) @[TreePE.scala 77:46]
      node _offset_T_2 = mux(_offset_T_1, leftChildInfo, rightChildInfo) @[TreePE.scala 77:22]
      offset <= _offset_T_2 @[TreePE.scala 77:16]
      node _io_sample_out_bits_offset_T = eq(shift, UInt<1>("h0")) @[TreePE.scala 78:48]
      reg io_sample_out_bits_offset_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_offset_REG) @[TreePE.scala 78:70]
      io_sample_out_bits_offset_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 78:70]
      node _io_sample_out_bits_offset_T_1 = or(_io_sample_out_bits_offset_T, io_sample_out_bits_offset_REG) @[TreePE.scala 78:60]
      reg io_sample_out_bits_offset_REG_1 : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_offset_REG_1) @[TreePE.scala 78:106]
      io_sample_out_bits_offset_REG_1 <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 78:106]
      node _io_sample_out_bits_offset_T_2 = mux(_io_sample_out_bits_offset_T_1, io_sample_out_bits_offset_REG_1, offset) @[TreePE.scala 78:41]
      io.sample_out.bits.offset <= _io_sample_out_bits_offset_T_2 @[TreePE.scala 78:35]
      io.sample_out.bits.shift <= UInt<1>("h0") @[TreePE.scala 79:34]
      node _io_sample_out_bits_search_for_root_T = eq(shift, UInt<1>("h0")) @[TreePE.scala 80:47]
      reg io_sample_out_bits_search_for_root_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_search_for_root_REG) @[TreePE.scala 80:64]
      io_sample_out_bits_search_for_root_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 80:64]
      node _io_sample_out_bits_search_for_root_T_1 = or(_io_sample_out_bits_search_for_root_T, io_sample_out_bits_search_for_root_REG) @[TreePE.scala 80:54]
      io.sample_out.bits.search_for_root <= _io_sample_out_bits_search_for_root_T_1 @[TreePE.scala 80:44]
      reg io_sample_out_bits_scores_0_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_scores_0_REG) @[TreePE.scala 82:74]
      io_sample_out_bits_scores_0_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 82:74]
      node _io_sample_out_bits_scores_0_T = eq(io_sample_out_bits_scores_0_REG, UInt<1>("h0")) @[TreePE.scala 82:66]
      node _io_sample_out_bits_scores_0_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 82:111]
      node _io_sample_out_bits_scores_0_T_2 = and(_io_sample_out_bits_scores_0_T, _io_sample_out_bits_scores_0_T_1) @[TreePE.scala 82:103]
      node _io_sample_out_bits_scores_0_T_3 = and(_io_sample_out_bits_scores_0_T_2, is_valid) @[TreePE.scala 82:123]
      node _io_sample_out_bits_scores_0_T_4 = eq(UInt<1>("h0"), offset) @[TreePE.scala 82:141]
      node _io_sample_out_bits_scores_0_T_5 = and(_io_sample_out_bits_scores_0_T_3, _io_sample_out_bits_scores_0_T_4) @[TreePE.scala 82:134]
      node _io_sample_out_bits_scores_0_T_6 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 82:190]
      node _io_sample_out_bits_scores_0_T_7 = mux(_io_sample_out_bits_scores_0_T_5, _io_sample_out_bits_scores_0_T_6, UInt<16>("h0")) @[TreePE.scala 82:64]
      node _io_sample_out_bits_scores_0_T_8 = asFixedPoint(_io_sample_out_bits_scores_0_T_7, 8) @[TreePE.scala 82:217]
      node _io_sample_out_bits_scores_0_T_9 = add(scores_bits[0], _io_sample_out_bits_scores_0_T_8) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_0_T_10 = tail(_io_sample_out_bits_scores_0_T_9, 1) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_0_T_11 = asFixedPoint(_io_sample_out_bits_scores_0_T_10, 8) @[TreePE.scala 82:58]
      io.sample_out.bits.scores[0] <= _io_sample_out_bits_scores_0_T_11 @[TreePE.scala 82:40]
      reg io_sample_out_bits_scores_1_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_scores_1_REG) @[TreePE.scala 82:74]
      io_sample_out_bits_scores_1_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 82:74]
      node _io_sample_out_bits_scores_1_T = eq(io_sample_out_bits_scores_1_REG, UInt<1>("h0")) @[TreePE.scala 82:66]
      node _io_sample_out_bits_scores_1_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 82:111]
      node _io_sample_out_bits_scores_1_T_2 = and(_io_sample_out_bits_scores_1_T, _io_sample_out_bits_scores_1_T_1) @[TreePE.scala 82:103]
      node _io_sample_out_bits_scores_1_T_3 = and(_io_sample_out_bits_scores_1_T_2, is_valid) @[TreePE.scala 82:123]
      node _io_sample_out_bits_scores_1_T_4 = eq(UInt<1>("h1"), offset) @[TreePE.scala 82:141]
      node _io_sample_out_bits_scores_1_T_5 = and(_io_sample_out_bits_scores_1_T_3, _io_sample_out_bits_scores_1_T_4) @[TreePE.scala 82:134]
      node _io_sample_out_bits_scores_1_T_6 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 82:190]
      node _io_sample_out_bits_scores_1_T_7 = mux(_io_sample_out_bits_scores_1_T_5, _io_sample_out_bits_scores_1_T_6, UInt<16>("h0")) @[TreePE.scala 82:64]
      node _io_sample_out_bits_scores_1_T_8 = asFixedPoint(_io_sample_out_bits_scores_1_T_7, 8) @[TreePE.scala 82:217]
      node _io_sample_out_bits_scores_1_T_9 = add(scores_bits[1], _io_sample_out_bits_scores_1_T_8) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_1_T_10 = tail(_io_sample_out_bits_scores_1_T_9, 1) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_1_T_11 = asFixedPoint(_io_sample_out_bits_scores_1_T_10, 8) @[TreePE.scala 82:58]
      io.sample_out.bits.scores[1] <= _io_sample_out_bits_scores_1_T_11 @[TreePE.scala 82:40]
      reg io_sample_out_bits_scores_2_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_scores_2_REG) @[TreePE.scala 82:74]
      io_sample_out_bits_scores_2_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 82:74]
      node _io_sample_out_bits_scores_2_T = eq(io_sample_out_bits_scores_2_REG, UInt<1>("h0")) @[TreePE.scala 82:66]
      node _io_sample_out_bits_scores_2_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 82:111]
      node _io_sample_out_bits_scores_2_T_2 = and(_io_sample_out_bits_scores_2_T, _io_sample_out_bits_scores_2_T_1) @[TreePE.scala 82:103]
      node _io_sample_out_bits_scores_2_T_3 = and(_io_sample_out_bits_scores_2_T_2, is_valid) @[TreePE.scala 82:123]
      node _io_sample_out_bits_scores_2_T_4 = eq(UInt<2>("h2"), offset) @[TreePE.scala 82:141]
      node _io_sample_out_bits_scores_2_T_5 = and(_io_sample_out_bits_scores_2_T_3, _io_sample_out_bits_scores_2_T_4) @[TreePE.scala 82:134]
      node _io_sample_out_bits_scores_2_T_6 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 82:190]
      node _io_sample_out_bits_scores_2_T_7 = mux(_io_sample_out_bits_scores_2_T_5, _io_sample_out_bits_scores_2_T_6, UInt<16>("h0")) @[TreePE.scala 82:64]
      node _io_sample_out_bits_scores_2_T_8 = asFixedPoint(_io_sample_out_bits_scores_2_T_7, 8) @[TreePE.scala 82:217]
      node _io_sample_out_bits_scores_2_T_9 = add(scores_bits[2], _io_sample_out_bits_scores_2_T_8) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_2_T_10 = tail(_io_sample_out_bits_scores_2_T_9, 1) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_2_T_11 = asFixedPoint(_io_sample_out_bits_scores_2_T_10, 8) @[TreePE.scala 82:58]
      io.sample_out.bits.scores[2] <= _io_sample_out_bits_scores_2_T_11 @[TreePE.scala 82:40]
      reg io_sample_out_bits_scores_3_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_scores_3_REG) @[TreePE.scala 82:74]
      io_sample_out_bits_scores_3_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 82:74]
      node _io_sample_out_bits_scores_3_T = eq(io_sample_out_bits_scores_3_REG, UInt<1>("h0")) @[TreePE.scala 82:66]
      node _io_sample_out_bits_scores_3_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 82:111]
      node _io_sample_out_bits_scores_3_T_2 = and(_io_sample_out_bits_scores_3_T, _io_sample_out_bits_scores_3_T_1) @[TreePE.scala 82:103]
      node _io_sample_out_bits_scores_3_T_3 = and(_io_sample_out_bits_scores_3_T_2, is_valid) @[TreePE.scala 82:123]
      node _io_sample_out_bits_scores_3_T_4 = eq(UInt<2>("h3"), offset) @[TreePE.scala 82:141]
      node _io_sample_out_bits_scores_3_T_5 = and(_io_sample_out_bits_scores_3_T_3, _io_sample_out_bits_scores_3_T_4) @[TreePE.scala 82:134]
      node _io_sample_out_bits_scores_3_T_6 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 82:190]
      node _io_sample_out_bits_scores_3_T_7 = mux(_io_sample_out_bits_scores_3_T_5, _io_sample_out_bits_scores_3_T_6, UInt<16>("h0")) @[TreePE.scala 82:64]
      node _io_sample_out_bits_scores_3_T_8 = asFixedPoint(_io_sample_out_bits_scores_3_T_7, 8) @[TreePE.scala 82:217]
      node _io_sample_out_bits_scores_3_T_9 = add(scores_bits[3], _io_sample_out_bits_scores_3_T_8) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_3_T_10 = tail(_io_sample_out_bits_scores_3_T_9, 1) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_3_T_11 = asFixedPoint(_io_sample_out_bits_scores_3_T_10, 8) @[TreePE.scala 82:58]
      io.sample_out.bits.scores[3] <= _io_sample_out_bits_scores_3_T_11 @[TreePE.scala 82:40]
      reg io_sample_out_bits_scores_4_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_scores_4_REG) @[TreePE.scala 82:74]
      io_sample_out_bits_scores_4_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 82:74]
      node _io_sample_out_bits_scores_4_T = eq(io_sample_out_bits_scores_4_REG, UInt<1>("h0")) @[TreePE.scala 82:66]
      node _io_sample_out_bits_scores_4_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 82:111]
      node _io_sample_out_bits_scores_4_T_2 = and(_io_sample_out_bits_scores_4_T, _io_sample_out_bits_scores_4_T_1) @[TreePE.scala 82:103]
      node _io_sample_out_bits_scores_4_T_3 = and(_io_sample_out_bits_scores_4_T_2, is_valid) @[TreePE.scala 82:123]
      node _io_sample_out_bits_scores_4_T_4 = eq(UInt<3>("h4"), offset) @[TreePE.scala 82:141]
      node _io_sample_out_bits_scores_4_T_5 = and(_io_sample_out_bits_scores_4_T_3, _io_sample_out_bits_scores_4_T_4) @[TreePE.scala 82:134]
      node _io_sample_out_bits_scores_4_T_6 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 82:190]
      node _io_sample_out_bits_scores_4_T_7 = mux(_io_sample_out_bits_scores_4_T_5, _io_sample_out_bits_scores_4_T_6, UInt<16>("h0")) @[TreePE.scala 82:64]
      node _io_sample_out_bits_scores_4_T_8 = asFixedPoint(_io_sample_out_bits_scores_4_T_7, 8) @[TreePE.scala 82:217]
      node _io_sample_out_bits_scores_4_T_9 = add(scores_bits[4], _io_sample_out_bits_scores_4_T_8) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_4_T_10 = tail(_io_sample_out_bits_scores_4_T_9, 1) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_4_T_11 = asFixedPoint(_io_sample_out_bits_scores_4_T_10, 8) @[TreePE.scala 82:58]
      io.sample_out.bits.scores[4] <= _io_sample_out_bits_scores_4_T_11 @[TreePE.scala 82:40]
      reg io_sample_out_bits_scores_5_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_scores_5_REG) @[TreePE.scala 82:74]
      io_sample_out_bits_scores_5_REG <= queue.io.deq.bits.search_for_root @[TreePE.scala 82:74]
      node _io_sample_out_bits_scores_5_T = eq(io_sample_out_bits_scores_5_REG, UInt<1>("h0")) @[TreePE.scala 82:66]
      node _io_sample_out_bits_scores_5_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 82:111]
      node _io_sample_out_bits_scores_5_T_2 = and(_io_sample_out_bits_scores_5_T, _io_sample_out_bits_scores_5_T_1) @[TreePE.scala 82:103]
      node _io_sample_out_bits_scores_5_T_3 = and(_io_sample_out_bits_scores_5_T_2, is_valid) @[TreePE.scala 82:123]
      node _io_sample_out_bits_scores_5_T_4 = eq(UInt<3>("h5"), offset) @[TreePE.scala 82:141]
      node _io_sample_out_bits_scores_5_T_5 = and(_io_sample_out_bits_scores_5_T_3, _io_sample_out_bits_scores_5_T_4) @[TreePE.scala 82:134]
      node _io_sample_out_bits_scores_5_T_6 = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 82:190]
      node _io_sample_out_bits_scores_5_T_7 = mux(_io_sample_out_bits_scores_5_T_5, _io_sample_out_bits_scores_5_T_6, UInt<16>("h0")) @[TreePE.scala 82:64]
      node _io_sample_out_bits_scores_5_T_8 = asFixedPoint(_io_sample_out_bits_scores_5_T_7, 8) @[TreePE.scala 82:217]
      node _io_sample_out_bits_scores_5_T_9 = add(scores_bits[5], _io_sample_out_bits_scores_5_T_8) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_5_T_10 = tail(_io_sample_out_bits_scores_5_T_9, 1) @[TreePE.scala 82:58]
      node _io_sample_out_bits_scores_5_T_11 = asFixedPoint(_io_sample_out_bits_scores_5_T_10, 8) @[TreePE.scala 82:58]
      io.sample_out.bits.scores[5] <= _io_sample_out_bits_scores_5_T_11 @[TreePE.scala 82:40]
      reg io_sample_out_bits_dest_REG : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_dest_REG) @[TreePE.scala 84:43]
      io_sample_out_bits_dest_REG <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 84:43]
      node _io_sample_out_bits_dest_T = eq(io_sample_out_bits_dest_REG, UInt<1>("h1")) @[TreePE.scala 84:69]
      io.sample_out.bits.dest <= _io_sample_out_bits_dest_T @[TreePE.scala 84:33]
      reg io_sample_out_bits_last_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_last_REG) @[TreePE.scala 85:43]
      io_sample_out_bits_last_REG <= queue.io.deq.bits.last @[TreePE.scala 85:43]
      io.sample_out.bits.last <= io_sample_out_bits_last_REG @[TreePE.scala 85:33]
    else :
      io.sample_out.bits.clock_cycles is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.last is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.dest is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[0] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[1] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[2] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[3] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.weights[4] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[0] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[1] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[2] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[3] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[4] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.scores[5] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.tree_to_exec is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.search_for_root is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.shift is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.offset is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[0] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[1] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[2] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[3] is invalid @[TreePE.scala 88:26]
      io.sample_out.bits.features[4] is invalid @[TreePE.scala 88:26]
      io.sample_out.valid <= UInt<1>("h0") @[TreePE.scala 89:27]
    queue.io.deq.ready <= io.sample_out.ready @[TreePE.scala 92:17]

  module TreePEwithBRAM_19 :
    input clock : Clock
    input reset : Reset
    output pe_io : { flip sample_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, flip mem : { flip enable_1 : UInt<1>, flip write_1 : UInt<1>, flip addr_1 : UInt<13>, flip dataIn_1 : UInt<64>, dataOut_1 : UInt<64>, flip enable_2 : UInt<1>, flip write_2 : UInt<1>, flip addr_2 : UInt<13>, flip dataIn_2 : UInt<64>, dataOut_2 : UInt<64>}, sample_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}}

    inst pe of TreePE_19 @[TreePE.scala 104:18]
    pe.clock <= clock
    pe.reset <= reset
    pe_io.sample_out.bits <= pe.io.sample_out.bits @[TreePE.scala 106:9]
    pe_io.sample_out.valid <= pe.io.sample_out.valid @[TreePE.scala 106:9]
    pe.io.sample_out.ready <= pe_io.sample_out.ready @[TreePE.scala 106:9]
    pe.io.mem <= pe_io.mem @[TreePE.scala 106:9]
    pe.io.sample_in <= pe_io.sample_in @[TreePE.scala 106:9]

  extmodule BRAMBlackBoxSingle_15 :
    input clk : Clock
    input a_wr : UInt<1>
    input a_addr : UInt<11>
    input a_din : UInt<32>
    output a_dout : UInt<32>
    input b_wr : UInt<1>
    input b_addr : UInt<11>
    input b_din : UInt<32>
    output b_dout : UInt<32>
    defname = BRAMBlackBoxSingle
    parameter DATA = 32
    parameter ADDR = 11

  module BRAMBlackBoxAsymm_15 :
    input clock : Clock
    input reset : Reset
    output io : { flip clk : Clock, flip a_en : UInt<1>, flip a_wr : UInt<1>, flip a_addr : UInt<13>, flip a_din : UInt<32>, a_dout : UInt<32>, flip b_en : UInt<1>, flip b_wr : UInt<1>, flip b_addr : UInt<11>, flip b_din : UInt<64>, b_dout : UInt<64>}

    inst bram_1 of BRAMBlackBoxSingle_15 @[ME.scala 202:24]
    bram_1.b_dout is invalid
    bram_1.b_din is invalid
    bram_1.b_addr is invalid
    bram_1.b_wr is invalid
    bram_1.a_dout is invalid
    bram_1.a_din is invalid
    bram_1.a_addr is invalid
    bram_1.a_wr is invalid
    bram_1.clk is invalid
    node _bram_1_io_a_wr_T = mux(io.a_en, io.a_wr, io.b_wr) @[ME.scala 204:26]
    bram_1.a_wr <= _bram_1_io_a_wr_T @[ME.scala 204:20]
    node _bram_1_io_a_addr_T = shr(io.a_addr, 2) @[ME.scala 205:49]
    node _bram_1_io_a_addr_T_1 = shl(io.b_addr, 1) @[ME.scala 205:67]
    node _bram_1_io_a_addr_T_2 = mux(io.a_en, _bram_1_io_a_addr_T, _bram_1_io_a_addr_T_1) @[ME.scala 205:28]
    bram_1.a_addr <= _bram_1_io_a_addr_T_2 @[ME.scala 205:22]
    node _bram_1_io_a_din_T = bits(io.b_din, 31, 0) @[ME.scala 206:55]
    node _bram_1_io_a_din_T_1 = mux(io.a_en, io.a_din, _bram_1_io_a_din_T) @[ME.scala 206:27]
    bram_1.a_din <= _bram_1_io_a_din_T_1 @[ME.scala 206:21]
    node _io_b_dout_T = cat(bram_1.b_dout, bram_1.a_dout) @[Cat.scala 33:92]
    io.b_dout <= _io_b_dout_T @[ME.scala 207:15]
    node _bram_1_io_b_wr_T = mux(io.a_en, UInt<1>("h0"), io.b_wr) @[ME.scala 208:26]
    bram_1.b_wr <= _bram_1_io_b_wr_T @[ME.scala 208:20]
    node _bram_1_io_b_addr_T = shl(io.b_addr, 1) @[ME.scala 209:36]
    node _bram_1_io_b_addr_T_1 = add(_bram_1_io_b_addr_T, UInt<1>("h1")) @[ME.scala 209:42]
    node _bram_1_io_b_addr_T_2 = tail(_bram_1_io_b_addr_T_1, 1) @[ME.scala 209:42]
    bram_1.b_addr <= _bram_1_io_b_addr_T_2 @[ME.scala 209:22]
    node _bram_1_io_b_din_T = bits(io.b_din, 63, 32) @[ME.scala 210:32]
    bram_1.b_din <= _bram_1_io_b_din_T @[ME.scala 210:21]
    io.a_dout <= bram_1.a_dout @[ME.scala 211:15]
    bram_1.clk <= io.clk @[ME.scala 212:19]

  extmodule BRAMBlackBoxSingle_16 :
    input clk : Clock
    input a_wr : UInt<1>
    input a_addr : UInt<11>
    input a_din : UInt<32>
    output a_dout : UInt<32>
    input b_wr : UInt<1>
    input b_addr : UInt<11>
    input b_din : UInt<32>
    output b_dout : UInt<32>
    defname = BRAMBlackBoxSingle
    parameter DATA = 32
    parameter ADDR = 11

  module BRAMBlackBoxAsymm_16 :
    input clock : Clock
    input reset : Reset
    output io : { flip clk : Clock, flip a_en : UInt<1>, flip a_wr : UInt<1>, flip a_addr : UInt<13>, flip a_din : UInt<32>, a_dout : UInt<32>, flip b_en : UInt<1>, flip b_wr : UInt<1>, flip b_addr : UInt<11>, flip b_din : UInt<64>, b_dout : UInt<64>}

    inst bram_1 of BRAMBlackBoxSingle_16 @[ME.scala 202:24]
    bram_1.b_dout is invalid
    bram_1.b_din is invalid
    bram_1.b_addr is invalid
    bram_1.b_wr is invalid
    bram_1.a_dout is invalid
    bram_1.a_din is invalid
    bram_1.a_addr is invalid
    bram_1.a_wr is invalid
    bram_1.clk is invalid
    node _bram_1_io_a_wr_T = mux(io.a_en, io.a_wr, io.b_wr) @[ME.scala 204:26]
    bram_1.a_wr <= _bram_1_io_a_wr_T @[ME.scala 204:20]
    node _bram_1_io_a_addr_T = shr(io.a_addr, 2) @[ME.scala 205:49]
    node _bram_1_io_a_addr_T_1 = shl(io.b_addr, 1) @[ME.scala 205:67]
    node _bram_1_io_a_addr_T_2 = mux(io.a_en, _bram_1_io_a_addr_T, _bram_1_io_a_addr_T_1) @[ME.scala 205:28]
    bram_1.a_addr <= _bram_1_io_a_addr_T_2 @[ME.scala 205:22]
    node _bram_1_io_a_din_T = bits(io.b_din, 31, 0) @[ME.scala 206:55]
    node _bram_1_io_a_din_T_1 = mux(io.a_en, io.a_din, _bram_1_io_a_din_T) @[ME.scala 206:27]
    bram_1.a_din <= _bram_1_io_a_din_T_1 @[ME.scala 206:21]
    node _io_b_dout_T = cat(bram_1.b_dout, bram_1.a_dout) @[Cat.scala 33:92]
    io.b_dout <= _io_b_dout_T @[ME.scala 207:15]
    node _bram_1_io_b_wr_T = mux(io.a_en, UInt<1>("h0"), io.b_wr) @[ME.scala 208:26]
    bram_1.b_wr <= _bram_1_io_b_wr_T @[ME.scala 208:20]
    node _bram_1_io_b_addr_T = shl(io.b_addr, 1) @[ME.scala 209:36]
    node _bram_1_io_b_addr_T_1 = add(_bram_1_io_b_addr_T, UInt<1>("h1")) @[ME.scala 209:42]
    node _bram_1_io_b_addr_T_2 = tail(_bram_1_io_b_addr_T_1, 1) @[ME.scala 209:42]
    bram_1.b_addr <= _bram_1_io_b_addr_T_2 @[ME.scala 209:22]
    node _bram_1_io_b_din_T = bits(io.b_din, 63, 32) @[ME.scala 210:32]
    bram_1.b_din <= _bram_1_io_b_din_T @[ME.scala 210:21]
    io.a_dout <= bram_1.a_dout @[ME.scala 211:15]
    bram_1.clk <= io.clk @[ME.scala 212:19]

  extmodule BRAMBlackBoxSingle_17 :
    input clk : Clock
    input a_wr : UInt<1>
    input a_addr : UInt<11>
    input a_din : UInt<32>
    output a_dout : UInt<32>
    input b_wr : UInt<1>
    input b_addr : UInt<11>
    input b_din : UInt<32>
    output b_dout : UInt<32>
    defname = BRAMBlackBoxSingle
    parameter DATA = 32
    parameter ADDR = 11

  module BRAMBlackBoxAsymm_17 :
    input clock : Clock
    input reset : Reset
    output io : { flip clk : Clock, flip a_en : UInt<1>, flip a_wr : UInt<1>, flip a_addr : UInt<13>, flip a_din : UInt<32>, a_dout : UInt<32>, flip b_en : UInt<1>, flip b_wr : UInt<1>, flip b_addr : UInt<11>, flip b_din : UInt<64>, b_dout : UInt<64>}

    inst bram_1 of BRAMBlackBoxSingle_17 @[ME.scala 202:24]
    bram_1.b_dout is invalid
    bram_1.b_din is invalid
    bram_1.b_addr is invalid
    bram_1.b_wr is invalid
    bram_1.a_dout is invalid
    bram_1.a_din is invalid
    bram_1.a_addr is invalid
    bram_1.a_wr is invalid
    bram_1.clk is invalid
    node _bram_1_io_a_wr_T = mux(io.a_en, io.a_wr, io.b_wr) @[ME.scala 204:26]
    bram_1.a_wr <= _bram_1_io_a_wr_T @[ME.scala 204:20]
    node _bram_1_io_a_addr_T = shr(io.a_addr, 2) @[ME.scala 205:49]
    node _bram_1_io_a_addr_T_1 = shl(io.b_addr, 1) @[ME.scala 205:67]
    node _bram_1_io_a_addr_T_2 = mux(io.a_en, _bram_1_io_a_addr_T, _bram_1_io_a_addr_T_1) @[ME.scala 205:28]
    bram_1.a_addr <= _bram_1_io_a_addr_T_2 @[ME.scala 205:22]
    node _bram_1_io_a_din_T = bits(io.b_din, 31, 0) @[ME.scala 206:55]
    node _bram_1_io_a_din_T_1 = mux(io.a_en, io.a_din, _bram_1_io_a_din_T) @[ME.scala 206:27]
    bram_1.a_din <= _bram_1_io_a_din_T_1 @[ME.scala 206:21]
    node _io_b_dout_T = cat(bram_1.b_dout, bram_1.a_dout) @[Cat.scala 33:92]
    io.b_dout <= _io_b_dout_T @[ME.scala 207:15]
    node _bram_1_io_b_wr_T = mux(io.a_en, UInt<1>("h0"), io.b_wr) @[ME.scala 208:26]
    bram_1.b_wr <= _bram_1_io_b_wr_T @[ME.scala 208:20]
    node _bram_1_io_b_addr_T = shl(io.b_addr, 1) @[ME.scala 209:36]
    node _bram_1_io_b_addr_T_1 = add(_bram_1_io_b_addr_T, UInt<1>("h1")) @[ME.scala 209:42]
    node _bram_1_io_b_addr_T_2 = tail(_bram_1_io_b_addr_T_1, 1) @[ME.scala 209:42]
    bram_1.b_addr <= _bram_1_io_b_addr_T_2 @[ME.scala 209:22]
    node _bram_1_io_b_din_T = bits(io.b_din, 63, 32) @[ME.scala 210:32]
    bram_1.b_din <= _bram_1_io_b_din_T @[ME.scala 210:21]
    io.a_dout <= bram_1.a_dout @[ME.scala 211:15]
    bram_1.clk <= io.clk @[ME.scala 212:19]

  extmodule BRAMBlackBoxSingle_18 :
    input clk : Clock
    input a_wr : UInt<1>
    input a_addr : UInt<11>
    input a_din : UInt<32>
    output a_dout : UInt<32>
    input b_wr : UInt<1>
    input b_addr : UInt<11>
    input b_din : UInt<32>
    output b_dout : UInt<32>
    defname = BRAMBlackBoxSingle
    parameter DATA = 32
    parameter ADDR = 11

  module BRAMBlackBoxAsymm_18 :
    input clock : Clock
    input reset : Reset
    output io : { flip clk : Clock, flip a_en : UInt<1>, flip a_wr : UInt<1>, flip a_addr : UInt<13>, flip a_din : UInt<32>, a_dout : UInt<32>, flip b_en : UInt<1>, flip b_wr : UInt<1>, flip b_addr : UInt<11>, flip b_din : UInt<64>, b_dout : UInt<64>}

    inst bram_1 of BRAMBlackBoxSingle_18 @[ME.scala 202:24]
    bram_1.b_dout is invalid
    bram_1.b_din is invalid
    bram_1.b_addr is invalid
    bram_1.b_wr is invalid
    bram_1.a_dout is invalid
    bram_1.a_din is invalid
    bram_1.a_addr is invalid
    bram_1.a_wr is invalid
    bram_1.clk is invalid
    node _bram_1_io_a_wr_T = mux(io.a_en, io.a_wr, io.b_wr) @[ME.scala 204:26]
    bram_1.a_wr <= _bram_1_io_a_wr_T @[ME.scala 204:20]
    node _bram_1_io_a_addr_T = shr(io.a_addr, 2) @[ME.scala 205:49]
    node _bram_1_io_a_addr_T_1 = shl(io.b_addr, 1) @[ME.scala 205:67]
    node _bram_1_io_a_addr_T_2 = mux(io.a_en, _bram_1_io_a_addr_T, _bram_1_io_a_addr_T_1) @[ME.scala 205:28]
    bram_1.a_addr <= _bram_1_io_a_addr_T_2 @[ME.scala 205:22]
    node _bram_1_io_a_din_T = bits(io.b_din, 31, 0) @[ME.scala 206:55]
    node _bram_1_io_a_din_T_1 = mux(io.a_en, io.a_din, _bram_1_io_a_din_T) @[ME.scala 206:27]
    bram_1.a_din <= _bram_1_io_a_din_T_1 @[ME.scala 206:21]
    node _io_b_dout_T = cat(bram_1.b_dout, bram_1.a_dout) @[Cat.scala 33:92]
    io.b_dout <= _io_b_dout_T @[ME.scala 207:15]
    node _bram_1_io_b_wr_T = mux(io.a_en, UInt<1>("h0"), io.b_wr) @[ME.scala 208:26]
    bram_1.b_wr <= _bram_1_io_b_wr_T @[ME.scala 208:20]
    node _bram_1_io_b_addr_T = shl(io.b_addr, 1) @[ME.scala 209:36]
    node _bram_1_io_b_addr_T_1 = add(_bram_1_io_b_addr_T, UInt<1>("h1")) @[ME.scala 209:42]
    node _bram_1_io_b_addr_T_2 = tail(_bram_1_io_b_addr_T_1, 1) @[ME.scala 209:42]
    bram_1.b_addr <= _bram_1_io_b_addr_T_2 @[ME.scala 209:22]
    node _bram_1_io_b_din_T = bits(io.b_din, 63, 32) @[ME.scala 210:32]
    bram_1.b_din <= _bram_1_io_b_din_T @[ME.scala 210:21]
    io.a_dout <= bram_1.a_dout @[ME.scala 211:15]
    bram_1.clk <= io.clk @[ME.scala 212:19]

  extmodule BRAMBlackBoxSingle_19 :
    input clk : Clock
    input a_wr : UInt<1>
    input a_addr : UInt<11>
    input a_din : UInt<32>
    output a_dout : UInt<32>
    input b_wr : UInt<1>
    input b_addr : UInt<11>
    input b_din : UInt<32>
    output b_dout : UInt<32>
    defname = BRAMBlackBoxSingle
    parameter DATA = 32
    parameter ADDR = 11

  module BRAMBlackBoxAsymm_19 :
    input clock : Clock
    input reset : Reset
    output io : { flip clk : Clock, flip a_en : UInt<1>, flip a_wr : UInt<1>, flip a_addr : UInt<13>, flip a_din : UInt<32>, a_dout : UInt<32>, flip b_en : UInt<1>, flip b_wr : UInt<1>, flip b_addr : UInt<11>, flip b_din : UInt<64>, b_dout : UInt<64>}

    inst bram_1 of BRAMBlackBoxSingle_19 @[ME.scala 202:24]
    bram_1.b_dout is invalid
    bram_1.b_din is invalid
    bram_1.b_addr is invalid
    bram_1.b_wr is invalid
    bram_1.a_dout is invalid
    bram_1.a_din is invalid
    bram_1.a_addr is invalid
    bram_1.a_wr is invalid
    bram_1.clk is invalid
    node _bram_1_io_a_wr_T = mux(io.a_en, io.a_wr, io.b_wr) @[ME.scala 204:26]
    bram_1.a_wr <= _bram_1_io_a_wr_T @[ME.scala 204:20]
    node _bram_1_io_a_addr_T = shr(io.a_addr, 2) @[ME.scala 205:49]
    node _bram_1_io_a_addr_T_1 = shl(io.b_addr, 1) @[ME.scala 205:67]
    node _bram_1_io_a_addr_T_2 = mux(io.a_en, _bram_1_io_a_addr_T, _bram_1_io_a_addr_T_1) @[ME.scala 205:28]
    bram_1.a_addr <= _bram_1_io_a_addr_T_2 @[ME.scala 205:22]
    node _bram_1_io_a_din_T = bits(io.b_din, 31, 0) @[ME.scala 206:55]
    node _bram_1_io_a_din_T_1 = mux(io.a_en, io.a_din, _bram_1_io_a_din_T) @[ME.scala 206:27]
    bram_1.a_din <= _bram_1_io_a_din_T_1 @[ME.scala 206:21]
    node _io_b_dout_T = cat(bram_1.b_dout, bram_1.a_dout) @[Cat.scala 33:92]
    io.b_dout <= _io_b_dout_T @[ME.scala 207:15]
    node _bram_1_io_b_wr_T = mux(io.a_en, UInt<1>("h0"), io.b_wr) @[ME.scala 208:26]
    bram_1.b_wr <= _bram_1_io_b_wr_T @[ME.scala 208:20]
    node _bram_1_io_b_addr_T = shl(io.b_addr, 1) @[ME.scala 209:36]
    node _bram_1_io_b_addr_T_1 = add(_bram_1_io_b_addr_T, UInt<1>("h1")) @[ME.scala 209:42]
    node _bram_1_io_b_addr_T_2 = tail(_bram_1_io_b_addr_T_1, 1) @[ME.scala 209:42]
    bram_1.b_addr <= _bram_1_io_b_addr_T_2 @[ME.scala 209:22]
    node _bram_1_io_b_din_T = bits(io.b_din, 63, 32) @[ME.scala 210:32]
    bram_1.b_din <= _bram_1_io_b_din_T @[ME.scala 210:21]
    io.a_dout <= bram_1.a_dout @[ME.scala 211:15]
    bram_1.clk <= io.clk @[ME.scala 212:19]

  module Queue_43 :
    input clock : Clock
    input reset : Reset
    output io : { flip enq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, deq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, count : UInt<8>}

    cmem ram : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>} [128] @[Decoupled.scala 275:95]
    reg enq_ptr_value : UInt<7>, clock with :
      reset => (reset, UInt<7>("h0")) @[Counter.scala 61:40]
    reg deq_ptr_value : UInt<7>, clock with :
      reset => (reset, UInt<7>("h0")) @[Counter.scala 61:40]
    reg maybe_full : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[Decoupled.scala 278:27]
    node ptr_match = eq(enq_ptr_value, deq_ptr_value) @[Decoupled.scala 279:33]
    node _empty_T = eq(maybe_full, UInt<1>("h0")) @[Decoupled.scala 280:28]
    node empty = and(ptr_match, _empty_T) @[Decoupled.scala 280:25]
    node full = and(ptr_match, maybe_full) @[Decoupled.scala 281:24]
    node _do_enq_T = and(io.enq.ready, io.enq.valid) @[Decoupled.scala 52:35]
    wire do_enq : UInt<1>
    do_enq <= _do_enq_T
    node _do_deq_T = and(io.deq.ready, io.deq.valid) @[Decoupled.scala 52:35]
    wire do_deq : UInt<1>
    do_deq <= _do_deq_T
    when do_enq : @[Decoupled.scala 288:16]
      infer mport MPORT = ram[enq_ptr_value], clock @[Decoupled.scala 289:8]
      MPORT <= io.enq.bits @[Decoupled.scala 289:24]
      node wrap = eq(enq_ptr_value, UInt<7>("h7f")) @[Counter.scala 73:24]
      node _value_T = add(enq_ptr_value, UInt<1>("h1")) @[Counter.scala 77:24]
      node _value_T_1 = tail(_value_T, 1) @[Counter.scala 77:24]
      enq_ptr_value <= _value_T_1 @[Counter.scala 77:15]
    when do_deq : @[Decoupled.scala 292:16]
      node wrap_1 = eq(deq_ptr_value, UInt<7>("h7f")) @[Counter.scala 73:24]
      node _value_T_2 = add(deq_ptr_value, UInt<1>("h1")) @[Counter.scala 77:24]
      node _value_T_3 = tail(_value_T_2, 1) @[Counter.scala 77:24]
      deq_ptr_value <= _value_T_3 @[Counter.scala 77:15]
    node _T = neq(do_enq, do_deq) @[Decoupled.scala 295:15]
    when _T : @[Decoupled.scala 295:27]
      maybe_full <= do_enq @[Decoupled.scala 296:16]
    when UInt<1>("h0") : @[Decoupled.scala 298:15]
      enq_ptr_value <= UInt<1>("h0") @[Counter.scala 98:11]
      deq_ptr_value <= UInt<1>("h0") @[Counter.scala 98:11]
      maybe_full <= UInt<1>("h0") @[Decoupled.scala 301:16]
    node _io_deq_valid_T = eq(empty, UInt<1>("h0")) @[Decoupled.scala 304:19]
    io.deq.valid <= _io_deq_valid_T @[Decoupled.scala 304:16]
    node _io_enq_ready_T = eq(full, UInt<1>("h0")) @[Decoupled.scala 305:19]
    io.enq.ready <= _io_enq_ready_T @[Decoupled.scala 305:16]
    infer mport io_deq_bits_MPORT = ram[deq_ptr_value], clock @[Decoupled.scala 312:23]
    io.deq.bits <= io_deq_bits_MPORT @[Decoupled.scala 312:17]
    node _ptr_diff_T = sub(enq_ptr_value, deq_ptr_value) @[Decoupled.scala 328:32]
    node ptr_diff = tail(_ptr_diff_T, 1) @[Decoupled.scala 328:32]
    node _io_count_T = and(maybe_full, ptr_match) @[Decoupled.scala 331:32]
    node _io_count_T_1 = mux(_io_count_T, UInt<8>("h80"), UInt<1>("h0")) @[Decoupled.scala 331:20]
    node _io_count_T_2 = or(_io_count_T_1, ptr_diff) @[Decoupled.scala 331:62]
    io.count <= _io_count_T_2 @[Decoupled.scala 331:14]

  module Queue_44 :
    input clock : Clock
    input reset : Reset
    output io : { flip enq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, deq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, count : UInt<8>}

    cmem ram : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>} [128] @[Decoupled.scala 275:95]
    reg enq_ptr_value : UInt<7>, clock with :
      reset => (reset, UInt<7>("h0")) @[Counter.scala 61:40]
    reg deq_ptr_value : UInt<7>, clock with :
      reset => (reset, UInt<7>("h0")) @[Counter.scala 61:40]
    reg maybe_full : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[Decoupled.scala 278:27]
    node ptr_match = eq(enq_ptr_value, deq_ptr_value) @[Decoupled.scala 279:33]
    node _empty_T = eq(maybe_full, UInt<1>("h0")) @[Decoupled.scala 280:28]
    node empty = and(ptr_match, _empty_T) @[Decoupled.scala 280:25]
    node full = and(ptr_match, maybe_full) @[Decoupled.scala 281:24]
    node _do_enq_T = and(io.enq.ready, io.enq.valid) @[Decoupled.scala 52:35]
    wire do_enq : UInt<1>
    do_enq <= _do_enq_T
    node _do_deq_T = and(io.deq.ready, io.deq.valid) @[Decoupled.scala 52:35]
    wire do_deq : UInt<1>
    do_deq <= _do_deq_T
    when do_enq : @[Decoupled.scala 288:16]
      infer mport MPORT = ram[enq_ptr_value], clock @[Decoupled.scala 289:8]
      MPORT <= io.enq.bits @[Decoupled.scala 289:24]
      node wrap = eq(enq_ptr_value, UInt<7>("h7f")) @[Counter.scala 73:24]
      node _value_T = add(enq_ptr_value, UInt<1>("h1")) @[Counter.scala 77:24]
      node _value_T_1 = tail(_value_T, 1) @[Counter.scala 77:24]
      enq_ptr_value <= _value_T_1 @[Counter.scala 77:15]
    when do_deq : @[Decoupled.scala 292:16]
      node wrap_1 = eq(deq_ptr_value, UInt<7>("h7f")) @[Counter.scala 73:24]
      node _value_T_2 = add(deq_ptr_value, UInt<1>("h1")) @[Counter.scala 77:24]
      node _value_T_3 = tail(_value_T_2, 1) @[Counter.scala 77:24]
      deq_ptr_value <= _value_T_3 @[Counter.scala 77:15]
    node _T = neq(do_enq, do_deq) @[Decoupled.scala 295:15]
    when _T : @[Decoupled.scala 295:27]
      maybe_full <= do_enq @[Decoupled.scala 296:16]
    when UInt<1>("h0") : @[Decoupled.scala 298:15]
      enq_ptr_value <= UInt<1>("h0") @[Counter.scala 98:11]
      deq_ptr_value <= UInt<1>("h0") @[Counter.scala 98:11]
      maybe_full <= UInt<1>("h0") @[Decoupled.scala 301:16]
    node _io_deq_valid_T = eq(empty, UInt<1>("h0")) @[Decoupled.scala 304:19]
    io.deq.valid <= _io_deq_valid_T @[Decoupled.scala 304:16]
    node _io_enq_ready_T = eq(full, UInt<1>("h0")) @[Decoupled.scala 305:19]
    io.enq.ready <= _io_enq_ready_T @[Decoupled.scala 305:16]
    infer mport io_deq_bits_MPORT = ram[deq_ptr_value], clock @[Decoupled.scala 312:23]
    io.deq.bits <= io_deq_bits_MPORT @[Decoupled.scala 312:17]
    node _ptr_diff_T = sub(enq_ptr_value, deq_ptr_value) @[Decoupled.scala 328:32]
    node ptr_diff = tail(_ptr_diff_T, 1) @[Decoupled.scala 328:32]
    node _io_count_T = and(maybe_full, ptr_match) @[Decoupled.scala 331:32]
    node _io_count_T_1 = mux(_io_count_T, UInt<8>("h80"), UInt<1>("h0")) @[Decoupled.scala 331:20]
    node _io_count_T_2 = or(_io_count_T_1, ptr_diff) @[Decoupled.scala 331:62]
    io.count <= _io_count_T_2 @[Decoupled.scala 331:14]

  module RRArbiter_4 :
    input clock : Clock
    input reset : Reset
    output io : { flip in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}[2], out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, chosen : UInt<1>}

    wire choice : UInt
    choice <= UInt<1>("h1")
    io.chosen <= choice @[Arbiter.scala 54:13]
    io.out.valid <= io.in[io.chosen].valid @[Arbiter.scala 55:16]
    io.out.bits <= io.in[io.chosen].bits @[Arbiter.scala 56:15]
    node _ctrl_validMask_grantMask_lastGrant_T = and(io.out.ready, io.out.valid) @[Decoupled.scala 52:35]
    reg lastGrant : UInt<1>, clock with :
      reset => (UInt<1>("h0"), lastGrant) @[Reg.scala 19:16]
    when _ctrl_validMask_grantMask_lastGrant_T : @[Reg.scala 20:18]
      lastGrant <= io.chosen @[Reg.scala 20:22]
    node grantMask_0 = gt(UInt<1>("h0"), lastGrant) @[Arbiter.scala 81:49]
    node grantMask_1 = gt(UInt<1>("h1"), lastGrant) @[Arbiter.scala 81:49]
    node validMask_0 = and(io.in[0].valid, grantMask_0) @[Arbiter.scala 82:76]
    node validMask_1 = and(io.in[1].valid, grantMask_1) @[Arbiter.scala 82:76]
    node _ctrl_T = or(validMask_0, validMask_1) @[Arbiter.scala 45:68]
    node _ctrl_T_1 = or(_ctrl_T, io.in[0].valid) @[Arbiter.scala 45:68]
    node ctrl_1 = eq(validMask_0, UInt<1>("h0")) @[Arbiter.scala 45:78]
    node ctrl_2 = eq(_ctrl_T, UInt<1>("h0")) @[Arbiter.scala 45:78]
    node ctrl_3 = eq(_ctrl_T_1, UInt<1>("h0")) @[Arbiter.scala 45:78]
    node _T = and(UInt<1>("h1"), grantMask_0) @[Arbiter.scala 86:34]
    node _T_1 = or(_T, ctrl_2) @[Arbiter.scala 86:50]
    node _T_2 = and(ctrl_1, grantMask_1) @[Arbiter.scala 86:34]
    node _T_3 = or(_T_2, ctrl_3) @[Arbiter.scala 86:50]
    node _io_in_0_ready_T = and(_T_1, io.out.ready) @[Arbiter.scala 74:21]
    io.in[0].ready <= _io_in_0_ready_T @[Arbiter.scala 74:16]
    node _io_in_1_ready_T = and(_T_3, io.out.ready) @[Arbiter.scala 74:21]
    io.in[1].ready <= _io_in_1_ready_T @[Arbiter.scala 74:16]
    when io.in[0].valid : @[Arbiter.scala 91:26]
      choice <= UInt<1>("h0") @[Arbiter.scala 91:35]
    when validMask_1 : @[Arbiter.scala 93:24]
      choice <= UInt<1>("h1") @[Arbiter.scala 93:33]

  module FirstInterconnectPE_4 :
    input clock : Clock
    input reset : Reset
    output io : { flip sample_entering : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, flip sample_looping : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, sample_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}}

    inst queue_entering of Queue_43 @[Decoupled.scala 377:21]
    queue_entering.clock <= clock
    queue_entering.reset <= reset
    queue_entering.io.enq.valid <= io.sample_entering.valid @[Decoupled.scala 379:22]
    queue_entering.io.enq.bits.clock_cycles <= io.sample_entering.bits.clock_cycles @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.last <= io.sample_entering.bits.last @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.dest <= io.sample_entering.bits.dest @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.weights[0] <= io.sample_entering.bits.weights[0] @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.weights[1] <= io.sample_entering.bits.weights[1] @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.weights[2] <= io.sample_entering.bits.weights[2] @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.weights[3] <= io.sample_entering.bits.weights[3] @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.weights[4] <= io.sample_entering.bits.weights[4] @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.scores[0] <= io.sample_entering.bits.scores[0] @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.scores[1] <= io.sample_entering.bits.scores[1] @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.scores[2] <= io.sample_entering.bits.scores[2] @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.scores[3] <= io.sample_entering.bits.scores[3] @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.scores[4] <= io.sample_entering.bits.scores[4] @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.scores[5] <= io.sample_entering.bits.scores[5] @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.tree_to_exec <= io.sample_entering.bits.tree_to_exec @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.search_for_root <= io.sample_entering.bits.search_for_root @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.shift <= io.sample_entering.bits.shift @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.offset <= io.sample_entering.bits.offset @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.features[0] <= io.sample_entering.bits.features[0] @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.features[1] <= io.sample_entering.bits.features[1] @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.features[2] <= io.sample_entering.bits.features[2] @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.features[3] <= io.sample_entering.bits.features[3] @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.features[4] <= io.sample_entering.bits.features[4] @[Decoupled.scala 380:21]
    io.sample_entering.ready <= queue_entering.io.enq.ready @[Decoupled.scala 381:17]
    inst queue_looping of Queue_44 @[Decoupled.scala 377:21]
    queue_looping.clock <= clock
    queue_looping.reset <= reset
    queue_looping.io.enq.valid <= io.sample_looping.valid @[Decoupled.scala 379:22]
    queue_looping.io.enq.bits.clock_cycles <= io.sample_looping.bits.clock_cycles @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.last <= io.sample_looping.bits.last @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.dest <= io.sample_looping.bits.dest @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.weights[0] <= io.sample_looping.bits.weights[0] @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.weights[1] <= io.sample_looping.bits.weights[1] @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.weights[2] <= io.sample_looping.bits.weights[2] @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.weights[3] <= io.sample_looping.bits.weights[3] @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.weights[4] <= io.sample_looping.bits.weights[4] @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.scores[0] <= io.sample_looping.bits.scores[0] @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.scores[1] <= io.sample_looping.bits.scores[1] @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.scores[2] <= io.sample_looping.bits.scores[2] @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.scores[3] <= io.sample_looping.bits.scores[3] @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.scores[4] <= io.sample_looping.bits.scores[4] @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.scores[5] <= io.sample_looping.bits.scores[5] @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.tree_to_exec <= io.sample_looping.bits.tree_to_exec @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.search_for_root <= io.sample_looping.bits.search_for_root @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.shift <= io.sample_looping.bits.shift @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.offset <= io.sample_looping.bits.offset @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.features[0] <= io.sample_looping.bits.features[0] @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.features[1] <= io.sample_looping.bits.features[1] @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.features[2] <= io.sample_looping.bits.features[2] @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.features[3] <= io.sample_looping.bits.features[3] @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.features[4] <= io.sample_looping.bits.features[4] @[Decoupled.scala 380:21]
    io.sample_looping.ready <= queue_looping.io.enq.ready @[Decoupled.scala 381:17]
    inst arbiter of RRArbiter_4 @[Interconnect.scala 54:25]
    arbiter.clock <= clock
    arbiter.reset <= reset
    arbiter.io.in[0] <= queue_entering.io.deq @[Interconnect.scala 55:22]
    arbiter.io.in[1] <= queue_looping.io.deq @[Interconnect.scala 56:22]
    io.sample_out.bits <= arbiter.io.out.bits @[Interconnect.scala 57:19]
    io.sample_out.valid <= arbiter.io.out.valid @[Interconnect.scala 57:19]
    arbiter.io.out.ready <= io.sample_out.ready @[Interconnect.scala 57:19]

  module Queue_45 :
    input clock : Clock
    input reset : Reset
    output io : { flip enq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, deq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, count : UInt<3>}

    cmem ram : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>} [4] @[Decoupled.scala 275:95]
    reg enq_ptr_value : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[Counter.scala 61:40]
    reg deq_ptr_value : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[Counter.scala 61:40]
    reg maybe_full : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[Decoupled.scala 278:27]
    node ptr_match = eq(enq_ptr_value, deq_ptr_value) @[Decoupled.scala 279:33]
    node _empty_T = eq(maybe_full, UInt<1>("h0")) @[Decoupled.scala 280:28]
    node empty = and(ptr_match, _empty_T) @[Decoupled.scala 280:25]
    node full = and(ptr_match, maybe_full) @[Decoupled.scala 281:24]
    node _do_enq_T = and(io.enq.ready, io.enq.valid) @[Decoupled.scala 52:35]
    wire do_enq : UInt<1>
    do_enq <= _do_enq_T
    node _do_deq_T = and(io.deq.ready, io.deq.valid) @[Decoupled.scala 52:35]
    wire do_deq : UInt<1>
    do_deq <= _do_deq_T
    when do_enq : @[Decoupled.scala 288:16]
      infer mport MPORT = ram[enq_ptr_value], clock @[Decoupled.scala 289:8]
      MPORT <= io.enq.bits @[Decoupled.scala 289:24]
      node wrap = eq(enq_ptr_value, UInt<2>("h3")) @[Counter.scala 73:24]
      node _value_T = add(enq_ptr_value, UInt<1>("h1")) @[Counter.scala 77:24]
      node _value_T_1 = tail(_value_T, 1) @[Counter.scala 77:24]
      enq_ptr_value <= _value_T_1 @[Counter.scala 77:15]
    when do_deq : @[Decoupled.scala 292:16]
      node wrap_1 = eq(deq_ptr_value, UInt<2>("h3")) @[Counter.scala 73:24]
      node _value_T_2 = add(deq_ptr_value, UInt<1>("h1")) @[Counter.scala 77:24]
      node _value_T_3 = tail(_value_T_2, 1) @[Counter.scala 77:24]
      deq_ptr_value <= _value_T_3 @[Counter.scala 77:15]
    node _T = neq(do_enq, do_deq) @[Decoupled.scala 295:15]
    when _T : @[Decoupled.scala 295:27]
      maybe_full <= do_enq @[Decoupled.scala 296:16]
    when UInt<1>("h0") : @[Decoupled.scala 298:15]
      enq_ptr_value <= UInt<1>("h0") @[Counter.scala 98:11]
      deq_ptr_value <= UInt<1>("h0") @[Counter.scala 98:11]
      maybe_full <= UInt<1>("h0") @[Decoupled.scala 301:16]
    node _io_deq_valid_T = eq(empty, UInt<1>("h0")) @[Decoupled.scala 304:19]
    io.deq.valid <= _io_deq_valid_T @[Decoupled.scala 304:16]
    node _io_enq_ready_T = eq(full, UInt<1>("h0")) @[Decoupled.scala 305:19]
    io.enq.ready <= _io_enq_ready_T @[Decoupled.scala 305:16]
    infer mport io_deq_bits_MPORT = ram[deq_ptr_value], clock @[Decoupled.scala 312:23]
    io.deq.bits <= io_deq_bits_MPORT @[Decoupled.scala 312:17]
    node _ptr_diff_T = sub(enq_ptr_value, deq_ptr_value) @[Decoupled.scala 328:32]
    node ptr_diff = tail(_ptr_diff_T, 1) @[Decoupled.scala 328:32]
    node _io_count_T = and(maybe_full, ptr_match) @[Decoupled.scala 331:32]
    node _io_count_T_1 = mux(_io_count_T, UInt<3>("h4"), UInt<1>("h0")) @[Decoupled.scala 331:20]
    node _io_count_T_2 = or(_io_count_T_1, ptr_diff) @[Decoupled.scala 331:62]
    io.count <= _io_count_T_2 @[Decoupled.scala 331:14]

  module LastInterconnectPE_4 :
    input clock : Clock
    input reset : Reset
    output io : { flip sample_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, sample_looping : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, sample_leaving : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}}

    inst queue of Queue_45 @[Decoupled.scala 377:21]
    queue.clock <= clock
    queue.reset <= reset
    queue.io.enq.valid <= io.sample_in.valid @[Decoupled.scala 379:22]
    queue.io.enq.bits.clock_cycles <= io.sample_in.bits.clock_cycles @[Decoupled.scala 380:21]
    queue.io.enq.bits.last <= io.sample_in.bits.last @[Decoupled.scala 380:21]
    queue.io.enq.bits.dest <= io.sample_in.bits.dest @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[0] <= io.sample_in.bits.weights[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[1] <= io.sample_in.bits.weights[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[2] <= io.sample_in.bits.weights[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[3] <= io.sample_in.bits.weights[3] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[4] <= io.sample_in.bits.weights[4] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[0] <= io.sample_in.bits.scores[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[1] <= io.sample_in.bits.scores[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[2] <= io.sample_in.bits.scores[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[3] <= io.sample_in.bits.scores[3] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[4] <= io.sample_in.bits.scores[4] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[5] <= io.sample_in.bits.scores[5] @[Decoupled.scala 380:21]
    queue.io.enq.bits.tree_to_exec <= io.sample_in.bits.tree_to_exec @[Decoupled.scala 380:21]
    queue.io.enq.bits.search_for_root <= io.sample_in.bits.search_for_root @[Decoupled.scala 380:21]
    queue.io.enq.bits.shift <= io.sample_in.bits.shift @[Decoupled.scala 380:21]
    queue.io.enq.bits.offset <= io.sample_in.bits.offset @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[0] <= io.sample_in.bits.features[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[1] <= io.sample_in.bits.features[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[2] <= io.sample_in.bits.features[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[3] <= io.sample_in.bits.features[3] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[4] <= io.sample_in.bits.features[4] @[Decoupled.scala 380:21]
    io.sample_in.ready <= queue.io.enq.ready @[Decoupled.scala 381:17]
    io.sample_looping.bits <= queue.io.deq.bits @[Interconnect.scala 18:28]
    io.sample_leaving.bits.features <= queue.io.deq.bits.features @[Interconnect.scala 19:37]
    io.sample_leaving.bits.offset <= queue.io.deq.bits.offset @[Interconnect.scala 20:35]
    io.sample_leaving.bits.shift <= queue.io.deq.bits.shift @[Interconnect.scala 21:34]
    io.sample_leaving.bits.search_for_root <= queue.io.deq.bits.search_for_root @[Interconnect.scala 22:44]
    io.sample_leaving.bits.tree_to_exec <= queue.io.deq.bits.tree_to_exec @[Interconnect.scala 23:41]
    io.sample_leaving.bits.scores <= queue.io.deq.bits.scores @[Interconnect.scala 24:35]
    io.sample_leaving.bits.weights <= queue.io.deq.bits.weights @[Interconnect.scala 25:36]
    io.sample_leaving.bits.dest <= queue.io.deq.bits.dest @[Interconnect.scala 26:33]
    node _io_sample_leaving_bits_last_T = and(queue.io.deq.bits.last, queue.io.deq.bits.dest) @[Interconnect.scala 27:52]
    io.sample_leaving.bits.last <= _io_sample_leaving_bits_last_T @[Interconnect.scala 27:33]
    node _io_sample_looping_valid_T = eq(queue.io.deq.bits.dest, UInt<1>("h0")) @[Interconnect.scala 28:46]
    node _io_sample_looping_valid_T_1 = and(queue.io.deq.valid, _io_sample_looping_valid_T) @[Interconnect.scala 28:44]
    io.sample_looping.valid <= _io_sample_looping_valid_T_1 @[Interconnect.scala 28:29]
    node _io_sample_leaving_valid_T = and(queue.io.deq.valid, queue.io.deq.bits.dest) @[Interconnect.scala 29:44]
    io.sample_leaving.valid <= _io_sample_leaving_valid_T @[Interconnect.scala 29:29]
    io.sample_leaving.bits.clock_cycles <= queue.io.deq.bits.clock_cycles @[Interconnect.scala 30:41]
    node _queue_io_deq_ready_T = and(io.sample_leaving.ready, queue.io.deq.bits.dest) @[Interconnect.scala 32:45]
    node _queue_io_deq_ready_T_1 = eq(queue.io.deq.bits.dest, UInt<1>("h0")) @[Interconnect.scala 32:93]
    node _queue_io_deq_ready_T_2 = and(io.sample_looping.ready, _queue_io_deq_ready_T_1) @[Interconnect.scala 32:91]
    node _queue_io_deq_ready_T_3 = or(_queue_io_deq_ready_T, _queue_io_deq_ready_T_2) @[Interconnect.scala 32:64]
    queue.io.deq.ready <= _queue_io_deq_ready_T_3 @[Interconnect.scala 32:17]

  module Queue_46 :
    input clock : Clock
    input reset : Reset
    output io : { flip enq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, deq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, count : UInt<2>}

    cmem ram : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>} [3] @[Decoupled.scala 275:95]
    reg enq_ptr_value : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[Counter.scala 61:40]
    reg deq_ptr_value : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[Counter.scala 61:40]
    reg maybe_full : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[Decoupled.scala 278:27]
    node ptr_match = eq(enq_ptr_value, deq_ptr_value) @[Decoupled.scala 279:33]
    node _empty_T = eq(maybe_full, UInt<1>("h0")) @[Decoupled.scala 280:28]
    node empty = and(ptr_match, _empty_T) @[Decoupled.scala 280:25]
    node full = and(ptr_match, maybe_full) @[Decoupled.scala 281:24]
    node _do_enq_T = and(io.enq.ready, io.enq.valid) @[Decoupled.scala 52:35]
    wire do_enq : UInt<1>
    do_enq <= _do_enq_T
    node _do_deq_T = and(io.deq.ready, io.deq.valid) @[Decoupled.scala 52:35]
    wire do_deq : UInt<1>
    do_deq <= _do_deq_T
    when do_enq : @[Decoupled.scala 288:16]
      infer mport MPORT = ram[enq_ptr_value], clock @[Decoupled.scala 289:8]
      MPORT <= io.enq.bits @[Decoupled.scala 289:24]
      node wrap = eq(enq_ptr_value, UInt<2>("h2")) @[Counter.scala 73:24]
      node _value_T = add(enq_ptr_value, UInt<1>("h1")) @[Counter.scala 77:24]
      node _value_T_1 = tail(_value_T, 1) @[Counter.scala 77:24]
      enq_ptr_value <= _value_T_1 @[Counter.scala 77:15]
      when wrap : @[Counter.scala 87:20]
        enq_ptr_value <= UInt<1>("h0") @[Counter.scala 87:28]
    when do_deq : @[Decoupled.scala 292:16]
      node wrap_1 = eq(deq_ptr_value, UInt<2>("h2")) @[Counter.scala 73:24]
      node _value_T_2 = add(deq_ptr_value, UInt<1>("h1")) @[Counter.scala 77:24]
      node _value_T_3 = tail(_value_T_2, 1) @[Counter.scala 77:24]
      deq_ptr_value <= _value_T_3 @[Counter.scala 77:15]
      when wrap_1 : @[Counter.scala 87:20]
        deq_ptr_value <= UInt<1>("h0") @[Counter.scala 87:28]
    node _T = neq(do_enq, do_deq) @[Decoupled.scala 295:15]
    when _T : @[Decoupled.scala 295:27]
      maybe_full <= do_enq @[Decoupled.scala 296:16]
    when UInt<1>("h0") : @[Decoupled.scala 298:15]
      enq_ptr_value <= UInt<1>("h0") @[Counter.scala 98:11]
      deq_ptr_value <= UInt<1>("h0") @[Counter.scala 98:11]
      maybe_full <= UInt<1>("h0") @[Decoupled.scala 301:16]
    node _io_deq_valid_T = eq(empty, UInt<1>("h0")) @[Decoupled.scala 304:19]
    io.deq.valid <= _io_deq_valid_T @[Decoupled.scala 304:16]
    node _io_enq_ready_T = eq(full, UInt<1>("h0")) @[Decoupled.scala 305:19]
    io.enq.ready <= _io_enq_ready_T @[Decoupled.scala 305:16]
    infer mport io_deq_bits_MPORT = ram[deq_ptr_value], clock @[Decoupled.scala 312:23]
    io.deq.bits <= io_deq_bits_MPORT @[Decoupled.scala 312:17]
    node _ptr_diff_T = sub(enq_ptr_value, deq_ptr_value) @[Decoupled.scala 328:32]
    node ptr_diff = tail(_ptr_diff_T, 1) @[Decoupled.scala 328:32]
    node _io_count_T = mux(maybe_full, UInt<2>("h3"), UInt<1>("h0")) @[Decoupled.scala 335:10]
    node _io_count_T_1 = gt(deq_ptr_value, enq_ptr_value) @[Decoupled.scala 336:25]
    node _io_count_T_2 = add(UInt<2>("h3"), ptr_diff) @[Decoupled.scala 336:57]
    node _io_count_T_3 = tail(_io_count_T_2, 1) @[Decoupled.scala 336:57]
    node _io_count_T_4 = mux(_io_count_T_1, _io_count_T_3, ptr_diff) @[Decoupled.scala 336:10]
    node _io_count_T_5 = mux(ptr_match, _io_count_T, _io_count_T_4) @[Decoupled.scala 333:20]
    io.count <= _io_count_T_5 @[Decoupled.scala 333:14]

  module IncrementTreePE_4 :
    input clock : Clock
    input reset : Reset
    output io : { flip sample_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}, sample_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<32><<16>>[5], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[6], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>, clock_cycles : UInt<32>}}}

    inst queue of Queue_46 @[Decoupled.scala 377:21]
    queue.clock <= clock
    queue.reset <= reset
    queue.io.enq.valid <= io.sample_in.valid @[Decoupled.scala 379:22]
    queue.io.enq.bits.clock_cycles <= io.sample_in.bits.clock_cycles @[Decoupled.scala 380:21]
    queue.io.enq.bits.last <= io.sample_in.bits.last @[Decoupled.scala 380:21]
    queue.io.enq.bits.dest <= io.sample_in.bits.dest @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[0] <= io.sample_in.bits.weights[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[1] <= io.sample_in.bits.weights[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[2] <= io.sample_in.bits.weights[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[3] <= io.sample_in.bits.weights[3] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[4] <= io.sample_in.bits.weights[4] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[0] <= io.sample_in.bits.scores[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[1] <= io.sample_in.bits.scores[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[2] <= io.sample_in.bits.scores[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[3] <= io.sample_in.bits.scores[3] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[4] <= io.sample_in.bits.scores[4] @[Decoupled.scala 380:21]
    queue.io.enq.bits.scores[5] <= io.sample_in.bits.scores[5] @[Decoupled.scala 380:21]
    queue.io.enq.bits.tree_to_exec <= io.sample_in.bits.tree_to_exec @[Decoupled.scala 380:21]
    queue.io.enq.bits.search_for_root <= io.sample_in.bits.search_for_root @[Decoupled.scala 380:21]
    queue.io.enq.bits.shift <= io.sample_in.bits.shift @[Decoupled.scala 380:21]
    queue.io.enq.bits.offset <= io.sample_in.bits.offset @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[0] <= io.sample_in.bits.features[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[1] <= io.sample_in.bits.features[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[2] <= io.sample_in.bits.features[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[3] <= io.sample_in.bits.features[3] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[4] <= io.sample_in.bits.features[4] @[Decoupled.scala 380:21]
    io.sample_in.ready <= queue.io.enq.ready @[Decoupled.scala 381:17]
    io.sample_out.bits.features <= queue.io.deq.bits.features @[IncrementTreePE.scala 17:33]
    io.sample_out.bits.weights <= queue.io.deq.bits.weights @[IncrementTreePE.scala 18:32]
    node _io_sample_out_bits_tree_to_exec_T = add(queue.io.deq.bits.tree_to_exec, UInt<1>("h1")) @[IncrementTreePE.scala 19:64]
    node _io_sample_out_bits_tree_to_exec_T_1 = tail(_io_sample_out_bits_tree_to_exec_T, 1) @[IncrementTreePE.scala 19:64]
    io.sample_out.bits.tree_to_exec <= _io_sample_out_bits_tree_to_exec_T_1 @[IncrementTreePE.scala 19:37]
    io.sample_out.bits.shift <= queue.io.deq.bits.shift @[IncrementTreePE.scala 20:30]
    node _io_sample_out_bits_offset_T = add(queue.io.deq.bits.tree_to_exec, UInt<1>("h1")) @[IncrementTreePE.scala 21:58]
    node _io_sample_out_bits_offset_T_1 = tail(_io_sample_out_bits_offset_T, 1) @[IncrementTreePE.scala 21:58]
    io.sample_out.bits.offset <= _io_sample_out_bits_offset_T_1 @[IncrementTreePE.scala 21:31]
    io.sample_out.bits.scores <= queue.io.deq.bits.scores @[IncrementTreePE.scala 22:31]
    io.sample_out.bits.search_for_root <= queue.io.deq.bits.search_for_root @[IncrementTreePE.scala 23:40]
    io.sample_out.bits.dest <= queue.io.deq.bits.dest @[IncrementTreePE.scala 24:29]
    io.sample_out.bits.last <= queue.io.deq.bits.last @[IncrementTreePE.scala 25:29]
    io.sample_out.bits.clock_cycles <= queue.io.deq.bits.clock_cycles @[IncrementTreePE.scala 26:37]
    io.sample_out.valid <= queue.io.deq.valid @[IncrementTreePE.scala 28:25]
    queue.io.deq.ready <= io.sample_out.ready @[IncrementTreePE.scala 30:17]

  module TreePEsWrapper :
    input clock : Clock
    input reset : UInt<1>
    output wrapper_io : { sample_in : { flip TDATA : UInt<384>, flip TLAST : UInt<1>, TREADY : UInt<1>, flip TVALID : UInt<1>}, flip sample_out : { flip TDATA : UInt<384>, flip TLAST : UInt<1>, TREADY : UInt<1>, flip TVALID : UInt<1>}}
    output brams_io_0 : { flip bram_addr_a : UInt<13>, flip bram_clk_a : Clock, flip bram_wrdata_a : UInt<32>, bram_rddata_a : UInt<32>, flip bram_en_a : UInt<1>, flip bram_rst_a : UInt<1>, flip bram_we_a : UInt<4>}
    output brams_io_1 : { flip bram_addr_a : UInt<13>, flip bram_clk_a : Clock, flip bram_wrdata_a : UInt<32>, bram_rddata_a : UInt<32>, flip bram_en_a : UInt<1>, flip bram_rst_a : UInt<1>, flip bram_we_a : UInt<4>}
    output brams_io_2 : { flip bram_addr_a : UInt<13>, flip bram_clk_a : Clock, flip bram_wrdata_a : UInt<32>, bram_rddata_a : UInt<32>, flip bram_en_a : UInt<1>, flip bram_rst_a : UInt<1>, flip bram_we_a : UInt<4>}
    output brams_io_3 : { flip bram_addr_a : UInt<13>, flip bram_clk_a : Clock, flip bram_wrdata_a : UInt<32>, bram_rddata_a : UInt<32>, flip bram_en_a : UInt<1>, flip bram_rst_a : UInt<1>, flip bram_we_a : UInt<4>}
    output brams_io_4 : { flip bram_addr_a : UInt<13>, flip bram_clk_a : Clock, flip bram_wrdata_a : UInt<32>, bram_rddata_a : UInt<32>, flip bram_en_a : UInt<1>, flip bram_rst_a : UInt<1>, flip bram_we_a : UInt<4>}
    output brams_io_5 : { flip bram_addr_a : UInt<13>, flip bram_clk_a : Clock, flip bram_wrdata_a : UInt<32>, bram_rddata_a : UInt<32>, flip bram_en_a : UInt<1>, flip bram_rst_a : UInt<1>, flip bram_we_a : UInt<4>}
    output brams_io_6 : { flip bram_addr_a : UInt<13>, flip bram_clk_a : Clock, flip bram_wrdata_a : UInt<32>, bram_rddata_a : UInt<32>, flip bram_en_a : UInt<1>, flip bram_rst_a : UInt<1>, flip bram_we_a : UInt<4>}
    output brams_io_7 : { flip bram_addr_a : UInt<13>, flip bram_clk_a : Clock, flip bram_wrdata_a : UInt<32>, bram_rddata_a : UInt<32>, flip bram_en_a : UInt<1>, flip bram_rst_a : UInt<1>, flip bram_we_a : UInt<4>}
    output brams_io_8 : { flip bram_addr_a : UInt<13>, flip bram_clk_a : Clock, flip bram_wrdata_a : UInt<32>, bram_rddata_a : UInt<32>, flip bram_en_a : UInt<1>, flip bram_rst_a : UInt<1>, flip bram_we_a : UInt<4>}
    output brams_io_9 : { flip bram_addr_a : UInt<13>, flip bram_clk_a : Clock, flip bram_wrdata_a : UInt<32>, bram_rddata_a : UInt<32>, flip bram_en_a : UInt<1>, flip bram_rst_a : UInt<1>, flip bram_we_a : UInt<4>}
    output brams_io_10 : { flip bram_addr_a : UInt<13>, flip bram_clk_a : Clock, flip bram_wrdata_a : UInt<32>, bram_rddata_a : UInt<32>, flip bram_en_a : UInt<1>, flip bram_rst_a : UInt<1>, flip bram_we_a : UInt<4>}
    output brams_io_11 : { flip bram_addr_a : UInt<13>, flip bram_clk_a : Clock, flip bram_wrdata_a : UInt<32>, bram_rddata_a : UInt<32>, flip bram_en_a : UInt<1>, flip bram_rst_a : UInt<1>, flip bram_we_a : UInt<4>}
    output brams_io_12 : { flip bram_addr_a : UInt<13>, flip bram_clk_a : Clock, flip bram_wrdata_a : UInt<32>, bram_rddata_a : UInt<32>, flip bram_en_a : UInt<1>, flip bram_rst_a : UInt<1>, flip bram_we_a : UInt<4>}
    output brams_io_13 : { flip bram_addr_a : UInt<13>, flip bram_clk_a : Clock, flip bram_wrdata_a : UInt<32>, bram_rddata_a : UInt<32>, flip bram_en_a : UInt<1>, flip bram_rst_a : UInt<1>, flip bram_we_a : UInt<4>}
    output brams_io_14 : { flip bram_addr_a : UInt<13>, flip bram_clk_a : Clock, flip bram_wrdata_a : UInt<32>, bram_rddata_a : UInt<32>, flip bram_en_a : UInt<1>, flip bram_rst_a : UInt<1>, flip bram_we_a : UInt<4>}
    output brams_io_15 : { flip bram_addr_a : UInt<13>, flip bram_clk_a : Clock, flip bram_wrdata_a : UInt<32>, bram_rddata_a : UInt<32>, flip bram_en_a : UInt<1>, flip bram_rst_a : UInt<1>, flip bram_we_a : UInt<4>}
    output brams_io_16 : { flip bram_addr_a : UInt<13>, flip bram_clk_a : Clock, flip bram_wrdata_a : UInt<32>, bram_rddata_a : UInt<32>, flip bram_en_a : UInt<1>, flip bram_rst_a : UInt<1>, flip bram_we_a : UInt<4>}
    output brams_io_17 : { flip bram_addr_a : UInt<13>, flip bram_clk_a : Clock, flip bram_wrdata_a : UInt<32>, bram_rddata_a : UInt<32>, flip bram_en_a : UInt<1>, flip bram_rst_a : UInt<1>, flip bram_we_a : UInt<4>}
    output brams_io_18 : { flip bram_addr_a : UInt<13>, flip bram_clk_a : Clock, flip bram_wrdata_a : UInt<32>, bram_rddata_a : UInt<32>, flip bram_en_a : UInt<1>, flip bram_rst_a : UInt<1>, flip bram_we_a : UInt<4>}
    output brams_io_19 : { flip bram_addr_a : UInt<13>, flip bram_clk_a : Clock, flip bram_wrdata_a : UInt<32>, bram_rddata_a : UInt<32>, flip bram_en_a : UInt<1>, flip bram_rst_a : UInt<1>, flip bram_we_a : UInt<4>}

    wire _cycles_counter_WIRE : UInt<32> @[TreePEsWrapper.scala 43:50]
    _cycles_counter_WIRE <= UInt<1>("h0") @[TreePEsWrapper.scala 43:50]
    reg cycles_counter : UInt, clock with :
      reset => (reset, _cycles_counter_WIRE) @[TreePEsWrapper.scala 43:37]
    reg counting : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[TreePEsWrapper.scala 44:31]
    reg stop_count : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[TreePEsWrapper.scala 45:33]
    inst forward_converter of ForwardConverter @[TreePEsWrapper.scala 47:39]
    forward_converter.clock <= clock
    forward_converter.reset <= reset
    inst backward_converter of BackwardConverter @[TreePEsWrapper.scala 48:40]
    backward_converter.clock <= clock
    backward_converter.reset <= reset
    inst dispatcher of DispatcherPE @[TreePEsWrapper.scala 50:32]
    dispatcher.clock <= clock
    dispatcher.reset <= reset
    inst voter of VoterPE @[TreePEsWrapper.scala 51:27]
    voter.clock <= clock
    voter.reset <= reset
    dispatcher.io.sample_in <= forward_converter.io.sample_out @[Converter.scala 34:23]
    backward_converter.io.sample_in.bits.features[0] <= voter.io.sample_out.bits.features[0] @[VoterPE.scala 52:55]
    backward_converter.io.sample_in.bits.features[1] <= voter.io.sample_out.bits.features[1] @[VoterPE.scala 52:55]
    backward_converter.io.sample_in.bits.features[2] <= voter.io.sample_out.bits.features[2] @[VoterPE.scala 52:55]
    backward_converter.io.sample_in.bits.features[3] <= voter.io.sample_out.bits.features[3] @[VoterPE.scala 52:55]
    backward_converter.io.sample_in.bits.features[4] <= voter.io.sample_out.bits.features[4] @[VoterPE.scala 52:55]
    backward_converter.io.sample_in.bits.weights[0] <= voter.io.sample_out.bits.weights[0] @[VoterPE.scala 53:54]
    backward_converter.io.sample_in.bits.weights[1] <= voter.io.sample_out.bits.weights[1] @[VoterPE.scala 53:54]
    backward_converter.io.sample_in.bits.weights[2] <= voter.io.sample_out.bits.weights[2] @[VoterPE.scala 53:54]
    backward_converter.io.sample_in.bits.weights[3] <= voter.io.sample_out.bits.weights[3] @[VoterPE.scala 53:54]
    backward_converter.io.sample_in.bits.weights[4] <= voter.io.sample_out.bits.weights[4] @[VoterPE.scala 53:54]
    backward_converter.io.sample_in.bits.tree_to_exec <= voter.io.sample_out.bits.tree_to_exec @[VoterPE.scala 54:59]
    backward_converter.io.sample_in.bits.shift <= voter.io.sample_out.bits.shift @[VoterPE.scala 55:52]
    backward_converter.io.sample_in.bits.offset <= voter.io.sample_out.bits.offset @[VoterPE.scala 56:53]
    backward_converter.io.sample_in.bits.scores[0] <= voter.io.sample_out.bits.scores[0] @[VoterPE.scala 57:53]
    backward_converter.io.sample_in.bits.scores[1] <= voter.io.sample_out.bits.scores[1] @[VoterPE.scala 57:53]
    backward_converter.io.sample_in.bits.scores[2] <= voter.io.sample_out.bits.scores[2] @[VoterPE.scala 57:53]
    backward_converter.io.sample_in.bits.scores[3] <= voter.io.sample_out.bits.scores[3] @[VoterPE.scala 57:53]
    backward_converter.io.sample_in.bits.scores[4] <= voter.io.sample_out.bits.scores[4] @[VoterPE.scala 57:53]
    backward_converter.io.sample_in.bits.scores[5] <= voter.io.sample_out.bits.scores[5] @[VoterPE.scala 57:53]
    backward_converter.io.sample_in.bits.search_for_root <= voter.io.sample_out.bits.search_for_root @[VoterPE.scala 58:62]
    backward_converter.io.sample_in.bits.dest <= voter.io.sample_out.bits.dest @[VoterPE.scala 59:51]
    backward_converter.io.sample_in.bits.last <= voter.io.sample_out.bits.last @[VoterPE.scala 60:51]
    backward_converter.io.sample_in.valid <= voter.io.sample_out.valid @[VoterPE.scala 61:47]
    voter.io.sample_out.ready <= backward_converter.io.sample_in.ready @[VoterPE.scala 62:29]
    node _T = eq(counting, UInt<1>("h0")) @[TreePEsWrapper.scala 57:44]
    node _T_1 = and(wrapper_io.sample_in.TVALID, _T) @[TreePEsWrapper.scala 57:42]
    node _T_2 = eq(stop_count, UInt<1>("h0")) @[TreePEsWrapper.scala 57:56]
    node _T_3 = and(_T_1, _T_2) @[TreePEsWrapper.scala 57:54]
    when _T_3 : @[TreePEsWrapper.scala 57:68]
      counting <= UInt<1>("h1") @[TreePEsWrapper.scala 58:22]
    else :
      node _T_4 = and(voter.io.sample_out.valid, voter.io.sample_out.bits.last) @[TreePEsWrapper.scala 59:46]
      when _T_4 : @[TreePEsWrapper.scala 59:78]
        counting <= UInt<1>("h0") @[TreePEsWrapper.scala 60:22]
        stop_count <= UInt<1>("h1") @[TreePEsWrapper.scala 61:24]
      else :
        counting <= counting @[TreePEsWrapper.scala 63:22]
    inst pes_0 of TreePEwithBRAM @[TreePEsWrapper.scala 67:69]
    pes_0.clock <= clock
    pes_0.reset <= reset
    inst brams_0 of BRAMBlackBoxAsymm @[TreePEsWrapper.scala 68:71]
    brams_0.clock <= clock
    brams_0.reset <= reset
    inst first_interconnect of FirstInterconnectPE @[TreePEsWrapper.scala 69:44]
    first_interconnect.clock <= clock
    first_interconnect.reset <= reset
    inst last_interconnect of LastInterconnectPE @[TreePEsWrapper.scala 70:43]
    last_interconnect.clock <= clock
    last_interconnect.reset <= reset
    inst increment of IncrementTreePE @[TreePEsWrapper.scala 71:35]
    increment.clock <= clock
    increment.reset <= reset
    brams_0.io.b_en <= pes_0.pe_io.mem.enable_1 @[TreePEsWrapper.scala 75:34]
    brams_0.io.b_wr <= pes_0.pe_io.mem.write_1 @[TreePEsWrapper.scala 76:34]
    brams_0.io.b_addr <= pes_0.pe_io.mem.addr_1 @[TreePEsWrapper.scala 77:36]
    brams_0.io.b_din <= pes_0.pe_io.mem.dataIn_1 @[TreePEsWrapper.scala 78:35]
    pes_0.pe_io.mem.dataOut_1 <= brams_0.io.b_dout @[TreePEsWrapper.scala 79:44]
    brams_0.io.a_en <= brams_io_0.bram_en_a @[TreePEsWrapper.scala 81:34]
    node _brams_0_io_a_wr_T = bits(brams_io_0.bram_we_a, 0, 0) @[TreePEsWrapper.scala 82:64]
    brams_0.io.a_wr <= _brams_0_io_a_wr_T @[TreePEsWrapper.scala 82:34]
    brams_0.io.a_addr <= brams_io_0.bram_addr_a @[TreePEsWrapper.scala 83:36]
    brams_0.io.a_din <= brams_io_0.bram_wrdata_a @[TreePEsWrapper.scala 84:35]
    brams_io_0.bram_rddata_a <= brams_0.io.a_dout @[TreePEsWrapper.scala 85:49]
    brams_0.io.clk <= brams_io_0.bram_clk_a @[TreePEsWrapper.scala 86:33]
    pes_0.pe_io.mem.dataOut_2 is invalid @[TreePEsWrapper.scala 88:44]
    first_interconnect.io.sample_entering <= dispatcher.io.samples_out[0] @[DispatcherPE.scala 25:27]
    pes_0.pe_io.sample_in <= first_interconnect.io.sample_out @[Interconnect.scala 60:24]
    last_interconnect.io.sample_in <= pes_0.pe_io.sample_out @[TreePE.scala 109:22]
    increment.io.sample_in <= last_interconnect.io.sample_looping @[Interconnect.scala 35:27]
    voter.io.samples_in[0] <= last_interconnect.io.sample_leaving @[Interconnect.scala 39:27]
    first_interconnect.io.sample_looping <= increment.io.sample_out @[IncrementTreePE.scala 33:23]
    backward_converter.io.sample_in.bits.clock_cycles <= cycles_counter @[Converter.scala 63:40]
    inst pes_0_1 of TreePEwithBRAM_1 @[TreePEsWrapper.scala 67:69]
    pes_0_1.clock <= clock
    pes_0_1.reset <= reset
    inst pes_1 of TreePEwithBRAM_2 @[TreePEsWrapper.scala 67:69]
    pes_1.clock <= clock
    pes_1.reset <= reset
    inst pes_2 of TreePEwithBRAM_3 @[TreePEsWrapper.scala 67:69]
    pes_2.clock <= clock
    pes_2.reset <= reset
    inst pes_3 of TreePEwithBRAM_4 @[TreePEsWrapper.scala 67:69]
    pes_3.clock <= clock
    pes_3.reset <= reset
    inst brams_0_1 of BRAMBlackBoxAsymm_1 @[TreePEsWrapper.scala 68:71]
    brams_0_1.clock <= clock
    brams_0_1.reset <= reset
    inst brams_1 of BRAMBlackBoxAsymm_2 @[TreePEsWrapper.scala 68:71]
    brams_1.clock <= clock
    brams_1.reset <= reset
    inst brams_2 of BRAMBlackBoxAsymm_3 @[TreePEsWrapper.scala 68:71]
    brams_2.clock <= clock
    brams_2.reset <= reset
    inst brams_3 of BRAMBlackBoxAsymm_4 @[TreePEsWrapper.scala 68:71]
    brams_3.clock <= clock
    brams_3.reset <= reset
    inst first_interconnect_1 of FirstInterconnectPE_1 @[TreePEsWrapper.scala 69:44]
    first_interconnect_1.clock <= clock
    first_interconnect_1.reset <= reset
    inst last_interconnect_1 of LastInterconnectPE_1 @[TreePEsWrapper.scala 70:43]
    last_interconnect_1.clock <= clock
    last_interconnect_1.reset <= reset
    inst increment_1 of IncrementTreePE_1 @[TreePEsWrapper.scala 71:35]
    increment_1.clock <= clock
    increment_1.reset <= reset
    brams_0_1.io.b_en <= pes_0_1.pe_io.mem.enable_1 @[TreePEsWrapper.scala 75:34]
    brams_0_1.io.b_wr <= pes_0_1.pe_io.mem.write_1 @[TreePEsWrapper.scala 76:34]
    brams_0_1.io.b_addr <= pes_0_1.pe_io.mem.addr_1 @[TreePEsWrapper.scala 77:36]
    brams_0_1.io.b_din <= pes_0_1.pe_io.mem.dataIn_1 @[TreePEsWrapper.scala 78:35]
    pes_0_1.pe_io.mem.dataOut_1 <= brams_0_1.io.b_dout @[TreePEsWrapper.scala 79:44]
    brams_0_1.io.a_en <= brams_io_1.bram_en_a @[TreePEsWrapper.scala 81:34]
    node _brams_0_io_a_wr_T_1 = bits(brams_io_1.bram_we_a, 0, 0) @[TreePEsWrapper.scala 82:64]
    brams_0_1.io.a_wr <= _brams_0_io_a_wr_T_1 @[TreePEsWrapper.scala 82:34]
    brams_0_1.io.a_addr <= brams_io_1.bram_addr_a @[TreePEsWrapper.scala 83:36]
    brams_0_1.io.a_din <= brams_io_1.bram_wrdata_a @[TreePEsWrapper.scala 84:35]
    brams_io_1.bram_rddata_a <= brams_0_1.io.a_dout @[TreePEsWrapper.scala 85:49]
    brams_0_1.io.clk <= brams_io_1.bram_clk_a @[TreePEsWrapper.scala 86:33]
    pes_0_1.pe_io.mem.dataOut_2 is invalid @[TreePEsWrapper.scala 88:44]
    brams_1.io.b_en <= pes_1.pe_io.mem.enable_1 @[TreePEsWrapper.scala 75:34]
    brams_1.io.b_wr <= pes_1.pe_io.mem.write_1 @[TreePEsWrapper.scala 76:34]
    brams_1.io.b_addr <= pes_1.pe_io.mem.addr_1 @[TreePEsWrapper.scala 77:36]
    brams_1.io.b_din <= pes_1.pe_io.mem.dataIn_1 @[TreePEsWrapper.scala 78:35]
    pes_1.pe_io.mem.dataOut_1 <= brams_1.io.b_dout @[TreePEsWrapper.scala 79:44]
    brams_1.io.a_en <= brams_io_2.bram_en_a @[TreePEsWrapper.scala 81:34]
    node _brams_1_io_a_wr_T = bits(brams_io_2.bram_we_a, 0, 0) @[TreePEsWrapper.scala 82:64]
    brams_1.io.a_wr <= _brams_1_io_a_wr_T @[TreePEsWrapper.scala 82:34]
    brams_1.io.a_addr <= brams_io_2.bram_addr_a @[TreePEsWrapper.scala 83:36]
    brams_1.io.a_din <= brams_io_2.bram_wrdata_a @[TreePEsWrapper.scala 84:35]
    brams_io_2.bram_rddata_a <= brams_1.io.a_dout @[TreePEsWrapper.scala 85:49]
    brams_1.io.clk <= brams_io_2.bram_clk_a @[TreePEsWrapper.scala 86:33]
    pes_1.pe_io.mem.dataOut_2 is invalid @[TreePEsWrapper.scala 88:44]
    brams_2.io.b_en <= pes_2.pe_io.mem.enable_1 @[TreePEsWrapper.scala 75:34]
    brams_2.io.b_wr <= pes_2.pe_io.mem.write_1 @[TreePEsWrapper.scala 76:34]
    brams_2.io.b_addr <= pes_2.pe_io.mem.addr_1 @[TreePEsWrapper.scala 77:36]
    brams_2.io.b_din <= pes_2.pe_io.mem.dataIn_1 @[TreePEsWrapper.scala 78:35]
    pes_2.pe_io.mem.dataOut_1 <= brams_2.io.b_dout @[TreePEsWrapper.scala 79:44]
    brams_2.io.a_en <= brams_io_3.bram_en_a @[TreePEsWrapper.scala 81:34]
    node _brams_2_io_a_wr_T = bits(brams_io_3.bram_we_a, 0, 0) @[TreePEsWrapper.scala 82:64]
    brams_2.io.a_wr <= _brams_2_io_a_wr_T @[TreePEsWrapper.scala 82:34]
    brams_2.io.a_addr <= brams_io_3.bram_addr_a @[TreePEsWrapper.scala 83:36]
    brams_2.io.a_din <= brams_io_3.bram_wrdata_a @[TreePEsWrapper.scala 84:35]
    brams_io_3.bram_rddata_a <= brams_2.io.a_dout @[TreePEsWrapper.scala 85:49]
    brams_2.io.clk <= brams_io_3.bram_clk_a @[TreePEsWrapper.scala 86:33]
    pes_2.pe_io.mem.dataOut_2 is invalid @[TreePEsWrapper.scala 88:44]
    brams_3.io.b_en <= pes_3.pe_io.mem.enable_1 @[TreePEsWrapper.scala 75:34]
    brams_3.io.b_wr <= pes_3.pe_io.mem.write_1 @[TreePEsWrapper.scala 76:34]
    brams_3.io.b_addr <= pes_3.pe_io.mem.addr_1 @[TreePEsWrapper.scala 77:36]
    brams_3.io.b_din <= pes_3.pe_io.mem.dataIn_1 @[TreePEsWrapper.scala 78:35]
    pes_3.pe_io.mem.dataOut_1 <= brams_3.io.b_dout @[TreePEsWrapper.scala 79:44]
    brams_3.io.a_en <= brams_io_4.bram_en_a @[TreePEsWrapper.scala 81:34]
    node _brams_3_io_a_wr_T = bits(brams_io_4.bram_we_a, 0, 0) @[TreePEsWrapper.scala 82:64]
    brams_3.io.a_wr <= _brams_3_io_a_wr_T @[TreePEsWrapper.scala 82:34]
    brams_3.io.a_addr <= brams_io_4.bram_addr_a @[TreePEsWrapper.scala 83:36]
    brams_3.io.a_din <= brams_io_4.bram_wrdata_a @[TreePEsWrapper.scala 84:35]
    brams_io_4.bram_rddata_a <= brams_3.io.a_dout @[TreePEsWrapper.scala 85:49]
    brams_3.io.clk <= brams_io_4.bram_clk_a @[TreePEsWrapper.scala 86:33]
    pes_3.pe_io.mem.dataOut_2 is invalid @[TreePEsWrapper.scala 88:44]
    first_interconnect_1.io.sample_entering <= dispatcher.io.samples_out[1] @[DispatcherPE.scala 25:27]
    pes_0_1.pe_io.sample_in <= first_interconnect_1.io.sample_out @[Interconnect.scala 60:24]
    pes_1.pe_io.sample_in <= pes_0_1.pe_io.sample_out @[TreePE.scala 113:22]
    pes_2.pe_io.sample_in <= pes_1.pe_io.sample_out @[TreePE.scala 113:22]
    pes_3.pe_io.sample_in <= pes_2.pe_io.sample_out @[TreePE.scala 113:22]
    last_interconnect_1.io.sample_in <= pes_3.pe_io.sample_out @[TreePE.scala 109:22]
    increment_1.io.sample_in <= last_interconnect_1.io.sample_looping @[Interconnect.scala 35:27]
    voter.io.samples_in[1] <= last_interconnect_1.io.sample_leaving @[Interconnect.scala 39:27]
    first_interconnect_1.io.sample_looping <= increment_1.io.sample_out @[IncrementTreePE.scala 33:23]
    backward_converter.io.sample_in.bits.clock_cycles <= cycles_counter @[Converter.scala 63:40]
    inst pes_0_2 of TreePEwithBRAM_5 @[TreePEsWrapper.scala 67:69]
    pes_0_2.clock <= clock
    pes_0_2.reset <= reset
    inst pes_1_1 of TreePEwithBRAM_6 @[TreePEsWrapper.scala 67:69]
    pes_1_1.clock <= clock
    pes_1_1.reset <= reset
    inst pes_2_1 of TreePEwithBRAM_7 @[TreePEsWrapper.scala 67:69]
    pes_2_1.clock <= clock
    pes_2_1.reset <= reset
    inst pes_3_1 of TreePEwithBRAM_8 @[TreePEsWrapper.scala 67:69]
    pes_3_1.clock <= clock
    pes_3_1.reset <= reset
    inst pes_4 of TreePEwithBRAM_9 @[TreePEsWrapper.scala 67:69]
    pes_4.clock <= clock
    pes_4.reset <= reset
    inst brams_0_2 of BRAMBlackBoxAsymm_5 @[TreePEsWrapper.scala 68:71]
    brams_0_2.clock <= clock
    brams_0_2.reset <= reset
    inst brams_1_1 of BRAMBlackBoxAsymm_6 @[TreePEsWrapper.scala 68:71]
    brams_1_1.clock <= clock
    brams_1_1.reset <= reset
    inst brams_2_1 of BRAMBlackBoxAsymm_7 @[TreePEsWrapper.scala 68:71]
    brams_2_1.clock <= clock
    brams_2_1.reset <= reset
    inst brams_3_1 of BRAMBlackBoxAsymm_8 @[TreePEsWrapper.scala 68:71]
    brams_3_1.clock <= clock
    brams_3_1.reset <= reset
    inst brams_4 of BRAMBlackBoxAsymm_9 @[TreePEsWrapper.scala 68:71]
    brams_4.clock <= clock
    brams_4.reset <= reset
    inst first_interconnect_2 of FirstInterconnectPE_2 @[TreePEsWrapper.scala 69:44]
    first_interconnect_2.clock <= clock
    first_interconnect_2.reset <= reset
    inst last_interconnect_2 of LastInterconnectPE_2 @[TreePEsWrapper.scala 70:43]
    last_interconnect_2.clock <= clock
    last_interconnect_2.reset <= reset
    inst increment_2 of IncrementTreePE_2 @[TreePEsWrapper.scala 71:35]
    increment_2.clock <= clock
    increment_2.reset <= reset
    brams_0_2.io.b_en <= pes_0_2.pe_io.mem.enable_1 @[TreePEsWrapper.scala 75:34]
    brams_0_2.io.b_wr <= pes_0_2.pe_io.mem.write_1 @[TreePEsWrapper.scala 76:34]
    brams_0_2.io.b_addr <= pes_0_2.pe_io.mem.addr_1 @[TreePEsWrapper.scala 77:36]
    brams_0_2.io.b_din <= pes_0_2.pe_io.mem.dataIn_1 @[TreePEsWrapper.scala 78:35]
    pes_0_2.pe_io.mem.dataOut_1 <= brams_0_2.io.b_dout @[TreePEsWrapper.scala 79:44]
    brams_0_2.io.a_en <= brams_io_5.bram_en_a @[TreePEsWrapper.scala 81:34]
    node _brams_0_io_a_wr_T_2 = bits(brams_io_5.bram_we_a, 0, 0) @[TreePEsWrapper.scala 82:64]
    brams_0_2.io.a_wr <= _brams_0_io_a_wr_T_2 @[TreePEsWrapper.scala 82:34]
    brams_0_2.io.a_addr <= brams_io_5.bram_addr_a @[TreePEsWrapper.scala 83:36]
    brams_0_2.io.a_din <= brams_io_5.bram_wrdata_a @[TreePEsWrapper.scala 84:35]
    brams_io_5.bram_rddata_a <= brams_0_2.io.a_dout @[TreePEsWrapper.scala 85:49]
    brams_0_2.io.clk <= brams_io_5.bram_clk_a @[TreePEsWrapper.scala 86:33]
    pes_0_2.pe_io.mem.dataOut_2 is invalid @[TreePEsWrapper.scala 88:44]
    brams_1_1.io.b_en <= pes_1_1.pe_io.mem.enable_1 @[TreePEsWrapper.scala 75:34]
    brams_1_1.io.b_wr <= pes_1_1.pe_io.mem.write_1 @[TreePEsWrapper.scala 76:34]
    brams_1_1.io.b_addr <= pes_1_1.pe_io.mem.addr_1 @[TreePEsWrapper.scala 77:36]
    brams_1_1.io.b_din <= pes_1_1.pe_io.mem.dataIn_1 @[TreePEsWrapper.scala 78:35]
    pes_1_1.pe_io.mem.dataOut_1 <= brams_1_1.io.b_dout @[TreePEsWrapper.scala 79:44]
    brams_1_1.io.a_en <= brams_io_6.bram_en_a @[TreePEsWrapper.scala 81:34]
    node _brams_1_io_a_wr_T_1 = bits(brams_io_6.bram_we_a, 0, 0) @[TreePEsWrapper.scala 82:64]
    brams_1_1.io.a_wr <= _brams_1_io_a_wr_T_1 @[TreePEsWrapper.scala 82:34]
    brams_1_1.io.a_addr <= brams_io_6.bram_addr_a @[TreePEsWrapper.scala 83:36]
    brams_1_1.io.a_din <= brams_io_6.bram_wrdata_a @[TreePEsWrapper.scala 84:35]
    brams_io_6.bram_rddata_a <= brams_1_1.io.a_dout @[TreePEsWrapper.scala 85:49]
    brams_1_1.io.clk <= brams_io_6.bram_clk_a @[TreePEsWrapper.scala 86:33]
    pes_1_1.pe_io.mem.dataOut_2 is invalid @[TreePEsWrapper.scala 88:44]
    brams_2_1.io.b_en <= pes_2_1.pe_io.mem.enable_1 @[TreePEsWrapper.scala 75:34]
    brams_2_1.io.b_wr <= pes_2_1.pe_io.mem.write_1 @[TreePEsWrapper.scala 76:34]
    brams_2_1.io.b_addr <= pes_2_1.pe_io.mem.addr_1 @[TreePEsWrapper.scala 77:36]
    brams_2_1.io.b_din <= pes_2_1.pe_io.mem.dataIn_1 @[TreePEsWrapper.scala 78:35]
    pes_2_1.pe_io.mem.dataOut_1 <= brams_2_1.io.b_dout @[TreePEsWrapper.scala 79:44]
    brams_2_1.io.a_en <= brams_io_7.bram_en_a @[TreePEsWrapper.scala 81:34]
    node _brams_2_io_a_wr_T_1 = bits(brams_io_7.bram_we_a, 0, 0) @[TreePEsWrapper.scala 82:64]
    brams_2_1.io.a_wr <= _brams_2_io_a_wr_T_1 @[TreePEsWrapper.scala 82:34]
    brams_2_1.io.a_addr <= brams_io_7.bram_addr_a @[TreePEsWrapper.scala 83:36]
    brams_2_1.io.a_din <= brams_io_7.bram_wrdata_a @[TreePEsWrapper.scala 84:35]
    brams_io_7.bram_rddata_a <= brams_2_1.io.a_dout @[TreePEsWrapper.scala 85:49]
    brams_2_1.io.clk <= brams_io_7.bram_clk_a @[TreePEsWrapper.scala 86:33]
    pes_2_1.pe_io.mem.dataOut_2 is invalid @[TreePEsWrapper.scala 88:44]
    brams_3_1.io.b_en <= pes_3_1.pe_io.mem.enable_1 @[TreePEsWrapper.scala 75:34]
    brams_3_1.io.b_wr <= pes_3_1.pe_io.mem.write_1 @[TreePEsWrapper.scala 76:34]
    brams_3_1.io.b_addr <= pes_3_1.pe_io.mem.addr_1 @[TreePEsWrapper.scala 77:36]
    brams_3_1.io.b_din <= pes_3_1.pe_io.mem.dataIn_1 @[TreePEsWrapper.scala 78:35]
    pes_3_1.pe_io.mem.dataOut_1 <= brams_3_1.io.b_dout @[TreePEsWrapper.scala 79:44]
    brams_3_1.io.a_en <= brams_io_8.bram_en_a @[TreePEsWrapper.scala 81:34]
    node _brams_3_io_a_wr_T_1 = bits(brams_io_8.bram_we_a, 0, 0) @[TreePEsWrapper.scala 82:64]
    brams_3_1.io.a_wr <= _brams_3_io_a_wr_T_1 @[TreePEsWrapper.scala 82:34]
    brams_3_1.io.a_addr <= brams_io_8.bram_addr_a @[TreePEsWrapper.scala 83:36]
    brams_3_1.io.a_din <= brams_io_8.bram_wrdata_a @[TreePEsWrapper.scala 84:35]
    brams_io_8.bram_rddata_a <= brams_3_1.io.a_dout @[TreePEsWrapper.scala 85:49]
    brams_3_1.io.clk <= brams_io_8.bram_clk_a @[TreePEsWrapper.scala 86:33]
    pes_3_1.pe_io.mem.dataOut_2 is invalid @[TreePEsWrapper.scala 88:44]
    brams_4.io.b_en <= pes_4.pe_io.mem.enable_1 @[TreePEsWrapper.scala 75:34]
    brams_4.io.b_wr <= pes_4.pe_io.mem.write_1 @[TreePEsWrapper.scala 76:34]
    brams_4.io.b_addr <= pes_4.pe_io.mem.addr_1 @[TreePEsWrapper.scala 77:36]
    brams_4.io.b_din <= pes_4.pe_io.mem.dataIn_1 @[TreePEsWrapper.scala 78:35]
    pes_4.pe_io.mem.dataOut_1 <= brams_4.io.b_dout @[TreePEsWrapper.scala 79:44]
    brams_4.io.a_en <= brams_io_9.bram_en_a @[TreePEsWrapper.scala 81:34]
    node _brams_4_io_a_wr_T = bits(brams_io_9.bram_we_a, 0, 0) @[TreePEsWrapper.scala 82:64]
    brams_4.io.a_wr <= _brams_4_io_a_wr_T @[TreePEsWrapper.scala 82:34]
    brams_4.io.a_addr <= brams_io_9.bram_addr_a @[TreePEsWrapper.scala 83:36]
    brams_4.io.a_din <= brams_io_9.bram_wrdata_a @[TreePEsWrapper.scala 84:35]
    brams_io_9.bram_rddata_a <= brams_4.io.a_dout @[TreePEsWrapper.scala 85:49]
    brams_4.io.clk <= brams_io_9.bram_clk_a @[TreePEsWrapper.scala 86:33]
    pes_4.pe_io.mem.dataOut_2 is invalid @[TreePEsWrapper.scala 88:44]
    first_interconnect_2.io.sample_entering <= dispatcher.io.samples_out[2] @[DispatcherPE.scala 25:27]
    pes_0_2.pe_io.sample_in <= first_interconnect_2.io.sample_out @[Interconnect.scala 60:24]
    pes_1_1.pe_io.sample_in <= pes_0_2.pe_io.sample_out @[TreePE.scala 113:22]
    pes_2_1.pe_io.sample_in <= pes_1_1.pe_io.sample_out @[TreePE.scala 113:22]
    pes_3_1.pe_io.sample_in <= pes_2_1.pe_io.sample_out @[TreePE.scala 113:22]
    pes_4.pe_io.sample_in <= pes_3_1.pe_io.sample_out @[TreePE.scala 113:22]
    last_interconnect_2.io.sample_in <= pes_4.pe_io.sample_out @[TreePE.scala 109:22]
    increment_2.io.sample_in <= last_interconnect_2.io.sample_looping @[Interconnect.scala 35:27]
    voter.io.samples_in[2] <= last_interconnect_2.io.sample_leaving @[Interconnect.scala 39:27]
    first_interconnect_2.io.sample_looping <= increment_2.io.sample_out @[IncrementTreePE.scala 33:23]
    backward_converter.io.sample_in.bits.clock_cycles <= cycles_counter @[Converter.scala 63:40]
    inst pes_0_3 of TreePEwithBRAM_10 @[TreePEsWrapper.scala 67:69]
    pes_0_3.clock <= clock
    pes_0_3.reset <= reset
    inst pes_1_2 of TreePEwithBRAM_11 @[TreePEsWrapper.scala 67:69]
    pes_1_2.clock <= clock
    pes_1_2.reset <= reset
    inst pes_2_2 of TreePEwithBRAM_12 @[TreePEsWrapper.scala 67:69]
    pes_2_2.clock <= clock
    pes_2_2.reset <= reset
    inst pes_3_2 of TreePEwithBRAM_13 @[TreePEsWrapper.scala 67:69]
    pes_3_2.clock <= clock
    pes_3_2.reset <= reset
    inst pes_4_1 of TreePEwithBRAM_14 @[TreePEsWrapper.scala 67:69]
    pes_4_1.clock <= clock
    pes_4_1.reset <= reset
    inst brams_0_3 of BRAMBlackBoxAsymm_10 @[TreePEsWrapper.scala 68:71]
    brams_0_3.clock <= clock
    brams_0_3.reset <= reset
    inst brams_1_2 of BRAMBlackBoxAsymm_11 @[TreePEsWrapper.scala 68:71]
    brams_1_2.clock <= clock
    brams_1_2.reset <= reset
    inst brams_2_2 of BRAMBlackBoxAsymm_12 @[TreePEsWrapper.scala 68:71]
    brams_2_2.clock <= clock
    brams_2_2.reset <= reset
    inst brams_3_2 of BRAMBlackBoxAsymm_13 @[TreePEsWrapper.scala 68:71]
    brams_3_2.clock <= clock
    brams_3_2.reset <= reset
    inst brams_4_1 of BRAMBlackBoxAsymm_14 @[TreePEsWrapper.scala 68:71]
    brams_4_1.clock <= clock
    brams_4_1.reset <= reset
    inst first_interconnect_3 of FirstInterconnectPE_3 @[TreePEsWrapper.scala 69:44]
    first_interconnect_3.clock <= clock
    first_interconnect_3.reset <= reset
    inst last_interconnect_3 of LastInterconnectPE_3 @[TreePEsWrapper.scala 70:43]
    last_interconnect_3.clock <= clock
    last_interconnect_3.reset <= reset
    inst increment_3 of IncrementTreePE_3 @[TreePEsWrapper.scala 71:35]
    increment_3.clock <= clock
    increment_3.reset <= reset
    brams_0_3.io.b_en <= pes_0_3.pe_io.mem.enable_1 @[TreePEsWrapper.scala 75:34]
    brams_0_3.io.b_wr <= pes_0_3.pe_io.mem.write_1 @[TreePEsWrapper.scala 76:34]
    brams_0_3.io.b_addr <= pes_0_3.pe_io.mem.addr_1 @[TreePEsWrapper.scala 77:36]
    brams_0_3.io.b_din <= pes_0_3.pe_io.mem.dataIn_1 @[TreePEsWrapper.scala 78:35]
    pes_0_3.pe_io.mem.dataOut_1 <= brams_0_3.io.b_dout @[TreePEsWrapper.scala 79:44]
    brams_0_3.io.a_en <= brams_io_10.bram_en_a @[TreePEsWrapper.scala 81:34]
    node _brams_0_io_a_wr_T_3 = bits(brams_io_10.bram_we_a, 0, 0) @[TreePEsWrapper.scala 82:64]
    brams_0_3.io.a_wr <= _brams_0_io_a_wr_T_3 @[TreePEsWrapper.scala 82:34]
    brams_0_3.io.a_addr <= brams_io_10.bram_addr_a @[TreePEsWrapper.scala 83:36]
    brams_0_3.io.a_din <= brams_io_10.bram_wrdata_a @[TreePEsWrapper.scala 84:35]
    brams_io_10.bram_rddata_a <= brams_0_3.io.a_dout @[TreePEsWrapper.scala 85:49]
    brams_0_3.io.clk <= brams_io_10.bram_clk_a @[TreePEsWrapper.scala 86:33]
    pes_0_3.pe_io.mem.dataOut_2 is invalid @[TreePEsWrapper.scala 88:44]
    brams_1_2.io.b_en <= pes_1_2.pe_io.mem.enable_1 @[TreePEsWrapper.scala 75:34]
    brams_1_2.io.b_wr <= pes_1_2.pe_io.mem.write_1 @[TreePEsWrapper.scala 76:34]
    brams_1_2.io.b_addr <= pes_1_2.pe_io.mem.addr_1 @[TreePEsWrapper.scala 77:36]
    brams_1_2.io.b_din <= pes_1_2.pe_io.mem.dataIn_1 @[TreePEsWrapper.scala 78:35]
    pes_1_2.pe_io.mem.dataOut_1 <= brams_1_2.io.b_dout @[TreePEsWrapper.scala 79:44]
    brams_1_2.io.a_en <= brams_io_11.bram_en_a @[TreePEsWrapper.scala 81:34]
    node _brams_1_io_a_wr_T_2 = bits(brams_io_11.bram_we_a, 0, 0) @[TreePEsWrapper.scala 82:64]
    brams_1_2.io.a_wr <= _brams_1_io_a_wr_T_2 @[TreePEsWrapper.scala 82:34]
    brams_1_2.io.a_addr <= brams_io_11.bram_addr_a @[TreePEsWrapper.scala 83:36]
    brams_1_2.io.a_din <= brams_io_11.bram_wrdata_a @[TreePEsWrapper.scala 84:35]
    brams_io_11.bram_rddata_a <= brams_1_2.io.a_dout @[TreePEsWrapper.scala 85:49]
    brams_1_2.io.clk <= brams_io_11.bram_clk_a @[TreePEsWrapper.scala 86:33]
    pes_1_2.pe_io.mem.dataOut_2 is invalid @[TreePEsWrapper.scala 88:44]
    brams_2_2.io.b_en <= pes_2_2.pe_io.mem.enable_1 @[TreePEsWrapper.scala 75:34]
    brams_2_2.io.b_wr <= pes_2_2.pe_io.mem.write_1 @[TreePEsWrapper.scala 76:34]
    brams_2_2.io.b_addr <= pes_2_2.pe_io.mem.addr_1 @[TreePEsWrapper.scala 77:36]
    brams_2_2.io.b_din <= pes_2_2.pe_io.mem.dataIn_1 @[TreePEsWrapper.scala 78:35]
    pes_2_2.pe_io.mem.dataOut_1 <= brams_2_2.io.b_dout @[TreePEsWrapper.scala 79:44]
    brams_2_2.io.a_en <= brams_io_12.bram_en_a @[TreePEsWrapper.scala 81:34]
    node _brams_2_io_a_wr_T_2 = bits(brams_io_12.bram_we_a, 0, 0) @[TreePEsWrapper.scala 82:64]
    brams_2_2.io.a_wr <= _brams_2_io_a_wr_T_2 @[TreePEsWrapper.scala 82:34]
    brams_2_2.io.a_addr <= brams_io_12.bram_addr_a @[TreePEsWrapper.scala 83:36]
    brams_2_2.io.a_din <= brams_io_12.bram_wrdata_a @[TreePEsWrapper.scala 84:35]
    brams_io_12.bram_rddata_a <= brams_2_2.io.a_dout @[TreePEsWrapper.scala 85:49]
    brams_2_2.io.clk <= brams_io_12.bram_clk_a @[TreePEsWrapper.scala 86:33]
    pes_2_2.pe_io.mem.dataOut_2 is invalid @[TreePEsWrapper.scala 88:44]
    brams_3_2.io.b_en <= pes_3_2.pe_io.mem.enable_1 @[TreePEsWrapper.scala 75:34]
    brams_3_2.io.b_wr <= pes_3_2.pe_io.mem.write_1 @[TreePEsWrapper.scala 76:34]
    brams_3_2.io.b_addr <= pes_3_2.pe_io.mem.addr_1 @[TreePEsWrapper.scala 77:36]
    brams_3_2.io.b_din <= pes_3_2.pe_io.mem.dataIn_1 @[TreePEsWrapper.scala 78:35]
    pes_3_2.pe_io.mem.dataOut_1 <= brams_3_2.io.b_dout @[TreePEsWrapper.scala 79:44]
    brams_3_2.io.a_en <= brams_io_13.bram_en_a @[TreePEsWrapper.scala 81:34]
    node _brams_3_io_a_wr_T_2 = bits(brams_io_13.bram_we_a, 0, 0) @[TreePEsWrapper.scala 82:64]
    brams_3_2.io.a_wr <= _brams_3_io_a_wr_T_2 @[TreePEsWrapper.scala 82:34]
    brams_3_2.io.a_addr <= brams_io_13.bram_addr_a @[TreePEsWrapper.scala 83:36]
    brams_3_2.io.a_din <= brams_io_13.bram_wrdata_a @[TreePEsWrapper.scala 84:35]
    brams_io_13.bram_rddata_a <= brams_3_2.io.a_dout @[TreePEsWrapper.scala 85:49]
    brams_3_2.io.clk <= brams_io_13.bram_clk_a @[TreePEsWrapper.scala 86:33]
    pes_3_2.pe_io.mem.dataOut_2 is invalid @[TreePEsWrapper.scala 88:44]
    brams_4_1.io.b_en <= pes_4_1.pe_io.mem.enable_1 @[TreePEsWrapper.scala 75:34]
    brams_4_1.io.b_wr <= pes_4_1.pe_io.mem.write_1 @[TreePEsWrapper.scala 76:34]
    brams_4_1.io.b_addr <= pes_4_1.pe_io.mem.addr_1 @[TreePEsWrapper.scala 77:36]
    brams_4_1.io.b_din <= pes_4_1.pe_io.mem.dataIn_1 @[TreePEsWrapper.scala 78:35]
    pes_4_1.pe_io.mem.dataOut_1 <= brams_4_1.io.b_dout @[TreePEsWrapper.scala 79:44]
    brams_4_1.io.a_en <= brams_io_14.bram_en_a @[TreePEsWrapper.scala 81:34]
    node _brams_4_io_a_wr_T_1 = bits(brams_io_14.bram_we_a, 0, 0) @[TreePEsWrapper.scala 82:64]
    brams_4_1.io.a_wr <= _brams_4_io_a_wr_T_1 @[TreePEsWrapper.scala 82:34]
    brams_4_1.io.a_addr <= brams_io_14.bram_addr_a @[TreePEsWrapper.scala 83:36]
    brams_4_1.io.a_din <= brams_io_14.bram_wrdata_a @[TreePEsWrapper.scala 84:35]
    brams_io_14.bram_rddata_a <= brams_4_1.io.a_dout @[TreePEsWrapper.scala 85:49]
    brams_4_1.io.clk <= brams_io_14.bram_clk_a @[TreePEsWrapper.scala 86:33]
    pes_4_1.pe_io.mem.dataOut_2 is invalid @[TreePEsWrapper.scala 88:44]
    first_interconnect_3.io.sample_entering <= dispatcher.io.samples_out[3] @[DispatcherPE.scala 25:27]
    pes_0_3.pe_io.sample_in <= first_interconnect_3.io.sample_out @[Interconnect.scala 60:24]
    pes_1_2.pe_io.sample_in <= pes_0_3.pe_io.sample_out @[TreePE.scala 113:22]
    pes_2_2.pe_io.sample_in <= pes_1_2.pe_io.sample_out @[TreePE.scala 113:22]
    pes_3_2.pe_io.sample_in <= pes_2_2.pe_io.sample_out @[TreePE.scala 113:22]
    pes_4_1.pe_io.sample_in <= pes_3_2.pe_io.sample_out @[TreePE.scala 113:22]
    last_interconnect_3.io.sample_in <= pes_4_1.pe_io.sample_out @[TreePE.scala 109:22]
    increment_3.io.sample_in <= last_interconnect_3.io.sample_looping @[Interconnect.scala 35:27]
    voter.io.samples_in[3] <= last_interconnect_3.io.sample_leaving @[Interconnect.scala 39:27]
    first_interconnect_3.io.sample_looping <= increment_3.io.sample_out @[IncrementTreePE.scala 33:23]
    backward_converter.io.sample_in.bits.clock_cycles <= cycles_counter @[Converter.scala 63:40]
    inst pes_0_4 of TreePEwithBRAM_15 @[TreePEsWrapper.scala 67:69]
    pes_0_4.clock <= clock
    pes_0_4.reset <= reset
    inst pes_1_3 of TreePEwithBRAM_16 @[TreePEsWrapper.scala 67:69]
    pes_1_3.clock <= clock
    pes_1_3.reset <= reset
    inst pes_2_3 of TreePEwithBRAM_17 @[TreePEsWrapper.scala 67:69]
    pes_2_3.clock <= clock
    pes_2_3.reset <= reset
    inst pes_3_3 of TreePEwithBRAM_18 @[TreePEsWrapper.scala 67:69]
    pes_3_3.clock <= clock
    pes_3_3.reset <= reset
    inst pes_4_2 of TreePEwithBRAM_19 @[TreePEsWrapper.scala 67:69]
    pes_4_2.clock <= clock
    pes_4_2.reset <= reset
    inst brams_0_4 of BRAMBlackBoxAsymm_15 @[TreePEsWrapper.scala 68:71]
    brams_0_4.clock <= clock
    brams_0_4.reset <= reset
    inst brams_1_3 of BRAMBlackBoxAsymm_16 @[TreePEsWrapper.scala 68:71]
    brams_1_3.clock <= clock
    brams_1_3.reset <= reset
    inst brams_2_3 of BRAMBlackBoxAsymm_17 @[TreePEsWrapper.scala 68:71]
    brams_2_3.clock <= clock
    brams_2_3.reset <= reset
    inst brams_3_3 of BRAMBlackBoxAsymm_18 @[TreePEsWrapper.scala 68:71]
    brams_3_3.clock <= clock
    brams_3_3.reset <= reset
    inst brams_4_2 of BRAMBlackBoxAsymm_19 @[TreePEsWrapper.scala 68:71]
    brams_4_2.clock <= clock
    brams_4_2.reset <= reset
    inst first_interconnect_4 of FirstInterconnectPE_4 @[TreePEsWrapper.scala 69:44]
    first_interconnect_4.clock <= clock
    first_interconnect_4.reset <= reset
    inst last_interconnect_4 of LastInterconnectPE_4 @[TreePEsWrapper.scala 70:43]
    last_interconnect_4.clock <= clock
    last_interconnect_4.reset <= reset
    inst increment_4 of IncrementTreePE_4 @[TreePEsWrapper.scala 71:35]
    increment_4.clock <= clock
    increment_4.reset <= reset
    brams_0_4.io.b_en <= pes_0_4.pe_io.mem.enable_1 @[TreePEsWrapper.scala 75:34]
    brams_0_4.io.b_wr <= pes_0_4.pe_io.mem.write_1 @[TreePEsWrapper.scala 76:34]
    brams_0_4.io.b_addr <= pes_0_4.pe_io.mem.addr_1 @[TreePEsWrapper.scala 77:36]
    brams_0_4.io.b_din <= pes_0_4.pe_io.mem.dataIn_1 @[TreePEsWrapper.scala 78:35]
    pes_0_4.pe_io.mem.dataOut_1 <= brams_0_4.io.b_dout @[TreePEsWrapper.scala 79:44]
    brams_0_4.io.a_en <= brams_io_15.bram_en_a @[TreePEsWrapper.scala 81:34]
    node _brams_0_io_a_wr_T_4 = bits(brams_io_15.bram_we_a, 0, 0) @[TreePEsWrapper.scala 82:64]
    brams_0_4.io.a_wr <= _brams_0_io_a_wr_T_4 @[TreePEsWrapper.scala 82:34]
    brams_0_4.io.a_addr <= brams_io_15.bram_addr_a @[TreePEsWrapper.scala 83:36]
    brams_0_4.io.a_din <= brams_io_15.bram_wrdata_a @[TreePEsWrapper.scala 84:35]
    brams_io_15.bram_rddata_a <= brams_0_4.io.a_dout @[TreePEsWrapper.scala 85:49]
    brams_0_4.io.clk <= brams_io_15.bram_clk_a @[TreePEsWrapper.scala 86:33]
    pes_0_4.pe_io.mem.dataOut_2 is invalid @[TreePEsWrapper.scala 88:44]
    brams_1_3.io.b_en <= pes_1_3.pe_io.mem.enable_1 @[TreePEsWrapper.scala 75:34]
    brams_1_3.io.b_wr <= pes_1_3.pe_io.mem.write_1 @[TreePEsWrapper.scala 76:34]
    brams_1_3.io.b_addr <= pes_1_3.pe_io.mem.addr_1 @[TreePEsWrapper.scala 77:36]
    brams_1_3.io.b_din <= pes_1_3.pe_io.mem.dataIn_1 @[TreePEsWrapper.scala 78:35]
    pes_1_3.pe_io.mem.dataOut_1 <= brams_1_3.io.b_dout @[TreePEsWrapper.scala 79:44]
    brams_1_3.io.a_en <= brams_io_16.bram_en_a @[TreePEsWrapper.scala 81:34]
    node _brams_1_io_a_wr_T_3 = bits(brams_io_16.bram_we_a, 0, 0) @[TreePEsWrapper.scala 82:64]
    brams_1_3.io.a_wr <= _brams_1_io_a_wr_T_3 @[TreePEsWrapper.scala 82:34]
    brams_1_3.io.a_addr <= brams_io_16.bram_addr_a @[TreePEsWrapper.scala 83:36]
    brams_1_3.io.a_din <= brams_io_16.bram_wrdata_a @[TreePEsWrapper.scala 84:35]
    brams_io_16.bram_rddata_a <= brams_1_3.io.a_dout @[TreePEsWrapper.scala 85:49]
    brams_1_3.io.clk <= brams_io_16.bram_clk_a @[TreePEsWrapper.scala 86:33]
    pes_1_3.pe_io.mem.dataOut_2 is invalid @[TreePEsWrapper.scala 88:44]
    brams_2_3.io.b_en <= pes_2_3.pe_io.mem.enable_1 @[TreePEsWrapper.scala 75:34]
    brams_2_3.io.b_wr <= pes_2_3.pe_io.mem.write_1 @[TreePEsWrapper.scala 76:34]
    brams_2_3.io.b_addr <= pes_2_3.pe_io.mem.addr_1 @[TreePEsWrapper.scala 77:36]
    brams_2_3.io.b_din <= pes_2_3.pe_io.mem.dataIn_1 @[TreePEsWrapper.scala 78:35]
    pes_2_3.pe_io.mem.dataOut_1 <= brams_2_3.io.b_dout @[TreePEsWrapper.scala 79:44]
    brams_2_3.io.a_en <= brams_io_17.bram_en_a @[TreePEsWrapper.scala 81:34]
    node _brams_2_io_a_wr_T_3 = bits(brams_io_17.bram_we_a, 0, 0) @[TreePEsWrapper.scala 82:64]
    brams_2_3.io.a_wr <= _brams_2_io_a_wr_T_3 @[TreePEsWrapper.scala 82:34]
    brams_2_3.io.a_addr <= brams_io_17.bram_addr_a @[TreePEsWrapper.scala 83:36]
    brams_2_3.io.a_din <= brams_io_17.bram_wrdata_a @[TreePEsWrapper.scala 84:35]
    brams_io_17.bram_rddata_a <= brams_2_3.io.a_dout @[TreePEsWrapper.scala 85:49]
    brams_2_3.io.clk <= brams_io_17.bram_clk_a @[TreePEsWrapper.scala 86:33]
    pes_2_3.pe_io.mem.dataOut_2 is invalid @[TreePEsWrapper.scala 88:44]
    brams_3_3.io.b_en <= pes_3_3.pe_io.mem.enable_1 @[TreePEsWrapper.scala 75:34]
    brams_3_3.io.b_wr <= pes_3_3.pe_io.mem.write_1 @[TreePEsWrapper.scala 76:34]
    brams_3_3.io.b_addr <= pes_3_3.pe_io.mem.addr_1 @[TreePEsWrapper.scala 77:36]
    brams_3_3.io.b_din <= pes_3_3.pe_io.mem.dataIn_1 @[TreePEsWrapper.scala 78:35]
    pes_3_3.pe_io.mem.dataOut_1 <= brams_3_3.io.b_dout @[TreePEsWrapper.scala 79:44]
    brams_3_3.io.a_en <= brams_io_18.bram_en_a @[TreePEsWrapper.scala 81:34]
    node _brams_3_io_a_wr_T_3 = bits(brams_io_18.bram_we_a, 0, 0) @[TreePEsWrapper.scala 82:64]
    brams_3_3.io.a_wr <= _brams_3_io_a_wr_T_3 @[TreePEsWrapper.scala 82:34]
    brams_3_3.io.a_addr <= brams_io_18.bram_addr_a @[TreePEsWrapper.scala 83:36]
    brams_3_3.io.a_din <= brams_io_18.bram_wrdata_a @[TreePEsWrapper.scala 84:35]
    brams_io_18.bram_rddata_a <= brams_3_3.io.a_dout @[TreePEsWrapper.scala 85:49]
    brams_3_3.io.clk <= brams_io_18.bram_clk_a @[TreePEsWrapper.scala 86:33]
    pes_3_3.pe_io.mem.dataOut_2 is invalid @[TreePEsWrapper.scala 88:44]
    brams_4_2.io.b_en <= pes_4_2.pe_io.mem.enable_1 @[TreePEsWrapper.scala 75:34]
    brams_4_2.io.b_wr <= pes_4_2.pe_io.mem.write_1 @[TreePEsWrapper.scala 76:34]
    brams_4_2.io.b_addr <= pes_4_2.pe_io.mem.addr_1 @[TreePEsWrapper.scala 77:36]
    brams_4_2.io.b_din <= pes_4_2.pe_io.mem.dataIn_1 @[TreePEsWrapper.scala 78:35]
    pes_4_2.pe_io.mem.dataOut_1 <= brams_4_2.io.b_dout @[TreePEsWrapper.scala 79:44]
    brams_4_2.io.a_en <= brams_io_19.bram_en_a @[TreePEsWrapper.scala 81:34]
    node _brams_4_io_a_wr_T_2 = bits(brams_io_19.bram_we_a, 0, 0) @[TreePEsWrapper.scala 82:64]
    brams_4_2.io.a_wr <= _brams_4_io_a_wr_T_2 @[TreePEsWrapper.scala 82:34]
    brams_4_2.io.a_addr <= brams_io_19.bram_addr_a @[TreePEsWrapper.scala 83:36]
    brams_4_2.io.a_din <= brams_io_19.bram_wrdata_a @[TreePEsWrapper.scala 84:35]
    brams_io_19.bram_rddata_a <= brams_4_2.io.a_dout @[TreePEsWrapper.scala 85:49]
    brams_4_2.io.clk <= brams_io_19.bram_clk_a @[TreePEsWrapper.scala 86:33]
    pes_4_2.pe_io.mem.dataOut_2 is invalid @[TreePEsWrapper.scala 88:44]
    first_interconnect_4.io.sample_entering <= dispatcher.io.samples_out[4] @[DispatcherPE.scala 25:27]
    pes_0_4.pe_io.sample_in <= first_interconnect_4.io.sample_out @[Interconnect.scala 60:24]
    pes_1_3.pe_io.sample_in <= pes_0_4.pe_io.sample_out @[TreePE.scala 113:22]
    pes_2_3.pe_io.sample_in <= pes_1_3.pe_io.sample_out @[TreePE.scala 113:22]
    pes_3_3.pe_io.sample_in <= pes_2_3.pe_io.sample_out @[TreePE.scala 113:22]
    pes_4_2.pe_io.sample_in <= pes_3_3.pe_io.sample_out @[TreePE.scala 113:22]
    last_interconnect_4.io.sample_in <= pes_4_2.pe_io.sample_out @[TreePE.scala 109:22]
    increment_4.io.sample_in <= last_interconnect_4.io.sample_looping @[Interconnect.scala 35:27]
    voter.io.samples_in[4] <= last_interconnect_4.io.sample_leaving @[Interconnect.scala 39:27]
    first_interconnect_4.io.sample_looping <= increment_4.io.sample_out @[IncrementTreePE.scala 33:23]
    backward_converter.io.sample_in.bits.clock_cycles <= cycles_counter @[Converter.scala 63:40]
    forward_converter.io.sample_in.TVALID <= wrapper_io.sample_in.TVALID @[TreePEsWrapper.scala 107:30]
    wrapper_io.sample_in.TREADY <= forward_converter.io.sample_in.TREADY @[TreePEsWrapper.scala 107:30]
    forward_converter.io.sample_in.TLAST <= wrapper_io.sample_in.TLAST @[TreePEsWrapper.scala 107:30]
    forward_converter.io.sample_in.TDATA <= wrapper_io.sample_in.TDATA @[TreePEsWrapper.scala 107:30]
    backward_converter.io.sample_out <= wrapper_io.sample_out @[TreePEsWrapper.scala 108:31]
    node _cycles_counter_T = add(cycles_counter, UInt<1>("h1")) @[TreePEsWrapper.scala 110:54]
    node _cycles_counter_T_1 = tail(_cycles_counter_T, 1) @[TreePEsWrapper.scala 110:54]
    node _cycles_counter_T_2 = mux(counting, _cycles_counter_T_1, cycles_counter) @[TreePEsWrapper.scala 110:30]
    cycles_counter <= _cycles_counter_T_2 @[TreePEsWrapper.scala 110:24]

