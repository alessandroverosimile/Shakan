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
    io.mem.enable_1 <= UInt<1>("h1") @[TreePE.scala 17:21]
    io.mem.addr_1 <= queue.io.deq.bits.offset @[TreePE.scala 18:19]
    io.mem.write_1 <= UInt<1>("h0") @[TreePE.scala 19:20]
    io.mem.dataIn_1 <= UInt<1>("h0") @[TreePE.scala 20:21]
    io.mem.enable_2 is invalid @[TreePE.scala 22:21]
    io.mem.addr_2 is invalid @[TreePE.scala 23:19]
    io.mem.write_2 is invalid @[TreePE.scala 24:20]
    io.mem.dataIn_2 is invalid @[TreePE.scala 25:21]
    reg REG : UInt<1>, clock with :
      reset => (UInt<1>("h0"), REG) @[TreePE.scala 29:17]
    REG <= queue.io.deq.valid @[TreePE.scala 29:17]
    when REG : @[TreePE.scala 29:31]
      node attr_id = bits(io.mem.dataOut_1, 33, 32) @[TreePE.scala 31:37]
      node threshold = bits(io.mem.dataOut_1, 15, 0) @[TreePE.scala 32:39]
      node nodeRA = bits(io.mem.dataOut_1, 31, 16) @[TreePE.scala 33:36]
      node leftChildInfo = bits(io.mem.dataOut_1, 43, 34) @[TreePE.scala 34:43]
      node rightChildInfo = bits(io.mem.dataOut_1, 53, 44) @[TreePE.scala 35:44]
      node leftChildType = bits(io.mem.dataOut_1, 54, 54) @[TreePE.scala 36:43]
      node rightChildType = bits(io.mem.dataOut_1, 55, 55) @[TreePE.scala 37:44]
      node is_valid = bits(io.mem.dataOut_1, 56, 56) @[TreePE.scala 38:38]
      node depth_indicator = bits(io.mem.dataOut_1, 59, 57) @[TreePE.scala 39:45]
      reg REG_1 : Fixed<16><<8>>[4], clock with :
        reset => (UInt<1>("h0"), REG_1) @[TreePE.scala 41:45]
      REG_1 <= queue.io.deq.bits.features @[TreePE.scala 41:45]
      io.sample_out.bits.features <= REG_1 @[TreePE.scala 41:35]
      reg REG_2 : Fixed<16><<8>>[5], clock with :
        reset => (UInt<1>("h0"), REG_2) @[TreePE.scala 42:44]
      REG_2 <= queue.io.deq.bits.weights @[TreePE.scala 42:44]
      io.sample_out.bits.weights <= REG_2 @[TreePE.scala 42:34]
      reg io_sample_out_bits_tree_to_exec_REG : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_tree_to_exec_REG) @[TreePE.scala 43:49]
      io_sample_out_bits_tree_to_exec_REG <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 43:49]
      io.sample_out.bits.tree_to_exec <= io_sample_out_bits_tree_to_exec_REG @[TreePE.scala 43:39]
      reg REG_3 : Fixed<16><<8>>[4], clock with :
        reset => (UInt<1>("h0"), REG_3) @[TreePE.scala 44:43]
      REG_3 <= queue.io.deq.bits.scores @[TreePE.scala 44:43]
      io.sample_out.bits.scores <= REG_3 @[TreePE.scala 44:33]
      io.sample_out.valid <= UInt<1>("h1") @[TreePE.scala 45:27]
      wire offset : UInt<10> @[TreePE.scala 48:26]
      wire shift : UInt<1> @[TreePE.scala 49:25]
      reg features_bits : Fixed<16><<8>>[4], clock with :
        reset => (UInt<1>("h0"), features_bits) @[TreePE.scala 50:36]
      features_bits <= queue.io.deq.bits.features @[TreePE.scala 50:36]
      reg scores_bits : Fixed<16><<8>>[4], clock with :
        reset => (UInt<1>("h0"), scores_bits) @[TreePE.scala 51:34]
      scores_bits <= queue.io.deq.bits.scores @[TreePE.scala 51:34]
      reg weights_bits : Fixed<16><<8>>[5], clock with :
        reset => (UInt<1>("h0"), weights_bits) @[TreePE.scala 52:35]
      weights_bits <= queue.io.deq.bits.weights @[TreePE.scala 52:35]
      node _shift_T = asFixedPoint(threshold, 8) @[TreePE.scala 53:69]
      node _shift_T_1 = lt(features_bits[attr_id], _shift_T) @[TreePE.scala 53:45]
      node _shift_T_2 = mux(_shift_T_1, leftChildType, rightChildType) @[TreePE.scala 53:21]
      shift <= _shift_T_2 @[TreePE.scala 53:15]
      node _offset_T = asFixedPoint(threshold, 8) @[TreePE.scala 54:70]
      node _offset_T_1 = lt(features_bits[attr_id], _offset_T) @[TreePE.scala 54:46]
      node _offset_T_2 = mux(_offset_T_1, leftChildInfo, rightChildInfo) @[TreePE.scala 54:22]
      offset <= _offset_T_2 @[TreePE.scala 54:16]
      node _io_sample_out_bits_offset_T = eq(shift, UInt<1>("h0")) @[TreePE.scala 55:48]
      reg io_sample_out_bits_offset_REG : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_offset_REG) @[TreePE.scala 55:67]
      io_sample_out_bits_offset_REG <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 55:67]
      node _io_sample_out_bits_offset_T_1 = mux(_io_sample_out_bits_offset_T, io_sample_out_bits_offset_REG, offset) @[TreePE.scala 55:41]
      io.sample_out.bits.offset <= _io_sample_out_bits_offset_T_1 @[TreePE.scala 55:35]
      io.sample_out.bits.shift <= UInt<1>("h0") @[TreePE.scala 56:34]
      node _io_sample_out_bits_search_for_root_T = eq(shift, UInt<1>("h0")) @[TreePE.scala 57:47]
      io.sample_out.bits.search_for_root <= _io_sample_out_bits_search_for_root_T @[TreePE.scala 57:44]
      node _io_sample_out_bits_scores_0_T = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 59:97]
      node _io_sample_out_bits_scores_0_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 59:113]
      node _io_sample_out_bits_scores_0_T_2 = and(_io_sample_out_bits_scores_0_T_1, is_valid) @[TreePE.scala 59:125]
      node _io_sample_out_bits_scores_0_T_3 = eq(UInt<1>("h0"), offset) @[TreePE.scala 59:143]
      node _io_sample_out_bits_scores_0_T_4 = and(_io_sample_out_bits_scores_0_T_2, _io_sample_out_bits_scores_0_T_3) @[TreePE.scala 59:136]
      node _io_sample_out_bits_scores_0_T_5 = mux(_io_sample_out_bits_scores_0_T_4, UInt<16>("hffff"), UInt<16>("h0")) @[TreePE.scala 59:105]
      node _io_sample_out_bits_scores_0_T_6 = and(_io_sample_out_bits_scores_0_T, _io_sample_out_bits_scores_0_T_5) @[TreePE.scala 59:100]
      node _io_sample_out_bits_scores_0_T_7 = asFixedPoint(_io_sample_out_bits_scores_0_T_6, 8) @[TreePE.scala 59:195]
      node _io_sample_out_bits_scores_0_T_8 = add(scores_bits[0], _io_sample_out_bits_scores_0_T_7) @[TreePE.scala 59:58]
      node _io_sample_out_bits_scores_0_T_9 = tail(_io_sample_out_bits_scores_0_T_8, 1) @[TreePE.scala 59:58]
      node _io_sample_out_bits_scores_0_T_10 = asFixedPoint(_io_sample_out_bits_scores_0_T_9, 8) @[TreePE.scala 59:58]
      io.sample_out.bits.scores[0] <= _io_sample_out_bits_scores_0_T_10 @[TreePE.scala 59:40]
      node _io_sample_out_bits_scores_1_T = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 59:97]
      node _io_sample_out_bits_scores_1_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 59:113]
      node _io_sample_out_bits_scores_1_T_2 = and(_io_sample_out_bits_scores_1_T_1, is_valid) @[TreePE.scala 59:125]
      node _io_sample_out_bits_scores_1_T_3 = eq(UInt<1>("h1"), offset) @[TreePE.scala 59:143]
      node _io_sample_out_bits_scores_1_T_4 = and(_io_sample_out_bits_scores_1_T_2, _io_sample_out_bits_scores_1_T_3) @[TreePE.scala 59:136]
      node _io_sample_out_bits_scores_1_T_5 = mux(_io_sample_out_bits_scores_1_T_4, UInt<16>("hffff"), UInt<16>("h0")) @[TreePE.scala 59:105]
      node _io_sample_out_bits_scores_1_T_6 = and(_io_sample_out_bits_scores_1_T, _io_sample_out_bits_scores_1_T_5) @[TreePE.scala 59:100]
      node _io_sample_out_bits_scores_1_T_7 = asFixedPoint(_io_sample_out_bits_scores_1_T_6, 8) @[TreePE.scala 59:195]
      node _io_sample_out_bits_scores_1_T_8 = add(scores_bits[1], _io_sample_out_bits_scores_1_T_7) @[TreePE.scala 59:58]
      node _io_sample_out_bits_scores_1_T_9 = tail(_io_sample_out_bits_scores_1_T_8, 1) @[TreePE.scala 59:58]
      node _io_sample_out_bits_scores_1_T_10 = asFixedPoint(_io_sample_out_bits_scores_1_T_9, 8) @[TreePE.scala 59:58]
      io.sample_out.bits.scores[1] <= _io_sample_out_bits_scores_1_T_10 @[TreePE.scala 59:40]
      node _io_sample_out_bits_scores_2_T = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 59:97]
      node _io_sample_out_bits_scores_2_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 59:113]
      node _io_sample_out_bits_scores_2_T_2 = and(_io_sample_out_bits_scores_2_T_1, is_valid) @[TreePE.scala 59:125]
      node _io_sample_out_bits_scores_2_T_3 = eq(UInt<2>("h2"), offset) @[TreePE.scala 59:143]
      node _io_sample_out_bits_scores_2_T_4 = and(_io_sample_out_bits_scores_2_T_2, _io_sample_out_bits_scores_2_T_3) @[TreePE.scala 59:136]
      node _io_sample_out_bits_scores_2_T_5 = mux(_io_sample_out_bits_scores_2_T_4, UInt<16>("hffff"), UInt<16>("h0")) @[TreePE.scala 59:105]
      node _io_sample_out_bits_scores_2_T_6 = and(_io_sample_out_bits_scores_2_T, _io_sample_out_bits_scores_2_T_5) @[TreePE.scala 59:100]
      node _io_sample_out_bits_scores_2_T_7 = asFixedPoint(_io_sample_out_bits_scores_2_T_6, 8) @[TreePE.scala 59:195]
      node _io_sample_out_bits_scores_2_T_8 = add(scores_bits[2], _io_sample_out_bits_scores_2_T_7) @[TreePE.scala 59:58]
      node _io_sample_out_bits_scores_2_T_9 = tail(_io_sample_out_bits_scores_2_T_8, 1) @[TreePE.scala 59:58]
      node _io_sample_out_bits_scores_2_T_10 = asFixedPoint(_io_sample_out_bits_scores_2_T_9, 8) @[TreePE.scala 59:58]
      io.sample_out.bits.scores[2] <= _io_sample_out_bits_scores_2_T_10 @[TreePE.scala 59:40]
      node _io_sample_out_bits_scores_3_T = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 59:97]
      node _io_sample_out_bits_scores_3_T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 59:113]
      node _io_sample_out_bits_scores_3_T_2 = and(_io_sample_out_bits_scores_3_T_1, is_valid) @[TreePE.scala 59:125]
      node _io_sample_out_bits_scores_3_T_3 = eq(UInt<2>("h3"), offset) @[TreePE.scala 59:143]
      node _io_sample_out_bits_scores_3_T_4 = and(_io_sample_out_bits_scores_3_T_2, _io_sample_out_bits_scores_3_T_3) @[TreePE.scala 59:136]
      node _io_sample_out_bits_scores_3_T_5 = mux(_io_sample_out_bits_scores_3_T_4, UInt<16>("hffff"), UInt<16>("h0")) @[TreePE.scala 59:105]
      node _io_sample_out_bits_scores_3_T_6 = and(_io_sample_out_bits_scores_3_T, _io_sample_out_bits_scores_3_T_5) @[TreePE.scala 59:100]
      node _io_sample_out_bits_scores_3_T_7 = asFixedPoint(_io_sample_out_bits_scores_3_T_6, 8) @[TreePE.scala 59:195]
      node _io_sample_out_bits_scores_3_T_8 = add(scores_bits[3], _io_sample_out_bits_scores_3_T_7) @[TreePE.scala 59:58]
      node _io_sample_out_bits_scores_3_T_9 = tail(_io_sample_out_bits_scores_3_T_8, 1) @[TreePE.scala 59:58]
      node _io_sample_out_bits_scores_3_T_10 = asFixedPoint(_io_sample_out_bits_scores_3_T_9, 8) @[TreePE.scala 59:58]
      io.sample_out.bits.scores[3] <= _io_sample_out_bits_scores_3_T_10 @[TreePE.scala 59:40]
      reg io_sample_out_bits_dest_REG : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_dest_REG) @[TreePE.scala 61:43]
      io_sample_out_bits_dest_REG <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 61:43]
      node _io_sample_out_bits_dest_T = eq(io_sample_out_bits_dest_REG, UInt<4>("h9")) @[TreePE.scala 61:69]
      io.sample_out.bits.dest <= _io_sample_out_bits_dest_T @[TreePE.scala 61:33]
      reg io_sample_out_bits_last_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_last_REG) @[TreePE.scala 62:43]
      io_sample_out_bits_last_REG <= queue.io.deq.bits.last @[TreePE.scala 62:43]
      io.sample_out.bits.last <= io_sample_out_bits_last_REG @[TreePE.scala 62:33]
    else :
      io.sample_out.bits.last is invalid @[TreePE.scala 81:26]
      io.sample_out.bits.dest is invalid @[TreePE.scala 81:26]
      io.sample_out.bits.weights[0] is invalid @[TreePE.scala 81:26]
      io.sample_out.bits.weights[1] is invalid @[TreePE.scala 81:26]
      io.sample_out.bits.weights[2] is invalid @[TreePE.scala 81:26]
      io.sample_out.bits.weights[3] is invalid @[TreePE.scala 81:26]
      io.sample_out.bits.weights[4] is invalid @[TreePE.scala 81:26]
      io.sample_out.bits.scores[0] is invalid @[TreePE.scala 81:26]
      io.sample_out.bits.scores[1] is invalid @[TreePE.scala 81:26]
      io.sample_out.bits.scores[2] is invalid @[TreePE.scala 81:26]
      io.sample_out.bits.scores[3] is invalid @[TreePE.scala 81:26]
      io.sample_out.bits.tree_to_exec is invalid @[TreePE.scala 81:26]
      io.sample_out.bits.search_for_root is invalid @[TreePE.scala 81:26]
      io.sample_out.bits.shift is invalid @[TreePE.scala 81:26]
      io.sample_out.bits.offset is invalid @[TreePE.scala 81:26]
      io.sample_out.bits.features[0] is invalid @[TreePE.scala 81:26]
      io.sample_out.bits.features[1] is invalid @[TreePE.scala 81:26]
      io.sample_out.bits.features[2] is invalid @[TreePE.scala 81:26]
      io.sample_out.bits.features[3] is invalid @[TreePE.scala 81:26]
      io.sample_out.valid <= UInt<1>("h0") @[TreePE.scala 82:27]
    reg queue_io_deq_ready_REG : UInt<1>, clock with :
      reset => (UInt<1>("h0"), queue_io_deq_ready_REG) @[TreePE.scala 85:27]
    queue_io_deq_ready_REG <= io.sample_out.ready @[TreePE.scala 85:27]
    queue.io.deq.ready <= queue_io_deq_ready_REG @[TreePE.scala 85:17]

  module TreePEwithBRAM :
    input clock : Clock
    input reset : Reset
    output pe_io : { flip sample_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>}}, flip mem : { flip enable_1 : UInt<1>, flip write_1 : UInt<1>, flip addr_1 : UInt<13>, flip dataIn_1 : UInt<64>, dataOut_1 : UInt<64>, flip enable_2 : UInt<1>, flip write_2 : UInt<1>, flip addr_2 : UInt<13>, flip dataIn_2 : UInt<64>, dataOut_2 : UInt<64>}, sample_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>}}}

    inst pe of TreePE @[TreePE.scala 116:18]
    pe.clock <= clock
    pe.reset <= reset
    pe_io.sample_out.bits <= pe.io.sample_out.bits @[TreePE.scala 118:9]
    pe_io.sample_out.valid <= pe.io.sample_out.valid @[TreePE.scala 118:9]
    pe.io.sample_out.ready <= pe_io.sample_out.ready @[TreePE.scala 118:9]
    pe.io.mem <= pe_io.mem @[TreePE.scala 118:9]
    pe.io.sample_in <= pe_io.sample_in @[TreePE.scala 118:9]

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
    io.mem.enable_1 <= UInt<1>("h1") @[TreePE.scala 17:21]
    io.mem.addr_1 <= queue.io.deq.bits.offset @[TreePE.scala 18:19]
    io.mem.write_1 <= UInt<1>("h0") @[TreePE.scala 19:20]
    io.mem.dataIn_1 <= UInt<1>("h0") @[TreePE.scala 20:21]
    io.mem.enable_2 is invalid @[TreePE.scala 22:21]
    io.mem.addr_2 is invalid @[TreePE.scala 23:19]
    io.mem.write_2 is invalid @[TreePE.scala 24:20]
    io.mem.dataIn_2 is invalid @[TreePE.scala 25:21]
    reg REG : UInt<1>, clock with :
      reset => (UInt<1>("h0"), REG) @[TreePE.scala 29:17]
    REG <= queue.io.deq.valid @[TreePE.scala 29:17]
    when REG : @[TreePE.scala 29:31]
      node attr_id = bits(io.mem.dataOut_1, 33, 32) @[TreePE.scala 31:37]
      node threshold = bits(io.mem.dataOut_1, 15, 0) @[TreePE.scala 32:39]
      node nodeRA = bits(io.mem.dataOut_1, 31, 16) @[TreePE.scala 33:36]
      node leftChildInfo = bits(io.mem.dataOut_1, 43, 34) @[TreePE.scala 34:43]
      node rightChildInfo = bits(io.mem.dataOut_1, 53, 44) @[TreePE.scala 35:44]
      node leftChildType = bits(io.mem.dataOut_1, 54, 54) @[TreePE.scala 36:43]
      node rightChildType = bits(io.mem.dataOut_1, 55, 55) @[TreePE.scala 37:44]
      node is_valid = bits(io.mem.dataOut_1, 56, 56) @[TreePE.scala 38:38]
      node depth_indicator = bits(io.mem.dataOut_1, 59, 57) @[TreePE.scala 39:45]
      reg REG_1 : Fixed<16><<8>>[4], clock with :
        reset => (UInt<1>("h0"), REG_1) @[TreePE.scala 41:45]
      REG_1 <= queue.io.deq.bits.features @[TreePE.scala 41:45]
      io.sample_out.bits.features <= REG_1 @[TreePE.scala 41:35]
      reg REG_2 : Fixed<16><<8>>[5], clock with :
        reset => (UInt<1>("h0"), REG_2) @[TreePE.scala 42:44]
      REG_2 <= queue.io.deq.bits.weights @[TreePE.scala 42:44]
      io.sample_out.bits.weights <= REG_2 @[TreePE.scala 42:34]
      reg io_sample_out_bits_tree_to_exec_REG : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_tree_to_exec_REG) @[TreePE.scala 43:49]
      io_sample_out_bits_tree_to_exec_REG <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 43:49]
      io.sample_out.bits.tree_to_exec <= io_sample_out_bits_tree_to_exec_REG @[TreePE.scala 43:39]
      reg REG_3 : Fixed<16><<8>>[4], clock with :
        reset => (UInt<1>("h0"), REG_3) @[TreePE.scala 44:43]
      REG_3 <= queue.io.deq.bits.scores @[TreePE.scala 44:43]
      io.sample_out.bits.scores <= REG_3 @[TreePE.scala 44:33]
      io.sample_out.valid <= UInt<1>("h1") @[TreePE.scala 45:27]
      wire offset : UInt<10> @[TreePE.scala 64:26]
      wire shift : UInt<1> @[TreePE.scala 65:25]
      reg features_bits : Fixed<16><<8>>[4], clock with :
        reset => (UInt<1>("h0"), features_bits) @[TreePE.scala 66:36]
      features_bits <= queue.io.deq.bits.features @[TreePE.scala 66:36]
      reg scores_bits : Fixed<16><<8>>[4], clock with :
        reset => (UInt<1>("h0"), scores_bits) @[TreePE.scala 67:34]
      scores_bits <= queue.io.deq.bits.scores @[TreePE.scala 67:34]
      reg weights_bits : Fixed<16><<8>>[5], clock with :
        reset => (UInt<1>("h0"), weights_bits) @[TreePE.scala 68:35]
      weights_bits <= queue.io.deq.bits.weights @[TreePE.scala 68:35]
      node _shift_T = asFixedPoint(threshold, 8) @[TreePE.scala 69:69]
      node _shift_T_1 = lt(features_bits[attr_id], _shift_T) @[TreePE.scala 69:45]
      node _shift_T_2 = mux(_shift_T_1, leftChildType, rightChildType) @[TreePE.scala 69:21]
      shift <= _shift_T_2 @[TreePE.scala 69:15]
      node _offset_T = asFixedPoint(threshold, 8) @[TreePE.scala 70:70]
      node _offset_T_1 = lt(features_bits[attr_id], _offset_T) @[TreePE.scala 70:46]
      node _offset_T_2 = mux(_offset_T_1, leftChildInfo, rightChildInfo) @[TreePE.scala 70:22]
      offset <= _offset_T_2 @[TreePE.scala 70:16]
      node _io_sample_out_bits_offset_T = eq(shift, UInt<1>("h0")) @[TreePE.scala 71:48]
      node _io_sample_out_bits_offset_T_1 = or(_io_sample_out_bits_offset_T, queue.io.deq.bits.search_for_root) @[TreePE.scala 71:60]
      reg io_sample_out_bits_offset_REG : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_offset_REG) @[TreePE.scala 71:97]
      io_sample_out_bits_offset_REG <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 71:97]
      node _io_sample_out_bits_offset_T_2 = mux(_io_sample_out_bits_offset_T_1, io_sample_out_bits_offset_REG, offset) @[TreePE.scala 71:41]
      io.sample_out.bits.offset <= _io_sample_out_bits_offset_T_2 @[TreePE.scala 71:35]
      io.sample_out.bits.shift <= UInt<1>("h0") @[TreePE.scala 72:34]
      node _io_sample_out_bits_search_for_root_T = eq(shift, UInt<1>("h0")) @[TreePE.scala 73:47]
      node _io_sample_out_bits_search_for_root_T_1 = or(_io_sample_out_bits_search_for_root_T, queue.io.deq.bits.search_for_root) @[TreePE.scala 73:54]
      io.sample_out.bits.search_for_root <= _io_sample_out_bits_search_for_root_T_1 @[TreePE.scala 73:44]
      node _io_sample_out_bits_scores_0_T = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 75:97]
      node _io_sample_out_bits_scores_0_T_1 = eq(queue.io.deq.bits.search_for_root, UInt<1>("h0")) @[TreePE.scala 75:107]
      node _io_sample_out_bits_scores_0_T_2 = eq(shift, UInt<1>("h0")) @[TreePE.scala 75:143]
      node _io_sample_out_bits_scores_0_T_3 = and(_io_sample_out_bits_scores_0_T_1, _io_sample_out_bits_scores_0_T_2) @[TreePE.scala 75:135]
      node _io_sample_out_bits_scores_0_T_4 = and(_io_sample_out_bits_scores_0_T_3, is_valid) @[TreePE.scala 75:155]
      node _io_sample_out_bits_scores_0_T_5 = eq(UInt<1>("h0"), offset) @[TreePE.scala 75:173]
      node _io_sample_out_bits_scores_0_T_6 = and(_io_sample_out_bits_scores_0_T_4, _io_sample_out_bits_scores_0_T_5) @[TreePE.scala 75:166]
      node _io_sample_out_bits_scores_0_T_7 = mux(_io_sample_out_bits_scores_0_T_6, UInt<16>("hffff"), UInt<16>("h0")) @[TreePE.scala 75:105]
      node _io_sample_out_bits_scores_0_T_8 = and(_io_sample_out_bits_scores_0_T, _io_sample_out_bits_scores_0_T_7) @[TreePE.scala 75:100]
      node _io_sample_out_bits_scores_0_T_9 = asFixedPoint(_io_sample_out_bits_scores_0_T_8, 8) @[TreePE.scala 75:225]
      node _io_sample_out_bits_scores_0_T_10 = add(scores_bits[0], _io_sample_out_bits_scores_0_T_9) @[TreePE.scala 75:58]
      node _io_sample_out_bits_scores_0_T_11 = tail(_io_sample_out_bits_scores_0_T_10, 1) @[TreePE.scala 75:58]
      node _io_sample_out_bits_scores_0_T_12 = asFixedPoint(_io_sample_out_bits_scores_0_T_11, 8) @[TreePE.scala 75:58]
      io.sample_out.bits.scores[0] <= _io_sample_out_bits_scores_0_T_12 @[TreePE.scala 75:40]
      node _io_sample_out_bits_scores_1_T = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 75:97]
      node _io_sample_out_bits_scores_1_T_1 = eq(queue.io.deq.bits.search_for_root, UInt<1>("h0")) @[TreePE.scala 75:107]
      node _io_sample_out_bits_scores_1_T_2 = eq(shift, UInt<1>("h0")) @[TreePE.scala 75:143]
      node _io_sample_out_bits_scores_1_T_3 = and(_io_sample_out_bits_scores_1_T_1, _io_sample_out_bits_scores_1_T_2) @[TreePE.scala 75:135]
      node _io_sample_out_bits_scores_1_T_4 = and(_io_sample_out_bits_scores_1_T_3, is_valid) @[TreePE.scala 75:155]
      node _io_sample_out_bits_scores_1_T_5 = eq(UInt<1>("h1"), offset) @[TreePE.scala 75:173]
      node _io_sample_out_bits_scores_1_T_6 = and(_io_sample_out_bits_scores_1_T_4, _io_sample_out_bits_scores_1_T_5) @[TreePE.scala 75:166]
      node _io_sample_out_bits_scores_1_T_7 = mux(_io_sample_out_bits_scores_1_T_6, UInt<16>("hffff"), UInt<16>("h0")) @[TreePE.scala 75:105]
      node _io_sample_out_bits_scores_1_T_8 = and(_io_sample_out_bits_scores_1_T, _io_sample_out_bits_scores_1_T_7) @[TreePE.scala 75:100]
      node _io_sample_out_bits_scores_1_T_9 = asFixedPoint(_io_sample_out_bits_scores_1_T_8, 8) @[TreePE.scala 75:225]
      node _io_sample_out_bits_scores_1_T_10 = add(scores_bits[1], _io_sample_out_bits_scores_1_T_9) @[TreePE.scala 75:58]
      node _io_sample_out_bits_scores_1_T_11 = tail(_io_sample_out_bits_scores_1_T_10, 1) @[TreePE.scala 75:58]
      node _io_sample_out_bits_scores_1_T_12 = asFixedPoint(_io_sample_out_bits_scores_1_T_11, 8) @[TreePE.scala 75:58]
      io.sample_out.bits.scores[1] <= _io_sample_out_bits_scores_1_T_12 @[TreePE.scala 75:40]
      node _io_sample_out_bits_scores_2_T = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 75:97]
      node _io_sample_out_bits_scores_2_T_1 = eq(queue.io.deq.bits.search_for_root, UInt<1>("h0")) @[TreePE.scala 75:107]
      node _io_sample_out_bits_scores_2_T_2 = eq(shift, UInt<1>("h0")) @[TreePE.scala 75:143]
      node _io_sample_out_bits_scores_2_T_3 = and(_io_sample_out_bits_scores_2_T_1, _io_sample_out_bits_scores_2_T_2) @[TreePE.scala 75:135]
      node _io_sample_out_bits_scores_2_T_4 = and(_io_sample_out_bits_scores_2_T_3, is_valid) @[TreePE.scala 75:155]
      node _io_sample_out_bits_scores_2_T_5 = eq(UInt<2>("h2"), offset) @[TreePE.scala 75:173]
      node _io_sample_out_bits_scores_2_T_6 = and(_io_sample_out_bits_scores_2_T_4, _io_sample_out_bits_scores_2_T_5) @[TreePE.scala 75:166]
      node _io_sample_out_bits_scores_2_T_7 = mux(_io_sample_out_bits_scores_2_T_6, UInt<16>("hffff"), UInt<16>("h0")) @[TreePE.scala 75:105]
      node _io_sample_out_bits_scores_2_T_8 = and(_io_sample_out_bits_scores_2_T, _io_sample_out_bits_scores_2_T_7) @[TreePE.scala 75:100]
      node _io_sample_out_bits_scores_2_T_9 = asFixedPoint(_io_sample_out_bits_scores_2_T_8, 8) @[TreePE.scala 75:225]
      node _io_sample_out_bits_scores_2_T_10 = add(scores_bits[2], _io_sample_out_bits_scores_2_T_9) @[TreePE.scala 75:58]
      node _io_sample_out_bits_scores_2_T_11 = tail(_io_sample_out_bits_scores_2_T_10, 1) @[TreePE.scala 75:58]
      node _io_sample_out_bits_scores_2_T_12 = asFixedPoint(_io_sample_out_bits_scores_2_T_11, 8) @[TreePE.scala 75:58]
      io.sample_out.bits.scores[2] <= _io_sample_out_bits_scores_2_T_12 @[TreePE.scala 75:40]
      node _io_sample_out_bits_scores_3_T = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 75:97]
      node _io_sample_out_bits_scores_3_T_1 = eq(queue.io.deq.bits.search_for_root, UInt<1>("h0")) @[TreePE.scala 75:107]
      node _io_sample_out_bits_scores_3_T_2 = eq(shift, UInt<1>("h0")) @[TreePE.scala 75:143]
      node _io_sample_out_bits_scores_3_T_3 = and(_io_sample_out_bits_scores_3_T_1, _io_sample_out_bits_scores_3_T_2) @[TreePE.scala 75:135]
      node _io_sample_out_bits_scores_3_T_4 = and(_io_sample_out_bits_scores_3_T_3, is_valid) @[TreePE.scala 75:155]
      node _io_sample_out_bits_scores_3_T_5 = eq(UInt<2>("h3"), offset) @[TreePE.scala 75:173]
      node _io_sample_out_bits_scores_3_T_6 = and(_io_sample_out_bits_scores_3_T_4, _io_sample_out_bits_scores_3_T_5) @[TreePE.scala 75:166]
      node _io_sample_out_bits_scores_3_T_7 = mux(_io_sample_out_bits_scores_3_T_6, UInt<16>("hffff"), UInt<16>("h0")) @[TreePE.scala 75:105]
      node _io_sample_out_bits_scores_3_T_8 = and(_io_sample_out_bits_scores_3_T, _io_sample_out_bits_scores_3_T_7) @[TreePE.scala 75:100]
      node _io_sample_out_bits_scores_3_T_9 = asFixedPoint(_io_sample_out_bits_scores_3_T_8, 8) @[TreePE.scala 75:225]
      node _io_sample_out_bits_scores_3_T_10 = add(scores_bits[3], _io_sample_out_bits_scores_3_T_9) @[TreePE.scala 75:58]
      node _io_sample_out_bits_scores_3_T_11 = tail(_io_sample_out_bits_scores_3_T_10, 1) @[TreePE.scala 75:58]
      node _io_sample_out_bits_scores_3_T_12 = asFixedPoint(_io_sample_out_bits_scores_3_T_11, 8) @[TreePE.scala 75:58]
      io.sample_out.bits.scores[3] <= _io_sample_out_bits_scores_3_T_12 @[TreePE.scala 75:40]
      reg io_sample_out_bits_dest_REG : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_dest_REG) @[TreePE.scala 77:43]
      io_sample_out_bits_dest_REG <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 77:43]
      node _io_sample_out_bits_dest_T = eq(io_sample_out_bits_dest_REG, UInt<4>("h9")) @[TreePE.scala 77:69]
      io.sample_out.bits.dest <= _io_sample_out_bits_dest_T @[TreePE.scala 77:33]
      reg io_sample_out_bits_last_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_last_REG) @[TreePE.scala 78:43]
      io_sample_out_bits_last_REG <= queue.io.deq.bits.last @[TreePE.scala 78:43]
      io.sample_out.bits.last <= io_sample_out_bits_last_REG @[TreePE.scala 78:33]
    else :
      io.sample_out.bits.last is invalid @[TreePE.scala 81:26]
      io.sample_out.bits.dest is invalid @[TreePE.scala 81:26]
      io.sample_out.bits.weights[0] is invalid @[TreePE.scala 81:26]
      io.sample_out.bits.weights[1] is invalid @[TreePE.scala 81:26]
      io.sample_out.bits.weights[2] is invalid @[TreePE.scala 81:26]
      io.sample_out.bits.weights[3] is invalid @[TreePE.scala 81:26]
      io.sample_out.bits.weights[4] is invalid @[TreePE.scala 81:26]
      io.sample_out.bits.scores[0] is invalid @[TreePE.scala 81:26]
      io.sample_out.bits.scores[1] is invalid @[TreePE.scala 81:26]
      io.sample_out.bits.scores[2] is invalid @[TreePE.scala 81:26]
      io.sample_out.bits.scores[3] is invalid @[TreePE.scala 81:26]
      io.sample_out.bits.tree_to_exec is invalid @[TreePE.scala 81:26]
      io.sample_out.bits.search_for_root is invalid @[TreePE.scala 81:26]
      io.sample_out.bits.shift is invalid @[TreePE.scala 81:26]
      io.sample_out.bits.offset is invalid @[TreePE.scala 81:26]
      io.sample_out.bits.features[0] is invalid @[TreePE.scala 81:26]
      io.sample_out.bits.features[1] is invalid @[TreePE.scala 81:26]
      io.sample_out.bits.features[2] is invalid @[TreePE.scala 81:26]
      io.sample_out.bits.features[3] is invalid @[TreePE.scala 81:26]
      io.sample_out.valid <= UInt<1>("h0") @[TreePE.scala 82:27]
    reg queue_io_deq_ready_REG : UInt<1>, clock with :
      reset => (UInt<1>("h0"), queue_io_deq_ready_REG) @[TreePE.scala 85:27]
    queue_io_deq_ready_REG <= io.sample_out.ready @[TreePE.scala 85:27]
    queue.io.deq.ready <= queue_io_deq_ready_REG @[TreePE.scala 85:17]

  module TreePEwithBRAM_1 :
    input clock : Clock
    input reset : Reset
    output pe_io : { flip sample_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>}}, flip mem : { flip enable_1 : UInt<1>, flip write_1 : UInt<1>, flip addr_1 : UInt<13>, flip dataIn_1 : UInt<64>, dataOut_1 : UInt<64>, flip enable_2 : UInt<1>, flip write_2 : UInt<1>, flip addr_2 : UInt<13>, flip dataIn_2 : UInt<64>, dataOut_2 : UInt<64>}, sample_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>}}}

    inst pe of TreePE_1 @[TreePE.scala 116:18]
    pe.clock <= clock
    pe.reset <= reset
    pe_io.sample_out.bits <= pe.io.sample_out.bits @[TreePE.scala 118:9]
    pe_io.sample_out.valid <= pe.io.sample_out.valid @[TreePE.scala 118:9]
    pe.io.sample_out.ready <= pe_io.sample_out.ready @[TreePE.scala 118:9]
    pe.io.mem <= pe_io.mem @[TreePE.scala 118:9]
    pe.io.sample_in <= pe_io.sample_in @[TreePE.scala 118:9]

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
    io.mem.enable_1 <= UInt<1>("h1") @[TreePE.scala 17:21]
    io.mem.addr_1 <= queue.io.deq.bits.offset @[TreePE.scala 18:19]
    io.mem.write_1 <= UInt<1>("h0") @[TreePE.scala 19:20]
    io.mem.dataIn_1 <= UInt<1>("h0") @[TreePE.scala 20:21]
    io.mem.enable_2 is invalid @[TreePE.scala 22:21]
    io.mem.addr_2 is invalid @[TreePE.scala 23:19]
    io.mem.write_2 is invalid @[TreePE.scala 24:20]
    io.mem.dataIn_2 is invalid @[TreePE.scala 25:21]
    reg REG : UInt<1>, clock with :
      reset => (UInt<1>("h0"), REG) @[TreePE.scala 29:17]
    REG <= queue.io.deq.valid @[TreePE.scala 29:17]
    when REG : @[TreePE.scala 29:31]
      node attr_id = bits(io.mem.dataOut_1, 33, 32) @[TreePE.scala 31:37]
      node threshold = bits(io.mem.dataOut_1, 15, 0) @[TreePE.scala 32:39]
      node nodeRA = bits(io.mem.dataOut_1, 31, 16) @[TreePE.scala 33:36]
      node leftChildInfo = bits(io.mem.dataOut_1, 43, 34) @[TreePE.scala 34:43]
      node rightChildInfo = bits(io.mem.dataOut_1, 53, 44) @[TreePE.scala 35:44]
      node leftChildType = bits(io.mem.dataOut_1, 54, 54) @[TreePE.scala 36:43]
      node rightChildType = bits(io.mem.dataOut_1, 55, 55) @[TreePE.scala 37:44]
      node is_valid = bits(io.mem.dataOut_1, 56, 56) @[TreePE.scala 38:38]
      node depth_indicator = bits(io.mem.dataOut_1, 59, 57) @[TreePE.scala 39:45]
      reg REG_1 : Fixed<16><<8>>[4], clock with :
        reset => (UInt<1>("h0"), REG_1) @[TreePE.scala 41:45]
      REG_1 <= queue.io.deq.bits.features @[TreePE.scala 41:45]
      io.sample_out.bits.features <= REG_1 @[TreePE.scala 41:35]
      reg REG_2 : Fixed<16><<8>>[5], clock with :
        reset => (UInt<1>("h0"), REG_2) @[TreePE.scala 42:44]
      REG_2 <= queue.io.deq.bits.weights @[TreePE.scala 42:44]
      io.sample_out.bits.weights <= REG_2 @[TreePE.scala 42:34]
      reg io_sample_out_bits_tree_to_exec_REG : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_tree_to_exec_REG) @[TreePE.scala 43:49]
      io_sample_out_bits_tree_to_exec_REG <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 43:49]
      io.sample_out.bits.tree_to_exec <= io_sample_out_bits_tree_to_exec_REG @[TreePE.scala 43:39]
      reg REG_3 : Fixed<16><<8>>[4], clock with :
        reset => (UInt<1>("h0"), REG_3) @[TreePE.scala 44:43]
      REG_3 <= queue.io.deq.bits.scores @[TreePE.scala 44:43]
      io.sample_out.bits.scores <= REG_3 @[TreePE.scala 44:33]
      io.sample_out.valid <= UInt<1>("h1") @[TreePE.scala 45:27]
      wire offset : UInt<10> @[TreePE.scala 64:26]
      wire shift : UInt<1> @[TreePE.scala 65:25]
      reg features_bits : Fixed<16><<8>>[4], clock with :
        reset => (UInt<1>("h0"), features_bits) @[TreePE.scala 66:36]
      features_bits <= queue.io.deq.bits.features @[TreePE.scala 66:36]
      reg scores_bits : Fixed<16><<8>>[4], clock with :
        reset => (UInt<1>("h0"), scores_bits) @[TreePE.scala 67:34]
      scores_bits <= queue.io.deq.bits.scores @[TreePE.scala 67:34]
      reg weights_bits : Fixed<16><<8>>[5], clock with :
        reset => (UInt<1>("h0"), weights_bits) @[TreePE.scala 68:35]
      weights_bits <= queue.io.deq.bits.weights @[TreePE.scala 68:35]
      node _shift_T = asFixedPoint(threshold, 8) @[TreePE.scala 69:69]
      node _shift_T_1 = lt(features_bits[attr_id], _shift_T) @[TreePE.scala 69:45]
      node _shift_T_2 = mux(_shift_T_1, leftChildType, rightChildType) @[TreePE.scala 69:21]
      shift <= _shift_T_2 @[TreePE.scala 69:15]
      node _offset_T = asFixedPoint(threshold, 8) @[TreePE.scala 70:70]
      node _offset_T_1 = lt(features_bits[attr_id], _offset_T) @[TreePE.scala 70:46]
      node _offset_T_2 = mux(_offset_T_1, leftChildInfo, rightChildInfo) @[TreePE.scala 70:22]
      offset <= _offset_T_2 @[TreePE.scala 70:16]
      node _io_sample_out_bits_offset_T = eq(shift, UInt<1>("h0")) @[TreePE.scala 71:48]
      node _io_sample_out_bits_offset_T_1 = or(_io_sample_out_bits_offset_T, queue.io.deq.bits.search_for_root) @[TreePE.scala 71:60]
      reg io_sample_out_bits_offset_REG : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_offset_REG) @[TreePE.scala 71:97]
      io_sample_out_bits_offset_REG <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 71:97]
      node _io_sample_out_bits_offset_T_2 = mux(_io_sample_out_bits_offset_T_1, io_sample_out_bits_offset_REG, offset) @[TreePE.scala 71:41]
      io.sample_out.bits.offset <= _io_sample_out_bits_offset_T_2 @[TreePE.scala 71:35]
      io.sample_out.bits.shift <= UInt<1>("h0") @[TreePE.scala 72:34]
      node _io_sample_out_bits_search_for_root_T = eq(shift, UInt<1>("h0")) @[TreePE.scala 73:47]
      node _io_sample_out_bits_search_for_root_T_1 = or(_io_sample_out_bits_search_for_root_T, queue.io.deq.bits.search_for_root) @[TreePE.scala 73:54]
      io.sample_out.bits.search_for_root <= _io_sample_out_bits_search_for_root_T_1 @[TreePE.scala 73:44]
      node _io_sample_out_bits_scores_0_T = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 75:97]
      node _io_sample_out_bits_scores_0_T_1 = eq(queue.io.deq.bits.search_for_root, UInt<1>("h0")) @[TreePE.scala 75:107]
      node _io_sample_out_bits_scores_0_T_2 = eq(shift, UInt<1>("h0")) @[TreePE.scala 75:143]
      node _io_sample_out_bits_scores_0_T_3 = and(_io_sample_out_bits_scores_0_T_1, _io_sample_out_bits_scores_0_T_2) @[TreePE.scala 75:135]
      node _io_sample_out_bits_scores_0_T_4 = and(_io_sample_out_bits_scores_0_T_3, is_valid) @[TreePE.scala 75:155]
      node _io_sample_out_bits_scores_0_T_5 = eq(UInt<1>("h0"), offset) @[TreePE.scala 75:173]
      node _io_sample_out_bits_scores_0_T_6 = and(_io_sample_out_bits_scores_0_T_4, _io_sample_out_bits_scores_0_T_5) @[TreePE.scala 75:166]
      node _io_sample_out_bits_scores_0_T_7 = mux(_io_sample_out_bits_scores_0_T_6, UInt<16>("hffff"), UInt<16>("h0")) @[TreePE.scala 75:105]
      node _io_sample_out_bits_scores_0_T_8 = and(_io_sample_out_bits_scores_0_T, _io_sample_out_bits_scores_0_T_7) @[TreePE.scala 75:100]
      node _io_sample_out_bits_scores_0_T_9 = asFixedPoint(_io_sample_out_bits_scores_0_T_8, 8) @[TreePE.scala 75:225]
      node _io_sample_out_bits_scores_0_T_10 = add(scores_bits[0], _io_sample_out_bits_scores_0_T_9) @[TreePE.scala 75:58]
      node _io_sample_out_bits_scores_0_T_11 = tail(_io_sample_out_bits_scores_0_T_10, 1) @[TreePE.scala 75:58]
      node _io_sample_out_bits_scores_0_T_12 = asFixedPoint(_io_sample_out_bits_scores_0_T_11, 8) @[TreePE.scala 75:58]
      io.sample_out.bits.scores[0] <= _io_sample_out_bits_scores_0_T_12 @[TreePE.scala 75:40]
      node _io_sample_out_bits_scores_1_T = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 75:97]
      node _io_sample_out_bits_scores_1_T_1 = eq(queue.io.deq.bits.search_for_root, UInt<1>("h0")) @[TreePE.scala 75:107]
      node _io_sample_out_bits_scores_1_T_2 = eq(shift, UInt<1>("h0")) @[TreePE.scala 75:143]
      node _io_sample_out_bits_scores_1_T_3 = and(_io_sample_out_bits_scores_1_T_1, _io_sample_out_bits_scores_1_T_2) @[TreePE.scala 75:135]
      node _io_sample_out_bits_scores_1_T_4 = and(_io_sample_out_bits_scores_1_T_3, is_valid) @[TreePE.scala 75:155]
      node _io_sample_out_bits_scores_1_T_5 = eq(UInt<1>("h1"), offset) @[TreePE.scala 75:173]
      node _io_sample_out_bits_scores_1_T_6 = and(_io_sample_out_bits_scores_1_T_4, _io_sample_out_bits_scores_1_T_5) @[TreePE.scala 75:166]
      node _io_sample_out_bits_scores_1_T_7 = mux(_io_sample_out_bits_scores_1_T_6, UInt<16>("hffff"), UInt<16>("h0")) @[TreePE.scala 75:105]
      node _io_sample_out_bits_scores_1_T_8 = and(_io_sample_out_bits_scores_1_T, _io_sample_out_bits_scores_1_T_7) @[TreePE.scala 75:100]
      node _io_sample_out_bits_scores_1_T_9 = asFixedPoint(_io_sample_out_bits_scores_1_T_8, 8) @[TreePE.scala 75:225]
      node _io_sample_out_bits_scores_1_T_10 = add(scores_bits[1], _io_sample_out_bits_scores_1_T_9) @[TreePE.scala 75:58]
      node _io_sample_out_bits_scores_1_T_11 = tail(_io_sample_out_bits_scores_1_T_10, 1) @[TreePE.scala 75:58]
      node _io_sample_out_bits_scores_1_T_12 = asFixedPoint(_io_sample_out_bits_scores_1_T_11, 8) @[TreePE.scala 75:58]
      io.sample_out.bits.scores[1] <= _io_sample_out_bits_scores_1_T_12 @[TreePE.scala 75:40]
      node _io_sample_out_bits_scores_2_T = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 75:97]
      node _io_sample_out_bits_scores_2_T_1 = eq(queue.io.deq.bits.search_for_root, UInt<1>("h0")) @[TreePE.scala 75:107]
      node _io_sample_out_bits_scores_2_T_2 = eq(shift, UInt<1>("h0")) @[TreePE.scala 75:143]
      node _io_sample_out_bits_scores_2_T_3 = and(_io_sample_out_bits_scores_2_T_1, _io_sample_out_bits_scores_2_T_2) @[TreePE.scala 75:135]
      node _io_sample_out_bits_scores_2_T_4 = and(_io_sample_out_bits_scores_2_T_3, is_valid) @[TreePE.scala 75:155]
      node _io_sample_out_bits_scores_2_T_5 = eq(UInt<2>("h2"), offset) @[TreePE.scala 75:173]
      node _io_sample_out_bits_scores_2_T_6 = and(_io_sample_out_bits_scores_2_T_4, _io_sample_out_bits_scores_2_T_5) @[TreePE.scala 75:166]
      node _io_sample_out_bits_scores_2_T_7 = mux(_io_sample_out_bits_scores_2_T_6, UInt<16>("hffff"), UInt<16>("h0")) @[TreePE.scala 75:105]
      node _io_sample_out_bits_scores_2_T_8 = and(_io_sample_out_bits_scores_2_T, _io_sample_out_bits_scores_2_T_7) @[TreePE.scala 75:100]
      node _io_sample_out_bits_scores_2_T_9 = asFixedPoint(_io_sample_out_bits_scores_2_T_8, 8) @[TreePE.scala 75:225]
      node _io_sample_out_bits_scores_2_T_10 = add(scores_bits[2], _io_sample_out_bits_scores_2_T_9) @[TreePE.scala 75:58]
      node _io_sample_out_bits_scores_2_T_11 = tail(_io_sample_out_bits_scores_2_T_10, 1) @[TreePE.scala 75:58]
      node _io_sample_out_bits_scores_2_T_12 = asFixedPoint(_io_sample_out_bits_scores_2_T_11, 8) @[TreePE.scala 75:58]
      io.sample_out.bits.scores[2] <= _io_sample_out_bits_scores_2_T_12 @[TreePE.scala 75:40]
      node _io_sample_out_bits_scores_3_T = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 75:97]
      node _io_sample_out_bits_scores_3_T_1 = eq(queue.io.deq.bits.search_for_root, UInt<1>("h0")) @[TreePE.scala 75:107]
      node _io_sample_out_bits_scores_3_T_2 = eq(shift, UInt<1>("h0")) @[TreePE.scala 75:143]
      node _io_sample_out_bits_scores_3_T_3 = and(_io_sample_out_bits_scores_3_T_1, _io_sample_out_bits_scores_3_T_2) @[TreePE.scala 75:135]
      node _io_sample_out_bits_scores_3_T_4 = and(_io_sample_out_bits_scores_3_T_3, is_valid) @[TreePE.scala 75:155]
      node _io_sample_out_bits_scores_3_T_5 = eq(UInt<2>("h3"), offset) @[TreePE.scala 75:173]
      node _io_sample_out_bits_scores_3_T_6 = and(_io_sample_out_bits_scores_3_T_4, _io_sample_out_bits_scores_3_T_5) @[TreePE.scala 75:166]
      node _io_sample_out_bits_scores_3_T_7 = mux(_io_sample_out_bits_scores_3_T_6, UInt<16>("hffff"), UInt<16>("h0")) @[TreePE.scala 75:105]
      node _io_sample_out_bits_scores_3_T_8 = and(_io_sample_out_bits_scores_3_T, _io_sample_out_bits_scores_3_T_7) @[TreePE.scala 75:100]
      node _io_sample_out_bits_scores_3_T_9 = asFixedPoint(_io_sample_out_bits_scores_3_T_8, 8) @[TreePE.scala 75:225]
      node _io_sample_out_bits_scores_3_T_10 = add(scores_bits[3], _io_sample_out_bits_scores_3_T_9) @[TreePE.scala 75:58]
      node _io_sample_out_bits_scores_3_T_11 = tail(_io_sample_out_bits_scores_3_T_10, 1) @[TreePE.scala 75:58]
      node _io_sample_out_bits_scores_3_T_12 = asFixedPoint(_io_sample_out_bits_scores_3_T_11, 8) @[TreePE.scala 75:58]
      io.sample_out.bits.scores[3] <= _io_sample_out_bits_scores_3_T_12 @[TreePE.scala 75:40]
      reg io_sample_out_bits_dest_REG : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_dest_REG) @[TreePE.scala 77:43]
      io_sample_out_bits_dest_REG <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 77:43]
      node _io_sample_out_bits_dest_T = eq(io_sample_out_bits_dest_REG, UInt<4>("h9")) @[TreePE.scala 77:69]
      io.sample_out.bits.dest <= _io_sample_out_bits_dest_T @[TreePE.scala 77:33]
      reg io_sample_out_bits_last_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_last_REG) @[TreePE.scala 78:43]
      io_sample_out_bits_last_REG <= queue.io.deq.bits.last @[TreePE.scala 78:43]
      io.sample_out.bits.last <= io_sample_out_bits_last_REG @[TreePE.scala 78:33]
    else :
      io.sample_out.bits.last is invalid @[TreePE.scala 81:26]
      io.sample_out.bits.dest is invalid @[TreePE.scala 81:26]
      io.sample_out.bits.weights[0] is invalid @[TreePE.scala 81:26]
      io.sample_out.bits.weights[1] is invalid @[TreePE.scala 81:26]
      io.sample_out.bits.weights[2] is invalid @[TreePE.scala 81:26]
      io.sample_out.bits.weights[3] is invalid @[TreePE.scala 81:26]
      io.sample_out.bits.weights[4] is invalid @[TreePE.scala 81:26]
      io.sample_out.bits.scores[0] is invalid @[TreePE.scala 81:26]
      io.sample_out.bits.scores[1] is invalid @[TreePE.scala 81:26]
      io.sample_out.bits.scores[2] is invalid @[TreePE.scala 81:26]
      io.sample_out.bits.scores[3] is invalid @[TreePE.scala 81:26]
      io.sample_out.bits.tree_to_exec is invalid @[TreePE.scala 81:26]
      io.sample_out.bits.search_for_root is invalid @[TreePE.scala 81:26]
      io.sample_out.bits.shift is invalid @[TreePE.scala 81:26]
      io.sample_out.bits.offset is invalid @[TreePE.scala 81:26]
      io.sample_out.bits.features[0] is invalid @[TreePE.scala 81:26]
      io.sample_out.bits.features[1] is invalid @[TreePE.scala 81:26]
      io.sample_out.bits.features[2] is invalid @[TreePE.scala 81:26]
      io.sample_out.bits.features[3] is invalid @[TreePE.scala 81:26]
      io.sample_out.valid <= UInt<1>("h0") @[TreePE.scala 82:27]
    reg queue_io_deq_ready_REG : UInt<1>, clock with :
      reset => (UInt<1>("h0"), queue_io_deq_ready_REG) @[TreePE.scala 85:27]
    queue_io_deq_ready_REG <= io.sample_out.ready @[TreePE.scala 85:27]
    queue.io.deq.ready <= queue_io_deq_ready_REG @[TreePE.scala 85:17]

  module TreePEwithBRAM_2 :
    input clock : Clock
    input reset : Reset
    output pe_io : { flip sample_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>}}, flip mem : { flip enable_1 : UInt<1>, flip write_1 : UInt<1>, flip addr_1 : UInt<13>, flip dataIn_1 : UInt<64>, dataOut_1 : UInt<64>, flip enable_2 : UInt<1>, flip write_2 : UInt<1>, flip addr_2 : UInt<13>, flip dataIn_2 : UInt<64>, dataOut_2 : UInt<64>}, sample_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>}}}

    inst pe of TreePE_2 @[TreePE.scala 116:18]
    pe.clock <= clock
    pe.reset <= reset
    pe_io.sample_out.bits <= pe.io.sample_out.bits @[TreePE.scala 118:9]
    pe_io.sample_out.valid <= pe.io.sample_out.valid @[TreePE.scala 118:9]
    pe.io.sample_out.ready <= pe_io.sample_out.ready @[TreePE.scala 118:9]
    pe.io.mem <= pe_io.mem @[TreePE.scala 118:9]
    pe.io.sample_in <= pe_io.sample_in @[TreePE.scala 118:9]

  module Queue_3 :
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

  module TreePE_3 :
    input clock : Clock
    input reset : Reset
    output io : { flip sample_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>}}, flip mem : { flip enable_1 : UInt<1>, flip write_1 : UInt<1>, flip addr_1 : UInt<13>, flip dataIn_1 : UInt<64>, dataOut_1 : UInt<64>, flip enable_2 : UInt<1>, flip write_2 : UInt<1>, flip addr_2 : UInt<13>, flip dataIn_2 : UInt<64>, dataOut_2 : UInt<64>}, sample_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>}}}

    inst queue of Queue_3 @[Decoupled.scala 377:21]
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
    io.mem.enable_1 <= UInt<1>("h1") @[TreePE.scala 17:21]
    io.mem.addr_1 <= queue.io.deq.bits.offset @[TreePE.scala 18:19]
    io.mem.write_1 <= UInt<1>("h0") @[TreePE.scala 19:20]
    io.mem.dataIn_1 <= UInt<1>("h0") @[TreePE.scala 20:21]
    io.mem.enable_2 is invalid @[TreePE.scala 22:21]
    io.mem.addr_2 is invalid @[TreePE.scala 23:19]
    io.mem.write_2 is invalid @[TreePE.scala 24:20]
    io.mem.dataIn_2 is invalid @[TreePE.scala 25:21]
    reg REG : UInt<1>, clock with :
      reset => (UInt<1>("h0"), REG) @[TreePE.scala 29:17]
    REG <= queue.io.deq.valid @[TreePE.scala 29:17]
    when REG : @[TreePE.scala 29:31]
      node attr_id = bits(io.mem.dataOut_1, 33, 32) @[TreePE.scala 31:37]
      node threshold = bits(io.mem.dataOut_1, 15, 0) @[TreePE.scala 32:39]
      node nodeRA = bits(io.mem.dataOut_1, 31, 16) @[TreePE.scala 33:36]
      node leftChildInfo = bits(io.mem.dataOut_1, 43, 34) @[TreePE.scala 34:43]
      node rightChildInfo = bits(io.mem.dataOut_1, 53, 44) @[TreePE.scala 35:44]
      node leftChildType = bits(io.mem.dataOut_1, 54, 54) @[TreePE.scala 36:43]
      node rightChildType = bits(io.mem.dataOut_1, 55, 55) @[TreePE.scala 37:44]
      node is_valid = bits(io.mem.dataOut_1, 56, 56) @[TreePE.scala 38:38]
      node depth_indicator = bits(io.mem.dataOut_1, 59, 57) @[TreePE.scala 39:45]
      reg REG_1 : Fixed<16><<8>>[4], clock with :
        reset => (UInt<1>("h0"), REG_1) @[TreePE.scala 41:45]
      REG_1 <= queue.io.deq.bits.features @[TreePE.scala 41:45]
      io.sample_out.bits.features <= REG_1 @[TreePE.scala 41:35]
      reg REG_2 : Fixed<16><<8>>[5], clock with :
        reset => (UInt<1>("h0"), REG_2) @[TreePE.scala 42:44]
      REG_2 <= queue.io.deq.bits.weights @[TreePE.scala 42:44]
      io.sample_out.bits.weights <= REG_2 @[TreePE.scala 42:34]
      reg io_sample_out_bits_tree_to_exec_REG : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_tree_to_exec_REG) @[TreePE.scala 43:49]
      io_sample_out_bits_tree_to_exec_REG <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 43:49]
      io.sample_out.bits.tree_to_exec <= io_sample_out_bits_tree_to_exec_REG @[TreePE.scala 43:39]
      reg REG_3 : Fixed<16><<8>>[4], clock with :
        reset => (UInt<1>("h0"), REG_3) @[TreePE.scala 44:43]
      REG_3 <= queue.io.deq.bits.scores @[TreePE.scala 44:43]
      io.sample_out.bits.scores <= REG_3 @[TreePE.scala 44:33]
      io.sample_out.valid <= UInt<1>("h1") @[TreePE.scala 45:27]
      wire offset : UInt<10> @[TreePE.scala 64:26]
      wire shift : UInt<1> @[TreePE.scala 65:25]
      reg features_bits : Fixed<16><<8>>[4], clock with :
        reset => (UInt<1>("h0"), features_bits) @[TreePE.scala 66:36]
      features_bits <= queue.io.deq.bits.features @[TreePE.scala 66:36]
      reg scores_bits : Fixed<16><<8>>[4], clock with :
        reset => (UInt<1>("h0"), scores_bits) @[TreePE.scala 67:34]
      scores_bits <= queue.io.deq.bits.scores @[TreePE.scala 67:34]
      reg weights_bits : Fixed<16><<8>>[5], clock with :
        reset => (UInt<1>("h0"), weights_bits) @[TreePE.scala 68:35]
      weights_bits <= queue.io.deq.bits.weights @[TreePE.scala 68:35]
      node _shift_T = asFixedPoint(threshold, 8) @[TreePE.scala 69:69]
      node _shift_T_1 = lt(features_bits[attr_id], _shift_T) @[TreePE.scala 69:45]
      node _shift_T_2 = mux(_shift_T_1, leftChildType, rightChildType) @[TreePE.scala 69:21]
      shift <= _shift_T_2 @[TreePE.scala 69:15]
      node _offset_T = asFixedPoint(threshold, 8) @[TreePE.scala 70:70]
      node _offset_T_1 = lt(features_bits[attr_id], _offset_T) @[TreePE.scala 70:46]
      node _offset_T_2 = mux(_offset_T_1, leftChildInfo, rightChildInfo) @[TreePE.scala 70:22]
      offset <= _offset_T_2 @[TreePE.scala 70:16]
      node _io_sample_out_bits_offset_T = eq(shift, UInt<1>("h0")) @[TreePE.scala 71:48]
      node _io_sample_out_bits_offset_T_1 = or(_io_sample_out_bits_offset_T, queue.io.deq.bits.search_for_root) @[TreePE.scala 71:60]
      reg io_sample_out_bits_offset_REG : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_offset_REG) @[TreePE.scala 71:97]
      io_sample_out_bits_offset_REG <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 71:97]
      node _io_sample_out_bits_offset_T_2 = mux(_io_sample_out_bits_offset_T_1, io_sample_out_bits_offset_REG, offset) @[TreePE.scala 71:41]
      io.sample_out.bits.offset <= _io_sample_out_bits_offset_T_2 @[TreePE.scala 71:35]
      io.sample_out.bits.shift <= UInt<1>("h0") @[TreePE.scala 72:34]
      node _io_sample_out_bits_search_for_root_T = eq(shift, UInt<1>("h0")) @[TreePE.scala 73:47]
      node _io_sample_out_bits_search_for_root_T_1 = or(_io_sample_out_bits_search_for_root_T, queue.io.deq.bits.search_for_root) @[TreePE.scala 73:54]
      io.sample_out.bits.search_for_root <= _io_sample_out_bits_search_for_root_T_1 @[TreePE.scala 73:44]
      node _io_sample_out_bits_scores_0_T = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 75:97]
      node _io_sample_out_bits_scores_0_T_1 = eq(queue.io.deq.bits.search_for_root, UInt<1>("h0")) @[TreePE.scala 75:107]
      node _io_sample_out_bits_scores_0_T_2 = eq(shift, UInt<1>("h0")) @[TreePE.scala 75:143]
      node _io_sample_out_bits_scores_0_T_3 = and(_io_sample_out_bits_scores_0_T_1, _io_sample_out_bits_scores_0_T_2) @[TreePE.scala 75:135]
      node _io_sample_out_bits_scores_0_T_4 = and(_io_sample_out_bits_scores_0_T_3, is_valid) @[TreePE.scala 75:155]
      node _io_sample_out_bits_scores_0_T_5 = eq(UInt<1>("h0"), offset) @[TreePE.scala 75:173]
      node _io_sample_out_bits_scores_0_T_6 = and(_io_sample_out_bits_scores_0_T_4, _io_sample_out_bits_scores_0_T_5) @[TreePE.scala 75:166]
      node _io_sample_out_bits_scores_0_T_7 = mux(_io_sample_out_bits_scores_0_T_6, UInt<16>("hffff"), UInt<16>("h0")) @[TreePE.scala 75:105]
      node _io_sample_out_bits_scores_0_T_8 = and(_io_sample_out_bits_scores_0_T, _io_sample_out_bits_scores_0_T_7) @[TreePE.scala 75:100]
      node _io_sample_out_bits_scores_0_T_9 = asFixedPoint(_io_sample_out_bits_scores_0_T_8, 8) @[TreePE.scala 75:225]
      node _io_sample_out_bits_scores_0_T_10 = add(scores_bits[0], _io_sample_out_bits_scores_0_T_9) @[TreePE.scala 75:58]
      node _io_sample_out_bits_scores_0_T_11 = tail(_io_sample_out_bits_scores_0_T_10, 1) @[TreePE.scala 75:58]
      node _io_sample_out_bits_scores_0_T_12 = asFixedPoint(_io_sample_out_bits_scores_0_T_11, 8) @[TreePE.scala 75:58]
      io.sample_out.bits.scores[0] <= _io_sample_out_bits_scores_0_T_12 @[TreePE.scala 75:40]
      node _io_sample_out_bits_scores_1_T = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 75:97]
      node _io_sample_out_bits_scores_1_T_1 = eq(queue.io.deq.bits.search_for_root, UInt<1>("h0")) @[TreePE.scala 75:107]
      node _io_sample_out_bits_scores_1_T_2 = eq(shift, UInt<1>("h0")) @[TreePE.scala 75:143]
      node _io_sample_out_bits_scores_1_T_3 = and(_io_sample_out_bits_scores_1_T_1, _io_sample_out_bits_scores_1_T_2) @[TreePE.scala 75:135]
      node _io_sample_out_bits_scores_1_T_4 = and(_io_sample_out_bits_scores_1_T_3, is_valid) @[TreePE.scala 75:155]
      node _io_sample_out_bits_scores_1_T_5 = eq(UInt<1>("h1"), offset) @[TreePE.scala 75:173]
      node _io_sample_out_bits_scores_1_T_6 = and(_io_sample_out_bits_scores_1_T_4, _io_sample_out_bits_scores_1_T_5) @[TreePE.scala 75:166]
      node _io_sample_out_bits_scores_1_T_7 = mux(_io_sample_out_bits_scores_1_T_6, UInt<16>("hffff"), UInt<16>("h0")) @[TreePE.scala 75:105]
      node _io_sample_out_bits_scores_1_T_8 = and(_io_sample_out_bits_scores_1_T, _io_sample_out_bits_scores_1_T_7) @[TreePE.scala 75:100]
      node _io_sample_out_bits_scores_1_T_9 = asFixedPoint(_io_sample_out_bits_scores_1_T_8, 8) @[TreePE.scala 75:225]
      node _io_sample_out_bits_scores_1_T_10 = add(scores_bits[1], _io_sample_out_bits_scores_1_T_9) @[TreePE.scala 75:58]
      node _io_sample_out_bits_scores_1_T_11 = tail(_io_sample_out_bits_scores_1_T_10, 1) @[TreePE.scala 75:58]
      node _io_sample_out_bits_scores_1_T_12 = asFixedPoint(_io_sample_out_bits_scores_1_T_11, 8) @[TreePE.scala 75:58]
      io.sample_out.bits.scores[1] <= _io_sample_out_bits_scores_1_T_12 @[TreePE.scala 75:40]
      node _io_sample_out_bits_scores_2_T = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 75:97]
      node _io_sample_out_bits_scores_2_T_1 = eq(queue.io.deq.bits.search_for_root, UInt<1>("h0")) @[TreePE.scala 75:107]
      node _io_sample_out_bits_scores_2_T_2 = eq(shift, UInt<1>("h0")) @[TreePE.scala 75:143]
      node _io_sample_out_bits_scores_2_T_3 = and(_io_sample_out_bits_scores_2_T_1, _io_sample_out_bits_scores_2_T_2) @[TreePE.scala 75:135]
      node _io_sample_out_bits_scores_2_T_4 = and(_io_sample_out_bits_scores_2_T_3, is_valid) @[TreePE.scala 75:155]
      node _io_sample_out_bits_scores_2_T_5 = eq(UInt<2>("h2"), offset) @[TreePE.scala 75:173]
      node _io_sample_out_bits_scores_2_T_6 = and(_io_sample_out_bits_scores_2_T_4, _io_sample_out_bits_scores_2_T_5) @[TreePE.scala 75:166]
      node _io_sample_out_bits_scores_2_T_7 = mux(_io_sample_out_bits_scores_2_T_6, UInt<16>("hffff"), UInt<16>("h0")) @[TreePE.scala 75:105]
      node _io_sample_out_bits_scores_2_T_8 = and(_io_sample_out_bits_scores_2_T, _io_sample_out_bits_scores_2_T_7) @[TreePE.scala 75:100]
      node _io_sample_out_bits_scores_2_T_9 = asFixedPoint(_io_sample_out_bits_scores_2_T_8, 8) @[TreePE.scala 75:225]
      node _io_sample_out_bits_scores_2_T_10 = add(scores_bits[2], _io_sample_out_bits_scores_2_T_9) @[TreePE.scala 75:58]
      node _io_sample_out_bits_scores_2_T_11 = tail(_io_sample_out_bits_scores_2_T_10, 1) @[TreePE.scala 75:58]
      node _io_sample_out_bits_scores_2_T_12 = asFixedPoint(_io_sample_out_bits_scores_2_T_11, 8) @[TreePE.scala 75:58]
      io.sample_out.bits.scores[2] <= _io_sample_out_bits_scores_2_T_12 @[TreePE.scala 75:40]
      node _io_sample_out_bits_scores_3_T = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 75:97]
      node _io_sample_out_bits_scores_3_T_1 = eq(queue.io.deq.bits.search_for_root, UInt<1>("h0")) @[TreePE.scala 75:107]
      node _io_sample_out_bits_scores_3_T_2 = eq(shift, UInt<1>("h0")) @[TreePE.scala 75:143]
      node _io_sample_out_bits_scores_3_T_3 = and(_io_sample_out_bits_scores_3_T_1, _io_sample_out_bits_scores_3_T_2) @[TreePE.scala 75:135]
      node _io_sample_out_bits_scores_3_T_4 = and(_io_sample_out_bits_scores_3_T_3, is_valid) @[TreePE.scala 75:155]
      node _io_sample_out_bits_scores_3_T_5 = eq(UInt<2>("h3"), offset) @[TreePE.scala 75:173]
      node _io_sample_out_bits_scores_3_T_6 = and(_io_sample_out_bits_scores_3_T_4, _io_sample_out_bits_scores_3_T_5) @[TreePE.scala 75:166]
      node _io_sample_out_bits_scores_3_T_7 = mux(_io_sample_out_bits_scores_3_T_6, UInt<16>("hffff"), UInt<16>("h0")) @[TreePE.scala 75:105]
      node _io_sample_out_bits_scores_3_T_8 = and(_io_sample_out_bits_scores_3_T, _io_sample_out_bits_scores_3_T_7) @[TreePE.scala 75:100]
      node _io_sample_out_bits_scores_3_T_9 = asFixedPoint(_io_sample_out_bits_scores_3_T_8, 8) @[TreePE.scala 75:225]
      node _io_sample_out_bits_scores_3_T_10 = add(scores_bits[3], _io_sample_out_bits_scores_3_T_9) @[TreePE.scala 75:58]
      node _io_sample_out_bits_scores_3_T_11 = tail(_io_sample_out_bits_scores_3_T_10, 1) @[TreePE.scala 75:58]
      node _io_sample_out_bits_scores_3_T_12 = asFixedPoint(_io_sample_out_bits_scores_3_T_11, 8) @[TreePE.scala 75:58]
      io.sample_out.bits.scores[3] <= _io_sample_out_bits_scores_3_T_12 @[TreePE.scala 75:40]
      reg io_sample_out_bits_dest_REG : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_dest_REG) @[TreePE.scala 77:43]
      io_sample_out_bits_dest_REG <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 77:43]
      node _io_sample_out_bits_dest_T = eq(io_sample_out_bits_dest_REG, UInt<4>("h9")) @[TreePE.scala 77:69]
      io.sample_out.bits.dest <= _io_sample_out_bits_dest_T @[TreePE.scala 77:33]
      reg io_sample_out_bits_last_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_last_REG) @[TreePE.scala 78:43]
      io_sample_out_bits_last_REG <= queue.io.deq.bits.last @[TreePE.scala 78:43]
      io.sample_out.bits.last <= io_sample_out_bits_last_REG @[TreePE.scala 78:33]
    else :
      io.sample_out.bits.last is invalid @[TreePE.scala 81:26]
      io.sample_out.bits.dest is invalid @[TreePE.scala 81:26]
      io.sample_out.bits.weights[0] is invalid @[TreePE.scala 81:26]
      io.sample_out.bits.weights[1] is invalid @[TreePE.scala 81:26]
      io.sample_out.bits.weights[2] is invalid @[TreePE.scala 81:26]
      io.sample_out.bits.weights[3] is invalid @[TreePE.scala 81:26]
      io.sample_out.bits.weights[4] is invalid @[TreePE.scala 81:26]
      io.sample_out.bits.scores[0] is invalid @[TreePE.scala 81:26]
      io.sample_out.bits.scores[1] is invalid @[TreePE.scala 81:26]
      io.sample_out.bits.scores[2] is invalid @[TreePE.scala 81:26]
      io.sample_out.bits.scores[3] is invalid @[TreePE.scala 81:26]
      io.sample_out.bits.tree_to_exec is invalid @[TreePE.scala 81:26]
      io.sample_out.bits.search_for_root is invalid @[TreePE.scala 81:26]
      io.sample_out.bits.shift is invalid @[TreePE.scala 81:26]
      io.sample_out.bits.offset is invalid @[TreePE.scala 81:26]
      io.sample_out.bits.features[0] is invalid @[TreePE.scala 81:26]
      io.sample_out.bits.features[1] is invalid @[TreePE.scala 81:26]
      io.sample_out.bits.features[2] is invalid @[TreePE.scala 81:26]
      io.sample_out.bits.features[3] is invalid @[TreePE.scala 81:26]
      io.sample_out.valid <= UInt<1>("h0") @[TreePE.scala 82:27]
    reg queue_io_deq_ready_REG : UInt<1>, clock with :
      reset => (UInt<1>("h0"), queue_io_deq_ready_REG) @[TreePE.scala 85:27]
    queue_io_deq_ready_REG <= io.sample_out.ready @[TreePE.scala 85:27]
    queue.io.deq.ready <= queue_io_deq_ready_REG @[TreePE.scala 85:17]

  module TreePEwithBRAM_3 :
    input clock : Clock
    input reset : Reset
    output pe_io : { flip sample_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>}}, flip mem : { flip enable_1 : UInt<1>, flip write_1 : UInt<1>, flip addr_1 : UInt<13>, flip dataIn_1 : UInt<64>, dataOut_1 : UInt<64>, flip enable_2 : UInt<1>, flip write_2 : UInt<1>, flip addr_2 : UInt<13>, flip dataIn_2 : UInt<64>, dataOut_2 : UInt<64>}, sample_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>}}}

    inst pe of TreePE_3 @[TreePE.scala 116:18]
    pe.clock <= clock
    pe.reset <= reset
    pe_io.sample_out.bits <= pe.io.sample_out.bits @[TreePE.scala 118:9]
    pe_io.sample_out.valid <= pe.io.sample_out.valid @[TreePE.scala 118:9]
    pe.io.sample_out.ready <= pe_io.sample_out.ready @[TreePE.scala 118:9]
    pe.io.mem <= pe_io.mem @[TreePE.scala 118:9]
    pe.io.sample_in <= pe_io.sample_in @[TreePE.scala 118:9]

  module Queue_4 :
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

  module TreePE_4 :
    input clock : Clock
    input reset : Reset
    output io : { flip sample_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>}}, flip mem : { flip enable_1 : UInt<1>, flip write_1 : UInt<1>, flip addr_1 : UInt<13>, flip dataIn_1 : UInt<64>, dataOut_1 : UInt<64>, flip enable_2 : UInt<1>, flip write_2 : UInt<1>, flip addr_2 : UInt<13>, flip dataIn_2 : UInt<64>, dataOut_2 : UInt<64>}, sample_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>}}}

    inst queue of Queue_4 @[Decoupled.scala 377:21]
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
    io.mem.enable_1 <= UInt<1>("h1") @[TreePE.scala 17:21]
    io.mem.addr_1 <= queue.io.deq.bits.offset @[TreePE.scala 18:19]
    io.mem.write_1 <= UInt<1>("h0") @[TreePE.scala 19:20]
    io.mem.dataIn_1 <= UInt<1>("h0") @[TreePE.scala 20:21]
    io.mem.enable_2 is invalid @[TreePE.scala 22:21]
    io.mem.addr_2 is invalid @[TreePE.scala 23:19]
    io.mem.write_2 is invalid @[TreePE.scala 24:20]
    io.mem.dataIn_2 is invalid @[TreePE.scala 25:21]
    reg REG : UInt<1>, clock with :
      reset => (UInt<1>("h0"), REG) @[TreePE.scala 29:17]
    REG <= queue.io.deq.valid @[TreePE.scala 29:17]
    when REG : @[TreePE.scala 29:31]
      node attr_id = bits(io.mem.dataOut_1, 33, 32) @[TreePE.scala 31:37]
      node threshold = bits(io.mem.dataOut_1, 15, 0) @[TreePE.scala 32:39]
      node nodeRA = bits(io.mem.dataOut_1, 31, 16) @[TreePE.scala 33:36]
      node leftChildInfo = bits(io.mem.dataOut_1, 43, 34) @[TreePE.scala 34:43]
      node rightChildInfo = bits(io.mem.dataOut_1, 53, 44) @[TreePE.scala 35:44]
      node leftChildType = bits(io.mem.dataOut_1, 54, 54) @[TreePE.scala 36:43]
      node rightChildType = bits(io.mem.dataOut_1, 55, 55) @[TreePE.scala 37:44]
      node is_valid = bits(io.mem.dataOut_1, 56, 56) @[TreePE.scala 38:38]
      node depth_indicator = bits(io.mem.dataOut_1, 59, 57) @[TreePE.scala 39:45]
      reg REG_1 : Fixed<16><<8>>[4], clock with :
        reset => (UInt<1>("h0"), REG_1) @[TreePE.scala 41:45]
      REG_1 <= queue.io.deq.bits.features @[TreePE.scala 41:45]
      io.sample_out.bits.features <= REG_1 @[TreePE.scala 41:35]
      reg REG_2 : Fixed<16><<8>>[5], clock with :
        reset => (UInt<1>("h0"), REG_2) @[TreePE.scala 42:44]
      REG_2 <= queue.io.deq.bits.weights @[TreePE.scala 42:44]
      io.sample_out.bits.weights <= REG_2 @[TreePE.scala 42:34]
      reg io_sample_out_bits_tree_to_exec_REG : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_tree_to_exec_REG) @[TreePE.scala 43:49]
      io_sample_out_bits_tree_to_exec_REG <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 43:49]
      io.sample_out.bits.tree_to_exec <= io_sample_out_bits_tree_to_exec_REG @[TreePE.scala 43:39]
      reg REG_3 : Fixed<16><<8>>[4], clock with :
        reset => (UInt<1>("h0"), REG_3) @[TreePE.scala 44:43]
      REG_3 <= queue.io.deq.bits.scores @[TreePE.scala 44:43]
      io.sample_out.bits.scores <= REG_3 @[TreePE.scala 44:33]
      io.sample_out.valid <= UInt<1>("h1") @[TreePE.scala 45:27]
      wire offset : UInt<10> @[TreePE.scala 64:26]
      wire shift : UInt<1> @[TreePE.scala 65:25]
      reg features_bits : Fixed<16><<8>>[4], clock with :
        reset => (UInt<1>("h0"), features_bits) @[TreePE.scala 66:36]
      features_bits <= queue.io.deq.bits.features @[TreePE.scala 66:36]
      reg scores_bits : Fixed<16><<8>>[4], clock with :
        reset => (UInt<1>("h0"), scores_bits) @[TreePE.scala 67:34]
      scores_bits <= queue.io.deq.bits.scores @[TreePE.scala 67:34]
      reg weights_bits : Fixed<16><<8>>[5], clock with :
        reset => (UInt<1>("h0"), weights_bits) @[TreePE.scala 68:35]
      weights_bits <= queue.io.deq.bits.weights @[TreePE.scala 68:35]
      node _shift_T = asFixedPoint(threshold, 8) @[TreePE.scala 69:69]
      node _shift_T_1 = lt(features_bits[attr_id], _shift_T) @[TreePE.scala 69:45]
      node _shift_T_2 = mux(_shift_T_1, leftChildType, rightChildType) @[TreePE.scala 69:21]
      shift <= _shift_T_2 @[TreePE.scala 69:15]
      node _offset_T = asFixedPoint(threshold, 8) @[TreePE.scala 70:70]
      node _offset_T_1 = lt(features_bits[attr_id], _offset_T) @[TreePE.scala 70:46]
      node _offset_T_2 = mux(_offset_T_1, leftChildInfo, rightChildInfo) @[TreePE.scala 70:22]
      offset <= _offset_T_2 @[TreePE.scala 70:16]
      node _io_sample_out_bits_offset_T = eq(shift, UInt<1>("h0")) @[TreePE.scala 71:48]
      node _io_sample_out_bits_offset_T_1 = or(_io_sample_out_bits_offset_T, queue.io.deq.bits.search_for_root) @[TreePE.scala 71:60]
      reg io_sample_out_bits_offset_REG : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_offset_REG) @[TreePE.scala 71:97]
      io_sample_out_bits_offset_REG <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 71:97]
      node _io_sample_out_bits_offset_T_2 = mux(_io_sample_out_bits_offset_T_1, io_sample_out_bits_offset_REG, offset) @[TreePE.scala 71:41]
      io.sample_out.bits.offset <= _io_sample_out_bits_offset_T_2 @[TreePE.scala 71:35]
      io.sample_out.bits.shift <= UInt<1>("h0") @[TreePE.scala 72:34]
      node _io_sample_out_bits_search_for_root_T = eq(shift, UInt<1>("h0")) @[TreePE.scala 73:47]
      node _io_sample_out_bits_search_for_root_T_1 = or(_io_sample_out_bits_search_for_root_T, queue.io.deq.bits.search_for_root) @[TreePE.scala 73:54]
      io.sample_out.bits.search_for_root <= _io_sample_out_bits_search_for_root_T_1 @[TreePE.scala 73:44]
      node _io_sample_out_bits_scores_0_T = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 75:97]
      node _io_sample_out_bits_scores_0_T_1 = eq(queue.io.deq.bits.search_for_root, UInt<1>("h0")) @[TreePE.scala 75:107]
      node _io_sample_out_bits_scores_0_T_2 = eq(shift, UInt<1>("h0")) @[TreePE.scala 75:143]
      node _io_sample_out_bits_scores_0_T_3 = and(_io_sample_out_bits_scores_0_T_1, _io_sample_out_bits_scores_0_T_2) @[TreePE.scala 75:135]
      node _io_sample_out_bits_scores_0_T_4 = and(_io_sample_out_bits_scores_0_T_3, is_valid) @[TreePE.scala 75:155]
      node _io_sample_out_bits_scores_0_T_5 = eq(UInt<1>("h0"), offset) @[TreePE.scala 75:173]
      node _io_sample_out_bits_scores_0_T_6 = and(_io_sample_out_bits_scores_0_T_4, _io_sample_out_bits_scores_0_T_5) @[TreePE.scala 75:166]
      node _io_sample_out_bits_scores_0_T_7 = mux(_io_sample_out_bits_scores_0_T_6, UInt<16>("hffff"), UInt<16>("h0")) @[TreePE.scala 75:105]
      node _io_sample_out_bits_scores_0_T_8 = and(_io_sample_out_bits_scores_0_T, _io_sample_out_bits_scores_0_T_7) @[TreePE.scala 75:100]
      node _io_sample_out_bits_scores_0_T_9 = asFixedPoint(_io_sample_out_bits_scores_0_T_8, 8) @[TreePE.scala 75:225]
      node _io_sample_out_bits_scores_0_T_10 = add(scores_bits[0], _io_sample_out_bits_scores_0_T_9) @[TreePE.scala 75:58]
      node _io_sample_out_bits_scores_0_T_11 = tail(_io_sample_out_bits_scores_0_T_10, 1) @[TreePE.scala 75:58]
      node _io_sample_out_bits_scores_0_T_12 = asFixedPoint(_io_sample_out_bits_scores_0_T_11, 8) @[TreePE.scala 75:58]
      io.sample_out.bits.scores[0] <= _io_sample_out_bits_scores_0_T_12 @[TreePE.scala 75:40]
      node _io_sample_out_bits_scores_1_T = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 75:97]
      node _io_sample_out_bits_scores_1_T_1 = eq(queue.io.deq.bits.search_for_root, UInt<1>("h0")) @[TreePE.scala 75:107]
      node _io_sample_out_bits_scores_1_T_2 = eq(shift, UInt<1>("h0")) @[TreePE.scala 75:143]
      node _io_sample_out_bits_scores_1_T_3 = and(_io_sample_out_bits_scores_1_T_1, _io_sample_out_bits_scores_1_T_2) @[TreePE.scala 75:135]
      node _io_sample_out_bits_scores_1_T_4 = and(_io_sample_out_bits_scores_1_T_3, is_valid) @[TreePE.scala 75:155]
      node _io_sample_out_bits_scores_1_T_5 = eq(UInt<1>("h1"), offset) @[TreePE.scala 75:173]
      node _io_sample_out_bits_scores_1_T_6 = and(_io_sample_out_bits_scores_1_T_4, _io_sample_out_bits_scores_1_T_5) @[TreePE.scala 75:166]
      node _io_sample_out_bits_scores_1_T_7 = mux(_io_sample_out_bits_scores_1_T_6, UInt<16>("hffff"), UInt<16>("h0")) @[TreePE.scala 75:105]
      node _io_sample_out_bits_scores_1_T_8 = and(_io_sample_out_bits_scores_1_T, _io_sample_out_bits_scores_1_T_7) @[TreePE.scala 75:100]
      node _io_sample_out_bits_scores_1_T_9 = asFixedPoint(_io_sample_out_bits_scores_1_T_8, 8) @[TreePE.scala 75:225]
      node _io_sample_out_bits_scores_1_T_10 = add(scores_bits[1], _io_sample_out_bits_scores_1_T_9) @[TreePE.scala 75:58]
      node _io_sample_out_bits_scores_1_T_11 = tail(_io_sample_out_bits_scores_1_T_10, 1) @[TreePE.scala 75:58]
      node _io_sample_out_bits_scores_1_T_12 = asFixedPoint(_io_sample_out_bits_scores_1_T_11, 8) @[TreePE.scala 75:58]
      io.sample_out.bits.scores[1] <= _io_sample_out_bits_scores_1_T_12 @[TreePE.scala 75:40]
      node _io_sample_out_bits_scores_2_T = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 75:97]
      node _io_sample_out_bits_scores_2_T_1 = eq(queue.io.deq.bits.search_for_root, UInt<1>("h0")) @[TreePE.scala 75:107]
      node _io_sample_out_bits_scores_2_T_2 = eq(shift, UInt<1>("h0")) @[TreePE.scala 75:143]
      node _io_sample_out_bits_scores_2_T_3 = and(_io_sample_out_bits_scores_2_T_1, _io_sample_out_bits_scores_2_T_2) @[TreePE.scala 75:135]
      node _io_sample_out_bits_scores_2_T_4 = and(_io_sample_out_bits_scores_2_T_3, is_valid) @[TreePE.scala 75:155]
      node _io_sample_out_bits_scores_2_T_5 = eq(UInt<2>("h2"), offset) @[TreePE.scala 75:173]
      node _io_sample_out_bits_scores_2_T_6 = and(_io_sample_out_bits_scores_2_T_4, _io_sample_out_bits_scores_2_T_5) @[TreePE.scala 75:166]
      node _io_sample_out_bits_scores_2_T_7 = mux(_io_sample_out_bits_scores_2_T_6, UInt<16>("hffff"), UInt<16>("h0")) @[TreePE.scala 75:105]
      node _io_sample_out_bits_scores_2_T_8 = and(_io_sample_out_bits_scores_2_T, _io_sample_out_bits_scores_2_T_7) @[TreePE.scala 75:100]
      node _io_sample_out_bits_scores_2_T_9 = asFixedPoint(_io_sample_out_bits_scores_2_T_8, 8) @[TreePE.scala 75:225]
      node _io_sample_out_bits_scores_2_T_10 = add(scores_bits[2], _io_sample_out_bits_scores_2_T_9) @[TreePE.scala 75:58]
      node _io_sample_out_bits_scores_2_T_11 = tail(_io_sample_out_bits_scores_2_T_10, 1) @[TreePE.scala 75:58]
      node _io_sample_out_bits_scores_2_T_12 = asFixedPoint(_io_sample_out_bits_scores_2_T_11, 8) @[TreePE.scala 75:58]
      io.sample_out.bits.scores[2] <= _io_sample_out_bits_scores_2_T_12 @[TreePE.scala 75:40]
      node _io_sample_out_bits_scores_3_T = asUInt(weights_bits[depth_indicator]) @[TreePE.scala 75:97]
      node _io_sample_out_bits_scores_3_T_1 = eq(queue.io.deq.bits.search_for_root, UInt<1>("h0")) @[TreePE.scala 75:107]
      node _io_sample_out_bits_scores_3_T_2 = eq(shift, UInt<1>("h0")) @[TreePE.scala 75:143]
      node _io_sample_out_bits_scores_3_T_3 = and(_io_sample_out_bits_scores_3_T_1, _io_sample_out_bits_scores_3_T_2) @[TreePE.scala 75:135]
      node _io_sample_out_bits_scores_3_T_4 = and(_io_sample_out_bits_scores_3_T_3, is_valid) @[TreePE.scala 75:155]
      node _io_sample_out_bits_scores_3_T_5 = eq(UInt<2>("h3"), offset) @[TreePE.scala 75:173]
      node _io_sample_out_bits_scores_3_T_6 = and(_io_sample_out_bits_scores_3_T_4, _io_sample_out_bits_scores_3_T_5) @[TreePE.scala 75:166]
      node _io_sample_out_bits_scores_3_T_7 = mux(_io_sample_out_bits_scores_3_T_6, UInt<16>("hffff"), UInt<16>("h0")) @[TreePE.scala 75:105]
      node _io_sample_out_bits_scores_3_T_8 = and(_io_sample_out_bits_scores_3_T, _io_sample_out_bits_scores_3_T_7) @[TreePE.scala 75:100]
      node _io_sample_out_bits_scores_3_T_9 = asFixedPoint(_io_sample_out_bits_scores_3_T_8, 8) @[TreePE.scala 75:225]
      node _io_sample_out_bits_scores_3_T_10 = add(scores_bits[3], _io_sample_out_bits_scores_3_T_9) @[TreePE.scala 75:58]
      node _io_sample_out_bits_scores_3_T_11 = tail(_io_sample_out_bits_scores_3_T_10, 1) @[TreePE.scala 75:58]
      node _io_sample_out_bits_scores_3_T_12 = asFixedPoint(_io_sample_out_bits_scores_3_T_11, 8) @[TreePE.scala 75:58]
      io.sample_out.bits.scores[3] <= _io_sample_out_bits_scores_3_T_12 @[TreePE.scala 75:40]
      reg io_sample_out_bits_dest_REG : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_dest_REG) @[TreePE.scala 77:43]
      io_sample_out_bits_dest_REG <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 77:43]
      node _io_sample_out_bits_dest_T = eq(io_sample_out_bits_dest_REG, UInt<4>("h9")) @[TreePE.scala 77:69]
      io.sample_out.bits.dest <= _io_sample_out_bits_dest_T @[TreePE.scala 77:33]
      reg io_sample_out_bits_last_REG : UInt<1>, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_last_REG) @[TreePE.scala 78:43]
      io_sample_out_bits_last_REG <= queue.io.deq.bits.last @[TreePE.scala 78:43]
      io.sample_out.bits.last <= io_sample_out_bits_last_REG @[TreePE.scala 78:33]
    else :
      io.sample_out.bits.last is invalid @[TreePE.scala 81:26]
      io.sample_out.bits.dest is invalid @[TreePE.scala 81:26]
      io.sample_out.bits.weights[0] is invalid @[TreePE.scala 81:26]
      io.sample_out.bits.weights[1] is invalid @[TreePE.scala 81:26]
      io.sample_out.bits.weights[2] is invalid @[TreePE.scala 81:26]
      io.sample_out.bits.weights[3] is invalid @[TreePE.scala 81:26]
      io.sample_out.bits.weights[4] is invalid @[TreePE.scala 81:26]
      io.sample_out.bits.scores[0] is invalid @[TreePE.scala 81:26]
      io.sample_out.bits.scores[1] is invalid @[TreePE.scala 81:26]
      io.sample_out.bits.scores[2] is invalid @[TreePE.scala 81:26]
      io.sample_out.bits.scores[3] is invalid @[TreePE.scala 81:26]
      io.sample_out.bits.tree_to_exec is invalid @[TreePE.scala 81:26]
      io.sample_out.bits.search_for_root is invalid @[TreePE.scala 81:26]
      io.sample_out.bits.shift is invalid @[TreePE.scala 81:26]
      io.sample_out.bits.offset is invalid @[TreePE.scala 81:26]
      io.sample_out.bits.features[0] is invalid @[TreePE.scala 81:26]
      io.sample_out.bits.features[1] is invalid @[TreePE.scala 81:26]
      io.sample_out.bits.features[2] is invalid @[TreePE.scala 81:26]
      io.sample_out.bits.features[3] is invalid @[TreePE.scala 81:26]
      io.sample_out.valid <= UInt<1>("h0") @[TreePE.scala 82:27]
    reg queue_io_deq_ready_REG : UInt<1>, clock with :
      reset => (UInt<1>("h0"), queue_io_deq_ready_REG) @[TreePE.scala 85:27]
    queue_io_deq_ready_REG <= io.sample_out.ready @[TreePE.scala 85:27]
    queue.io.deq.ready <= queue_io_deq_ready_REG @[TreePE.scala 85:17]

  module TreePEwithBRAM_4 :
    input clock : Clock
    input reset : Reset
    output pe_io : { flip sample_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>}}, flip mem : { flip enable_1 : UInt<1>, flip write_1 : UInt<1>, flip addr_1 : UInt<13>, flip dataIn_1 : UInt<64>, dataOut_1 : UInt<64>, flip enable_2 : UInt<1>, flip write_2 : UInt<1>, flip addr_2 : UInt<13>, flip dataIn_2 : UInt<64>, dataOut_2 : UInt<64>}, sample_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>}}}

    inst pe of TreePE_4 @[TreePE.scala 116:18]
    pe.clock <= clock
    pe.reset <= reset
    pe_io.sample_out.bits <= pe.io.sample_out.bits @[TreePE.scala 118:9]
    pe_io.sample_out.valid <= pe.io.sample_out.valid @[TreePE.scala 118:9]
    pe.io.sample_out.ready <= pe_io.sample_out.ready @[TreePE.scala 118:9]
    pe.io.mem <= pe_io.mem @[TreePE.scala 118:9]
    pe.io.sample_in <= pe_io.sample_in @[TreePE.scala 118:9]

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

  module BRAMBlackBox :
    input clock : Clock
    input reset : Reset
    output io : { flip clk : Clock, flip a_en : UInt<1>, flip a_wr : UInt<1>, flip a_addr : UInt<13>, flip a_din : UInt<32>, a_dout : UInt<32>, flip b_en : UInt<1>, flip b_wr : UInt<1>, flip b_addr : UInt<11>, flip b_din : UInt<64>, b_dout : UInt<64>}

    inst bram_1 of BRAMBlackBoxSingle @[ME.scala 87:24]
    bram_1.b_dout is invalid
    bram_1.b_din is invalid
    bram_1.b_addr is invalid
    bram_1.b_wr is invalid
    bram_1.a_dout is invalid
    bram_1.a_din is invalid
    bram_1.a_addr is invalid
    bram_1.a_wr is invalid
    bram_1.clk is invalid
    node _bram_1_io_a_wr_T = mux(io.a_en, io.a_wr, io.b_wr) @[ME.scala 89:26]
    bram_1.a_wr <= _bram_1_io_a_wr_T @[ME.scala 89:20]
    node _bram_1_io_a_addr_T = shr(io.a_addr, 2) @[ME.scala 90:49]
    node _bram_1_io_a_addr_T_1 = shl(io.b_addr, 1) @[ME.scala 90:67]
    node _bram_1_io_a_addr_T_2 = mux(io.a_en, _bram_1_io_a_addr_T, _bram_1_io_a_addr_T_1) @[ME.scala 90:28]
    bram_1.a_addr <= _bram_1_io_a_addr_T_2 @[ME.scala 90:22]
    node _bram_1_io_a_din_T = bits(io.b_din, 31, 0) @[ME.scala 91:55]
    node _bram_1_io_a_din_T_1 = mux(io.a_en, io.a_din, _bram_1_io_a_din_T) @[ME.scala 91:27]
    bram_1.a_din <= _bram_1_io_a_din_T_1 @[ME.scala 91:21]
    node _io_b_dout_T = cat(bram_1.b_dout, bram_1.a_dout) @[Cat.scala 33:92]
    io.b_dout <= _io_b_dout_T @[ME.scala 92:15]
    node _bram_1_io_b_wr_T = mux(io.a_en, UInt<1>("h0"), io.b_wr) @[ME.scala 93:26]
    bram_1.b_wr <= _bram_1_io_b_wr_T @[ME.scala 93:20]
    node _bram_1_io_b_addr_T = shl(io.b_addr, 1) @[ME.scala 94:36]
    node _bram_1_io_b_addr_T_1 = add(_bram_1_io_b_addr_T, UInt<1>("h1")) @[ME.scala 94:42]
    node _bram_1_io_b_addr_T_2 = tail(_bram_1_io_b_addr_T_1, 1) @[ME.scala 94:42]
    bram_1.b_addr <= _bram_1_io_b_addr_T_2 @[ME.scala 94:22]
    node _bram_1_io_b_din_T = bits(io.b_din, 63, 32) @[ME.scala 95:32]
    bram_1.b_din <= _bram_1_io_b_din_T @[ME.scala 95:21]
    io.a_dout <= bram_1.a_dout @[ME.scala 96:15]
    bram_1.clk <= io.clk @[ME.scala 97:19]

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

  module BRAMBlackBox_1 :
    input clock : Clock
    input reset : Reset
    output io : { flip clk : Clock, flip a_en : UInt<1>, flip a_wr : UInt<1>, flip a_addr : UInt<13>, flip a_din : UInt<32>, a_dout : UInt<32>, flip b_en : UInt<1>, flip b_wr : UInt<1>, flip b_addr : UInt<11>, flip b_din : UInt<64>, b_dout : UInt<64>}

    inst bram_1 of BRAMBlackBoxSingle_1 @[ME.scala 87:24]
    bram_1.b_dout is invalid
    bram_1.b_din is invalid
    bram_1.b_addr is invalid
    bram_1.b_wr is invalid
    bram_1.a_dout is invalid
    bram_1.a_din is invalid
    bram_1.a_addr is invalid
    bram_1.a_wr is invalid
    bram_1.clk is invalid
    node _bram_1_io_a_wr_T = mux(io.a_en, io.a_wr, io.b_wr) @[ME.scala 89:26]
    bram_1.a_wr <= _bram_1_io_a_wr_T @[ME.scala 89:20]
    node _bram_1_io_a_addr_T = shr(io.a_addr, 2) @[ME.scala 90:49]
    node _bram_1_io_a_addr_T_1 = shl(io.b_addr, 1) @[ME.scala 90:67]
    node _bram_1_io_a_addr_T_2 = mux(io.a_en, _bram_1_io_a_addr_T, _bram_1_io_a_addr_T_1) @[ME.scala 90:28]
    bram_1.a_addr <= _bram_1_io_a_addr_T_2 @[ME.scala 90:22]
    node _bram_1_io_a_din_T = bits(io.b_din, 31, 0) @[ME.scala 91:55]
    node _bram_1_io_a_din_T_1 = mux(io.a_en, io.a_din, _bram_1_io_a_din_T) @[ME.scala 91:27]
    bram_1.a_din <= _bram_1_io_a_din_T_1 @[ME.scala 91:21]
    node _io_b_dout_T = cat(bram_1.b_dout, bram_1.a_dout) @[Cat.scala 33:92]
    io.b_dout <= _io_b_dout_T @[ME.scala 92:15]
    node _bram_1_io_b_wr_T = mux(io.a_en, UInt<1>("h0"), io.b_wr) @[ME.scala 93:26]
    bram_1.b_wr <= _bram_1_io_b_wr_T @[ME.scala 93:20]
    node _bram_1_io_b_addr_T = shl(io.b_addr, 1) @[ME.scala 94:36]
    node _bram_1_io_b_addr_T_1 = add(_bram_1_io_b_addr_T, UInt<1>("h1")) @[ME.scala 94:42]
    node _bram_1_io_b_addr_T_2 = tail(_bram_1_io_b_addr_T_1, 1) @[ME.scala 94:42]
    bram_1.b_addr <= _bram_1_io_b_addr_T_2 @[ME.scala 94:22]
    node _bram_1_io_b_din_T = bits(io.b_din, 63, 32) @[ME.scala 95:32]
    bram_1.b_din <= _bram_1_io_b_din_T @[ME.scala 95:21]
    io.a_dout <= bram_1.a_dout @[ME.scala 96:15]
    bram_1.clk <= io.clk @[ME.scala 97:19]

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

  module BRAMBlackBox_2 :
    input clock : Clock
    input reset : Reset
    output io : { flip clk : Clock, flip a_en : UInt<1>, flip a_wr : UInt<1>, flip a_addr : UInt<13>, flip a_din : UInt<32>, a_dout : UInt<32>, flip b_en : UInt<1>, flip b_wr : UInt<1>, flip b_addr : UInt<11>, flip b_din : UInt<64>, b_dout : UInt<64>}

    inst bram_1 of BRAMBlackBoxSingle_2 @[ME.scala 87:24]
    bram_1.b_dout is invalid
    bram_1.b_din is invalid
    bram_1.b_addr is invalid
    bram_1.b_wr is invalid
    bram_1.a_dout is invalid
    bram_1.a_din is invalid
    bram_1.a_addr is invalid
    bram_1.a_wr is invalid
    bram_1.clk is invalid
    node _bram_1_io_a_wr_T = mux(io.a_en, io.a_wr, io.b_wr) @[ME.scala 89:26]
    bram_1.a_wr <= _bram_1_io_a_wr_T @[ME.scala 89:20]
    node _bram_1_io_a_addr_T = shr(io.a_addr, 2) @[ME.scala 90:49]
    node _bram_1_io_a_addr_T_1 = shl(io.b_addr, 1) @[ME.scala 90:67]
    node _bram_1_io_a_addr_T_2 = mux(io.a_en, _bram_1_io_a_addr_T, _bram_1_io_a_addr_T_1) @[ME.scala 90:28]
    bram_1.a_addr <= _bram_1_io_a_addr_T_2 @[ME.scala 90:22]
    node _bram_1_io_a_din_T = bits(io.b_din, 31, 0) @[ME.scala 91:55]
    node _bram_1_io_a_din_T_1 = mux(io.a_en, io.a_din, _bram_1_io_a_din_T) @[ME.scala 91:27]
    bram_1.a_din <= _bram_1_io_a_din_T_1 @[ME.scala 91:21]
    node _io_b_dout_T = cat(bram_1.b_dout, bram_1.a_dout) @[Cat.scala 33:92]
    io.b_dout <= _io_b_dout_T @[ME.scala 92:15]
    node _bram_1_io_b_wr_T = mux(io.a_en, UInt<1>("h0"), io.b_wr) @[ME.scala 93:26]
    bram_1.b_wr <= _bram_1_io_b_wr_T @[ME.scala 93:20]
    node _bram_1_io_b_addr_T = shl(io.b_addr, 1) @[ME.scala 94:36]
    node _bram_1_io_b_addr_T_1 = add(_bram_1_io_b_addr_T, UInt<1>("h1")) @[ME.scala 94:42]
    node _bram_1_io_b_addr_T_2 = tail(_bram_1_io_b_addr_T_1, 1) @[ME.scala 94:42]
    bram_1.b_addr <= _bram_1_io_b_addr_T_2 @[ME.scala 94:22]
    node _bram_1_io_b_din_T = bits(io.b_din, 63, 32) @[ME.scala 95:32]
    bram_1.b_din <= _bram_1_io_b_din_T @[ME.scala 95:21]
    io.a_dout <= bram_1.a_dout @[ME.scala 96:15]
    bram_1.clk <= io.clk @[ME.scala 97:19]

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

  module BRAMBlackBox_3 :
    input clock : Clock
    input reset : Reset
    output io : { flip clk : Clock, flip a_en : UInt<1>, flip a_wr : UInt<1>, flip a_addr : UInt<13>, flip a_din : UInt<32>, a_dout : UInt<32>, flip b_en : UInt<1>, flip b_wr : UInt<1>, flip b_addr : UInt<11>, flip b_din : UInt<64>, b_dout : UInt<64>}

    inst bram_1 of BRAMBlackBoxSingle_3 @[ME.scala 87:24]
    bram_1.b_dout is invalid
    bram_1.b_din is invalid
    bram_1.b_addr is invalid
    bram_1.b_wr is invalid
    bram_1.a_dout is invalid
    bram_1.a_din is invalid
    bram_1.a_addr is invalid
    bram_1.a_wr is invalid
    bram_1.clk is invalid
    node _bram_1_io_a_wr_T = mux(io.a_en, io.a_wr, io.b_wr) @[ME.scala 89:26]
    bram_1.a_wr <= _bram_1_io_a_wr_T @[ME.scala 89:20]
    node _bram_1_io_a_addr_T = shr(io.a_addr, 2) @[ME.scala 90:49]
    node _bram_1_io_a_addr_T_1 = shl(io.b_addr, 1) @[ME.scala 90:67]
    node _bram_1_io_a_addr_T_2 = mux(io.a_en, _bram_1_io_a_addr_T, _bram_1_io_a_addr_T_1) @[ME.scala 90:28]
    bram_1.a_addr <= _bram_1_io_a_addr_T_2 @[ME.scala 90:22]
    node _bram_1_io_a_din_T = bits(io.b_din, 31, 0) @[ME.scala 91:55]
    node _bram_1_io_a_din_T_1 = mux(io.a_en, io.a_din, _bram_1_io_a_din_T) @[ME.scala 91:27]
    bram_1.a_din <= _bram_1_io_a_din_T_1 @[ME.scala 91:21]
    node _io_b_dout_T = cat(bram_1.b_dout, bram_1.a_dout) @[Cat.scala 33:92]
    io.b_dout <= _io_b_dout_T @[ME.scala 92:15]
    node _bram_1_io_b_wr_T = mux(io.a_en, UInt<1>("h0"), io.b_wr) @[ME.scala 93:26]
    bram_1.b_wr <= _bram_1_io_b_wr_T @[ME.scala 93:20]
    node _bram_1_io_b_addr_T = shl(io.b_addr, 1) @[ME.scala 94:36]
    node _bram_1_io_b_addr_T_1 = add(_bram_1_io_b_addr_T, UInt<1>("h1")) @[ME.scala 94:42]
    node _bram_1_io_b_addr_T_2 = tail(_bram_1_io_b_addr_T_1, 1) @[ME.scala 94:42]
    bram_1.b_addr <= _bram_1_io_b_addr_T_2 @[ME.scala 94:22]
    node _bram_1_io_b_din_T = bits(io.b_din, 63, 32) @[ME.scala 95:32]
    bram_1.b_din <= _bram_1_io_b_din_T @[ME.scala 95:21]
    io.a_dout <= bram_1.a_dout @[ME.scala 96:15]
    bram_1.clk <= io.clk @[ME.scala 97:19]

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

  module BRAMBlackBox_4 :
    input clock : Clock
    input reset : Reset
    output io : { flip clk : Clock, flip a_en : UInt<1>, flip a_wr : UInt<1>, flip a_addr : UInt<13>, flip a_din : UInt<32>, a_dout : UInt<32>, flip b_en : UInt<1>, flip b_wr : UInt<1>, flip b_addr : UInt<11>, flip b_din : UInt<64>, b_dout : UInt<64>}

    inst bram_1 of BRAMBlackBoxSingle_4 @[ME.scala 87:24]
    bram_1.b_dout is invalid
    bram_1.b_din is invalid
    bram_1.b_addr is invalid
    bram_1.b_wr is invalid
    bram_1.a_dout is invalid
    bram_1.a_din is invalid
    bram_1.a_addr is invalid
    bram_1.a_wr is invalid
    bram_1.clk is invalid
    node _bram_1_io_a_wr_T = mux(io.a_en, io.a_wr, io.b_wr) @[ME.scala 89:26]
    bram_1.a_wr <= _bram_1_io_a_wr_T @[ME.scala 89:20]
    node _bram_1_io_a_addr_T = shr(io.a_addr, 2) @[ME.scala 90:49]
    node _bram_1_io_a_addr_T_1 = shl(io.b_addr, 1) @[ME.scala 90:67]
    node _bram_1_io_a_addr_T_2 = mux(io.a_en, _bram_1_io_a_addr_T, _bram_1_io_a_addr_T_1) @[ME.scala 90:28]
    bram_1.a_addr <= _bram_1_io_a_addr_T_2 @[ME.scala 90:22]
    node _bram_1_io_a_din_T = bits(io.b_din, 31, 0) @[ME.scala 91:55]
    node _bram_1_io_a_din_T_1 = mux(io.a_en, io.a_din, _bram_1_io_a_din_T) @[ME.scala 91:27]
    bram_1.a_din <= _bram_1_io_a_din_T_1 @[ME.scala 91:21]
    node _io_b_dout_T = cat(bram_1.b_dout, bram_1.a_dout) @[Cat.scala 33:92]
    io.b_dout <= _io_b_dout_T @[ME.scala 92:15]
    node _bram_1_io_b_wr_T = mux(io.a_en, UInt<1>("h0"), io.b_wr) @[ME.scala 93:26]
    bram_1.b_wr <= _bram_1_io_b_wr_T @[ME.scala 93:20]
    node _bram_1_io_b_addr_T = shl(io.b_addr, 1) @[ME.scala 94:36]
    node _bram_1_io_b_addr_T_1 = add(_bram_1_io_b_addr_T, UInt<1>("h1")) @[ME.scala 94:42]
    node _bram_1_io_b_addr_T_2 = tail(_bram_1_io_b_addr_T_1, 1) @[ME.scala 94:42]
    bram_1.b_addr <= _bram_1_io_b_addr_T_2 @[ME.scala 94:22]
    node _bram_1_io_b_din_T = bits(io.b_din, 63, 32) @[ME.scala 95:32]
    bram_1.b_din <= _bram_1_io_b_din_T @[ME.scala 95:21]
    io.a_dout <= bram_1.a_dout @[ME.scala 96:15]
    bram_1.clk <= io.clk @[ME.scala 97:19]

  module Queue_5 :
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

  module Queue_6 :
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

  module RRArbiter :
    input clock : Clock
    input reset : Reset
    output io : { flip in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>}}[2], out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>}}, chosen : UInt<1>}

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
    output io : { flip sample_entering : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>}}, flip sample_looping : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>}}, sample_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[5], dest : UInt<1>, last : UInt<1>}}}

    inst queue_entering of Queue_5 @[Decoupled.scala 377:21]
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
    inst queue_looping of Queue_6 @[Decoupled.scala 377:21]
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
    inst arbiter of RRArbiter @[Interconnect.scala 63:25]
    arbiter.clock <= clock
    arbiter.reset <= reset
    arbiter.io.in[0] <= queue_entering.io.deq @[Interconnect.scala 64:22]
    arbiter.io.in[1] <= queue_looping.io.deq @[Interconnect.scala 65:22]
    io.sample_out.bits <= arbiter.io.out.bits @[Interconnect.scala 66:19]
    io.sample_out.valid <= arbiter.io.out.valid @[Interconnect.scala 66:19]
    arbiter.io.out.ready <= io.sample_out.ready @[Interconnect.scala 66:19]

  module Queue_7 :
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

    inst queue of Queue_7 @[Decoupled.scala 377:21]
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
    io.sample_leaving.bits.features <= queue.io.deq.bits.features @[Interconnect.scala 17:37]
    io.sample_leaving.bits.offset <= queue.io.deq.bits.offset @[Interconnect.scala 18:35]
    io.sample_leaving.bits.shift <= queue.io.deq.bits.shift @[Interconnect.scala 19:34]
    io.sample_leaving.bits.search_for_root <= queue.io.deq.bits.search_for_root @[Interconnect.scala 20:44]
    io.sample_leaving.bits.tree_to_exec <= queue.io.deq.bits.tree_to_exec @[Interconnect.scala 21:41]
    io.sample_leaving.bits.scores <= queue.io.deq.bits.scores @[Interconnect.scala 22:35]
    io.sample_leaving.bits.weights <= queue.io.deq.bits.weights @[Interconnect.scala 23:36]
    io.sample_leaving.bits.dest <= queue.io.deq.bits.dest @[Interconnect.scala 24:33]
    node _io_sample_leaving_bits_last_T = and(queue.io.deq.bits.last, queue.io.deq.bits.dest) @[Interconnect.scala 25:52]
    io.sample_leaving.bits.last <= _io_sample_leaving_bits_last_T @[Interconnect.scala 25:33]
    node _io_sample_looping_valid_T = eq(queue.io.deq.bits.dest, UInt<1>("h0")) @[Interconnect.scala 26:46]
    node _io_sample_looping_valid_T_1 = and(queue.io.deq.valid, _io_sample_looping_valid_T) @[Interconnect.scala 26:44]
    io.sample_looping.valid <= _io_sample_looping_valid_T_1 @[Interconnect.scala 26:29]
    node _io_sample_leaving_valid_T = and(queue.io.deq.valid, queue.io.deq.bits.dest) @[Interconnect.scala 27:44]
    io.sample_leaving.valid <= _io_sample_leaving_valid_T @[Interconnect.scala 27:29]
    node _queue_io_deq_ready_T = and(io.sample_leaving.ready, queue.io.deq.bits.dest) @[Interconnect.scala 29:45]
    node _queue_io_deq_ready_T_1 = eq(queue.io.deq.bits.dest, UInt<1>("h0")) @[Interconnect.scala 29:93]
    node _queue_io_deq_ready_T_2 = and(io.sample_looping.ready, _queue_io_deq_ready_T_1) @[Interconnect.scala 29:91]
    node _queue_io_deq_ready_T_3 = or(_queue_io_deq_ready_T, _queue_io_deq_ready_T_2) @[Interconnect.scala 29:64]
    queue.io.deq.ready <= _queue_io_deq_ready_T_3 @[Interconnect.scala 29:17]

  module Queue_8 :
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

    inst queue of Queue_8 @[Decoupled.scala 377:21]
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
    output brams_io_3 : { flip bram_addr_a : UInt<13>, flip bram_clk_a : Clock, flip bram_wrdata_a : UInt<32>, bram_rddata_a : UInt<32>, flip bram_en_a : UInt<1>, flip bram_rst_a : UInt<1>, flip bram_we_a : UInt<4>}
    output brams_io_4 : { flip bram_addr_a : UInt<13>, flip bram_clk_a : Clock, flip bram_wrdata_a : UInt<32>, bram_rddata_a : UInt<32>, flip bram_en_a : UInt<1>, flip bram_rst_a : UInt<1>, flip bram_we_a : UInt<4>}

    inst forward_converter of ForwardConverter @[TreePEsWrapper.scala 48:39]
    forward_converter.clock <= clock
    forward_converter.reset <= reset
    inst backward_converter of BackwardConverter @[TreePEsWrapper.scala 49:40]
    backward_converter.clock <= clock
    backward_converter.reset <= reset
    inst pes_0 of TreePEwithBRAM @[TreePEsWrapper.scala 55:69]
    pes_0.clock <= clock
    pes_0.reset <= reset
    inst pes_1 of TreePEwithBRAM_1 @[TreePEsWrapper.scala 55:69]
    pes_1.clock <= clock
    pes_1.reset <= reset
    inst pes_2 of TreePEwithBRAM_2 @[TreePEsWrapper.scala 55:69]
    pes_2.clock <= clock
    pes_2.reset <= reset
    inst pes_3 of TreePEwithBRAM_3 @[TreePEsWrapper.scala 55:69]
    pes_3.clock <= clock
    pes_3.reset <= reset
    inst pes_4 of TreePEwithBRAM_4 @[TreePEsWrapper.scala 55:69]
    pes_4.clock <= clock
    pes_4.reset <= reset
    inst brams_0 of BRAMBlackBox @[TreePEsWrapper.scala 56:71]
    brams_0.clock <= clock
    brams_0.reset <= reset
    inst brams_1 of BRAMBlackBox_1 @[TreePEsWrapper.scala 56:71]
    brams_1.clock <= clock
    brams_1.reset <= reset
    inst brams_2 of BRAMBlackBox_2 @[TreePEsWrapper.scala 56:71]
    brams_2.clock <= clock
    brams_2.reset <= reset
    inst brams_3 of BRAMBlackBox_3 @[TreePEsWrapper.scala 56:71]
    brams_3.clock <= clock
    brams_3.reset <= reset
    inst brams_4 of BRAMBlackBox_4 @[TreePEsWrapper.scala 56:71]
    brams_4.clock <= clock
    brams_4.reset <= reset
    inst first_interconnect of FirstInterconnectPE @[TreePEsWrapper.scala 58:44]
    first_interconnect.clock <= clock
    first_interconnect.reset <= reset
    inst last_interconnect of LastInterconnectPE @[TreePEsWrapper.scala 59:43]
    last_interconnect.clock <= clock
    last_interconnect.reset <= reset
    inst increment of IncrementTreePE @[TreePEsWrapper.scala 60:35]
    increment.clock <= clock
    increment.reset <= reset
    brams_0.io.b_en <= pes_0.pe_io.mem.enable_1 @[TreePEsWrapper.scala 65:34]
    brams_0.io.b_wr <= pes_0.pe_io.mem.write_1 @[TreePEsWrapper.scala 66:34]
    brams_0.io.b_addr <= pes_0.pe_io.mem.addr_1 @[TreePEsWrapper.scala 67:36]
    brams_0.io.b_din <= pes_0.pe_io.mem.dataIn_1 @[TreePEsWrapper.scala 68:35]
    pes_0.pe_io.mem.dataOut_1 <= brams_0.io.b_dout @[TreePEsWrapper.scala 69:44]
    brams_0.io.a_en <= brams_io_0.bram_en_a @[TreePEsWrapper.scala 71:34]
    node _brams_0_io_a_wr_T = bits(brams_io_0.bram_we_a, 0, 0) @[TreePEsWrapper.scala 72:64]
    brams_0.io.a_wr <= _brams_0_io_a_wr_T @[TreePEsWrapper.scala 72:34]
    brams_0.io.a_addr <= brams_io_0.bram_addr_a @[TreePEsWrapper.scala 73:36]
    brams_0.io.a_din <= brams_io_0.bram_wrdata_a @[TreePEsWrapper.scala 74:35]
    brams_io_0.bram_rddata_a <= brams_0.io.a_dout @[TreePEsWrapper.scala 75:49]
    brams_0.io.clk <= brams_io_0.bram_clk_a @[TreePEsWrapper.scala 77:33]
    pes_0.pe_io.mem.dataOut_2 is invalid @[TreePEsWrapper.scala 79:44]
    brams_1.io.b_en <= pes_1.pe_io.mem.enable_1 @[TreePEsWrapper.scala 65:34]
    brams_1.io.b_wr <= pes_1.pe_io.mem.write_1 @[TreePEsWrapper.scala 66:34]
    brams_1.io.b_addr <= pes_1.pe_io.mem.addr_1 @[TreePEsWrapper.scala 67:36]
    brams_1.io.b_din <= pes_1.pe_io.mem.dataIn_1 @[TreePEsWrapper.scala 68:35]
    pes_1.pe_io.mem.dataOut_1 <= brams_1.io.b_dout @[TreePEsWrapper.scala 69:44]
    brams_1.io.a_en <= brams_io_1.bram_en_a @[TreePEsWrapper.scala 71:34]
    node _brams_1_io_a_wr_T = bits(brams_io_1.bram_we_a, 0, 0) @[TreePEsWrapper.scala 72:64]
    brams_1.io.a_wr <= _brams_1_io_a_wr_T @[TreePEsWrapper.scala 72:34]
    brams_1.io.a_addr <= brams_io_1.bram_addr_a @[TreePEsWrapper.scala 73:36]
    brams_1.io.a_din <= brams_io_1.bram_wrdata_a @[TreePEsWrapper.scala 74:35]
    brams_io_1.bram_rddata_a <= brams_1.io.a_dout @[TreePEsWrapper.scala 75:49]
    brams_1.io.clk <= brams_io_1.bram_clk_a @[TreePEsWrapper.scala 77:33]
    pes_1.pe_io.mem.dataOut_2 is invalid @[TreePEsWrapper.scala 79:44]
    brams_2.io.b_en <= pes_2.pe_io.mem.enable_1 @[TreePEsWrapper.scala 65:34]
    brams_2.io.b_wr <= pes_2.pe_io.mem.write_1 @[TreePEsWrapper.scala 66:34]
    brams_2.io.b_addr <= pes_2.pe_io.mem.addr_1 @[TreePEsWrapper.scala 67:36]
    brams_2.io.b_din <= pes_2.pe_io.mem.dataIn_1 @[TreePEsWrapper.scala 68:35]
    pes_2.pe_io.mem.dataOut_1 <= brams_2.io.b_dout @[TreePEsWrapper.scala 69:44]
    brams_2.io.a_en <= brams_io_2.bram_en_a @[TreePEsWrapper.scala 71:34]
    node _brams_2_io_a_wr_T = bits(brams_io_2.bram_we_a, 0, 0) @[TreePEsWrapper.scala 72:64]
    brams_2.io.a_wr <= _brams_2_io_a_wr_T @[TreePEsWrapper.scala 72:34]
    brams_2.io.a_addr <= brams_io_2.bram_addr_a @[TreePEsWrapper.scala 73:36]
    brams_2.io.a_din <= brams_io_2.bram_wrdata_a @[TreePEsWrapper.scala 74:35]
    brams_io_2.bram_rddata_a <= brams_2.io.a_dout @[TreePEsWrapper.scala 75:49]
    brams_2.io.clk <= brams_io_2.bram_clk_a @[TreePEsWrapper.scala 77:33]
    pes_2.pe_io.mem.dataOut_2 is invalid @[TreePEsWrapper.scala 79:44]
    brams_3.io.b_en <= pes_3.pe_io.mem.enable_1 @[TreePEsWrapper.scala 65:34]
    brams_3.io.b_wr <= pes_3.pe_io.mem.write_1 @[TreePEsWrapper.scala 66:34]
    brams_3.io.b_addr <= pes_3.pe_io.mem.addr_1 @[TreePEsWrapper.scala 67:36]
    brams_3.io.b_din <= pes_3.pe_io.mem.dataIn_1 @[TreePEsWrapper.scala 68:35]
    pes_3.pe_io.mem.dataOut_1 <= brams_3.io.b_dout @[TreePEsWrapper.scala 69:44]
    brams_3.io.a_en <= brams_io_3.bram_en_a @[TreePEsWrapper.scala 71:34]
    node _brams_3_io_a_wr_T = bits(brams_io_3.bram_we_a, 0, 0) @[TreePEsWrapper.scala 72:64]
    brams_3.io.a_wr <= _brams_3_io_a_wr_T @[TreePEsWrapper.scala 72:34]
    brams_3.io.a_addr <= brams_io_3.bram_addr_a @[TreePEsWrapper.scala 73:36]
    brams_3.io.a_din <= brams_io_3.bram_wrdata_a @[TreePEsWrapper.scala 74:35]
    brams_io_3.bram_rddata_a <= brams_3.io.a_dout @[TreePEsWrapper.scala 75:49]
    brams_3.io.clk <= brams_io_3.bram_clk_a @[TreePEsWrapper.scala 77:33]
    pes_3.pe_io.mem.dataOut_2 is invalid @[TreePEsWrapper.scala 79:44]
    brams_4.io.b_en <= pes_4.pe_io.mem.enable_1 @[TreePEsWrapper.scala 65:34]
    brams_4.io.b_wr <= pes_4.pe_io.mem.write_1 @[TreePEsWrapper.scala 66:34]
    brams_4.io.b_addr <= pes_4.pe_io.mem.addr_1 @[TreePEsWrapper.scala 67:36]
    brams_4.io.b_din <= pes_4.pe_io.mem.dataIn_1 @[TreePEsWrapper.scala 68:35]
    pes_4.pe_io.mem.dataOut_1 <= brams_4.io.b_dout @[TreePEsWrapper.scala 69:44]
    brams_4.io.a_en <= brams_io_4.bram_en_a @[TreePEsWrapper.scala 71:34]
    node _brams_4_io_a_wr_T = bits(brams_io_4.bram_we_a, 0, 0) @[TreePEsWrapper.scala 72:64]
    brams_4.io.a_wr <= _brams_4_io_a_wr_T @[TreePEsWrapper.scala 72:34]
    brams_4.io.a_addr <= brams_io_4.bram_addr_a @[TreePEsWrapper.scala 73:36]
    brams_4.io.a_din <= brams_io_4.bram_wrdata_a @[TreePEsWrapper.scala 74:35]
    brams_io_4.bram_rddata_a <= brams_4.io.a_dout @[TreePEsWrapper.scala 75:49]
    brams_4.io.clk <= brams_io_4.bram_clk_a @[TreePEsWrapper.scala 77:33]
    pes_4.pe_io.mem.dataOut_2 is invalid @[TreePEsWrapper.scala 79:44]
    backward_converter.io.sample_in <= last_interconnect.io.sample_leaving @[TreePEsWrapper.scala 96:49]
    last_interconnect.io.sample_in <= pes_4.pe_io.sample_out @[TreePE.scala 121:22]
    increment.io.sample_in <= last_interconnect.io.sample_looping @[Interconnect.scala 32:27]
    pes_0.pe_io.sample_in <= first_interconnect.io.sample_out @[Interconnect.scala 74:23]
    pes_1.pe_io.sample_in <= pes_0.pe_io.sample_out @[TreePE.scala 125:22]
    pes_2.pe_io.sample_in <= pes_1.pe_io.sample_out @[TreePE.scala 125:22]
    pes_4.pe_io.sample_in <= pes_3.pe_io.sample_out @[TreePE.scala 125:22]
    first_interconnect.io.sample_looping <= increment.io.sample_out @[IncrementTreePE.scala 30:23]
    pes_3.pe_io.sample_in <= pes_2.pe_io.sample_out @[TreePE.scala 125:22]
    wire _cycles_counter_WIRE : UInt<32> @[TreePEsWrapper.scala 121:50]
    _cycles_counter_WIRE <= UInt<1>("h0") @[TreePEsWrapper.scala 121:50]
    reg cycles_counter : UInt, clock with :
      reset => (reset, _cycles_counter_WIRE) @[TreePEsWrapper.scala 121:37]
    reg counting : UInt<1>, clock with :
      reset => (reset, UInt<1>("h0")) @[TreePEsWrapper.scala 122:31]
    node _T = eq(counting, UInt<1>("h0")) @[TreePEsWrapper.scala 123:56]
    node _T_1 = and(backward_converter.io.sample_out.TVALID, _T) @[TreePEsWrapper.scala 123:54]
    when _T_1 : @[TreePEsWrapper.scala 123:66]
      counting <= UInt<1>("h1") @[TreePEsWrapper.scala 124:22]
    else :
      node _T_2 = and(backward_converter.io.sample_out.TVALID, backward_converter.io.sample_out.TLAST) @[TreePEsWrapper.scala 125:60]
      when _T_2 : @[TreePEsWrapper.scala 125:101]
        counting <= UInt<1>("h0") @[TreePEsWrapper.scala 126:22]
      else :
        counting <= counting @[TreePEsWrapper.scala 128:22]
    node _cycles_counter_T = add(cycles_counter, UInt<1>("h1")) @[TreePEsWrapper.scala 130:54]
    node _cycles_counter_T_1 = tail(_cycles_counter_T, 1) @[TreePEsWrapper.scala 130:54]
    node _cycles_counter_T_2 = mux(counting, _cycles_counter_T_1, cycles_counter) @[TreePEsWrapper.scala 130:30]
    cycles_counter <= _cycles_counter_T_2 @[TreePEsWrapper.scala 130:24]
    forward_converter.io.sample_in.TVALID <= wrapper_io.sample_in.TVALID @[TreePEsWrapper.scala 132:30]
    wrapper_io.sample_in.TREADY <= forward_converter.io.sample_in.TREADY @[TreePEsWrapper.scala 132:30]
    forward_converter.io.sample_in.TLAST <= wrapper_io.sample_in.TLAST @[TreePEsWrapper.scala 132:30]
    forward_converter.io.sample_in.TKEEP <= wrapper_io.sample_in.TKEEP @[TreePEsWrapper.scala 132:30]
    forward_converter.io.sample_in.TDATA <= wrapper_io.sample_in.TDATA @[TreePEsWrapper.scala 132:30]
    first_interconnect.io.sample_entering <= forward_converter.io.sample_out @[TreePEsWrapper.scala 133:41]
    wrapper_io.sample_out.TKEEP <= backward_converter.io.sample_out.TKEEP @[TreePEsWrapper.scala 136:37]
    wrapper_io.sample_out.TVALID <= backward_converter.io.sample_out.TVALID @[TreePEsWrapper.scala 137:38]
    wrapper_io.sample_out.TLAST <= backward_converter.io.sample_out.TLAST @[TreePEsWrapper.scala 138:37]
    backward_converter.io.sample_out.TREADY <= wrapper_io.sample_out.TREADY @[TreePEsWrapper.scala 139:49]
    node _wrapper_io_sample_out_TDATA_T = bits(backward_converter.io.sample_out.TDATA, 223, 0) @[TreePEsWrapper.scala 140:99]
    node _wrapper_io_sample_out_TDATA_T_1 = cat(cycles_counter, _wrapper_io_sample_out_TDATA_T) @[Cat.scala 33:92]
    wrapper_io.sample_out.TDATA <= _wrapper_io_sample_out_TDATA_T_1 @[TreePEsWrapper.scala 140:37]

