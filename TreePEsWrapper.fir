circuit TreePEsWrapper :
  module ForwardConverter :
    input clock : Clock
    input reset : Reset
    output io : { sample_in : { flip TDATA : UInt<256>, flip TKEEP : UInt<32>, flip TLAST : UInt<1>, TREADY : UInt<1>, flip TVALID : UInt<1>}, sample_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>}}}

    node _io_sample_out_bits_features_0_T = bits(io.sample_in.TDATA, 15, 0) @[Converter.scala 14:61]
    node _io_sample_out_bits_features_0_T_1 = asFixedPoint(_io_sample_out_bits_features_0_T, 8) @[Converter.scala 14:91]
    io.sample_out.bits.features[0] <= _io_sample_out_bits_features_0_T_1 @[Converter.scala 14:40]
    node _io_sample_out_bits_features_1_T = bits(io.sample_in.TDATA, 31, 16) @[Converter.scala 14:61]
    node _io_sample_out_bits_features_1_T_1 = asFixedPoint(_io_sample_out_bits_features_1_T, 8) @[Converter.scala 14:91]
    io.sample_out.bits.features[1] <= _io_sample_out_bits_features_1_T_1 @[Converter.scala 14:40]
    node _io_sample_out_bits_features_2_T = bits(io.sample_in.TDATA, 47, 32) @[Converter.scala 14:61]
    node _io_sample_out_bits_features_2_T_1 = asFixedPoint(_io_sample_out_bits_features_2_T, 8) @[Converter.scala 14:91]
    io.sample_out.bits.features[2] <= _io_sample_out_bits_features_2_T_1 @[Converter.scala 14:40]
    node _io_sample_out_bits_features_3_T = bits(io.sample_in.TDATA, 63, 48) @[Converter.scala 14:61]
    node _io_sample_out_bits_features_3_T_1 = asFixedPoint(_io_sample_out_bits_features_3_T, 8) @[Converter.scala 14:91]
    io.sample_out.bits.features[3] <= _io_sample_out_bits_features_3_T_1 @[Converter.scala 14:40]
    node _io_sample_out_bits_offset_T = bits(io.sample_in.TDATA, 79, 64) @[Converter.scala 16:52]
    io.sample_out.bits.offset <= _io_sample_out_bits_offset_T @[Converter.scala 16:31]
    node _io_sample_out_bits_shift_T = bits(io.sample_in.TDATA, 87, 80) @[Converter.scala 17:51]
    io.sample_out.bits.shift <= _io_sample_out_bits_shift_T @[Converter.scala 17:30]
    node _io_sample_out_bits_search_for_root_T = bits(io.sample_in.TDATA, 95, 88) @[Converter.scala 18:61]
    io.sample_out.bits.search_for_root <= _io_sample_out_bits_search_for_root_T @[Converter.scala 18:40]
    node _io_sample_out_bits_tree_to_exec_T = bits(io.sample_in.TDATA, 103, 96) @[Converter.scala 19:58]
    io.sample_out.bits.tree_to_exec <= _io_sample_out_bits_tree_to_exec_T @[Converter.scala 19:37]
    node _io_sample_out_bits_scores_0_T = bits(io.sample_in.TDATA, 127, 112) @[Converter.scala 21:59]
    node _io_sample_out_bits_scores_0_T_1 = asFixedPoint(_io_sample_out_bits_scores_0_T, 8) @[Converter.scala 21:115]
    io.sample_out.bits.scores[0] <= _io_sample_out_bits_scores_0_T_1 @[Converter.scala 21:38]
    node _io_sample_out_bits_scores_1_T = bits(io.sample_in.TDATA, 143, 128) @[Converter.scala 21:59]
    node _io_sample_out_bits_scores_1_T_1 = asFixedPoint(_io_sample_out_bits_scores_1_T, 8) @[Converter.scala 21:115]
    io.sample_out.bits.scores[1] <= _io_sample_out_bits_scores_1_T_1 @[Converter.scala 21:38]
    node _io_sample_out_bits_scores_2_T = bits(io.sample_in.TDATA, 159, 144) @[Converter.scala 21:59]
    node _io_sample_out_bits_scores_2_T_1 = asFixedPoint(_io_sample_out_bits_scores_2_T, 8) @[Converter.scala 21:115]
    io.sample_out.bits.scores[2] <= _io_sample_out_bits_scores_2_T_1 @[Converter.scala 21:38]
    node _io_sample_out_bits_scores_3_T = bits(io.sample_in.TDATA, 175, 160) @[Converter.scala 21:59]
    node _io_sample_out_bits_scores_3_T_1 = asFixedPoint(_io_sample_out_bits_scores_3_T, 8) @[Converter.scala 21:115]
    io.sample_out.bits.scores[3] <= _io_sample_out_bits_scores_3_T_1 @[Converter.scala 21:38]
    node _io_sample_out_bits_weights_0_T = bits(io.sample_in.TDATA, 191, 176) @[Converter.scala 24:60]
    node _io_sample_out_bits_weights_0_T_1 = asFixedPoint(_io_sample_out_bits_weights_0_T, 8) @[Converter.scala 24:142]
    io.sample_out.bits.weights[0] <= _io_sample_out_bits_weights_0_T_1 @[Converter.scala 24:39]
    node _io_sample_out_bits_weights_1_T = bits(io.sample_in.TDATA, 207, 192) @[Converter.scala 24:60]
    node _io_sample_out_bits_weights_1_T_1 = asFixedPoint(_io_sample_out_bits_weights_1_T, 8) @[Converter.scala 24:142]
    io.sample_out.bits.weights[1] <= _io_sample_out_bits_weights_1_T_1 @[Converter.scala 24:39]
    node _io_sample_out_bits_weights_2_T = bits(io.sample_in.TDATA, 223, 208) @[Converter.scala 24:60]
    node _io_sample_out_bits_weights_2_T_1 = asFixedPoint(_io_sample_out_bits_weights_2_T, 8) @[Converter.scala 24:142]
    io.sample_out.bits.weights[2] <= _io_sample_out_bits_weights_2_T_1 @[Converter.scala 24:39]
    node _io_sample_out_bits_weights_3_T = bits(io.sample_in.TDATA, 239, 224) @[Converter.scala 24:60]
    node _io_sample_out_bits_weights_3_T_1 = asFixedPoint(_io_sample_out_bits_weights_3_T, 8) @[Converter.scala 24:142]
    io.sample_out.bits.weights[3] <= _io_sample_out_bits_weights_3_T_1 @[Converter.scala 24:39]
    node _io_sample_out_bits_weights_4_T = bits(io.sample_in.TDATA, 255, 240) @[Converter.scala 24:60]
    node _io_sample_out_bits_weights_4_T_1 = asFixedPoint(_io_sample_out_bits_weights_4_T, 8) @[Converter.scala 24:142]
    io.sample_out.bits.weights[4] <= _io_sample_out_bits_weights_4_T_1 @[Converter.scala 24:39]
    io.sample_out.valid <= io.sample_in.TVALID @[Converter.scala 26:25]
    io.sample_out.bits.dest <= UInt<1>("h0") @[Converter.scala 27:29]
    io.sample_out.bits.last <= io.sample_in.TLAST @[Converter.scala 28:29]
    io.sample_in.TREADY <= io.sample_out.ready @[Converter.scala 29:25]

  module BackwardConverter :
    input clock : Clock
    input reset : Reset
    output io : { flip sample_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>}}, flip sample_out : { flip TDATA : UInt<256>, flip TKEEP : UInt<32>, flip TLAST : UInt<1>, TREADY : UInt<1>, flip TVALID : UInt<1>}}

    io.sample_in.ready <= io.sample_out.TREADY @[Converter.scala 38:24]
    io.sample_out.TKEEP <= UInt<31>("h7fffffff") @[Converter.scala 40:25]
    io.sample_out.TLAST <= io.sample_in.bits.last @[Converter.scala 41:25]
    io.sample_out.TVALID <= io.sample_in.valid @[Converter.scala 42:26]
    node io_sample_out_TDATA_lo_lo = asUInt(io.sample_in.bits.weights[0]) @[Cat.scala 33:92]
    node io_sample_out_TDATA_lo_hi = asUInt(io.sample_in.bits.weights[1]) @[Cat.scala 33:92]
    node io_sample_out_TDATA_lo = cat(io_sample_out_TDATA_lo_hi, io_sample_out_TDATA_lo_lo) @[Cat.scala 33:92]
    node io_sample_out_TDATA_hi_lo = asUInt(io.sample_in.bits.weights[2]) @[Cat.scala 33:92]
    node io_sample_out_TDATA_hi_hi_lo = asUInt(io.sample_in.bits.weights[3]) @[Cat.scala 33:92]
    node io_sample_out_TDATA_hi_hi_hi = asUInt(io.sample_in.bits.weights[4]) @[Cat.scala 33:92]
    node io_sample_out_TDATA_hi_hi = cat(io_sample_out_TDATA_hi_hi_hi, io_sample_out_TDATA_hi_hi_lo) @[Cat.scala 33:92]
    node io_sample_out_TDATA_hi = cat(io_sample_out_TDATA_hi_hi, io_sample_out_TDATA_hi_lo) @[Cat.scala 33:92]
    node _io_sample_out_TDATA_T = cat(io_sample_out_TDATA_hi, io_sample_out_TDATA_lo) @[Cat.scala 33:92]
    node io_sample_out_TDATA_lo_lo_1 = asUInt(io.sample_in.bits.scores[0]) @[Cat.scala 33:92]
    node io_sample_out_TDATA_lo_hi_1 = asUInt(io.sample_in.bits.scores[1]) @[Cat.scala 33:92]
    node io_sample_out_TDATA_lo_1 = cat(io_sample_out_TDATA_lo_hi_1, io_sample_out_TDATA_lo_lo_1) @[Cat.scala 33:92]
    node io_sample_out_TDATA_hi_lo_1 = asUInt(io.sample_in.bits.scores[2]) @[Cat.scala 33:92]
    node io_sample_out_TDATA_hi_hi_1 = asUInt(io.sample_in.bits.scores[3]) @[Cat.scala 33:92]
    node io_sample_out_TDATA_hi_1 = cat(io_sample_out_TDATA_hi_hi_1, io_sample_out_TDATA_hi_lo_1) @[Cat.scala 33:92]
    node _io_sample_out_TDATA_T_1 = cat(io_sample_out_TDATA_hi_1, io_sample_out_TDATA_lo_1) @[Cat.scala 33:92]
    node _io_sample_out_TDATA_T_2 = mux(UInt<1>("h0"), UInt<8>("hff"), UInt<8>("h0")) @[Bitwise.scala 77:12]
    node _io_sample_out_TDATA_T_3 = cat(_io_sample_out_TDATA_T_2, io.sample_in.bits.tree_to_exec) @[Cat.scala 33:92]
    node _io_sample_out_TDATA_T_4 = mux(UInt<1>("h0"), UInt<7>("h7f"), UInt<7>("h0")) @[Bitwise.scala 77:12]
    node _io_sample_out_TDATA_T_5 = cat(_io_sample_out_TDATA_T_4, io.sample_in.bits.search_for_root) @[Cat.scala 33:92]
    node _io_sample_out_TDATA_T_6 = mux(UInt<1>("h0"), UInt<7>("h7f"), UInt<7>("h0")) @[Bitwise.scala 77:12]
    node _io_sample_out_TDATA_T_7 = cat(_io_sample_out_TDATA_T_6, io.sample_in.bits.shift) @[Cat.scala 33:92]
    node _io_sample_out_TDATA_T_8 = mux(UInt<1>("h0"), UInt<6>("h3f"), UInt<6>("h0")) @[Bitwise.scala 77:12]
    node _io_sample_out_TDATA_T_9 = cat(_io_sample_out_TDATA_T_8, io.sample_in.bits.offset) @[Cat.scala 33:92]
    node io_sample_out_TDATA_lo_lo_2 = asUInt(io.sample_in.bits.features[0]) @[Cat.scala 33:92]
    node io_sample_out_TDATA_lo_hi_2 = asUInt(io.sample_in.bits.features[1]) @[Cat.scala 33:92]
    node io_sample_out_TDATA_lo_2 = cat(io_sample_out_TDATA_lo_hi_2, io_sample_out_TDATA_lo_lo_2) @[Cat.scala 33:92]
    node io_sample_out_TDATA_hi_lo_2 = asUInt(io.sample_in.bits.features[2]) @[Cat.scala 33:92]
    node io_sample_out_TDATA_hi_hi_2 = asUInt(io.sample_in.bits.features[3]) @[Cat.scala 33:92]
    node io_sample_out_TDATA_hi_2 = cat(io_sample_out_TDATA_hi_hi_2, io_sample_out_TDATA_hi_lo_2) @[Cat.scala 33:92]
    node _io_sample_out_TDATA_T_10 = cat(io_sample_out_TDATA_hi_2, io_sample_out_TDATA_lo_2) @[Cat.scala 33:92]
    node io_sample_out_TDATA_lo_hi_3 = cat(_io_sample_out_TDATA_T_7, _io_sample_out_TDATA_T_9) @[Cat.scala 33:92]
    node io_sample_out_TDATA_lo_3 = cat(io_sample_out_TDATA_lo_hi_3, _io_sample_out_TDATA_T_10) @[Cat.scala 33:92]
    node io_sample_out_TDATA_hi_lo_3 = cat(_io_sample_out_TDATA_T_3, _io_sample_out_TDATA_T_5) @[Cat.scala 33:92]
    node io_sample_out_TDATA_hi_hi_3 = cat(_io_sample_out_TDATA_T, _io_sample_out_TDATA_T_1) @[Cat.scala 33:92]
    node io_sample_out_TDATA_hi_3 = cat(io_sample_out_TDATA_hi_hi_3, io_sample_out_TDATA_hi_lo_3) @[Cat.scala 33:92]
    node _io_sample_out_TDATA_T_11 = cat(io_sample_out_TDATA_hi_3, io_sample_out_TDATA_lo_3) @[Cat.scala 33:92]
    io.sample_out.TDATA <= _io_sample_out_TDATA_T_11 @[Converter.scala 48:25]

  module Queue :
    input clock : Clock
    input reset : Reset
    output io : { flip enq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>}}, deq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>}}, count : UInt<2>}

    cmem ram : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>} [3] @[Decoupled.scala 275:95]
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
    output io : { flip sample_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>}}, flip mem : { flip enable_1 : UInt<1>, flip write_1 : UInt<1>, flip addr_1 : UInt<13>, flip dataIn_1 : UInt<64>, dataOut_1 : UInt<64>, flip enable_2 : UInt<1>, flip write_2 : UInt<1>, flip addr_2 : UInt<13>, flip dataIn_2 : UInt<64>, dataOut_2 : UInt<64>}, sample_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>}}}

    inst queue of Queue @[Decoupled.scala 377:21]
    queue.clock <= clock
    queue.reset <= reset
    queue.io.enq.valid <= io.sample_in.valid @[Decoupled.scala 379:22]
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
    queue.io.enq.bits.tree_to_exec <= io.sample_in.bits.tree_to_exec @[Decoupled.scala 380:21]
    queue.io.enq.bits.search_for_root <= io.sample_in.bits.search_for_root @[Decoupled.scala 380:21]
    queue.io.enq.bits.shift <= io.sample_in.bits.shift @[Decoupled.scala 380:21]
    queue.io.enq.bits.offset <= io.sample_in.bits.offset @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[0] <= io.sample_in.bits.features[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[1] <= io.sample_in.bits.features[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[2] <= io.sample_in.bits.features[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[3] <= io.sample_in.bits.features[3] @[Decoupled.scala 380:21]
    io.sample_in.ready <= queue.io.enq.ready @[Decoupled.scala 381:17]
    when queue.io.deq.valid : @[TreePE.scala 18:22]
      io.mem.enable_1 <= UInt<1>("h1") @[TreePE.scala 19:23]
      io.mem.addr_1 <= queue.io.deq.bits.offset @[TreePE.scala 20:21]
      io.mem.write_1 <= UInt<1>("h0") @[TreePE.scala 21:22]
      io.mem.dataIn_1 <= UInt<1>("h0") @[TreePE.scala 22:23]
    else :
      io.mem.enable_1 <= UInt<1>("h0") @[TreePE.scala 24:23]
      io.mem.addr_1 is invalid @[TreePE.scala 25:21]
      io.mem.write_1 <= UInt<1>("h0") @[TreePE.scala 26:22]
      io.mem.dataIn_1 is invalid @[TreePE.scala 27:23]
    io.mem.enable_2 is invalid @[TreePE.scala 30:21]
    io.mem.addr_2 is invalid @[TreePE.scala 31:19]
    io.mem.write_2 is invalid @[TreePE.scala 32:20]
    io.mem.dataIn_2 is invalid @[TreePE.scala 33:21]
    reg REG : UInt<1>, clock with :
      reset => (UInt<1>("h0"), REG) @[TreePE.scala 37:17]
    REG <= queue.io.deq.valid @[TreePE.scala 37:17]
    when REG : @[TreePE.scala 37:31]
      node attr_id = bits(io.mem.dataOut_1, 33, 32) @[TreePE.scala 39:37]
      node threshold = bits(io.mem.dataOut_1, 15, 0) @[TreePE.scala 40:39]
      node nodeRA = bits(io.mem.dataOut_1, 31, 16) @[TreePE.scala 41:36]
      node leftChildInfo = bits(io.mem.dataOut_1, 43, 34) @[TreePE.scala 42:43]
      node rightChildInfo = bits(io.mem.dataOut_1, 53, 44) @[TreePE.scala 43:44]
      node leftChildType = bits(io.mem.dataOut_1, 54, 54) @[TreePE.scala 44:43]
      node rightChildType = bits(io.mem.dataOut_1, 55, 55) @[TreePE.scala 45:44]
      node is_valid = bits(io.mem.dataOut_1, 56, 56) @[TreePE.scala 46:38]
      node depth_indicator = bits(io.mem.dataOut_1, 59, 57) @[TreePE.scala 47:45]
      reg REG_1 : Fixed<16><<8>>[4], clock with :
        reset => (UInt<1>("h0"), REG_1) @[TreePE.scala 49:45]
      REG_1 <= queue.io.deq.bits.features @[TreePE.scala 49:45]
      io.sample_out.bits.features <= REG_1 @[TreePE.scala 49:35]
      reg REG_2 : Fixed<16><<8>>[5], clock with :
        reset => (UInt<1>("h0"), REG_2) @[TreePE.scala 50:44]
      REG_2 <= queue.io.deq.bits.weights @[TreePE.scala 50:44]
      io.sample_out.bits.weights <= REG_2 @[TreePE.scala 50:34]
      reg io_sample_out_bits_tree_to_exec_REG : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_tree_to_exec_REG) @[TreePE.scala 51:49]
      io_sample_out_bits_tree_to_exec_REG <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 51:49]
      io.sample_out.bits.tree_to_exec <= io_sample_out_bits_tree_to_exec_REG @[TreePE.scala 51:39]
      reg REG_3 : Fixed<16><<8>>[4], clock with :
        reset => (UInt<1>("h0"), REG_3) @[TreePE.scala 52:43]
      REG_3 <= queue.io.deq.bits.scores @[TreePE.scala 52:43]
      io.sample_out.bits.scores <= REG_3 @[TreePE.scala 52:33]
      io.sample_out.valid <= UInt<1>("h1") @[TreePE.scala 53:27]
      wire offset : UInt<10> @[TreePE.scala 56:26]
      wire shift : UInt<1> @[TreePE.scala 57:25]
      reg features_bits : Fixed<16><<8>>[4], clock with :
        reset => (UInt<1>("h0"), features_bits) @[TreePE.scala 58:36]
      features_bits <= queue.io.deq.bits.features @[TreePE.scala 58:36]
      reg scores_bits : Fixed<16><<8>>[4], clock with :
        reset => (UInt<1>("h0"), scores_bits) @[TreePE.scala 59:34]
      scores_bits <= queue.io.deq.bits.scores @[TreePE.scala 59:34]
      reg weights_bits : Fixed<16><<8>>[5], clock with :
        reset => (UInt<1>("h0"), weights_bits) @[TreePE.scala 60:35]
      weights_bits <= queue.io.deq.bits.weights @[TreePE.scala 60:35]
      node _shift_T = asFixedPoint(threshold, 8) @[TreePE.scala 61:69]
      node _shift_T_1 = lt(features_bits[attr_id], _shift_T) @[TreePE.scala 61:45]
      node _shift_T_2 = mux(_shift_T_1, leftChildType, rightChildType) @[TreePE.scala 61:21]
      shift <= _shift_T_2 @[TreePE.scala 61:15]
      node _offset_T = asFixedPoint(threshold, 8) @[TreePE.scala 62:70]
      node _offset_T_1 = lt(features_bits[attr_id], _offset_T) @[TreePE.scala 62:46]
      node _offset_T_2 = mux(_offset_T_1, leftChildInfo, rightChildInfo) @[TreePE.scala 62:22]
      offset <= _offset_T_2 @[TreePE.scala 62:16]
      node _io_sample_out_bits_offset_T = eq(shift, UInt<1>("h0")) @[TreePE.scala 63:48]
      reg io_sample_out_bits_offset_REG : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_offset_REG) @[TreePE.scala 63:67]
      io_sample_out_bits_offset_REG <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 63:67]
      node _io_sample_out_bits_offset_T_1 = mux(_io_sample_out_bits_offset_T, io_sample_out_bits_offset_REG, offset) @[TreePE.scala 63:41]
      io.sample_out.bits.offset <= _io_sample_out_bits_offset_T_1 @[TreePE.scala 63:35]
      io.sample_out.bits.shift <= UInt<1>("h0") @[TreePE.scala 64:34]
      node _io_sample_out_bits_search_for_root_T = eq(shift, UInt<1>("h0")) @[TreePE.scala 65:47]
      io.sample_out.bits.search_for_root <= _io_sample_out_bits_search_for_root_T @[TreePE.scala 65:44]
      node _io_sample_out_bits_scores_0_T = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 67:97]
      node _io_sample_out_bits_scores_0_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 67:113]
      node _io_sample_out_bits_scores_0_T_2 = and(_io_sample_out_bits_scores_0_T_1, is_valid) @[TreePE.scala 67:125]
      node _io_sample_out_bits_scores_0_T_3 = eq(UInt<1>("h0"), offset) @[TreePE.scala 67:145]
      node _io_sample_out_bits_scores_0_T_4 = and(_io_sample_out_bits_scores_0_T_2, _io_sample_out_bits_scores_0_T_3) @[TreePE.scala 67:137]
      node _io_sample_out_bits_scores_0_T_5 = mux(_io_sample_out_bits_scores_0_T_4, UInt<16>("hffff"), UInt<16>("h0")) @[TreePE.scala 67:105]
      node _io_sample_out_bits_scores_0_T_6 = and(_io_sample_out_bits_scores_0_T, _io_sample_out_bits_scores_0_T_5) @[TreePE.scala 67:100]
      node _io_sample_out_bits_scores_0_T_7 = asFixedPoint(_io_sample_out_bits_scores_0_T_6, 8) @[TreePE.scala 67:197]
      node _io_sample_out_bits_scores_0_T_8 = add(scores_bits[0], _io_sample_out_bits_scores_0_T_7) @[TreePE.scala 67:58]
      node _io_sample_out_bits_scores_0_T_9 = tail(_io_sample_out_bits_scores_0_T_8, 1) @[TreePE.scala 67:58]
      node _io_sample_out_bits_scores_0_T_10 = asFixedPoint(_io_sample_out_bits_scores_0_T_9, 8) @[TreePE.scala 67:58]
      io.sample_out.bits.scores[0] <= _io_sample_out_bits_scores_0_T_10 @[TreePE.scala 67:40]
      node _io_sample_out_bits_scores_1_T = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 67:97]
      node _io_sample_out_bits_scores_1_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 67:113]
      node _io_sample_out_bits_scores_1_T_2 = and(_io_sample_out_bits_scores_1_T_1, is_valid) @[TreePE.scala 67:125]
      node _io_sample_out_bits_scores_1_T_3 = eq(UInt<1>("h1"), offset) @[TreePE.scala 67:145]
      node _io_sample_out_bits_scores_1_T_4 = and(_io_sample_out_bits_scores_1_T_2, _io_sample_out_bits_scores_1_T_3) @[TreePE.scala 67:137]
      node _io_sample_out_bits_scores_1_T_5 = mux(_io_sample_out_bits_scores_1_T_4, UInt<16>("hffff"), UInt<16>("h0")) @[TreePE.scala 67:105]
      node _io_sample_out_bits_scores_1_T_6 = and(_io_sample_out_bits_scores_1_T, _io_sample_out_bits_scores_1_T_5) @[TreePE.scala 67:100]
      node _io_sample_out_bits_scores_1_T_7 = asFixedPoint(_io_sample_out_bits_scores_1_T_6, 8) @[TreePE.scala 67:197]
      node _io_sample_out_bits_scores_1_T_8 = add(scores_bits[1], _io_sample_out_bits_scores_1_T_7) @[TreePE.scala 67:58]
      node _io_sample_out_bits_scores_1_T_9 = tail(_io_sample_out_bits_scores_1_T_8, 1) @[TreePE.scala 67:58]
      node _io_sample_out_bits_scores_1_T_10 = asFixedPoint(_io_sample_out_bits_scores_1_T_9, 8) @[TreePE.scala 67:58]
      io.sample_out.bits.scores[1] <= _io_sample_out_bits_scores_1_T_10 @[TreePE.scala 67:40]
      node _io_sample_out_bits_scores_2_T = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 67:97]
      node _io_sample_out_bits_scores_2_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 67:113]
      node _io_sample_out_bits_scores_2_T_2 = and(_io_sample_out_bits_scores_2_T_1, is_valid) @[TreePE.scala 67:125]
      node _io_sample_out_bits_scores_2_T_3 = eq(UInt<2>("h2"), offset) @[TreePE.scala 67:145]
      node _io_sample_out_bits_scores_2_T_4 = and(_io_sample_out_bits_scores_2_T_2, _io_sample_out_bits_scores_2_T_3) @[TreePE.scala 67:137]
      node _io_sample_out_bits_scores_2_T_5 = mux(_io_sample_out_bits_scores_2_T_4, UInt<16>("hffff"), UInt<16>("h0")) @[TreePE.scala 67:105]
      node _io_sample_out_bits_scores_2_T_6 = and(_io_sample_out_bits_scores_2_T, _io_sample_out_bits_scores_2_T_5) @[TreePE.scala 67:100]
      node _io_sample_out_bits_scores_2_T_7 = asFixedPoint(_io_sample_out_bits_scores_2_T_6, 8) @[TreePE.scala 67:197]
      node _io_sample_out_bits_scores_2_T_8 = add(scores_bits[2], _io_sample_out_bits_scores_2_T_7) @[TreePE.scala 67:58]
      node _io_sample_out_bits_scores_2_T_9 = tail(_io_sample_out_bits_scores_2_T_8, 1) @[TreePE.scala 67:58]
      node _io_sample_out_bits_scores_2_T_10 = asFixedPoint(_io_sample_out_bits_scores_2_T_9, 8) @[TreePE.scala 67:58]
      io.sample_out.bits.scores[2] <= _io_sample_out_bits_scores_2_T_10 @[TreePE.scala 67:40]
      node _io_sample_out_bits_scores_3_T = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 67:97]
      node _io_sample_out_bits_scores_3_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 67:113]
      node _io_sample_out_bits_scores_3_T_2 = and(_io_sample_out_bits_scores_3_T_1, is_valid) @[TreePE.scala 67:125]
      node _io_sample_out_bits_scores_3_T_3 = eq(UInt<2>("h3"), offset) @[TreePE.scala 67:145]
      node _io_sample_out_bits_scores_3_T_4 = and(_io_sample_out_bits_scores_3_T_2, _io_sample_out_bits_scores_3_T_3) @[TreePE.scala 67:137]
      node _io_sample_out_bits_scores_3_T_5 = mux(_io_sample_out_bits_scores_3_T_4, UInt<16>("hffff"), UInt<16>("h0")) @[TreePE.scala 67:105]
      node _io_sample_out_bits_scores_3_T_6 = and(_io_sample_out_bits_scores_3_T, _io_sample_out_bits_scores_3_T_5) @[TreePE.scala 67:100]
      node _io_sample_out_bits_scores_3_T_7 = asFixedPoint(_io_sample_out_bits_scores_3_T_6, 8) @[TreePE.scala 67:197]
      node _io_sample_out_bits_scores_3_T_8 = add(scores_bits[3], _io_sample_out_bits_scores_3_T_7) @[TreePE.scala 67:58]
      node _io_sample_out_bits_scores_3_T_9 = tail(_io_sample_out_bits_scores_3_T_8, 1) @[TreePE.scala 67:58]
      node _io_sample_out_bits_scores_3_T_10 = asFixedPoint(_io_sample_out_bits_scores_3_T_9, 8) @[TreePE.scala 67:58]
      io.sample_out.bits.scores[3] <= _io_sample_out_bits_scores_3_T_10 @[TreePE.scala 67:40]
      reg io_sample_out_bits_dest_REG : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_dest_REG) @[TreePE.scala 69:43]
      io_sample_out_bits_dest_REG <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 69:43]
      node _io_sample_out_bits_dest_T = eq(io_sample_out_bits_dest_REG, UInt<4>("h9")) @[TreePE.scala 69:69]
      io.sample_out.bits.dest <= _io_sample_out_bits_dest_T @[TreePE.scala 69:33]
      reg io_sample_out_bits_last_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_last_REG) @[TreePE.scala 70:43]
      io_sample_out_bits_last_REG <= queue.io.deq.bits.last @[TreePE.scala 70:43]
      io.sample_out.bits.last <= io_sample_out_bits_last_REG @[TreePE.scala 70:33]
    else :
      io.sample_out.bits.last is invalid @[TreePE.scala 89:26]
      io.sample_out.bits.dest is invalid @[TreePE.scala 89:26]
      io.sample_out.bits.weights[0] is invalid @[TreePE.scala 89:26]
      io.sample_out.bits.weights[1] is invalid @[TreePE.scala 89:26]
      io.sample_out.bits.weights[2] is invalid @[TreePE.scala 89:26]
      io.sample_out.bits.weights[3] is invalid @[TreePE.scala 89:26]
      io.sample_out.bits.weights[4] is invalid @[TreePE.scala 89:26]
      io.sample_out.bits.scores[0] is invalid @[TreePE.scala 89:26]
      io.sample_out.bits.scores[1] is invalid @[TreePE.scala 89:26]
      io.sample_out.bits.scores[2] is invalid @[TreePE.scala 89:26]
      io.sample_out.bits.scores[3] is invalid @[TreePE.scala 89:26]
      io.sample_out.bits.tree_to_exec is invalid @[TreePE.scala 89:26]
      io.sample_out.bits.search_for_root is invalid @[TreePE.scala 89:26]
      io.sample_out.bits.shift is invalid @[TreePE.scala 89:26]
      io.sample_out.bits.offset is invalid @[TreePE.scala 89:26]
      io.sample_out.bits.features[0] is invalid @[TreePE.scala 89:26]
      io.sample_out.bits.features[1] is invalid @[TreePE.scala 89:26]
      io.sample_out.bits.features[2] is invalid @[TreePE.scala 89:26]
      io.sample_out.bits.features[3] is invalid @[TreePE.scala 89:26]
      io.sample_out.valid <= UInt<1>("h0") @[TreePE.scala 90:27]
    reg queue_io_deq_ready_REG : UInt<1>, clock with :
      reset => (UInt<1>("h0"), queue_io_deq_ready_REG) @[TreePE.scala 93:27]
    queue_io_deq_ready_REG <= io.sample_out.ready @[TreePE.scala 93:27]
    queue.io.deq.ready <= queue_io_deq_ready_REG @[TreePE.scala 93:17]

  module TreePEwithBRAM :
    input clock : Clock
    input reset : Reset
    output pe_io : { flip sample_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>}}, flip mem : { flip enable_1 : UInt<1>, flip write_1 : UInt<1>, flip addr_1 : UInt<13>, flip dataIn_1 : UInt<64>, dataOut_1 : UInt<64>, flip enable_2 : UInt<1>, flip write_2 : UInt<1>, flip addr_2 : UInt<13>, flip dataIn_2 : UInt<64>, dataOut_2 : UInt<64>}, sample_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>}}}

    inst pe of TreePE @[TreePE.scala 124:18]
    pe.clock <= clock
    pe.reset <= reset
    pe_io.sample_out.bits <= pe.io.sample_out.bits @[TreePE.scala 126:9]
    pe_io.sample_out.valid <= pe.io.sample_out.valid @[TreePE.scala 126:9]
    pe.io.sample_out.ready <= pe_io.sample_out.ready @[TreePE.scala 126:9]
    pe.io.mem <= pe_io.mem @[TreePE.scala 126:9]
    pe.io.sample_in <= pe_io.sample_in @[TreePE.scala 126:9]

  module Queue_1 :
    input clock : Clock
    input reset : Reset
    output io : { flip enq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>}}, deq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>}}, count : UInt<2>}

    cmem ram : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>} [3] @[Decoupled.scala 275:95]
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
    output io : { flip sample_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>}}, flip mem : { flip enable_1 : UInt<1>, flip write_1 : UInt<1>, flip addr_1 : UInt<13>, flip dataIn_1 : UInt<64>, dataOut_1 : UInt<64>, flip enable_2 : UInt<1>, flip write_2 : UInt<1>, flip addr_2 : UInt<13>, flip dataIn_2 : UInt<64>, dataOut_2 : UInt<64>}, sample_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>}}}

    inst queue of Queue_1 @[Decoupled.scala 377:21]
    queue.clock <= clock
    queue.reset <= reset
    queue.io.enq.valid <= io.sample_in.valid @[Decoupled.scala 379:22]
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
    queue.io.enq.bits.tree_to_exec <= io.sample_in.bits.tree_to_exec @[Decoupled.scala 380:21]
    queue.io.enq.bits.search_for_root <= io.sample_in.bits.search_for_root @[Decoupled.scala 380:21]
    queue.io.enq.bits.shift <= io.sample_in.bits.shift @[Decoupled.scala 380:21]
    queue.io.enq.bits.offset <= io.sample_in.bits.offset @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[0] <= io.sample_in.bits.features[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[1] <= io.sample_in.bits.features[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[2] <= io.sample_in.bits.features[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[3] <= io.sample_in.bits.features[3] @[Decoupled.scala 380:21]
    io.sample_in.ready <= queue.io.enq.ready @[Decoupled.scala 381:17]
    when queue.io.deq.valid : @[TreePE.scala 18:22]
      io.mem.enable_1 <= UInt<1>("h1") @[TreePE.scala 19:23]
      io.mem.addr_1 <= queue.io.deq.bits.offset @[TreePE.scala 20:21]
      io.mem.write_1 <= UInt<1>("h0") @[TreePE.scala 21:22]
      io.mem.dataIn_1 <= UInt<1>("h0") @[TreePE.scala 22:23]
    else :
      io.mem.enable_1 <= UInt<1>("h0") @[TreePE.scala 24:23]
      io.mem.addr_1 is invalid @[TreePE.scala 25:21]
      io.mem.write_1 <= UInt<1>("h0") @[TreePE.scala 26:22]
      io.mem.dataIn_1 is invalid @[TreePE.scala 27:23]
    io.mem.enable_2 is invalid @[TreePE.scala 30:21]
    io.mem.addr_2 is invalid @[TreePE.scala 31:19]
    io.mem.write_2 is invalid @[TreePE.scala 32:20]
    io.mem.dataIn_2 is invalid @[TreePE.scala 33:21]
    reg REG : UInt<1>, clock with :
      reset => (UInt<1>("h0"), REG) @[TreePE.scala 37:17]
    REG <= queue.io.deq.valid @[TreePE.scala 37:17]
    when REG : @[TreePE.scala 37:31]
      node attr_id = bits(io.mem.dataOut_1, 33, 32) @[TreePE.scala 39:37]
      node threshold = bits(io.mem.dataOut_1, 15, 0) @[TreePE.scala 40:39]
      node nodeRA = bits(io.mem.dataOut_1, 31, 16) @[TreePE.scala 41:36]
      node leftChildInfo = bits(io.mem.dataOut_1, 43, 34) @[TreePE.scala 42:43]
      node rightChildInfo = bits(io.mem.dataOut_1, 53, 44) @[TreePE.scala 43:44]
      node leftChildType = bits(io.mem.dataOut_1, 54, 54) @[TreePE.scala 44:43]
      node rightChildType = bits(io.mem.dataOut_1, 55, 55) @[TreePE.scala 45:44]
      node is_valid = bits(io.mem.dataOut_1, 56, 56) @[TreePE.scala 46:38]
      node depth_indicator = bits(io.mem.dataOut_1, 59, 57) @[TreePE.scala 47:45]
      reg REG_1 : Fixed<16><<8>>[4], clock with :
        reset => (UInt<1>("h0"), REG_1) @[TreePE.scala 49:45]
      REG_1 <= queue.io.deq.bits.features @[TreePE.scala 49:45]
      io.sample_out.bits.features <= REG_1 @[TreePE.scala 49:35]
      reg REG_2 : Fixed<16><<8>>[5], clock with :
        reset => (UInt<1>("h0"), REG_2) @[TreePE.scala 50:44]
      REG_2 <= queue.io.deq.bits.weights @[TreePE.scala 50:44]
      io.sample_out.bits.weights <= REG_2 @[TreePE.scala 50:34]
      reg io_sample_out_bits_tree_to_exec_REG : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_tree_to_exec_REG) @[TreePE.scala 51:49]
      io_sample_out_bits_tree_to_exec_REG <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 51:49]
      io.sample_out.bits.tree_to_exec <= io_sample_out_bits_tree_to_exec_REG @[TreePE.scala 51:39]
      reg REG_3 : Fixed<16><<8>>[4], clock with :
        reset => (UInt<1>("h0"), REG_3) @[TreePE.scala 52:43]
      REG_3 <= queue.io.deq.bits.scores @[TreePE.scala 52:43]
      io.sample_out.bits.scores <= REG_3 @[TreePE.scala 52:33]
      io.sample_out.valid <= UInt<1>("h1") @[TreePE.scala 53:27]
      wire offset : UInt<10> @[TreePE.scala 72:26]
      wire shift : UInt<1> @[TreePE.scala 73:25]
      reg features_bits : Fixed<16><<8>>[4], clock with :
        reset => (UInt<1>("h0"), features_bits) @[TreePE.scala 74:36]
      features_bits <= queue.io.deq.bits.features @[TreePE.scala 74:36]
      reg scores_bits : Fixed<16><<8>>[4], clock with :
        reset => (UInt<1>("h0"), scores_bits) @[TreePE.scala 75:34]
      scores_bits <= queue.io.deq.bits.scores @[TreePE.scala 75:34]
      reg weights_bits : Fixed<16><<8>>[5], clock with :
        reset => (UInt<1>("h0"), weights_bits) @[TreePE.scala 76:35]
      weights_bits <= queue.io.deq.bits.weights @[TreePE.scala 76:35]
      node _shift_T = asFixedPoint(threshold, 8) @[TreePE.scala 77:69]
      node _shift_T_1 = lt(features_bits[attr_id], _shift_T) @[TreePE.scala 77:45]
      node _shift_T_2 = mux(_shift_T_1, leftChildType, rightChildType) @[TreePE.scala 77:21]
      shift <= _shift_T_2 @[TreePE.scala 77:15]
      node _offset_T = asFixedPoint(threshold, 8) @[TreePE.scala 78:70]
      node _offset_T_1 = lt(features_bits[attr_id], _offset_T) @[TreePE.scala 78:46]
      node _offset_T_2 = mux(_offset_T_1, leftChildInfo, rightChildInfo) @[TreePE.scala 78:22]
      offset <= _offset_T_2 @[TreePE.scala 78:16]
      node _io_sample_out_bits_offset_T = eq(shift, UInt<1>("h0")) @[TreePE.scala 79:48]
      node _io_sample_out_bits_offset_T_1 = or(_io_sample_out_bits_offset_T, queue.io.deq.bits.search_for_root) @[TreePE.scala 79:60]
      reg io_sample_out_bits_offset_REG : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_offset_REG) @[TreePE.scala 79:97]
      io_sample_out_bits_offset_REG <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 79:97]
      node _io_sample_out_bits_offset_T_2 = mux(_io_sample_out_bits_offset_T_1, io_sample_out_bits_offset_REG, offset) @[TreePE.scala 79:41]
      io.sample_out.bits.offset <= _io_sample_out_bits_offset_T_2 @[TreePE.scala 79:35]
      io.sample_out.bits.shift <= UInt<1>("h0") @[TreePE.scala 80:34]
      node _io_sample_out_bits_search_for_root_T = eq(shift, UInt<1>("h0")) @[TreePE.scala 81:47]
      node _io_sample_out_bits_search_for_root_T_1 = or(_io_sample_out_bits_search_for_root_T, queue.io.deq.bits.search_for_root) @[TreePE.scala 81:54]
      io.sample_out.bits.search_for_root <= _io_sample_out_bits_search_for_root_T_1 @[TreePE.scala 81:44]
      node _io_sample_out_bits_scores_0_T = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 83:97]
      node _io_sample_out_bits_scores_0_T_1 = eq(queue.io.deq.bits.search_for_root, UInt<1>("h0")) @[TreePE.scala 83:107]
      node _io_sample_out_bits_scores_0_T_2 = eq(shift, UInt<1>("h0")) @[TreePE.scala 83:144]
      node _io_sample_out_bits_scores_0_T_3 = and(_io_sample_out_bits_scores_0_T_1, _io_sample_out_bits_scores_0_T_2) @[TreePE.scala 83:135]
      node _io_sample_out_bits_scores_0_T_4 = and(_io_sample_out_bits_scores_0_T_3, is_valid) @[TreePE.scala 83:156]
      node _io_sample_out_bits_scores_0_T_5 = eq(UInt<1>("h0"), offset) @[TreePE.scala 83:176]
      node _io_sample_out_bits_scores_0_T_6 = and(_io_sample_out_bits_scores_0_T_4, _io_sample_out_bits_scores_0_T_5) @[TreePE.scala 83:168]
      node _io_sample_out_bits_scores_0_T_7 = mux(_io_sample_out_bits_scores_0_T_6, UInt<16>("hffff"), UInt<16>("h0")) @[TreePE.scala 83:105]
      node _io_sample_out_bits_scores_0_T_8 = and(_io_sample_out_bits_scores_0_T, _io_sample_out_bits_scores_0_T_7) @[TreePE.scala 83:100]
      node _io_sample_out_bits_scores_0_T_9 = asFixedPoint(_io_sample_out_bits_scores_0_T_8, 8) @[TreePE.scala 83:228]
      node _io_sample_out_bits_scores_0_T_10 = add(scores_bits[0], _io_sample_out_bits_scores_0_T_9) @[TreePE.scala 83:58]
      node _io_sample_out_bits_scores_0_T_11 = tail(_io_sample_out_bits_scores_0_T_10, 1) @[TreePE.scala 83:58]
      node _io_sample_out_bits_scores_0_T_12 = asFixedPoint(_io_sample_out_bits_scores_0_T_11, 8) @[TreePE.scala 83:58]
      io.sample_out.bits.scores[0] <= _io_sample_out_bits_scores_0_T_12 @[TreePE.scala 83:40]
      node _io_sample_out_bits_scores_1_T = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 83:97]
      node _io_sample_out_bits_scores_1_T_1 = eq(queue.io.deq.bits.search_for_root, UInt<1>("h0")) @[TreePE.scala 83:107]
      node _io_sample_out_bits_scores_1_T_2 = eq(shift, UInt<1>("h0")) @[TreePE.scala 83:144]
      node _io_sample_out_bits_scores_1_T_3 = and(_io_sample_out_bits_scores_1_T_1, _io_sample_out_bits_scores_1_T_2) @[TreePE.scala 83:135]
      node _io_sample_out_bits_scores_1_T_4 = and(_io_sample_out_bits_scores_1_T_3, is_valid) @[TreePE.scala 83:156]
      node _io_sample_out_bits_scores_1_T_5 = eq(UInt<1>("h1"), offset) @[TreePE.scala 83:176]
      node _io_sample_out_bits_scores_1_T_6 = and(_io_sample_out_bits_scores_1_T_4, _io_sample_out_bits_scores_1_T_5) @[TreePE.scala 83:168]
      node _io_sample_out_bits_scores_1_T_7 = mux(_io_sample_out_bits_scores_1_T_6, UInt<16>("hffff"), UInt<16>("h0")) @[TreePE.scala 83:105]
      node _io_sample_out_bits_scores_1_T_8 = and(_io_sample_out_bits_scores_1_T, _io_sample_out_bits_scores_1_T_7) @[TreePE.scala 83:100]
      node _io_sample_out_bits_scores_1_T_9 = asFixedPoint(_io_sample_out_bits_scores_1_T_8, 8) @[TreePE.scala 83:228]
      node _io_sample_out_bits_scores_1_T_10 = add(scores_bits[1], _io_sample_out_bits_scores_1_T_9) @[TreePE.scala 83:58]
      node _io_sample_out_bits_scores_1_T_11 = tail(_io_sample_out_bits_scores_1_T_10, 1) @[TreePE.scala 83:58]
      node _io_sample_out_bits_scores_1_T_12 = asFixedPoint(_io_sample_out_bits_scores_1_T_11, 8) @[TreePE.scala 83:58]
      io.sample_out.bits.scores[1] <= _io_sample_out_bits_scores_1_T_12 @[TreePE.scala 83:40]
      node _io_sample_out_bits_scores_2_T = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 83:97]
      node _io_sample_out_bits_scores_2_T_1 = eq(queue.io.deq.bits.search_for_root, UInt<1>("h0")) @[TreePE.scala 83:107]
      node _io_sample_out_bits_scores_2_T_2 = eq(shift, UInt<1>("h0")) @[TreePE.scala 83:144]
      node _io_sample_out_bits_scores_2_T_3 = and(_io_sample_out_bits_scores_2_T_1, _io_sample_out_bits_scores_2_T_2) @[TreePE.scala 83:135]
      node _io_sample_out_bits_scores_2_T_4 = and(_io_sample_out_bits_scores_2_T_3, is_valid) @[TreePE.scala 83:156]
      node _io_sample_out_bits_scores_2_T_5 = eq(UInt<2>("h2"), offset) @[TreePE.scala 83:176]
      node _io_sample_out_bits_scores_2_T_6 = and(_io_sample_out_bits_scores_2_T_4, _io_sample_out_bits_scores_2_T_5) @[TreePE.scala 83:168]
      node _io_sample_out_bits_scores_2_T_7 = mux(_io_sample_out_bits_scores_2_T_6, UInt<16>("hffff"), UInt<16>("h0")) @[TreePE.scala 83:105]
      node _io_sample_out_bits_scores_2_T_8 = and(_io_sample_out_bits_scores_2_T, _io_sample_out_bits_scores_2_T_7) @[TreePE.scala 83:100]
      node _io_sample_out_bits_scores_2_T_9 = asFixedPoint(_io_sample_out_bits_scores_2_T_8, 8) @[TreePE.scala 83:228]
      node _io_sample_out_bits_scores_2_T_10 = add(scores_bits[2], _io_sample_out_bits_scores_2_T_9) @[TreePE.scala 83:58]
      node _io_sample_out_bits_scores_2_T_11 = tail(_io_sample_out_bits_scores_2_T_10, 1) @[TreePE.scala 83:58]
      node _io_sample_out_bits_scores_2_T_12 = asFixedPoint(_io_sample_out_bits_scores_2_T_11, 8) @[TreePE.scala 83:58]
      io.sample_out.bits.scores[2] <= _io_sample_out_bits_scores_2_T_12 @[TreePE.scala 83:40]
      node _io_sample_out_bits_scores_3_T = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 83:97]
      node _io_sample_out_bits_scores_3_T_1 = eq(queue.io.deq.bits.search_for_root, UInt<1>("h0")) @[TreePE.scala 83:107]
      node _io_sample_out_bits_scores_3_T_2 = eq(shift, UInt<1>("h0")) @[TreePE.scala 83:144]
      node _io_sample_out_bits_scores_3_T_3 = and(_io_sample_out_bits_scores_3_T_1, _io_sample_out_bits_scores_3_T_2) @[TreePE.scala 83:135]
      node _io_sample_out_bits_scores_3_T_4 = and(_io_sample_out_bits_scores_3_T_3, is_valid) @[TreePE.scala 83:156]
      node _io_sample_out_bits_scores_3_T_5 = eq(UInt<2>("h3"), offset) @[TreePE.scala 83:176]
      node _io_sample_out_bits_scores_3_T_6 = and(_io_sample_out_bits_scores_3_T_4, _io_sample_out_bits_scores_3_T_5) @[TreePE.scala 83:168]
      node _io_sample_out_bits_scores_3_T_7 = mux(_io_sample_out_bits_scores_3_T_6, UInt<16>("hffff"), UInt<16>("h0")) @[TreePE.scala 83:105]
      node _io_sample_out_bits_scores_3_T_8 = and(_io_sample_out_bits_scores_3_T, _io_sample_out_bits_scores_3_T_7) @[TreePE.scala 83:100]
      node _io_sample_out_bits_scores_3_T_9 = asFixedPoint(_io_sample_out_bits_scores_3_T_8, 8) @[TreePE.scala 83:228]
      node _io_sample_out_bits_scores_3_T_10 = add(scores_bits[3], _io_sample_out_bits_scores_3_T_9) @[TreePE.scala 83:58]
      node _io_sample_out_bits_scores_3_T_11 = tail(_io_sample_out_bits_scores_3_T_10, 1) @[TreePE.scala 83:58]
      node _io_sample_out_bits_scores_3_T_12 = asFixedPoint(_io_sample_out_bits_scores_3_T_11, 8) @[TreePE.scala 83:58]
      io.sample_out.bits.scores[3] <= _io_sample_out_bits_scores_3_T_12 @[TreePE.scala 83:40]
      reg io_sample_out_bits_dest_REG : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_dest_REG) @[TreePE.scala 85:43]
      io_sample_out_bits_dest_REG <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 85:43]
      node _io_sample_out_bits_dest_T = eq(io_sample_out_bits_dest_REG, UInt<4>("h9")) @[TreePE.scala 85:69]
      io.sample_out.bits.dest <= _io_sample_out_bits_dest_T @[TreePE.scala 85:33]
      reg io_sample_out_bits_last_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_last_REG) @[TreePE.scala 86:43]
      io_sample_out_bits_last_REG <= queue.io.deq.bits.last @[TreePE.scala 86:43]
      io.sample_out.bits.last <= io_sample_out_bits_last_REG @[TreePE.scala 86:33]
    else :
      io.sample_out.bits.last is invalid @[TreePE.scala 89:26]
      io.sample_out.bits.dest is invalid @[TreePE.scala 89:26]
      io.sample_out.bits.weights[0] is invalid @[TreePE.scala 89:26]
      io.sample_out.bits.weights[1] is invalid @[TreePE.scala 89:26]
      io.sample_out.bits.weights[2] is invalid @[TreePE.scala 89:26]
      io.sample_out.bits.weights[3] is invalid @[TreePE.scala 89:26]
      io.sample_out.bits.weights[4] is invalid @[TreePE.scala 89:26]
      io.sample_out.bits.scores[0] is invalid @[TreePE.scala 89:26]
      io.sample_out.bits.scores[1] is invalid @[TreePE.scala 89:26]
      io.sample_out.bits.scores[2] is invalid @[TreePE.scala 89:26]
      io.sample_out.bits.scores[3] is invalid @[TreePE.scala 89:26]
      io.sample_out.bits.tree_to_exec is invalid @[TreePE.scala 89:26]
      io.sample_out.bits.search_for_root is invalid @[TreePE.scala 89:26]
      io.sample_out.bits.shift is invalid @[TreePE.scala 89:26]
      io.sample_out.bits.offset is invalid @[TreePE.scala 89:26]
      io.sample_out.bits.features[0] is invalid @[TreePE.scala 89:26]
      io.sample_out.bits.features[1] is invalid @[TreePE.scala 89:26]
      io.sample_out.bits.features[2] is invalid @[TreePE.scala 89:26]
      io.sample_out.bits.features[3] is invalid @[TreePE.scala 89:26]
      io.sample_out.valid <= UInt<1>("h0") @[TreePE.scala 90:27]
    reg queue_io_deq_ready_REG : UInt<1>, clock with :
      reset => (UInt<1>("h0"), queue_io_deq_ready_REG) @[TreePE.scala 93:27]
    queue_io_deq_ready_REG <= io.sample_out.ready @[TreePE.scala 93:27]
    queue.io.deq.ready <= queue_io_deq_ready_REG @[TreePE.scala 93:17]

  module TreePEwithBRAM_1 :
    input clock : Clock
    input reset : Reset
    output pe_io : { flip sample_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>}}, flip mem : { flip enable_1 : UInt<1>, flip write_1 : UInt<1>, flip addr_1 : UInt<13>, flip dataIn_1 : UInt<64>, dataOut_1 : UInt<64>, flip enable_2 : UInt<1>, flip write_2 : UInt<1>, flip addr_2 : UInt<13>, flip dataIn_2 : UInt<64>, dataOut_2 : UInt<64>}, sample_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>}}}

    inst pe of TreePE_1 @[TreePE.scala 124:18]
    pe.clock <= clock
    pe.reset <= reset
    pe_io.sample_out.bits <= pe.io.sample_out.bits @[TreePE.scala 126:9]
    pe_io.sample_out.valid <= pe.io.sample_out.valid @[TreePE.scala 126:9]
    pe.io.sample_out.ready <= pe_io.sample_out.ready @[TreePE.scala 126:9]
    pe.io.mem <= pe_io.mem @[TreePE.scala 126:9]
    pe.io.sample_in <= pe_io.sample_in @[TreePE.scala 126:9]

  module Queue_2 :
    input clock : Clock
    input reset : Reset
    output io : { flip enq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>}}, deq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>}}, count : UInt<2>}

    cmem ram : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>} [3] @[Decoupled.scala 275:95]
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
    output io : { flip sample_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>}}, flip mem : { flip enable_1 : UInt<1>, flip write_1 : UInt<1>, flip addr_1 : UInt<13>, flip dataIn_1 : UInt<64>, dataOut_1 : UInt<64>, flip enable_2 : UInt<1>, flip write_2 : UInt<1>, flip addr_2 : UInt<13>, flip dataIn_2 : UInt<64>, dataOut_2 : UInt<64>}, sample_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>}}}

    inst queue of Queue_2 @[Decoupled.scala 377:21]
    queue.clock <= clock
    queue.reset <= reset
    queue.io.enq.valid <= io.sample_in.valid @[Decoupled.scala 379:22]
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
    queue.io.enq.bits.tree_to_exec <= io.sample_in.bits.tree_to_exec @[Decoupled.scala 380:21]
    queue.io.enq.bits.search_for_root <= io.sample_in.bits.search_for_root @[Decoupled.scala 380:21]
    queue.io.enq.bits.shift <= io.sample_in.bits.shift @[Decoupled.scala 380:21]
    queue.io.enq.bits.offset <= io.sample_in.bits.offset @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[0] <= io.sample_in.bits.features[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[1] <= io.sample_in.bits.features[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[2] <= io.sample_in.bits.features[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[3] <= io.sample_in.bits.features[3] @[Decoupled.scala 380:21]
    io.sample_in.ready <= queue.io.enq.ready @[Decoupled.scala 381:17]
    when queue.io.deq.valid : @[TreePE.scala 18:22]
      io.mem.enable_1 <= UInt<1>("h1") @[TreePE.scala 19:23]
      io.mem.addr_1 <= queue.io.deq.bits.offset @[TreePE.scala 20:21]
      io.mem.write_1 <= UInt<1>("h0") @[TreePE.scala 21:22]
      io.mem.dataIn_1 <= UInt<1>("h0") @[TreePE.scala 22:23]
    else :
      io.mem.enable_1 <= UInt<1>("h0") @[TreePE.scala 24:23]
      io.mem.addr_1 is invalid @[TreePE.scala 25:21]
      io.mem.write_1 <= UInt<1>("h0") @[TreePE.scala 26:22]
      io.mem.dataIn_1 is invalid @[TreePE.scala 27:23]
    io.mem.enable_2 is invalid @[TreePE.scala 30:21]
    io.mem.addr_2 is invalid @[TreePE.scala 31:19]
    io.mem.write_2 is invalid @[TreePE.scala 32:20]
    io.mem.dataIn_2 is invalid @[TreePE.scala 33:21]
    reg REG : UInt<1>, clock with :
      reset => (UInt<1>("h0"), REG) @[TreePE.scala 37:17]
    REG <= queue.io.deq.valid @[TreePE.scala 37:17]
    when REG : @[TreePE.scala 37:31]
      node attr_id = bits(io.mem.dataOut_1, 33, 32) @[TreePE.scala 39:37]
      node threshold = bits(io.mem.dataOut_1, 15, 0) @[TreePE.scala 40:39]
      node nodeRA = bits(io.mem.dataOut_1, 31, 16) @[TreePE.scala 41:36]
      node leftChildInfo = bits(io.mem.dataOut_1, 43, 34) @[TreePE.scala 42:43]
      node rightChildInfo = bits(io.mem.dataOut_1, 53, 44) @[TreePE.scala 43:44]
      node leftChildType = bits(io.mem.dataOut_1, 54, 54) @[TreePE.scala 44:43]
      node rightChildType = bits(io.mem.dataOut_1, 55, 55) @[TreePE.scala 45:44]
      node is_valid = bits(io.mem.dataOut_1, 56, 56) @[TreePE.scala 46:38]
      node depth_indicator = bits(io.mem.dataOut_1, 59, 57) @[TreePE.scala 47:45]
      reg REG_1 : Fixed<16><<8>>[4], clock with :
        reset => (UInt<1>("h0"), REG_1) @[TreePE.scala 49:45]
      REG_1 <= queue.io.deq.bits.features @[TreePE.scala 49:45]
      io.sample_out.bits.features <= REG_1 @[TreePE.scala 49:35]
      reg REG_2 : Fixed<16><<8>>[5], clock with :
        reset => (UInt<1>("h0"), REG_2) @[TreePE.scala 50:44]
      REG_2 <= queue.io.deq.bits.weights @[TreePE.scala 50:44]
      io.sample_out.bits.weights <= REG_2 @[TreePE.scala 50:34]
      reg io_sample_out_bits_tree_to_exec_REG : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_tree_to_exec_REG) @[TreePE.scala 51:49]
      io_sample_out_bits_tree_to_exec_REG <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 51:49]
      io.sample_out.bits.tree_to_exec <= io_sample_out_bits_tree_to_exec_REG @[TreePE.scala 51:39]
      reg REG_3 : Fixed<16><<8>>[4], clock with :
        reset => (UInt<1>("h0"), REG_3) @[TreePE.scala 52:43]
      REG_3 <= queue.io.deq.bits.scores @[TreePE.scala 52:43]
      io.sample_out.bits.scores <= REG_3 @[TreePE.scala 52:33]
      io.sample_out.valid <= UInt<1>("h1") @[TreePE.scala 53:27]
      wire offset : UInt<10> @[TreePE.scala 72:26]
      wire shift : UInt<1> @[TreePE.scala 73:25]
      reg features_bits : Fixed<16><<8>>[4], clock with :
        reset => (UInt<1>("h0"), features_bits) @[TreePE.scala 74:36]
      features_bits <= queue.io.deq.bits.features @[TreePE.scala 74:36]
      reg scores_bits : Fixed<16><<8>>[4], clock with :
        reset => (UInt<1>("h0"), scores_bits) @[TreePE.scala 75:34]
      scores_bits <= queue.io.deq.bits.scores @[TreePE.scala 75:34]
      reg weights_bits : Fixed<16><<8>>[5], clock with :
        reset => (UInt<1>("h0"), weights_bits) @[TreePE.scala 76:35]
      weights_bits <= queue.io.deq.bits.weights @[TreePE.scala 76:35]
      node _shift_T = asFixedPoint(threshold, 8) @[TreePE.scala 77:69]
      node _shift_T_1 = lt(features_bits[attr_id], _shift_T) @[TreePE.scala 77:45]
      node _shift_T_2 = mux(_shift_T_1, leftChildType, rightChildType) @[TreePE.scala 77:21]
      shift <= _shift_T_2 @[TreePE.scala 77:15]
      node _offset_T = asFixedPoint(threshold, 8) @[TreePE.scala 78:70]
      node _offset_T_1 = lt(features_bits[attr_id], _offset_T) @[TreePE.scala 78:46]
      node _offset_T_2 = mux(_offset_T_1, leftChildInfo, rightChildInfo) @[TreePE.scala 78:22]
      offset <= _offset_T_2 @[TreePE.scala 78:16]
      node _io_sample_out_bits_offset_T = eq(shift, UInt<1>("h0")) @[TreePE.scala 79:48]
      node _io_sample_out_bits_offset_T_1 = or(_io_sample_out_bits_offset_T, queue.io.deq.bits.search_for_root) @[TreePE.scala 79:60]
      reg io_sample_out_bits_offset_REG : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_offset_REG) @[TreePE.scala 79:97]
      io_sample_out_bits_offset_REG <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 79:97]
      node _io_sample_out_bits_offset_T_2 = mux(_io_sample_out_bits_offset_T_1, io_sample_out_bits_offset_REG, offset) @[TreePE.scala 79:41]
      io.sample_out.bits.offset <= _io_sample_out_bits_offset_T_2 @[TreePE.scala 79:35]
      io.sample_out.bits.shift <= UInt<1>("h0") @[TreePE.scala 80:34]
      node _io_sample_out_bits_search_for_root_T = eq(shift, UInt<1>("h0")) @[TreePE.scala 81:47]
      node _io_sample_out_bits_search_for_root_T_1 = or(_io_sample_out_bits_search_for_root_T, queue.io.deq.bits.search_for_root) @[TreePE.scala 81:54]
      io.sample_out.bits.search_for_root <= _io_sample_out_bits_search_for_root_T_1 @[TreePE.scala 81:44]
      node _io_sample_out_bits_scores_0_T = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 83:97]
      node _io_sample_out_bits_scores_0_T_1 = eq(queue.io.deq.bits.search_for_root, UInt<1>("h0")) @[TreePE.scala 83:107]
      node _io_sample_out_bits_scores_0_T_2 = eq(shift, UInt<1>("h0")) @[TreePE.scala 83:144]
      node _io_sample_out_bits_scores_0_T_3 = and(_io_sample_out_bits_scores_0_T_1, _io_sample_out_bits_scores_0_T_2) @[TreePE.scala 83:135]
      node _io_sample_out_bits_scores_0_T_4 = and(_io_sample_out_bits_scores_0_T_3, is_valid) @[TreePE.scala 83:156]
      node _io_sample_out_bits_scores_0_T_5 = eq(UInt<1>("h0"), offset) @[TreePE.scala 83:176]
      node _io_sample_out_bits_scores_0_T_6 = and(_io_sample_out_bits_scores_0_T_4, _io_sample_out_bits_scores_0_T_5) @[TreePE.scala 83:168]
      node _io_sample_out_bits_scores_0_T_7 = mux(_io_sample_out_bits_scores_0_T_6, UInt<16>("hffff"), UInt<16>("h0")) @[TreePE.scala 83:105]
      node _io_sample_out_bits_scores_0_T_8 = and(_io_sample_out_bits_scores_0_T, _io_sample_out_bits_scores_0_T_7) @[TreePE.scala 83:100]
      node _io_sample_out_bits_scores_0_T_9 = asFixedPoint(_io_sample_out_bits_scores_0_T_8, 8) @[TreePE.scala 83:228]
      node _io_sample_out_bits_scores_0_T_10 = add(scores_bits[0], _io_sample_out_bits_scores_0_T_9) @[TreePE.scala 83:58]
      node _io_sample_out_bits_scores_0_T_11 = tail(_io_sample_out_bits_scores_0_T_10, 1) @[TreePE.scala 83:58]
      node _io_sample_out_bits_scores_0_T_12 = asFixedPoint(_io_sample_out_bits_scores_0_T_11, 8) @[TreePE.scala 83:58]
      io.sample_out.bits.scores[0] <= _io_sample_out_bits_scores_0_T_12 @[TreePE.scala 83:40]
      node _io_sample_out_bits_scores_1_T = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 83:97]
      node _io_sample_out_bits_scores_1_T_1 = eq(queue.io.deq.bits.search_for_root, UInt<1>("h0")) @[TreePE.scala 83:107]
      node _io_sample_out_bits_scores_1_T_2 = eq(shift, UInt<1>("h0")) @[TreePE.scala 83:144]
      node _io_sample_out_bits_scores_1_T_3 = and(_io_sample_out_bits_scores_1_T_1, _io_sample_out_bits_scores_1_T_2) @[TreePE.scala 83:135]
      node _io_sample_out_bits_scores_1_T_4 = and(_io_sample_out_bits_scores_1_T_3, is_valid) @[TreePE.scala 83:156]
      node _io_sample_out_bits_scores_1_T_5 = eq(UInt<1>("h1"), offset) @[TreePE.scala 83:176]
      node _io_sample_out_bits_scores_1_T_6 = and(_io_sample_out_bits_scores_1_T_4, _io_sample_out_bits_scores_1_T_5) @[TreePE.scala 83:168]
      node _io_sample_out_bits_scores_1_T_7 = mux(_io_sample_out_bits_scores_1_T_6, UInt<16>("hffff"), UInt<16>("h0")) @[TreePE.scala 83:105]
      node _io_sample_out_bits_scores_1_T_8 = and(_io_sample_out_bits_scores_1_T, _io_sample_out_bits_scores_1_T_7) @[TreePE.scala 83:100]
      node _io_sample_out_bits_scores_1_T_9 = asFixedPoint(_io_sample_out_bits_scores_1_T_8, 8) @[TreePE.scala 83:228]
      node _io_sample_out_bits_scores_1_T_10 = add(scores_bits[1], _io_sample_out_bits_scores_1_T_9) @[TreePE.scala 83:58]
      node _io_sample_out_bits_scores_1_T_11 = tail(_io_sample_out_bits_scores_1_T_10, 1) @[TreePE.scala 83:58]
      node _io_sample_out_bits_scores_1_T_12 = asFixedPoint(_io_sample_out_bits_scores_1_T_11, 8) @[TreePE.scala 83:58]
      io.sample_out.bits.scores[1] <= _io_sample_out_bits_scores_1_T_12 @[TreePE.scala 83:40]
      node _io_sample_out_bits_scores_2_T = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 83:97]
      node _io_sample_out_bits_scores_2_T_1 = eq(queue.io.deq.bits.search_for_root, UInt<1>("h0")) @[TreePE.scala 83:107]
      node _io_sample_out_bits_scores_2_T_2 = eq(shift, UInt<1>("h0")) @[TreePE.scala 83:144]
      node _io_sample_out_bits_scores_2_T_3 = and(_io_sample_out_bits_scores_2_T_1, _io_sample_out_bits_scores_2_T_2) @[TreePE.scala 83:135]
      node _io_sample_out_bits_scores_2_T_4 = and(_io_sample_out_bits_scores_2_T_3, is_valid) @[TreePE.scala 83:156]
      node _io_sample_out_bits_scores_2_T_5 = eq(UInt<2>("h2"), offset) @[TreePE.scala 83:176]
      node _io_sample_out_bits_scores_2_T_6 = and(_io_sample_out_bits_scores_2_T_4, _io_sample_out_bits_scores_2_T_5) @[TreePE.scala 83:168]
      node _io_sample_out_bits_scores_2_T_7 = mux(_io_sample_out_bits_scores_2_T_6, UInt<16>("hffff"), UInt<16>("h0")) @[TreePE.scala 83:105]
      node _io_sample_out_bits_scores_2_T_8 = and(_io_sample_out_bits_scores_2_T, _io_sample_out_bits_scores_2_T_7) @[TreePE.scala 83:100]
      node _io_sample_out_bits_scores_2_T_9 = asFixedPoint(_io_sample_out_bits_scores_2_T_8, 8) @[TreePE.scala 83:228]
      node _io_sample_out_bits_scores_2_T_10 = add(scores_bits[2], _io_sample_out_bits_scores_2_T_9) @[TreePE.scala 83:58]
      node _io_sample_out_bits_scores_2_T_11 = tail(_io_sample_out_bits_scores_2_T_10, 1) @[TreePE.scala 83:58]
      node _io_sample_out_bits_scores_2_T_12 = asFixedPoint(_io_sample_out_bits_scores_2_T_11, 8) @[TreePE.scala 83:58]
      io.sample_out.bits.scores[2] <= _io_sample_out_bits_scores_2_T_12 @[TreePE.scala 83:40]
      node _io_sample_out_bits_scores_3_T = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 83:97]
      node _io_sample_out_bits_scores_3_T_1 = eq(queue.io.deq.bits.search_for_root, UInt<1>("h0")) @[TreePE.scala 83:107]
      node _io_sample_out_bits_scores_3_T_2 = eq(shift, UInt<1>("h0")) @[TreePE.scala 83:144]
      node _io_sample_out_bits_scores_3_T_3 = and(_io_sample_out_bits_scores_3_T_1, _io_sample_out_bits_scores_3_T_2) @[TreePE.scala 83:135]
      node _io_sample_out_bits_scores_3_T_4 = and(_io_sample_out_bits_scores_3_T_3, is_valid) @[TreePE.scala 83:156]
      node _io_sample_out_bits_scores_3_T_5 = eq(UInt<2>("h3"), offset) @[TreePE.scala 83:176]
      node _io_sample_out_bits_scores_3_T_6 = and(_io_sample_out_bits_scores_3_T_4, _io_sample_out_bits_scores_3_T_5) @[TreePE.scala 83:168]
      node _io_sample_out_bits_scores_3_T_7 = mux(_io_sample_out_bits_scores_3_T_6, UInt<16>("hffff"), UInt<16>("h0")) @[TreePE.scala 83:105]
      node _io_sample_out_bits_scores_3_T_8 = and(_io_sample_out_bits_scores_3_T, _io_sample_out_bits_scores_3_T_7) @[TreePE.scala 83:100]
      node _io_sample_out_bits_scores_3_T_9 = asFixedPoint(_io_sample_out_bits_scores_3_T_8, 8) @[TreePE.scala 83:228]
      node _io_sample_out_bits_scores_3_T_10 = add(scores_bits[3], _io_sample_out_bits_scores_3_T_9) @[TreePE.scala 83:58]
      node _io_sample_out_bits_scores_3_T_11 = tail(_io_sample_out_bits_scores_3_T_10, 1) @[TreePE.scala 83:58]
      node _io_sample_out_bits_scores_3_T_12 = asFixedPoint(_io_sample_out_bits_scores_3_T_11, 8) @[TreePE.scala 83:58]
      io.sample_out.bits.scores[3] <= _io_sample_out_bits_scores_3_T_12 @[TreePE.scala 83:40]
      reg io_sample_out_bits_dest_REG : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_dest_REG) @[TreePE.scala 85:43]
      io_sample_out_bits_dest_REG <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 85:43]
      node _io_sample_out_bits_dest_T = eq(io_sample_out_bits_dest_REG, UInt<4>("h9")) @[TreePE.scala 85:69]
      io.sample_out.bits.dest <= _io_sample_out_bits_dest_T @[TreePE.scala 85:33]
      reg io_sample_out_bits_last_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_last_REG) @[TreePE.scala 86:43]
      io_sample_out_bits_last_REG <= queue.io.deq.bits.last @[TreePE.scala 86:43]
      io.sample_out.bits.last <= io_sample_out_bits_last_REG @[TreePE.scala 86:33]
    else :
      io.sample_out.bits.last is invalid @[TreePE.scala 89:26]
      io.sample_out.bits.dest is invalid @[TreePE.scala 89:26]
      io.sample_out.bits.weights[0] is invalid @[TreePE.scala 89:26]
      io.sample_out.bits.weights[1] is invalid @[TreePE.scala 89:26]
      io.sample_out.bits.weights[2] is invalid @[TreePE.scala 89:26]
      io.sample_out.bits.weights[3] is invalid @[TreePE.scala 89:26]
      io.sample_out.bits.weights[4] is invalid @[TreePE.scala 89:26]
      io.sample_out.bits.scores[0] is invalid @[TreePE.scala 89:26]
      io.sample_out.bits.scores[1] is invalid @[TreePE.scala 89:26]
      io.sample_out.bits.scores[2] is invalid @[TreePE.scala 89:26]
      io.sample_out.bits.scores[3] is invalid @[TreePE.scala 89:26]
      io.sample_out.bits.tree_to_exec is invalid @[TreePE.scala 89:26]
      io.sample_out.bits.search_for_root is invalid @[TreePE.scala 89:26]
      io.sample_out.bits.shift is invalid @[TreePE.scala 89:26]
      io.sample_out.bits.offset is invalid @[TreePE.scala 89:26]
      io.sample_out.bits.features[0] is invalid @[TreePE.scala 89:26]
      io.sample_out.bits.features[1] is invalid @[TreePE.scala 89:26]
      io.sample_out.bits.features[2] is invalid @[TreePE.scala 89:26]
      io.sample_out.bits.features[3] is invalid @[TreePE.scala 89:26]
      io.sample_out.valid <= UInt<1>("h0") @[TreePE.scala 90:27]
    reg queue_io_deq_ready_REG : UInt<1>, clock with :
      reset => (UInt<1>("h0"), queue_io_deq_ready_REG) @[TreePE.scala 93:27]
    queue_io_deq_ready_REG <= io.sample_out.ready @[TreePE.scala 93:27]
    queue.io.deq.ready <= queue_io_deq_ready_REG @[TreePE.scala 93:17]

  module TreePEwithBRAM_2 :
    input clock : Clock
    input reset : Reset
    output pe_io : { flip sample_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>}}, flip mem : { flip enable_1 : UInt<1>, flip write_1 : UInt<1>, flip addr_1 : UInt<13>, flip dataIn_1 : UInt<64>, dataOut_1 : UInt<64>, flip enable_2 : UInt<1>, flip write_2 : UInt<1>, flip addr_2 : UInt<13>, flip dataIn_2 : UInt<64>, dataOut_2 : UInt<64>}, sample_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>}}}

    inst pe of TreePE_2 @[TreePE.scala 124:18]
    pe.clock <= clock
    pe.reset <= reset
    pe_io.sample_out.bits <= pe.io.sample_out.bits @[TreePE.scala 126:9]
    pe_io.sample_out.valid <= pe.io.sample_out.valid @[TreePE.scala 126:9]
    pe.io.sample_out.ready <= pe_io.sample_out.ready @[TreePE.scala 126:9]
    pe.io.mem <= pe_io.mem @[TreePE.scala 126:9]
    pe.io.sample_in <= pe_io.sample_in @[TreePE.scala 126:9]

  extmodule BRAMBlackBox :
    input clk : Clock
    input a_en : UInt<1>
    input a_wr : UInt<1>
    input a_addr : UInt<13>
    input a_din : UInt<64>
    output a_dout : UInt<64>
    input b_en : UInt<1>
    input b_wr : UInt<1>
    input b_addr : UInt<13>
    input b_din : UInt<32>
    output b_dout : UInt<32>
    defname = BRAMBlackBox
    parameter SIZE_B = 1152
    parameter DATA_B = 32
    parameter SIZE_A = 576
    parameter ADDR = 13
    parameter DATA_A = 64

  extmodule BRAMBlackBox_1 :
    input clk : Clock
    input a_en : UInt<1>
    input a_wr : UInt<1>
    input a_addr : UInt<13>
    input a_din : UInt<64>
    output a_dout : UInt<64>
    input b_en : UInt<1>
    input b_wr : UInt<1>
    input b_addr : UInt<13>
    input b_din : UInt<32>
    output b_dout : UInt<32>
    defname = BRAMBlackBox
    parameter SIZE_B = 1152
    parameter DATA_B = 32
    parameter SIZE_A = 576
    parameter ADDR = 13
    parameter DATA_A = 64

  extmodule BRAMBlackBox_2 :
    input clk : Clock
    input a_en : UInt<1>
    input a_wr : UInt<1>
    input a_addr : UInt<13>
    input a_din : UInt<64>
    output a_dout : UInt<64>
    input b_en : UInt<1>
    input b_wr : UInt<1>
    input b_addr : UInt<13>
    input b_din : UInt<32>
    output b_dout : UInt<32>
    defname = BRAMBlackBox
    parameter SIZE_B = 1152
    parameter DATA_B = 32
    parameter SIZE_A = 576
    parameter ADDR = 13
    parameter DATA_A = 64

  module Queue_3 :
    input clock : Clock
    input reset : Reset
    output io : { flip enq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>}}, deq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>}}, count : UInt<8>}

    cmem ram : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>} [128] @[Decoupled.scala 275:95]
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
    output io : { flip enq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>}}, deq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>}}, count : UInt<8>}

    cmem ram : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>} [128] @[Decoupled.scala 275:95]
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

  module FirstInterconnectPE :
    input clock : Clock
    input reset : Reset
    output io : { flip sample_entering : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>}}, flip sample_looping : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>}}, sample_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>}}}

    inst queue_entering of Queue_3 @[Decoupled.scala 377:21]
    queue_entering.clock <= clock
    queue_entering.reset <= reset
    queue_entering.io.enq.valid <= io.sample_entering.valid @[Decoupled.scala 379:22]
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
    queue_entering.io.enq.bits.tree_to_exec <= io.sample_entering.bits.tree_to_exec @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.search_for_root <= io.sample_entering.bits.search_for_root @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.shift <= io.sample_entering.bits.shift @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.offset <= io.sample_entering.bits.offset @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.features[0] <= io.sample_entering.bits.features[0] @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.features[1] <= io.sample_entering.bits.features[1] @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.features[2] <= io.sample_entering.bits.features[2] @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.features[3] <= io.sample_entering.bits.features[3] @[Decoupled.scala 380:21]
    io.sample_entering.ready <= queue_entering.io.enq.ready @[Decoupled.scala 381:17]
    inst queue_looping of Queue_4 @[Decoupled.scala 377:21]
    queue_looping.clock <= clock
    queue_looping.reset <= reset
    queue_looping.io.enq.valid <= io.sample_looping.valid @[Decoupled.scala 379:22]
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
    queue_looping.io.enq.bits.tree_to_exec <= io.sample_looping.bits.tree_to_exec @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.search_for_root <= io.sample_looping.bits.search_for_root @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.shift <= io.sample_looping.bits.shift @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.offset <= io.sample_looping.bits.offset @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.features[0] <= io.sample_looping.bits.features[0] @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.features[1] <= io.sample_looping.bits.features[1] @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.features[2] <= io.sample_looping.bits.features[2] @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.features[3] <= io.sample_looping.bits.features[3] @[Decoupled.scala 380:21]
    io.sample_looping.ready <= queue_looping.io.enq.ready @[Decoupled.scala 381:17]
    node _io_sample_out_bits_T = mux(queue_looping.io.deq.valid, queue_looping.io.deq.bits, queue_entering.io.deq.bits) @[Interconnect.scala 65:30]
    io.sample_out.bits <= _io_sample_out_bits_T @[Interconnect.scala 65:24]
    node _io_sample_out_valid_T = mux(queue_looping.io.deq.valid, queue_looping.io.deq.valid, queue_entering.io.deq.valid) @[Interconnect.scala 66:31]
    io.sample_out.valid <= _io_sample_out_valid_T @[Interconnect.scala 66:25]
    queue_looping.io.deq.ready <= io.sample_out.ready @[Interconnect.scala 67:25]
    node _queue_entering_io_deq_ready_T = eq(queue_looping.io.deq.valid, UInt<1>("h0")) @[Interconnect.scala 68:52]
    node _queue_entering_io_deq_ready_T_1 = and(io.sample_out.ready, _queue_entering_io_deq_ready_T) @[Interconnect.scala 68:49]
    queue_entering.io.deq.ready <= _queue_entering_io_deq_ready_T_1 @[Interconnect.scala 68:26]

  module Queue_5 :
    input clock : Clock
    input reset : Reset
    output io : { flip enq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>}}, deq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>}}, count : UInt<2>}

    cmem ram : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>} [3] @[Decoupled.scala 275:95]
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

  module LastInterconnectPE :
    input clock : Clock
    input reset : Reset
    output io : { flip sample_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>}}, sample_looping : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>}}, sample_leaving : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>}}}

    inst queue of Queue_5 @[Decoupled.scala 377:21]
    queue.clock <= clock
    queue.reset <= reset
    queue.io.enq.valid <= io.sample_in.valid @[Decoupled.scala 379:22]
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
    queue.io.enq.bits.tree_to_exec <= io.sample_in.bits.tree_to_exec @[Decoupled.scala 380:21]
    queue.io.enq.bits.search_for_root <= io.sample_in.bits.search_for_root @[Decoupled.scala 380:21]
    queue.io.enq.bits.shift <= io.sample_in.bits.shift @[Decoupled.scala 380:21]
    queue.io.enq.bits.offset <= io.sample_in.bits.offset @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[0] <= io.sample_in.bits.features[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[1] <= io.sample_in.bits.features[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[2] <= io.sample_in.bits.features[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[3] <= io.sample_in.bits.features[3] @[Decoupled.scala 380:21]
    io.sample_in.ready <= queue.io.enq.ready @[Decoupled.scala 381:17]
    io.sample_looping.bits <= queue.io.deq.bits @[Interconnect.scala 16:28]
    io.sample_leaving.bits <= queue.io.deq.bits @[Interconnect.scala 17:28]
    when queue.io.deq.valid : @[Interconnect.scala 19:22]
      when queue.io.deq.bits.dest : @[Interconnect.scala 20:30]
        io.sample_looping.valid <= UInt<1>("h0") @[Interconnect.scala 21:37]
        io.sample_leaving.valid <= UInt<1>("h1") @[Interconnect.scala 22:37]
      else :
        io.sample_looping.valid <= UInt<1>("h1") @[Interconnect.scala 24:37]
        io.sample_leaving.valid <= UInt<1>("h0") @[Interconnect.scala 25:37]
    else :
      io.sample_looping.valid <= UInt<1>("h0") @[Interconnect.scala 28:33]
      io.sample_leaving.valid <= UInt<1>("h0") @[Interconnect.scala 29:33]
    node _queue_io_deq_ready_T = and(io.sample_leaving.ready, io.sample_looping.ready) @[Interconnect.scala 31:44]
    queue.io.deq.ready <= _queue_io_deq_ready_T @[Interconnect.scala 31:17]

  module Queue_6 :
    input clock : Clock
    input reset : Reset
    output io : { flip enq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>}}, deq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>}}, count : UInt<2>}

    cmem ram : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>} [3] @[Decoupled.scala 275:95]
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
    output io : { flip sample_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>}}, sample_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>}}}

    inst queue of Queue_6 @[Decoupled.scala 377:21]
    queue.clock <= clock
    queue.reset <= reset
    queue.io.enq.valid <= io.sample_in.valid @[Decoupled.scala 379:22]
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
    queue.io.enq.bits.tree_to_exec <= io.sample_in.bits.tree_to_exec @[Decoupled.scala 380:21]
    queue.io.enq.bits.search_for_root <= io.sample_in.bits.search_for_root @[Decoupled.scala 380:21]
    queue.io.enq.bits.shift <= io.sample_in.bits.shift @[Decoupled.scala 380:21]
    queue.io.enq.bits.offset <= io.sample_in.bits.offset @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[0] <= io.sample_in.bits.features[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[1] <= io.sample_in.bits.features[1] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[2] <= io.sample_in.bits.features[2] @[Decoupled.scala 380:21]
    queue.io.enq.bits.features[3] <= io.sample_in.bits.features[3] @[Decoupled.scala 380:21]
    io.sample_in.ready <= queue.io.enq.ready @[Decoupled.scala 381:17]
    io.sample_out.bits.features <= queue.io.deq.bits.features @[IncrementTreePE.scala 15:33]
    io.sample_out.bits.weights <= queue.io.deq.bits.weights @[IncrementTreePE.scala 16:32]
    node _io_sample_out_bits_tree_to_exec_T = add(queue.io.deq.bits.tree_to_exec, UInt<1>("h1")) @[IncrementTreePE.scala 17:64]
    node _io_sample_out_bits_tree_to_exec_T_1 = tail(_io_sample_out_bits_tree_to_exec_T, 1) @[IncrementTreePE.scala 17:64]
    io.sample_out.bits.tree_to_exec <= _io_sample_out_bits_tree_to_exec_T_1 @[IncrementTreePE.scala 17:37]
    io.sample_out.bits.shift <= queue.io.deq.bits.shift @[IncrementTreePE.scala 18:30]
    node _io_sample_out_bits_offset_T = add(queue.io.deq.bits.tree_to_exec, UInt<1>("h1")) @[IncrementTreePE.scala 19:58]
    node _io_sample_out_bits_offset_T_1 = tail(_io_sample_out_bits_offset_T, 1) @[IncrementTreePE.scala 19:58]
    io.sample_out.bits.offset <= _io_sample_out_bits_offset_T_1 @[IncrementTreePE.scala 19:31]
    io.sample_out.bits.scores <= queue.io.deq.bits.scores @[IncrementTreePE.scala 20:31]
    io.sample_out.bits.search_for_root <= queue.io.deq.bits.search_for_root @[IncrementTreePE.scala 21:40]
    io.sample_out.bits.dest <= queue.io.deq.bits.dest @[IncrementTreePE.scala 22:29]
    io.sample_out.bits.last <= queue.io.deq.bits.last @[IncrementTreePE.scala 23:29]
    io.sample_out.valid <= queue.io.deq.valid @[IncrementTreePE.scala 25:25]
    queue.io.deq.ready <= io.sample_out.ready @[IncrementTreePE.scala 27:17]

  module TreePEsWrapper :
    input clock : Clock
    input reset : UInt<1>
    output wrapper_io : { sample_in : { flip TDATA : UInt<256>, flip TKEEP : UInt<32>, flip TLAST : UInt<1>, TREADY : UInt<1>, flip TVALID : UInt<1>}, flip sample_out : { flip TDATA : UInt<256>, flip TKEEP : UInt<32>, flip TLAST : UInt<1>, TREADY : UInt<1>, flip TVALID : UInt<1>}}
    output brams_io_0 : { flip bram_addr_a : UInt<13>, flip bram_clk_a : Clock, flip bram_wrdata_a : UInt<32>, bram_rddata_a : UInt<32>, flip bram_en_a : UInt<1>, flip bram_rst_a : UInt<1>, flip bram_we_a : UInt<4>}
    output brams_io_1 : { flip bram_addr_a : UInt<13>, flip bram_clk_a : Clock, flip bram_wrdata_a : UInt<32>, bram_rddata_a : UInt<32>, flip bram_en_a : UInt<1>, flip bram_rst_a : UInt<1>, flip bram_we_a : UInt<4>}
    output brams_io_2 : { flip bram_addr_a : UInt<13>, flip bram_clk_a : Clock, flip bram_wrdata_a : UInt<32>, bram_rddata_a : UInt<32>, flip bram_en_a : UInt<1>, flip bram_rst_a : UInt<1>, flip bram_we_a : UInt<4>}

    inst forward_converter of ForwardConverter @[TreePEsWrapper.scala 80:39]
    forward_converter.clock <= clock
    forward_converter.reset <= reset
    inst backward_converter of BackwardConverter @[TreePEsWrapper.scala 81:40]
    backward_converter.clock <= clock
    backward_converter.reset <= reset
    inst pes_0 of TreePEwithBRAM @[TreePEsWrapper.scala 90:69]
    pes_0.clock <= clock
    pes_0.reset <= reset
    inst pes_1 of TreePEwithBRAM_1 @[TreePEsWrapper.scala 90:69]
    pes_1.clock <= clock
    pes_1.reset <= reset
    inst pes_2 of TreePEwithBRAM_2 @[TreePEsWrapper.scala 90:69]
    pes_2.clock <= clock
    pes_2.reset <= reset
    inst brams_0 of BRAMBlackBox @[TreePEsWrapper.scala 91:71]
    brams_0.b_dout is invalid
    brams_0.b_din is invalid
    brams_0.b_addr is invalid
    brams_0.b_wr is invalid
    brams_0.b_en is invalid
    brams_0.a_dout is invalid
    brams_0.a_din is invalid
    brams_0.a_addr is invalid
    brams_0.a_wr is invalid
    brams_0.a_en is invalid
    brams_0.clk is invalid
    inst brams_1 of BRAMBlackBox_1 @[TreePEsWrapper.scala 91:71]
    brams_1.b_dout is invalid
    brams_1.b_din is invalid
    brams_1.b_addr is invalid
    brams_1.b_wr is invalid
    brams_1.b_en is invalid
    brams_1.a_dout is invalid
    brams_1.a_din is invalid
    brams_1.a_addr is invalid
    brams_1.a_wr is invalid
    brams_1.a_en is invalid
    brams_1.clk is invalid
    inst brams_2 of BRAMBlackBox_2 @[TreePEsWrapper.scala 91:71]
    brams_2.b_dout is invalid
    brams_2.b_din is invalid
    brams_2.b_addr is invalid
    brams_2.b_wr is invalid
    brams_2.b_en is invalid
    brams_2.a_dout is invalid
    brams_2.a_din is invalid
    brams_2.a_addr is invalid
    brams_2.a_wr is invalid
    brams_2.a_en is invalid
    brams_2.clk is invalid
    inst first_interconnect of FirstInterconnectPE @[TreePEsWrapper.scala 93:44]
    first_interconnect.clock <= clock
    first_interconnect.reset <= reset
    inst last_interconnect of LastInterconnectPE @[TreePEsWrapper.scala 94:43]
    last_interconnect.clock <= clock
    last_interconnect.reset <= reset
    inst increment of IncrementTreePE @[TreePEsWrapper.scala 95:35]
    increment.clock <= clock
    increment.reset <= reset
    brams_0.a_en <= pes_0.pe_io.mem.enable_1 @[TreePEsWrapper.scala 100:34]
    brams_0.a_wr <= pes_0.pe_io.mem.write_1 @[TreePEsWrapper.scala 101:34]
    brams_0.a_addr <= pes_0.pe_io.mem.addr_1 @[TreePEsWrapper.scala 102:36]
    brams_0.a_din <= pes_0.pe_io.mem.dataIn_1 @[TreePEsWrapper.scala 103:35]
    pes_0.pe_io.mem.dataOut_1 <= brams_0.a_dout @[TreePEsWrapper.scala 104:44]
    brams_0.b_en <= brams_io_0.bram_en_a @[TreePEsWrapper.scala 106:34]
    node _brams_0_io_b_wr_T = bits(brams_io_0.bram_we_a, 0, 0) @[TreePEsWrapper.scala 107:64]
    brams_0.b_wr <= _brams_0_io_b_wr_T @[TreePEsWrapper.scala 107:34]
    brams_0.b_addr <= brams_io_0.bram_addr_a @[TreePEsWrapper.scala 108:36]
    brams_0.b_din <= brams_io_0.bram_wrdata_a @[TreePEsWrapper.scala 109:35]
    brams_io_0.bram_rddata_a <= brams_0.b_dout @[TreePEsWrapper.scala 110:49]
    brams_0.clk <= brams_io_0.bram_clk_a @[TreePEsWrapper.scala 112:33]
    pes_0.pe_io.mem.dataOut_2 is invalid @[TreePEsWrapper.scala 115:44]
    brams_1.a_en <= pes_1.pe_io.mem.enable_1 @[TreePEsWrapper.scala 100:34]
    brams_1.a_wr <= pes_1.pe_io.mem.write_1 @[TreePEsWrapper.scala 101:34]
    brams_1.a_addr <= pes_1.pe_io.mem.addr_1 @[TreePEsWrapper.scala 102:36]
    brams_1.a_din <= pes_1.pe_io.mem.dataIn_1 @[TreePEsWrapper.scala 103:35]
    pes_1.pe_io.mem.dataOut_1 <= brams_1.a_dout @[TreePEsWrapper.scala 104:44]
    brams_1.b_en <= brams_io_1.bram_en_a @[TreePEsWrapper.scala 106:34]
    node _brams_1_io_b_wr_T = bits(brams_io_1.bram_we_a, 0, 0) @[TreePEsWrapper.scala 107:64]
    brams_1.b_wr <= _brams_1_io_b_wr_T @[TreePEsWrapper.scala 107:34]
    brams_1.b_addr <= brams_io_1.bram_addr_a @[TreePEsWrapper.scala 108:36]
    brams_1.b_din <= brams_io_1.bram_wrdata_a @[TreePEsWrapper.scala 109:35]
    brams_io_1.bram_rddata_a <= brams_1.b_dout @[TreePEsWrapper.scala 110:49]
    brams_1.clk <= brams_io_1.bram_clk_a @[TreePEsWrapper.scala 112:33]
    pes_1.pe_io.mem.dataOut_2 is invalid @[TreePEsWrapper.scala 115:44]
    brams_2.a_en <= pes_2.pe_io.mem.enable_1 @[TreePEsWrapper.scala 100:34]
    brams_2.a_wr <= pes_2.pe_io.mem.write_1 @[TreePEsWrapper.scala 101:34]
    brams_2.a_addr <= pes_2.pe_io.mem.addr_1 @[TreePEsWrapper.scala 102:36]
    brams_2.a_din <= pes_2.pe_io.mem.dataIn_1 @[TreePEsWrapper.scala 103:35]
    pes_2.pe_io.mem.dataOut_1 <= brams_2.a_dout @[TreePEsWrapper.scala 104:44]
    brams_2.b_en <= brams_io_2.bram_en_a @[TreePEsWrapper.scala 106:34]
    node _brams_2_io_b_wr_T = bits(brams_io_2.bram_we_a, 0, 0) @[TreePEsWrapper.scala 107:64]
    brams_2.b_wr <= _brams_2_io_b_wr_T @[TreePEsWrapper.scala 107:34]
    brams_2.b_addr <= brams_io_2.bram_addr_a @[TreePEsWrapper.scala 108:36]
    brams_2.b_din <= brams_io_2.bram_wrdata_a @[TreePEsWrapper.scala 109:35]
    brams_io_2.bram_rddata_a <= brams_2.b_dout @[TreePEsWrapper.scala 110:49]
    brams_2.clk <= brams_io_2.bram_clk_a @[TreePEsWrapper.scala 112:33]
    pes_2.pe_io.mem.dataOut_2 is invalid @[TreePEsWrapper.scala 115:44]
    backward_converter.io.sample_in <= last_interconnect.io.sample_leaving @[TreePEsWrapper.scala 132:49]
    pes_0.pe_io.sample_in <= first_interconnect.io.sample_out @[Interconnect.scala 71:23]
    pes_2.pe_io.sample_in <= pes_1.pe_io.sample_out @[TreePE.scala 133:22]
    first_interconnect.io.sample_looping <= increment.io.sample_out @[IncrementTreePE.scala 30:23]
    last_interconnect.io.sample_in <= pes_2.pe_io.sample_out @[TreePE.scala 129:22]
    pes_1.pe_io.sample_in <= pes_0.pe_io.sample_out @[TreePE.scala 133:22]
    increment.io.sample_in <= last_interconnect.io.sample_looping @[Interconnect.scala 34:27]
    forward_converter.io.sample_in.TVALID <= wrapper_io.sample_in.TVALID @[TreePEsWrapper.scala 157:30]
    wrapper_io.sample_in.TREADY <= forward_converter.io.sample_in.TREADY @[TreePEsWrapper.scala 157:30]
    forward_converter.io.sample_in.TLAST <= wrapper_io.sample_in.TLAST @[TreePEsWrapper.scala 157:30]
    forward_converter.io.sample_in.TKEEP <= wrapper_io.sample_in.TKEEP @[TreePEsWrapper.scala 157:30]
    forward_converter.io.sample_in.TDATA <= wrapper_io.sample_in.TDATA @[TreePEsWrapper.scala 157:30]
    first_interconnect.io.sample_entering <= forward_converter.io.sample_out @[TreePEsWrapper.scala 158:41]
    backward_converter.io.sample_out <= wrapper_io.sample_out @[TreePEsWrapper.scala 160:31]

