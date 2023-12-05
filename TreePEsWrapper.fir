circuit TreePEsWrapper :
  module ForwardConverter :
    input clock : Clock
    input reset : Reset
    output io : { sample_in : { flip TDATA : UInt<240>, flip TKEEP : UInt<30>, flip TLAST : UInt<1>, TREADY : UInt<1>, flip TVALID : UInt<1>}, sample_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[2], dest : UInt<1>, last : UInt<1>}}}

    io.sample_in.TREADY <= io.sample_out.ready @[Converter.scala 13:25]
    node _io_sample_out_bits_features_0_T = bits(io.sample_in.TDATA, 15, 0) @[Converter.scala 15:61]
    node _io_sample_out_bits_features_0_T_1 = asFixedPoint(_io_sample_out_bits_features_0_T, 8) @[Converter.scala 15:91]
    io.sample_out.bits.features[0] <= _io_sample_out_bits_features_0_T_1 @[Converter.scala 15:40]
    node _io_sample_out_bits_features_1_T = bits(io.sample_in.TDATA, 31, 16) @[Converter.scala 15:61]
    node _io_sample_out_bits_features_1_T_1 = asFixedPoint(_io_sample_out_bits_features_1_T, 8) @[Converter.scala 15:91]
    io.sample_out.bits.features[1] <= _io_sample_out_bits_features_1_T_1 @[Converter.scala 15:40]
    node _io_sample_out_bits_features_2_T = bits(io.sample_in.TDATA, 47, 32) @[Converter.scala 15:61]
    node _io_sample_out_bits_features_2_T_1 = asFixedPoint(_io_sample_out_bits_features_2_T, 8) @[Converter.scala 15:91]
    io.sample_out.bits.features[2] <= _io_sample_out_bits_features_2_T_1 @[Converter.scala 15:40]
    node _io_sample_out_bits_features_3_T = bits(io.sample_in.TDATA, 63, 48) @[Converter.scala 15:61]
    node _io_sample_out_bits_features_3_T_1 = asFixedPoint(_io_sample_out_bits_features_3_T, 8) @[Converter.scala 15:91]
    io.sample_out.bits.features[3] <= _io_sample_out_bits_features_3_T_1 @[Converter.scala 15:40]
    node _io_sample_out_bits_offset_T = bits(io.sample_in.TDATA, 79, 64) @[Converter.scala 17:52]
    io.sample_out.bits.offset <= _io_sample_out_bits_offset_T @[Converter.scala 17:31]
    node _io_sample_out_bits_shift_T = bits(io.sample_in.TDATA, 87, 80) @[Converter.scala 18:51]
    io.sample_out.bits.shift <= _io_sample_out_bits_shift_T @[Converter.scala 18:30]
    node _io_sample_out_bits_search_for_root_T = bits(io.sample_in.TDATA, 95, 88) @[Converter.scala 19:61]
    io.sample_out.bits.search_for_root <= _io_sample_out_bits_search_for_root_T @[Converter.scala 19:40]
    node _io_sample_out_bits_tree_to_exec_T = bits(io.sample_in.TDATA, 103, 96) @[Converter.scala 20:58]
    io.sample_out.bits.tree_to_exec <= _io_sample_out_bits_tree_to_exec_T @[Converter.scala 20:37]
    node _io_sample_out_bits_scores_0_T = bits(io.sample_in.TDATA, 127, 112) @[Converter.scala 22:59]
    node _io_sample_out_bits_scores_0_T_1 = asFixedPoint(_io_sample_out_bits_scores_0_T, 8) @[Converter.scala 22:115]
    io.sample_out.bits.scores[0] <= _io_sample_out_bits_scores_0_T_1 @[Converter.scala 22:38]
    node _io_sample_out_bits_scores_1_T = bits(io.sample_in.TDATA, 143, 128) @[Converter.scala 22:59]
    node _io_sample_out_bits_scores_1_T_1 = asFixedPoint(_io_sample_out_bits_scores_1_T, 8) @[Converter.scala 22:115]
    io.sample_out.bits.scores[1] <= _io_sample_out_bits_scores_1_T_1 @[Converter.scala 22:38]
    node _io_sample_out_bits_scores_2_T = bits(io.sample_in.TDATA, 159, 144) @[Converter.scala 22:59]
    node _io_sample_out_bits_scores_2_T_1 = asFixedPoint(_io_sample_out_bits_scores_2_T, 8) @[Converter.scala 22:115]
    io.sample_out.bits.scores[2] <= _io_sample_out_bits_scores_2_T_1 @[Converter.scala 22:38]
    node _io_sample_out_bits_scores_3_T = bits(io.sample_in.TDATA, 175, 160) @[Converter.scala 22:59]
    node _io_sample_out_bits_scores_3_T_1 = asFixedPoint(_io_sample_out_bits_scores_3_T, 8) @[Converter.scala 22:115]
    io.sample_out.bits.scores[3] <= _io_sample_out_bits_scores_3_T_1 @[Converter.scala 22:38]
    node _io_sample_out_bits_weights_0_T = bits(io.sample_in.TDATA, 191, 176) @[Converter.scala 25:60]
    node _io_sample_out_bits_weights_0_T_1 = asFixedPoint(_io_sample_out_bits_weights_0_T, 8) @[Converter.scala 25:142]
    io.sample_out.bits.weights[0] <= _io_sample_out_bits_weights_0_T_1 @[Converter.scala 25:39]
    node _io_sample_out_bits_weights_1_T = bits(io.sample_in.TDATA, 207, 192) @[Converter.scala 25:60]
    node _io_sample_out_bits_weights_1_T_1 = asFixedPoint(_io_sample_out_bits_weights_1_T, 8) @[Converter.scala 25:142]
    io.sample_out.bits.weights[1] <= _io_sample_out_bits_weights_1_T_1 @[Converter.scala 25:39]
    io.sample_out.valid <= io.sample_in.TVALID @[Converter.scala 27:25]
    io.sample_out.bits.dest <= UInt<1>("h0") @[Converter.scala 28:29]
    io.sample_out.bits.last <= io.sample_in.TLAST @[Converter.scala 29:29]

  module Queue :
    input clock : Clock
    input reset : Reset
    output io : { flip enq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[2], dest : UInt<1>, last : UInt<1>}}, deq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[2], dest : UInt<1>, last : UInt<1>}}, count : UInt<2>}

    cmem ram : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[2], dest : UInt<1>, last : UInt<1>} [3] @[Decoupled.scala 275:95]
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
    output io : { flip sample_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[2], dest : UInt<1>, last : UInt<1>}}, samples_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[2], dest : UInt<1>, last : UInt<1>}}[2]}

    inst queue of Queue @[Decoupled.scala 377:21]
    queue.clock <= clock
    queue.reset <= reset
    queue.io.enq.valid <= io.sample_in.valid @[Decoupled.scala 379:22]
    queue.io.enq.bits.last <= io.sample_in.bits.last @[Decoupled.scala 380:21]
    queue.io.enq.bits.dest <= io.sample_in.bits.dest @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[0] <= io.sample_in.bits.weights[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[1] <= io.sample_in.bits.weights[1] @[Decoupled.scala 380:21]
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
    io.samples_out[0].bits <= queue.io.deq.bits @[DispatcherPE.scala 16:32]
    io.samples_out[0].valid <= queue.io.deq.valid @[DispatcherPE.scala 17:33]
    io.samples_out[1].bits <= queue.io.deq.bits @[DispatcherPE.scala 16:32]
    io.samples_out[1].valid <= queue.io.deq.valid @[DispatcherPE.scala 17:33]
    queue.io.deq.ready <= io.samples_out[0].ready @[DispatcherPE.scala 20:17]

  module Queue_1 :
    input clock : Clock
    input reset : Reset
    output io : { flip enq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[2], dest : UInt<1>, last : UInt<1>}}, deq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[2], dest : UInt<1>, last : UInt<1>}}, count : UInt<8>}

    cmem ram : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[2], dest : UInt<1>, last : UInt<1>} [128] @[Decoupled.scala 275:95]
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

  module Queue_2 :
    input clock : Clock
    input reset : Reset
    output io : { flip enq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[2], dest : UInt<1>, last : UInt<1>}}, deq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[2], dest : UInt<1>, last : UInt<1>}}, count : UInt<8>}

    cmem ram : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[2], dest : UInt<1>, last : UInt<1>} [128] @[Decoupled.scala 275:95]
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
    output io : { flip samples_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[2], dest : UInt<1>, last : UInt<1>}}[2], sample_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[2], dest : UInt<1>, last : UInt<1>}}}

    inst queues_q of Queue_1 @[Decoupled.scala 377:21]
    queues_q.clock <= clock
    queues_q.reset <= reset
    queues_q.io.enq.valid <= io.samples_in[0].valid @[Decoupled.scala 379:22]
    queues_q.io.enq.bits.last <= io.samples_in[0].bits.last @[Decoupled.scala 380:21]
    queues_q.io.enq.bits.dest <= io.samples_in[0].bits.dest @[Decoupled.scala 380:21]
    queues_q.io.enq.bits.weights[0] <= io.samples_in[0].bits.weights[0] @[Decoupled.scala 380:21]
    queues_q.io.enq.bits.weights[1] <= io.samples_in[0].bits.weights[1] @[Decoupled.scala 380:21]
    queues_q.io.enq.bits.scores[0] <= io.samples_in[0].bits.scores[0] @[Decoupled.scala 380:21]
    queues_q.io.enq.bits.scores[1] <= io.samples_in[0].bits.scores[1] @[Decoupled.scala 380:21]
    queues_q.io.enq.bits.scores[2] <= io.samples_in[0].bits.scores[2] @[Decoupled.scala 380:21]
    queues_q.io.enq.bits.scores[3] <= io.samples_in[0].bits.scores[3] @[Decoupled.scala 380:21]
    queues_q.io.enq.bits.tree_to_exec <= io.samples_in[0].bits.tree_to_exec @[Decoupled.scala 380:21]
    queues_q.io.enq.bits.search_for_root <= io.samples_in[0].bits.search_for_root @[Decoupled.scala 380:21]
    queues_q.io.enq.bits.shift <= io.samples_in[0].bits.shift @[Decoupled.scala 380:21]
    queues_q.io.enq.bits.offset <= io.samples_in[0].bits.offset @[Decoupled.scala 380:21]
    queues_q.io.enq.bits.features[0] <= io.samples_in[0].bits.features[0] @[Decoupled.scala 380:21]
    queues_q.io.enq.bits.features[1] <= io.samples_in[0].bits.features[1] @[Decoupled.scala 380:21]
    queues_q.io.enq.bits.features[2] <= io.samples_in[0].bits.features[2] @[Decoupled.scala 380:21]
    queues_q.io.enq.bits.features[3] <= io.samples_in[0].bits.features[3] @[Decoupled.scala 380:21]
    io.samples_in[0].ready <= queues_q.io.enq.ready @[Decoupled.scala 381:17]
    inst queues_q_1 of Queue_2 @[Decoupled.scala 377:21]
    queues_q_1.clock <= clock
    queues_q_1.reset <= reset
    queues_q_1.io.enq.valid <= io.samples_in[1].valid @[Decoupled.scala 379:22]
    queues_q_1.io.enq.bits.last <= io.samples_in[1].bits.last @[Decoupled.scala 380:21]
    queues_q_1.io.enq.bits.dest <= io.samples_in[1].bits.dest @[Decoupled.scala 380:21]
    queues_q_1.io.enq.bits.weights[0] <= io.samples_in[1].bits.weights[0] @[Decoupled.scala 380:21]
    queues_q_1.io.enq.bits.weights[1] <= io.samples_in[1].bits.weights[1] @[Decoupled.scala 380:21]
    queues_q_1.io.enq.bits.scores[0] <= io.samples_in[1].bits.scores[0] @[Decoupled.scala 380:21]
    queues_q_1.io.enq.bits.scores[1] <= io.samples_in[1].bits.scores[1] @[Decoupled.scala 380:21]
    queues_q_1.io.enq.bits.scores[2] <= io.samples_in[1].bits.scores[2] @[Decoupled.scala 380:21]
    queues_q_1.io.enq.bits.scores[3] <= io.samples_in[1].bits.scores[3] @[Decoupled.scala 380:21]
    queues_q_1.io.enq.bits.tree_to_exec <= io.samples_in[1].bits.tree_to_exec @[Decoupled.scala 380:21]
    queues_q_1.io.enq.bits.search_for_root <= io.samples_in[1].bits.search_for_root @[Decoupled.scala 380:21]
    queues_q_1.io.enq.bits.shift <= io.samples_in[1].bits.shift @[Decoupled.scala 380:21]
    queues_q_1.io.enq.bits.offset <= io.samples_in[1].bits.offset @[Decoupled.scala 380:21]
    queues_q_1.io.enq.bits.features[0] <= io.samples_in[1].bits.features[0] @[Decoupled.scala 380:21]
    queues_q_1.io.enq.bits.features[1] <= io.samples_in[1].bits.features[1] @[Decoupled.scala 380:21]
    queues_q_1.io.enq.bits.features[2] <= io.samples_in[1].bits.features[2] @[Decoupled.scala 380:21]
    queues_q_1.io.enq.bits.features[3] <= io.samples_in[1].bits.features[3] @[Decoupled.scala 380:21]
    io.samples_in[1].ready <= queues_q_1.io.enq.ready @[Decoupled.scala 381:17]
    wire queues : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[2], dest : UInt<1>, last : UInt<1>}}[2] @[VoterPE.scala 13:25]
    queues[0].bits <= queues_q.io.deq.bits @[VoterPE.scala 13:25]
    queues[0].valid <= queues_q.io.deq.valid @[VoterPE.scala 13:25]
    queues_q.io.deq.ready <= queues[0].ready @[VoterPE.scala 13:25]
    queues[1].bits <= queues_q_1.io.deq.bits @[VoterPE.scala 13:25]
    queues[1].valid <= queues_q_1.io.deq.valid @[VoterPE.scala 13:25]
    queues_q_1.io.deq.ready <= queues[1].ready @[VoterPE.scala 13:25]
    node _T = and(UInt<1>("h1"), queues[0].valid) @[VoterPE.scala 18:23]
    node valid = and(_T, queues[1].valid) @[VoterPE.scala 18:23]
    when valid : @[VoterPE.scala 21:16]
      io.sample_out.valid <= UInt<1>("h1") @[VoterPE.scala 22:29]
      io.sample_out.bits.features <= queues[0].bits.features @[VoterPE.scala 23:37]
      io.sample_out.bits.weights <= queues[0].bits.weights @[VoterPE.scala 24:36]
      io.sample_out.bits.tree_to_exec <= queues[0].bits.tree_to_exec @[VoterPE.scala 25:41]
      io.sample_out.bits.shift <= queues[0].bits.shift @[VoterPE.scala 26:34]
      io.sample_out.bits.offset <= queues[0].bits.offset @[VoterPE.scala 27:35]
      io.sample_out.bits.dest <= queues[0].bits.dest @[VoterPE.scala 28:33]
      io.sample_out.bits.search_for_root <= queues[0].bits.search_for_root @[VoterPE.scala 29:44]
      io.sample_out.bits.last <= queues[0].bits.last @[VoterPE.scala 30:33]
      node _T_1 = add(queues[0].bits.scores[0], queues[1].bits.scores[0]) @[VoterPE.scala 34:27]
      io.sample_out.bits.scores[0] <= _T_1 @[VoterPE.scala 36:42]
      node _T_2 = add(queues[0].bits.scores[1], queues[1].bits.scores[1]) @[VoterPE.scala 34:27]
      io.sample_out.bits.scores[1] <= _T_2 @[VoterPE.scala 36:42]
      node _T_3 = add(queues[0].bits.scores[2], queues[1].bits.scores[2]) @[VoterPE.scala 34:27]
      io.sample_out.bits.scores[2] <= _T_3 @[VoterPE.scala 36:42]
      node _T_4 = add(queues[0].bits.scores[3], queues[1].bits.scores[3]) @[VoterPE.scala 34:27]
      io.sample_out.bits.scores[3] <= _T_4 @[VoterPE.scala 36:42]
      queues[0].ready <= io.sample_out.ready @[VoterPE.scala 39:29]
      queues[1].ready <= io.sample_out.ready @[VoterPE.scala 39:29]
    else :
      io.sample_out.valid <= UInt<1>("h0") @[VoterPE.scala 42:29]
      io.sample_out.bits.last is invalid @[VoterPE.scala 43:28]
      io.sample_out.bits.dest is invalid @[VoterPE.scala 43:28]
      io.sample_out.bits.weights[0] is invalid @[VoterPE.scala 43:28]
      io.sample_out.bits.weights[1] is invalid @[VoterPE.scala 43:28]
      io.sample_out.bits.scores[0] is invalid @[VoterPE.scala 43:28]
      io.sample_out.bits.scores[1] is invalid @[VoterPE.scala 43:28]
      io.sample_out.bits.scores[2] is invalid @[VoterPE.scala 43:28]
      io.sample_out.bits.scores[3] is invalid @[VoterPE.scala 43:28]
      io.sample_out.bits.tree_to_exec is invalid @[VoterPE.scala 43:28]
      io.sample_out.bits.search_for_root is invalid @[VoterPE.scala 43:28]
      io.sample_out.bits.shift is invalid @[VoterPE.scala 43:28]
      io.sample_out.bits.offset is invalid @[VoterPE.scala 43:28]
      io.sample_out.bits.features[0] is invalid @[VoterPE.scala 43:28]
      io.sample_out.bits.features[1] is invalid @[VoterPE.scala 43:28]
      io.sample_out.bits.features[2] is invalid @[VoterPE.scala 43:28]
      io.sample_out.bits.features[3] is invalid @[VoterPE.scala 43:28]
      node _queues_0_ready_T = eq(queues[0].valid, UInt<1>("h0")) @[VoterPE.scala 45:32]
      queues[0].ready <= _queues_0_ready_T @[VoterPE.scala 45:29]
      node _queues_1_ready_T = eq(queues[1].valid, UInt<1>("h0")) @[VoterPE.scala 45:32]
      queues[1].ready <= _queues_1_ready_T @[VoterPE.scala 45:29]

  module Queue_3 :
    input clock : Clock
    input reset : Reset
    output io : { flip enq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[2], dest : UInt<1>, last : UInt<1>}}, deq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[2], dest : UInt<1>, last : UInt<1>}}, count : UInt<2>}

    cmem ram : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[2], dest : UInt<1>, last : UInt<1>} [3] @[Decoupled.scala 275:95]
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

  module BackwardConverter :
    input clock : Clock
    input reset : Reset
    output io : { flip sample_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[2], dest : UInt<1>, last : UInt<1>}}, flip sample_out : { flip TDATA : UInt<240>, flip TKEEP : UInt<30>, flip TLAST : UInt<1>, TREADY : UInt<1>, flip TVALID : UInt<1>}}

    inst queue of Queue_3 @[Decoupled.scala 377:21]
    queue.clock <= clock
    queue.reset <= reset
    queue.io.enq.valid <= io.sample_in.valid @[Decoupled.scala 379:22]
    queue.io.enq.bits.last <= io.sample_in.bits.last @[Decoupled.scala 380:21]
    queue.io.enq.bits.dest <= io.sample_in.bits.dest @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[0] <= io.sample_in.bits.weights[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[1] <= io.sample_in.bits.weights[1] @[Decoupled.scala 380:21]
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
    queue.io.deq.ready <= io.sample_out.TREADY @[Converter.scala 40:17]
    io.sample_out.TKEEP <= UInt<1>("h0") @[Converter.scala 42:25]
    io.sample_out.TLAST <= queue.io.deq.bits.last @[Converter.scala 43:25]
    io.sample_out.TVALID <= queue.io.deq.valid @[Converter.scala 44:26]
    node io_sample_out_TDATA_lo = asUInt(queue.io.deq.bits.weights[0]) @[Cat.scala 33:92]
    node io_sample_out_TDATA_hi = asUInt(queue.io.deq.bits.weights[1]) @[Cat.scala 33:92]
    node _io_sample_out_TDATA_T = cat(io_sample_out_TDATA_hi, io_sample_out_TDATA_lo) @[Cat.scala 33:92]
    node io_sample_out_TDATA_lo_lo = asUInt(queue.io.deq.bits.scores[0]) @[Cat.scala 33:92]
    node io_sample_out_TDATA_lo_hi = asUInt(queue.io.deq.bits.scores[1]) @[Cat.scala 33:92]
    node io_sample_out_TDATA_lo_1 = cat(io_sample_out_TDATA_lo_hi, io_sample_out_TDATA_lo_lo) @[Cat.scala 33:92]
    node io_sample_out_TDATA_hi_lo = asUInt(queue.io.deq.bits.scores[2]) @[Cat.scala 33:92]
    node io_sample_out_TDATA_hi_hi = asUInt(queue.io.deq.bits.scores[3]) @[Cat.scala 33:92]
    node io_sample_out_TDATA_hi_1 = cat(io_sample_out_TDATA_hi_hi, io_sample_out_TDATA_hi_lo) @[Cat.scala 33:92]
    node _io_sample_out_TDATA_T_1 = cat(io_sample_out_TDATA_hi_1, io_sample_out_TDATA_lo_1) @[Cat.scala 33:92]
    node _io_sample_out_TDATA_T_2 = mux(UInt<1>("h0"), UInt<8>("hff"), UInt<8>("h0")) @[Bitwise.scala 77:12]
    node _io_sample_out_TDATA_T_3 = cat(_io_sample_out_TDATA_T_2, queue.io.deq.bits.tree_to_exec) @[Cat.scala 33:92]
    node _io_sample_out_TDATA_T_4 = mux(UInt<1>("h0"), UInt<7>("h7f"), UInt<7>("h0")) @[Bitwise.scala 77:12]
    node _io_sample_out_TDATA_T_5 = cat(_io_sample_out_TDATA_T_4, queue.io.deq.bits.search_for_root) @[Cat.scala 33:92]
    node _io_sample_out_TDATA_T_6 = mux(UInt<1>("h0"), UInt<7>("h7f"), UInt<7>("h0")) @[Bitwise.scala 77:12]
    node _io_sample_out_TDATA_T_7 = cat(_io_sample_out_TDATA_T_6, queue.io.deq.bits.shift) @[Cat.scala 33:92]
    node _io_sample_out_TDATA_T_8 = mux(UInt<1>("h0"), UInt<6>("h3f"), UInt<6>("h0")) @[Bitwise.scala 77:12]
    node _io_sample_out_TDATA_T_9 = cat(_io_sample_out_TDATA_T_8, queue.io.deq.bits.offset) @[Cat.scala 33:92]
    node io_sample_out_TDATA_lo_lo_1 = asUInt(queue.io.deq.bits.features[0]) @[Cat.scala 33:92]
    node io_sample_out_TDATA_lo_hi_1 = asUInt(queue.io.deq.bits.features[1]) @[Cat.scala 33:92]
    node io_sample_out_TDATA_lo_2 = cat(io_sample_out_TDATA_lo_hi_1, io_sample_out_TDATA_lo_lo_1) @[Cat.scala 33:92]
    node io_sample_out_TDATA_hi_lo_1 = asUInt(queue.io.deq.bits.features[2]) @[Cat.scala 33:92]
    node io_sample_out_TDATA_hi_hi_1 = asUInt(queue.io.deq.bits.features[3]) @[Cat.scala 33:92]
    node io_sample_out_TDATA_hi_2 = cat(io_sample_out_TDATA_hi_hi_1, io_sample_out_TDATA_hi_lo_1) @[Cat.scala 33:92]
    node _io_sample_out_TDATA_T_10 = cat(io_sample_out_TDATA_hi_2, io_sample_out_TDATA_lo_2) @[Cat.scala 33:92]
    node io_sample_out_TDATA_lo_hi_2 = cat(_io_sample_out_TDATA_T_7, _io_sample_out_TDATA_T_9) @[Cat.scala 33:92]
    node io_sample_out_TDATA_lo_3 = cat(io_sample_out_TDATA_lo_hi_2, _io_sample_out_TDATA_T_10) @[Cat.scala 33:92]
    node io_sample_out_TDATA_hi_lo_2 = cat(_io_sample_out_TDATA_T_3, _io_sample_out_TDATA_T_5) @[Cat.scala 33:92]
    node io_sample_out_TDATA_hi_hi_2 = cat(_io_sample_out_TDATA_T, _io_sample_out_TDATA_T_1) @[Cat.scala 33:92]
    node io_sample_out_TDATA_hi_3 = cat(io_sample_out_TDATA_hi_hi_2, io_sample_out_TDATA_hi_lo_2) @[Cat.scala 33:92]
    node _io_sample_out_TDATA_T_11 = cat(io_sample_out_TDATA_hi_3, io_sample_out_TDATA_lo_3) @[Cat.scala 33:92]
    io.sample_out.TDATA <= _io_sample_out_TDATA_T_11 @[Converter.scala 50:25]

  module Queue_4 :
    input clock : Clock
    input reset : Reset
    output io : { flip enq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[2], dest : UInt<1>, last : UInt<1>}}, deq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[2], dest : UInt<1>, last : UInt<1>}}, count : UInt<2>}

    cmem ram : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[2], dest : UInt<1>, last : UInt<1>} [3] @[Decoupled.scala 275:95]
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
    output io : { flip sample_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[2], dest : UInt<1>, last : UInt<1>}}, flip mem : { flip enable_1 : UInt<1>, flip write_1 : UInt<1>, flip addr_1 : UInt<10>, flip dataIn_1 : UInt<64>, dataOut_1 : UInt<64>, flip enable_2 : UInt<1>, flip write_2 : UInt<1>, flip addr_2 : UInt<10>, flip dataIn_2 : UInt<64>, dataOut_2 : UInt<64>}, sample_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[2], dest : UInt<1>, last : UInt<1>}}}

    inst queue of Queue_4 @[Decoupled.scala 377:21]
    queue.clock <= clock
    queue.reset <= reset
    queue.io.enq.valid <= io.sample_in.valid @[Decoupled.scala 379:22]
    queue.io.enq.bits.last <= io.sample_in.bits.last @[Decoupled.scala 380:21]
    queue.io.enq.bits.dest <= io.sample_in.bits.dest @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[0] <= io.sample_in.bits.weights[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[1] <= io.sample_in.bits.weights[1] @[Decoupled.scala 380:21]
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
    io.mem.addr_1 <= queue.io.deq.bits.offset @[TreePE.scala 17:19]
    io.mem.write_1 <= UInt<1>("h0") @[TreePE.scala 18:20]
    io.mem.dataIn_1 <= UInt<1>("h0") @[TreePE.scala 19:21]
    io.mem.enable_1 <= UInt<1>("h1") @[TreePE.scala 20:21]
    io.mem.addr_2 <= UInt<1>("h0") @[TreePE.scala 22:19]
    io.mem.write_2 <= UInt<1>("h0") @[TreePE.scala 23:20]
    io.mem.dataIn_2 <= UInt<1>("h0") @[TreePE.scala 24:21]
    io.mem.enable_2 <= UInt<1>("h0") @[TreePE.scala 25:21]
    node attr_id = bits(io.mem.dataOut_1, 33, 32) @[TreePE.scala 29:35]
    node threshold = bits(io.mem.dataOut_1, 19, 0) @[TreePE.scala 30:37]
    node nodeRA = bits(io.mem.dataOut_1, 31, 20) @[TreePE.scala 31:34]
    node leftChildInfo = bits(io.mem.dataOut_1, 43, 34) @[TreePE.scala 32:41]
    node rightChildInfo = bits(io.mem.dataOut_1, 53, 44) @[TreePE.scala 33:42]
    node leftChildType = bits(io.mem.dataOut_1, 54, 54) @[TreePE.scala 34:41]
    node rightChildType = bits(io.mem.dataOut_1, 55, 55) @[TreePE.scala 35:42]
    node is_valid = bits(io.mem.dataOut_1, 56, 56) @[TreePE.scala 36:36]
    node depth_indicator = bits(io.mem.dataOut_1, 59, 57) @[TreePE.scala 37:43]
    reg REG : Fixed<16><<8>>[4], clock with :
      reset => (UInt<1>("h0"), REG) @[TreePE.scala 39:43]
    REG <= queue.io.deq.bits.features @[TreePE.scala 39:43]
    io.sample_out.bits.features <= REG @[TreePE.scala 39:33]
    reg REG_1 : Fixed<16><<8>>[2], clock with :
      reset => (UInt<1>("h0"), REG_1) @[TreePE.scala 40:42]
    REG_1 <= queue.io.deq.bits.weights @[TreePE.scala 40:42]
    io.sample_out.bits.weights <= REG_1 @[TreePE.scala 40:32]
    reg io_sample_out_bits_tree_to_exec_REG : UInt, clock with :
      reset => (UInt<1>("h0"), io_sample_out_bits_tree_to_exec_REG) @[TreePE.scala 41:47]
    io_sample_out_bits_tree_to_exec_REG <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 41:47]
    io.sample_out.bits.tree_to_exec <= io_sample_out_bits_tree_to_exec_REG @[TreePE.scala 41:37]
    reg REG_2 : Fixed<16><<8>>[4], clock with :
      reset => (UInt<1>("h0"), REG_2) @[TreePE.scala 42:41]
    REG_2 <= queue.io.deq.bits.scores @[TreePE.scala 42:41]
    io.sample_out.bits.scores <= REG_2 @[TreePE.scala 42:31]
    wire offset : UInt<10> @[TreePE.scala 45:24]
    wire shift : UInt<1> @[TreePE.scala 46:23]
    reg features_bits : Fixed<16><<8>>[4], clock with :
      reset => (UInt<1>("h0"), features_bits) @[TreePE.scala 47:34]
    features_bits <= queue.io.deq.bits.features @[TreePE.scala 47:34]
    node _T = asFixedPoint(threshold, 8) @[TreePE.scala 48:59]
    node _T_1 = lt(features_bits[attr_id], _T) @[TreePE.scala 48:35]
    when _T_1 : @[TreePE.scala 48:66]
      shift <= leftChildType @[TreePE.scala 49:15]
      offset <= leftChildInfo @[TreePE.scala 50:16]
    else :
      shift <= rightChildType @[TreePE.scala 52:15]
      offset <= rightChildInfo @[TreePE.scala 53:16]
    node _T_2 = eq(shift, UInt<1>("h0")) @[TreePE.scala 55:18]
    when _T_2 : @[TreePE.scala 55:30]
      reg io_sample_out_bits_offset_REG : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_offset_REG) @[TreePE.scala 56:45]
      io_sample_out_bits_offset_REG <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 56:45]
      io.sample_out.bits.offset <= io_sample_out_bits_offset_REG @[TreePE.scala 56:35]
      io.sample_out.bits.shift <= UInt<1>("h0") @[TreePE.scala 57:34]
      io.sample_out.bits.search_for_root <= UInt<1>("h1") @[TreePE.scala 58:44]
      reg scores_bits : Fixed<16><<8>>[4], clock with :
        reset => (UInt<1>("h0"), scores_bits) @[TreePE.scala 59:34]
      scores_bits <= queue.io.deq.bits.scores @[TreePE.scala 59:34]
      reg weights_bits : Fixed<16><<8>>[2], clock with :
        reset => (UInt<1>("h0"), weights_bits) @[TreePE.scala 60:35]
      weights_bits <= queue.io.deq.bits.weights @[TreePE.scala 60:35]
      when is_valid : @[TreePE.scala 61:23]
        node _T_3 = bits(offset, 1, 0)
        node _io_sample_out_bits_scores_T = bits(offset, 1, 0)
        node _io_sample_out_bits_scores_T_1 = bits(depth_indicator, 0, 0)
        node _io_sample_out_bits_scores_T_2 = add(scores_bits[_io_sample_out_bits_scores_T], weights_bits[_io_sample_out_bits_scores_T_1]) @[TreePE.scala 62:70]
        node _io_sample_out_bits_scores_T_3 = tail(_io_sample_out_bits_scores_T_2, 1) @[TreePE.scala 62:70]
        node _io_sample_out_bits_scores_T_4 = asFixedPoint(_io_sample_out_bits_scores_T_3, 8) @[TreePE.scala 62:70]
        io.sample_out.bits.scores[_T_3] <= _io_sample_out_bits_scores_T_4 @[TreePE.scala 62:47]
      else :
        node _T_4 = bits(offset, 1, 0)
        node _io_sample_out_bits_scores_T_5 = bits(offset, 1, 0)
        io.sample_out.bits.scores[_T_4] <= scores_bits[_io_sample_out_bits_scores_T_5] @[TreePE.scala 64:47]
    else :
      io.sample_out.bits.offset <= offset @[TreePE.scala 68:35]
      reg REG_3 : Fixed<16><<8>>[4], clock with :
        reset => (UInt<1>("h0"), REG_3) @[TreePE.scala 69:45]
      REG_3 <= queue.io.deq.bits.scores @[TreePE.scala 69:45]
      io.sample_out.bits.scores <= REG_3 @[TreePE.scala 69:35]
      io.sample_out.bits.shift <= UInt<1>("h0") @[TreePE.scala 70:34]
      io.sample_out.bits.search_for_root <= UInt<1>("h0") @[TreePE.scala 71:44]
    reg REG_4 : UInt, clock with :
      reset => (UInt<1>("h0"), REG_4) @[TreePE.scala 109:17]
    REG_4 <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 109:17]
    node _T_5 = eq(REG_4, UInt<2>("h3")) @[TreePE.scala 109:43]
    when _T_5 : @[TreePE.scala 109:61]
      io.sample_out.bits.dest <= UInt<1>("h1") @[TreePE.scala 110:31]
    else :
      io.sample_out.bits.dest <= UInt<1>("h0") @[TreePE.scala 112:31]
    reg io_sample_out_bits_last_REG : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_sample_out_bits_last_REG) @[TreePE.scala 115:39]
    io_sample_out_bits_last_REG <= queue.io.deq.bits.last @[TreePE.scala 115:39]
    io.sample_out.bits.last <= io_sample_out_bits_last_REG @[TreePE.scala 115:29]
    reg io_sample_out_valid_REG : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_sample_out_valid_REG) @[TreePE.scala 116:35]
    io_sample_out_valid_REG <= queue.io.deq.valid @[TreePE.scala 116:35]
    io.sample_out.valid <= io_sample_out_valid_REG @[TreePE.scala 116:25]
    reg queue_io_deq_ready_REG : UInt<1>, clock with :
      reset => (UInt<1>("h0"), queue_io_deq_ready_REG) @[TreePE.scala 117:27]
    queue_io_deq_ready_REG <= io.sample_out.ready @[TreePE.scala 117:27]
    queue.io.deq.ready <= queue_io_deq_ready_REG @[TreePE.scala 117:17]

  module TreePEwithBRAM :
    input clock : Clock
    input reset : Reset
    output pe_io : { flip sample_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[2], dest : UInt<1>, last : UInt<1>}}, flip mem : { flip enable_1 : UInt<1>, flip write_1 : UInt<1>, flip addr_1 : UInt<10>, flip dataIn_1 : UInt<64>, dataOut_1 : UInt<64>, flip enable_2 : UInt<1>, flip write_2 : UInt<1>, flip addr_2 : UInt<10>, flip dataIn_2 : UInt<64>, dataOut_2 : UInt<64>}, sample_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[2], dest : UInt<1>, last : UInt<1>}}}

    inst pe of TreePE @[TreePE.scala 148:18]
    pe.clock <= clock
    pe.reset <= reset
    pe_io.sample_out.bits <= pe.io.sample_out.bits @[TreePE.scala 150:9]
    pe_io.sample_out.valid <= pe.io.sample_out.valid @[TreePE.scala 150:9]
    pe.io.sample_out.ready <= pe_io.sample_out.ready @[TreePE.scala 150:9]
    pe.io.mem <= pe_io.mem @[TreePE.scala 150:9]
    pe.io.sample_in <= pe_io.sample_in @[TreePE.scala 150:9]

  module Queue_5 :
    input clock : Clock
    input reset : Reset
    output io : { flip enq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[2], dest : UInt<1>, last : UInt<1>}}, deq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[2], dest : UInt<1>, last : UInt<1>}}, count : UInt<2>}

    cmem ram : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[2], dest : UInt<1>, last : UInt<1>} [3] @[Decoupled.scala 275:95]
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
    output io : { flip sample_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[2], dest : UInt<1>, last : UInt<1>}}, flip mem : { flip enable_1 : UInt<1>, flip write_1 : UInt<1>, flip addr_1 : UInt<10>, flip dataIn_1 : UInt<64>, dataOut_1 : UInt<64>, flip enable_2 : UInt<1>, flip write_2 : UInt<1>, flip addr_2 : UInt<10>, flip dataIn_2 : UInt<64>, dataOut_2 : UInt<64>}, sample_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[2], dest : UInt<1>, last : UInt<1>}}}

    inst queue of Queue_5 @[Decoupled.scala 377:21]
    queue.clock <= clock
    queue.reset <= reset
    queue.io.enq.valid <= io.sample_in.valid @[Decoupled.scala 379:22]
    queue.io.enq.bits.last <= io.sample_in.bits.last @[Decoupled.scala 380:21]
    queue.io.enq.bits.dest <= io.sample_in.bits.dest @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[0] <= io.sample_in.bits.weights[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[1] <= io.sample_in.bits.weights[1] @[Decoupled.scala 380:21]
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
    io.mem.addr_1 <= queue.io.deq.bits.offset @[TreePE.scala 17:19]
    io.mem.write_1 <= UInt<1>("h0") @[TreePE.scala 18:20]
    io.mem.dataIn_1 <= UInt<1>("h0") @[TreePE.scala 19:21]
    io.mem.enable_1 <= UInt<1>("h1") @[TreePE.scala 20:21]
    io.mem.addr_2 <= UInt<1>("h0") @[TreePE.scala 22:19]
    io.mem.write_2 <= UInt<1>("h0") @[TreePE.scala 23:20]
    io.mem.dataIn_2 <= UInt<1>("h0") @[TreePE.scala 24:21]
    io.mem.enable_2 <= UInt<1>("h0") @[TreePE.scala 25:21]
    node attr_id = bits(io.mem.dataOut_1, 33, 32) @[TreePE.scala 29:35]
    node threshold = bits(io.mem.dataOut_1, 19, 0) @[TreePE.scala 30:37]
    node nodeRA = bits(io.mem.dataOut_1, 31, 20) @[TreePE.scala 31:34]
    node leftChildInfo = bits(io.mem.dataOut_1, 43, 34) @[TreePE.scala 32:41]
    node rightChildInfo = bits(io.mem.dataOut_1, 53, 44) @[TreePE.scala 33:42]
    node leftChildType = bits(io.mem.dataOut_1, 54, 54) @[TreePE.scala 34:41]
    node rightChildType = bits(io.mem.dataOut_1, 55, 55) @[TreePE.scala 35:42]
    node is_valid = bits(io.mem.dataOut_1, 56, 56) @[TreePE.scala 36:36]
    node depth_indicator = bits(io.mem.dataOut_1, 59, 57) @[TreePE.scala 37:43]
    reg REG : Fixed<16><<8>>[4], clock with :
      reset => (UInt<1>("h0"), REG) @[TreePE.scala 39:43]
    REG <= queue.io.deq.bits.features @[TreePE.scala 39:43]
    io.sample_out.bits.features <= REG @[TreePE.scala 39:33]
    reg REG_1 : Fixed<16><<8>>[2], clock with :
      reset => (UInt<1>("h0"), REG_1) @[TreePE.scala 40:42]
    REG_1 <= queue.io.deq.bits.weights @[TreePE.scala 40:42]
    io.sample_out.bits.weights <= REG_1 @[TreePE.scala 40:32]
    reg io_sample_out_bits_tree_to_exec_REG : UInt, clock with :
      reset => (UInt<1>("h0"), io_sample_out_bits_tree_to_exec_REG) @[TreePE.scala 41:47]
    io_sample_out_bits_tree_to_exec_REG <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 41:47]
    io.sample_out.bits.tree_to_exec <= io_sample_out_bits_tree_to_exec_REG @[TreePE.scala 41:37]
    reg REG_2 : Fixed<16><<8>>[4], clock with :
      reset => (UInt<1>("h0"), REG_2) @[TreePE.scala 42:41]
    REG_2 <= queue.io.deq.bits.scores @[TreePE.scala 42:41]
    io.sample_out.bits.scores <= REG_2 @[TreePE.scala 42:31]
    reg REG_3 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), REG_3) @[TreePE.scala 74:19]
    REG_3 <= queue.io.deq.bits.search_for_root @[TreePE.scala 74:19]
    when REG_3 : @[TreePE.scala 74:48]
      io.sample_out.bits.search_for_root <= UInt<1>("h1") @[TreePE.scala 75:44]
      reg io_sample_out_bits_offset_REG : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_offset_REG) @[TreePE.scala 76:45]
      io_sample_out_bits_offset_REG <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 76:45]
      io.sample_out.bits.offset <= io_sample_out_bits_offset_REG @[TreePE.scala 76:35]
      io.sample_out.bits.shift <= UInt<1>("h0") @[TreePE.scala 77:34]
    else :
      wire offset : UInt<10> @[TreePE.scala 79:26]
      wire shift : UInt<1> @[TreePE.scala 80:25]
      reg features_bits : Fixed<16><<8>>[4], clock with :
        reset => (UInt<1>("h0"), features_bits) @[TreePE.scala 81:36]
      features_bits <= queue.io.deq.bits.features @[TreePE.scala 81:36]
      node _T = asFixedPoint(threshold, 8) @[TreePE.scala 82:61]
      node _T_1 = lt(features_bits[attr_id], _T) @[TreePE.scala 82:37]
      when _T_1 : @[TreePE.scala 82:68]
        shift <= leftChildType @[TreePE.scala 83:17]
        offset <= leftChildInfo @[TreePE.scala 84:18]
      else :
        shift <= rightChildType @[TreePE.scala 86:17]
        offset <= rightChildInfo @[TreePE.scala 87:18]
      node _T_2 = eq(shift, UInt<1>("h0")) @[TreePE.scala 89:20]
      when _T_2 : @[TreePE.scala 89:32]
        reg io_sample_out_bits_offset_REG_1 : UInt, clock with :
          reset => (UInt<1>("h0"), io_sample_out_bits_offset_REG_1) @[TreePE.scala 90:47]
        io_sample_out_bits_offset_REG_1 <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 90:47]
        io.sample_out.bits.offset <= io_sample_out_bits_offset_REG_1 @[TreePE.scala 90:37]
        io.sample_out.bits.shift <= UInt<1>("h0") @[TreePE.scala 91:36]
        io.sample_out.bits.search_for_root <= UInt<1>("h1") @[TreePE.scala 92:46]
        reg scores_bits : Fixed<16><<8>>[4], clock with :
          reset => (UInt<1>("h0"), scores_bits) @[TreePE.scala 93:36]
        scores_bits <= queue.io.deq.bits.scores @[TreePE.scala 93:36]
        reg weights_bits : Fixed<16><<8>>[2], clock with :
          reset => (UInt<1>("h0"), weights_bits) @[TreePE.scala 94:37]
        weights_bits <= queue.io.deq.bits.weights @[TreePE.scala 94:37]
        when is_valid : @[TreePE.scala 95:25]
          node _T_3 = bits(offset, 1, 0)
          node _io_sample_out_bits_scores_T = bits(offset, 1, 0)
          node _io_sample_out_bits_scores_T_1 = bits(depth_indicator, 0, 0)
          node _io_sample_out_bits_scores_T_2 = add(scores_bits[_io_sample_out_bits_scores_T], weights_bits[_io_sample_out_bits_scores_T_1]) @[TreePE.scala 96:72]
          node _io_sample_out_bits_scores_T_3 = tail(_io_sample_out_bits_scores_T_2, 1) @[TreePE.scala 96:72]
          node _io_sample_out_bits_scores_T_4 = asFixedPoint(_io_sample_out_bits_scores_T_3, 8) @[TreePE.scala 96:72]
          io.sample_out.bits.scores[_T_3] <= _io_sample_out_bits_scores_T_4 @[TreePE.scala 96:49]
        else :
          node _T_4 = bits(offset, 1, 0)
          node _io_sample_out_bits_scores_T_5 = bits(offset, 1, 0)
          io.sample_out.bits.scores[_T_4] <= scores_bits[_io_sample_out_bits_scores_T_5] @[TreePE.scala 98:49]
      else :
        io.sample_out.bits.offset <= offset @[TreePE.scala 101:37]
        reg REG_4 : Fixed<16><<8>>[4], clock with :
          reset => (UInt<1>("h0"), REG_4) @[TreePE.scala 102:47]
        REG_4 <= queue.io.deq.bits.scores @[TreePE.scala 102:47]
        io.sample_out.bits.scores <= REG_4 @[TreePE.scala 102:37]
        io.sample_out.bits.shift <= UInt<1>("h0") @[TreePE.scala 103:36]
        io.sample_out.bits.search_for_root <= UInt<1>("h0") @[TreePE.scala 104:46]
    reg REG_5 : UInt, clock with :
      reset => (UInt<1>("h0"), REG_5) @[TreePE.scala 109:17]
    REG_5 <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 109:17]
    node _T_5 = eq(REG_5, UInt<2>("h3")) @[TreePE.scala 109:43]
    when _T_5 : @[TreePE.scala 109:61]
      io.sample_out.bits.dest <= UInt<1>("h1") @[TreePE.scala 110:31]
    else :
      io.sample_out.bits.dest <= UInt<1>("h0") @[TreePE.scala 112:31]
    reg io_sample_out_bits_last_REG : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_sample_out_bits_last_REG) @[TreePE.scala 115:39]
    io_sample_out_bits_last_REG <= queue.io.deq.bits.last @[TreePE.scala 115:39]
    io.sample_out.bits.last <= io_sample_out_bits_last_REG @[TreePE.scala 115:29]
    reg io_sample_out_valid_REG : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_sample_out_valid_REG) @[TreePE.scala 116:35]
    io_sample_out_valid_REG <= queue.io.deq.valid @[TreePE.scala 116:35]
    io.sample_out.valid <= io_sample_out_valid_REG @[TreePE.scala 116:25]
    reg queue_io_deq_ready_REG : UInt<1>, clock with :
      reset => (UInt<1>("h0"), queue_io_deq_ready_REG) @[TreePE.scala 117:27]
    queue_io_deq_ready_REG <= io.sample_out.ready @[TreePE.scala 117:27]
    queue.io.deq.ready <= queue_io_deq_ready_REG @[TreePE.scala 117:17]

  module TreePEwithBRAM_1 :
    input clock : Clock
    input reset : Reset
    output pe_io : { flip sample_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[2], dest : UInt<1>, last : UInt<1>}}, flip mem : { flip enable_1 : UInt<1>, flip write_1 : UInt<1>, flip addr_1 : UInt<10>, flip dataIn_1 : UInt<64>, dataOut_1 : UInt<64>, flip enable_2 : UInt<1>, flip write_2 : UInt<1>, flip addr_2 : UInt<10>, flip dataIn_2 : UInt<64>, dataOut_2 : UInt<64>}, sample_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[2], dest : UInt<1>, last : UInt<1>}}}

    inst pe of TreePE_1 @[TreePE.scala 148:18]
    pe.clock <= clock
    pe.reset <= reset
    pe_io.sample_out.bits <= pe.io.sample_out.bits @[TreePE.scala 150:9]
    pe_io.sample_out.valid <= pe.io.sample_out.valid @[TreePE.scala 150:9]
    pe.io.sample_out.ready <= pe_io.sample_out.ready @[TreePE.scala 150:9]
    pe.io.mem <= pe_io.mem @[TreePE.scala 150:9]
    pe.io.sample_in <= pe_io.sample_in @[TreePE.scala 150:9]

  module BRAMLikeMem1 :
    input clock : Clock
    input reset : Reset
    output io : { flip enable_1 : UInt<1>, flip write_1 : UInt<1>, flip addr_1 : UInt<10>, flip dataIn_1 : UInt<64>, dataOut_1 : UInt<64>, flip enable_2 : UInt<1>, flip write_2 : UInt<1>, flip addr_2 : UInt<10>, flip dataIn_2 : UInt<64>, dataOut_2 : UInt<64>}

    smem mem : UInt<64> [1024] @[ME.scala 58:24]
    when io.write_1 : @[ME.scala 60:20]
      write mport MPORT = mem[io.addr_1], clock
      MPORT <= io.dataIn_1
    wire _io_dataOut_1_WIRE : UInt @[ME.scala 61:27]
    _io_dataOut_1_WIRE is invalid @[ME.scala 61:27]
    when io.enable_1 : @[ME.scala 61:27]
      _io_dataOut_1_WIRE <= io.addr_1 @[ME.scala 61:27]
      node _io_dataOut_1_T = or(_io_dataOut_1_WIRE, UInt<10>("h0")) @[ME.scala 61:27]
      node _io_dataOut_1_T_1 = bits(_io_dataOut_1_T, 9, 0) @[ME.scala 61:27]
      read mport io_dataOut_1_MPORT = mem[_io_dataOut_1_T_1], clock @[ME.scala 61:27]
    io.dataOut_1 <= io_dataOut_1_MPORT @[ME.scala 61:16]
    when io.write_2 : @[ME.scala 63:20]
      write mport MPORT_1 = mem[io.addr_2], clock
      MPORT_1 <= io.dataIn_2
    wire _io_dataOut_2_WIRE : UInt @[ME.scala 64:27]
    _io_dataOut_2_WIRE is invalid @[ME.scala 64:27]
    when io.enable_2 : @[ME.scala 64:27]
      _io_dataOut_2_WIRE <= io.addr_2 @[ME.scala 64:27]
      node _io_dataOut_2_T = or(_io_dataOut_2_WIRE, UInt<10>("h0")) @[ME.scala 64:27]
      node _io_dataOut_2_T_1 = bits(_io_dataOut_2_T, 9, 0) @[ME.scala 64:27]
      read mport io_dataOut_2_MPORT = mem[_io_dataOut_2_T_1], clock @[ME.scala 64:27]
    io.dataOut_2 <= io_dataOut_2_MPORT @[ME.scala 64:16]
    node _T = lt(io.addr_1, UInt<11>("h400")) @[ME.scala 66:21]
    node _T_1 = lt(io.addr_2, UInt<11>("h400")) @[ME.scala 66:48]
    node _T_2 = and(_T, _T_1) @[ME.scala 66:34]
    node _T_3 = asUInt(reset) @[ME.scala 66:9]
    node _T_4 = eq(_T_3, UInt<1>("h0")) @[ME.scala 66:9]
    when _T_4 : @[ME.scala 66:9]
      node _T_5 = eq(_T_2, UInt<1>("h0")) @[ME.scala 66:9]
      when _T_5 : @[ME.scala 66:9]
        printf(clock, UInt<1>("h1"), "Assertion failed\n    at ME.scala:66 assert((io.addr_1 < entries.U) && (io.addr_2 < entries.U))\n") : printf @[ME.scala 66:9]
      assert(clock, _T_2, UInt<1>("h1"), "") : assert @[ME.scala 66:9]

  module BRAMLikeMem1_1 :
    input clock : Clock
    input reset : Reset
    output io : { flip enable_1 : UInt<1>, flip write_1 : UInt<1>, flip addr_1 : UInt<10>, flip dataIn_1 : UInt<64>, dataOut_1 : UInt<64>, flip enable_2 : UInt<1>, flip write_2 : UInt<1>, flip addr_2 : UInt<10>, flip dataIn_2 : UInt<64>, dataOut_2 : UInt<64>}

    smem mem : UInt<64> [1024] @[ME.scala 58:24]
    when io.write_1 : @[ME.scala 60:20]
      write mport MPORT = mem[io.addr_1], clock
      MPORT <= io.dataIn_1
    wire _io_dataOut_1_WIRE : UInt @[ME.scala 61:27]
    _io_dataOut_1_WIRE is invalid @[ME.scala 61:27]
    when io.enable_1 : @[ME.scala 61:27]
      _io_dataOut_1_WIRE <= io.addr_1 @[ME.scala 61:27]
      node _io_dataOut_1_T = or(_io_dataOut_1_WIRE, UInt<10>("h0")) @[ME.scala 61:27]
      node _io_dataOut_1_T_1 = bits(_io_dataOut_1_T, 9, 0) @[ME.scala 61:27]
      read mport io_dataOut_1_MPORT = mem[_io_dataOut_1_T_1], clock @[ME.scala 61:27]
    io.dataOut_1 <= io_dataOut_1_MPORT @[ME.scala 61:16]
    when io.write_2 : @[ME.scala 63:20]
      write mport MPORT_1 = mem[io.addr_2], clock
      MPORT_1 <= io.dataIn_2
    wire _io_dataOut_2_WIRE : UInt @[ME.scala 64:27]
    _io_dataOut_2_WIRE is invalid @[ME.scala 64:27]
    when io.enable_2 : @[ME.scala 64:27]
      _io_dataOut_2_WIRE <= io.addr_2 @[ME.scala 64:27]
      node _io_dataOut_2_T = or(_io_dataOut_2_WIRE, UInt<10>("h0")) @[ME.scala 64:27]
      node _io_dataOut_2_T_1 = bits(_io_dataOut_2_T, 9, 0) @[ME.scala 64:27]
      read mport io_dataOut_2_MPORT = mem[_io_dataOut_2_T_1], clock @[ME.scala 64:27]
    io.dataOut_2 <= io_dataOut_2_MPORT @[ME.scala 64:16]
    node _T = lt(io.addr_1, UInt<11>("h400")) @[ME.scala 66:21]
    node _T_1 = lt(io.addr_2, UInt<11>("h400")) @[ME.scala 66:48]
    node _T_2 = and(_T, _T_1) @[ME.scala 66:34]
    node _T_3 = asUInt(reset) @[ME.scala 66:9]
    node _T_4 = eq(_T_3, UInt<1>("h0")) @[ME.scala 66:9]
    when _T_4 : @[ME.scala 66:9]
      node _T_5 = eq(_T_2, UInt<1>("h0")) @[ME.scala 66:9]
      when _T_5 : @[ME.scala 66:9]
        printf(clock, UInt<1>("h1"), "Assertion failed\n    at ME.scala:66 assert((io.addr_1 < entries.U) && (io.addr_2 < entries.U))\n") : printf @[ME.scala 66:9]
      assert(clock, _T_2, UInt<1>("h1"), "") : assert @[ME.scala 66:9]

  module Queue_6 :
    input clock : Clock
    input reset : Reset
    output io : { flip enq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[2], dest : UInt<1>, last : UInt<1>}}, deq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[2], dest : UInt<1>, last : UInt<1>}}, count : UInt<8>}

    cmem ram : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[2], dest : UInt<1>, last : UInt<1>} [128] @[Decoupled.scala 275:95]
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

  module Queue_7 :
    input clock : Clock
    input reset : Reset
    output io : { flip enq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[2], dest : UInt<1>, last : UInt<1>}}, deq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[2], dest : UInt<1>, last : UInt<1>}}, count : UInt<8>}

    cmem ram : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[2], dest : UInt<1>, last : UInt<1>} [128] @[Decoupled.scala 275:95]
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
    output io : { flip sample_entering : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[2], dest : UInt<1>, last : UInt<1>}}, flip sample_looping : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[2], dest : UInt<1>, last : UInt<1>}}, sample_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[2], dest : UInt<1>, last : UInt<1>}}}

    inst queue_entering of Queue_6 @[Decoupled.scala 377:21]
    queue_entering.clock <= clock
    queue_entering.reset <= reset
    queue_entering.io.enq.valid <= io.sample_entering.valid @[Decoupled.scala 379:22]
    queue_entering.io.enq.bits.last <= io.sample_entering.bits.last @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.dest <= io.sample_entering.bits.dest @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.weights[0] <= io.sample_entering.bits.weights[0] @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.weights[1] <= io.sample_entering.bits.weights[1] @[Decoupled.scala 380:21]
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
    inst queue_looping of Queue_7 @[Decoupled.scala 377:21]
    queue_looping.clock <= clock
    queue_looping.reset <= reset
    queue_looping.io.enq.valid <= io.sample_looping.valid @[Decoupled.scala 379:22]
    queue_looping.io.enq.bits.last <= io.sample_looping.bits.last @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.dest <= io.sample_looping.bits.dest @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.weights[0] <= io.sample_looping.bits.weights[0] @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.weights[1] <= io.sample_looping.bits.weights[1] @[Decoupled.scala 380:21]
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
    when queue_looping.io.deq.valid : @[Interconnect.scala 65:30]
      io.sample_out.bits <= queue_looping.io.deq.bits @[Interconnect.scala 66:28]
      io.sample_out.valid <= UInt<1>("h1") @[Interconnect.scala 67:29]
      queue_looping.io.deq.ready <= io.sample_out.ready @[Interconnect.scala 68:29]
      queue_entering.io.deq.ready <= UInt<1>("h0") @[Interconnect.scala 69:30]
    else :
      when queue_entering.io.deq.valid : @[Interconnect.scala 70:37]
        io.sample_out.bits <= queue_entering.io.deq.bits @[Interconnect.scala 71:28]
        io.sample_out.valid <= UInt<1>("h1") @[Interconnect.scala 72:29]
        queue_entering.io.deq.ready <= io.sample_out.ready @[Interconnect.scala 73:30]
        queue_looping.io.deq.ready <= UInt<1>("h1") @[Interconnect.scala 74:29]
      else :
        io.sample_out.bits <= queue_entering.io.deq.bits @[Interconnect.scala 76:28]
        io.sample_out.valid <= UInt<1>("h0") @[Interconnect.scala 77:29]
        queue_looping.io.deq.ready <= UInt<1>("h1") @[Interconnect.scala 78:29]
        queue_entering.io.deq.ready <= UInt<1>("h1") @[Interconnect.scala 79:30]

  module Queue_8 :
    input clock : Clock
    input reset : Reset
    output io : { flip enq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[2], dest : UInt<1>, last : UInt<1>}}, deq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[2], dest : UInt<1>, last : UInt<1>}}, count : UInt<2>}

    cmem ram : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[2], dest : UInt<1>, last : UInt<1>} [3] @[Decoupled.scala 275:95]
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
    output io : { flip sample_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[2], dest : UInt<1>, last : UInt<1>}}, sample_looping : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[2], dest : UInt<1>, last : UInt<1>}}, sample_leaving : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[2], dest : UInt<1>, last : UInt<1>}}}

    inst queue of Queue_8 @[Decoupled.scala 377:21]
    queue.clock <= clock
    queue.reset <= reset
    queue.io.enq.valid <= io.sample_in.valid @[Decoupled.scala 379:22]
    queue.io.enq.bits.last <= io.sample_in.bits.last @[Decoupled.scala 380:21]
    queue.io.enq.bits.dest <= io.sample_in.bits.dest @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[0] <= io.sample_in.bits.weights[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[1] <= io.sample_in.bits.weights[1] @[Decoupled.scala 380:21]
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

  module Queue_9 :
    input clock : Clock
    input reset : Reset
    output io : { flip enq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[2], dest : UInt<1>, last : UInt<1>}}, deq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[2], dest : UInt<1>, last : UInt<1>}}, count : UInt<2>}

    cmem ram : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[2], dest : UInt<1>, last : UInt<1>} [3] @[Decoupled.scala 275:95]
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
    output io : { flip sample_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[2], dest : UInt<1>, last : UInt<1>}}, sample_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[2], dest : UInt<1>, last : UInt<1>}}}

    inst queue of Queue_9 @[Decoupled.scala 377:21]
    queue.clock <= clock
    queue.reset <= reset
    queue.io.enq.valid <= io.sample_in.valid @[Decoupled.scala 379:22]
    queue.io.enq.bits.last <= io.sample_in.bits.last @[Decoupled.scala 380:21]
    queue.io.enq.bits.dest <= io.sample_in.bits.dest @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[0] <= io.sample_in.bits.weights[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[1] <= io.sample_in.bits.weights[1] @[Decoupled.scala 380:21]
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

  module Queue_10 :
    input clock : Clock
    input reset : Reset
    output io : { flip enq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[2], dest : UInt<1>, last : UInt<1>}}, deq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[2], dest : UInt<1>, last : UInt<1>}}, count : UInt<2>}

    cmem ram : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[2], dest : UInt<1>, last : UInt<1>} [3] @[Decoupled.scala 275:95]
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
    output io : { flip sample_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[2], dest : UInt<1>, last : UInt<1>}}, flip mem : { flip enable_1 : UInt<1>, flip write_1 : UInt<1>, flip addr_1 : UInt<10>, flip dataIn_1 : UInt<64>, dataOut_1 : UInt<64>, flip enable_2 : UInt<1>, flip write_2 : UInt<1>, flip addr_2 : UInt<10>, flip dataIn_2 : UInt<64>, dataOut_2 : UInt<64>}, sample_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[2], dest : UInt<1>, last : UInt<1>}}}

    inst queue of Queue_10 @[Decoupled.scala 377:21]
    queue.clock <= clock
    queue.reset <= reset
    queue.io.enq.valid <= io.sample_in.valid @[Decoupled.scala 379:22]
    queue.io.enq.bits.last <= io.sample_in.bits.last @[Decoupled.scala 380:21]
    queue.io.enq.bits.dest <= io.sample_in.bits.dest @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[0] <= io.sample_in.bits.weights[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[1] <= io.sample_in.bits.weights[1] @[Decoupled.scala 380:21]
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
    io.mem.addr_1 <= queue.io.deq.bits.offset @[TreePE.scala 17:19]
    io.mem.write_1 <= UInt<1>("h0") @[TreePE.scala 18:20]
    io.mem.dataIn_1 <= UInt<1>("h0") @[TreePE.scala 19:21]
    io.mem.enable_1 <= UInt<1>("h1") @[TreePE.scala 20:21]
    io.mem.addr_2 <= UInt<1>("h0") @[TreePE.scala 22:19]
    io.mem.write_2 <= UInt<1>("h0") @[TreePE.scala 23:20]
    io.mem.dataIn_2 <= UInt<1>("h0") @[TreePE.scala 24:21]
    io.mem.enable_2 <= UInt<1>("h0") @[TreePE.scala 25:21]
    node attr_id = bits(io.mem.dataOut_1, 33, 32) @[TreePE.scala 29:35]
    node threshold = bits(io.mem.dataOut_1, 19, 0) @[TreePE.scala 30:37]
    node nodeRA = bits(io.mem.dataOut_1, 31, 20) @[TreePE.scala 31:34]
    node leftChildInfo = bits(io.mem.dataOut_1, 43, 34) @[TreePE.scala 32:41]
    node rightChildInfo = bits(io.mem.dataOut_1, 53, 44) @[TreePE.scala 33:42]
    node leftChildType = bits(io.mem.dataOut_1, 54, 54) @[TreePE.scala 34:41]
    node rightChildType = bits(io.mem.dataOut_1, 55, 55) @[TreePE.scala 35:42]
    node is_valid = bits(io.mem.dataOut_1, 56, 56) @[TreePE.scala 36:36]
    node depth_indicator = bits(io.mem.dataOut_1, 59, 57) @[TreePE.scala 37:43]
    reg REG : Fixed<16><<8>>[4], clock with :
      reset => (UInt<1>("h0"), REG) @[TreePE.scala 39:43]
    REG <= queue.io.deq.bits.features @[TreePE.scala 39:43]
    io.sample_out.bits.features <= REG @[TreePE.scala 39:33]
    reg REG_1 : Fixed<16><<8>>[2], clock with :
      reset => (UInt<1>("h0"), REG_1) @[TreePE.scala 40:42]
    REG_1 <= queue.io.deq.bits.weights @[TreePE.scala 40:42]
    io.sample_out.bits.weights <= REG_1 @[TreePE.scala 40:32]
    reg io_sample_out_bits_tree_to_exec_REG : UInt, clock with :
      reset => (UInt<1>("h0"), io_sample_out_bits_tree_to_exec_REG) @[TreePE.scala 41:47]
    io_sample_out_bits_tree_to_exec_REG <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 41:47]
    io.sample_out.bits.tree_to_exec <= io_sample_out_bits_tree_to_exec_REG @[TreePE.scala 41:37]
    reg REG_2 : Fixed<16><<8>>[4], clock with :
      reset => (UInt<1>("h0"), REG_2) @[TreePE.scala 42:41]
    REG_2 <= queue.io.deq.bits.scores @[TreePE.scala 42:41]
    io.sample_out.bits.scores <= REG_2 @[TreePE.scala 42:31]
    wire offset : UInt<10> @[TreePE.scala 45:24]
    wire shift : UInt<1> @[TreePE.scala 46:23]
    reg features_bits : Fixed<16><<8>>[4], clock with :
      reset => (UInt<1>("h0"), features_bits) @[TreePE.scala 47:34]
    features_bits <= queue.io.deq.bits.features @[TreePE.scala 47:34]
    node _T = asFixedPoint(threshold, 8) @[TreePE.scala 48:59]
    node _T_1 = lt(features_bits[attr_id], _T) @[TreePE.scala 48:35]
    when _T_1 : @[TreePE.scala 48:66]
      shift <= leftChildType @[TreePE.scala 49:15]
      offset <= leftChildInfo @[TreePE.scala 50:16]
    else :
      shift <= rightChildType @[TreePE.scala 52:15]
      offset <= rightChildInfo @[TreePE.scala 53:16]
    node _T_2 = eq(shift, UInt<1>("h0")) @[TreePE.scala 55:18]
    when _T_2 : @[TreePE.scala 55:30]
      reg io_sample_out_bits_offset_REG : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_offset_REG) @[TreePE.scala 56:45]
      io_sample_out_bits_offset_REG <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 56:45]
      io.sample_out.bits.offset <= io_sample_out_bits_offset_REG @[TreePE.scala 56:35]
      io.sample_out.bits.shift <= UInt<1>("h0") @[TreePE.scala 57:34]
      io.sample_out.bits.search_for_root <= UInt<1>("h1") @[TreePE.scala 58:44]
      reg scores_bits : Fixed<16><<8>>[4], clock with :
        reset => (UInt<1>("h0"), scores_bits) @[TreePE.scala 59:34]
      scores_bits <= queue.io.deq.bits.scores @[TreePE.scala 59:34]
      reg weights_bits : Fixed<16><<8>>[2], clock with :
        reset => (UInt<1>("h0"), weights_bits) @[TreePE.scala 60:35]
      weights_bits <= queue.io.deq.bits.weights @[TreePE.scala 60:35]
      when is_valid : @[TreePE.scala 61:23]
        node _T_3 = bits(offset, 1, 0)
        node _io_sample_out_bits_scores_T = bits(offset, 1, 0)
        node _io_sample_out_bits_scores_T_1 = bits(depth_indicator, 0, 0)
        node _io_sample_out_bits_scores_T_2 = add(scores_bits[_io_sample_out_bits_scores_T], weights_bits[_io_sample_out_bits_scores_T_1]) @[TreePE.scala 62:70]
        node _io_sample_out_bits_scores_T_3 = tail(_io_sample_out_bits_scores_T_2, 1) @[TreePE.scala 62:70]
        node _io_sample_out_bits_scores_T_4 = asFixedPoint(_io_sample_out_bits_scores_T_3, 8) @[TreePE.scala 62:70]
        io.sample_out.bits.scores[_T_3] <= _io_sample_out_bits_scores_T_4 @[TreePE.scala 62:47]
      else :
        node _T_4 = bits(offset, 1, 0)
        node _io_sample_out_bits_scores_T_5 = bits(offset, 1, 0)
        io.sample_out.bits.scores[_T_4] <= scores_bits[_io_sample_out_bits_scores_T_5] @[TreePE.scala 64:47]
    else :
      io.sample_out.bits.offset <= offset @[TreePE.scala 68:35]
      reg REG_3 : Fixed<16><<8>>[4], clock with :
        reset => (UInt<1>("h0"), REG_3) @[TreePE.scala 69:45]
      REG_3 <= queue.io.deq.bits.scores @[TreePE.scala 69:45]
      io.sample_out.bits.scores <= REG_3 @[TreePE.scala 69:35]
      io.sample_out.bits.shift <= UInt<1>("h0") @[TreePE.scala 70:34]
      io.sample_out.bits.search_for_root <= UInt<1>("h0") @[TreePE.scala 71:44]
    reg REG_4 : UInt, clock with :
      reset => (UInt<1>("h0"), REG_4) @[TreePE.scala 109:17]
    REG_4 <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 109:17]
    node _T_5 = eq(REG_4, UInt<2>("h3")) @[TreePE.scala 109:43]
    when _T_5 : @[TreePE.scala 109:61]
      io.sample_out.bits.dest <= UInt<1>("h1") @[TreePE.scala 110:31]
    else :
      io.sample_out.bits.dest <= UInt<1>("h0") @[TreePE.scala 112:31]
    reg io_sample_out_bits_last_REG : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_sample_out_bits_last_REG) @[TreePE.scala 115:39]
    io_sample_out_bits_last_REG <= queue.io.deq.bits.last @[TreePE.scala 115:39]
    io.sample_out.bits.last <= io_sample_out_bits_last_REG @[TreePE.scala 115:29]
    reg io_sample_out_valid_REG : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_sample_out_valid_REG) @[TreePE.scala 116:35]
    io_sample_out_valid_REG <= queue.io.deq.valid @[TreePE.scala 116:35]
    io.sample_out.valid <= io_sample_out_valid_REG @[TreePE.scala 116:25]
    reg queue_io_deq_ready_REG : UInt<1>, clock with :
      reset => (UInt<1>("h0"), queue_io_deq_ready_REG) @[TreePE.scala 117:27]
    queue_io_deq_ready_REG <= io.sample_out.ready @[TreePE.scala 117:27]
    queue.io.deq.ready <= queue_io_deq_ready_REG @[TreePE.scala 117:17]

  module TreePEwithBRAM_2 :
    input clock : Clock
    input reset : Reset
    output pe_io : { flip sample_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[2], dest : UInt<1>, last : UInt<1>}}, flip mem : { flip enable_1 : UInt<1>, flip write_1 : UInt<1>, flip addr_1 : UInt<10>, flip dataIn_1 : UInt<64>, dataOut_1 : UInt<64>, flip enable_2 : UInt<1>, flip write_2 : UInt<1>, flip addr_2 : UInt<10>, flip dataIn_2 : UInt<64>, dataOut_2 : UInt<64>}, sample_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[2], dest : UInt<1>, last : UInt<1>}}}

    inst pe of TreePE_2 @[TreePE.scala 148:18]
    pe.clock <= clock
    pe.reset <= reset
    pe_io.sample_out.bits <= pe.io.sample_out.bits @[TreePE.scala 150:9]
    pe_io.sample_out.valid <= pe.io.sample_out.valid @[TreePE.scala 150:9]
    pe.io.sample_out.ready <= pe_io.sample_out.ready @[TreePE.scala 150:9]
    pe.io.mem <= pe_io.mem @[TreePE.scala 150:9]
    pe.io.sample_in <= pe_io.sample_in @[TreePE.scala 150:9]

  module Queue_11 :
    input clock : Clock
    input reset : Reset
    output io : { flip enq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[2], dest : UInt<1>, last : UInt<1>}}, deq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[2], dest : UInt<1>, last : UInt<1>}}, count : UInt<2>}

    cmem ram : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[2], dest : UInt<1>, last : UInt<1>} [3] @[Decoupled.scala 275:95]
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
    output io : { flip sample_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[2], dest : UInt<1>, last : UInt<1>}}, flip mem : { flip enable_1 : UInt<1>, flip write_1 : UInt<1>, flip addr_1 : UInt<10>, flip dataIn_1 : UInt<64>, dataOut_1 : UInt<64>, flip enable_2 : UInt<1>, flip write_2 : UInt<1>, flip addr_2 : UInt<10>, flip dataIn_2 : UInt<64>, dataOut_2 : UInt<64>}, sample_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[2], dest : UInt<1>, last : UInt<1>}}}

    inst queue of Queue_11 @[Decoupled.scala 377:21]
    queue.clock <= clock
    queue.reset <= reset
    queue.io.enq.valid <= io.sample_in.valid @[Decoupled.scala 379:22]
    queue.io.enq.bits.last <= io.sample_in.bits.last @[Decoupled.scala 380:21]
    queue.io.enq.bits.dest <= io.sample_in.bits.dest @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[0] <= io.sample_in.bits.weights[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[1] <= io.sample_in.bits.weights[1] @[Decoupled.scala 380:21]
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
    io.mem.addr_1 <= queue.io.deq.bits.offset @[TreePE.scala 17:19]
    io.mem.write_1 <= UInt<1>("h0") @[TreePE.scala 18:20]
    io.mem.dataIn_1 <= UInt<1>("h0") @[TreePE.scala 19:21]
    io.mem.enable_1 <= UInt<1>("h1") @[TreePE.scala 20:21]
    io.mem.addr_2 <= UInt<1>("h0") @[TreePE.scala 22:19]
    io.mem.write_2 <= UInt<1>("h0") @[TreePE.scala 23:20]
    io.mem.dataIn_2 <= UInt<1>("h0") @[TreePE.scala 24:21]
    io.mem.enable_2 <= UInt<1>("h0") @[TreePE.scala 25:21]
    node attr_id = bits(io.mem.dataOut_1, 33, 32) @[TreePE.scala 29:35]
    node threshold = bits(io.mem.dataOut_1, 19, 0) @[TreePE.scala 30:37]
    node nodeRA = bits(io.mem.dataOut_1, 31, 20) @[TreePE.scala 31:34]
    node leftChildInfo = bits(io.mem.dataOut_1, 43, 34) @[TreePE.scala 32:41]
    node rightChildInfo = bits(io.mem.dataOut_1, 53, 44) @[TreePE.scala 33:42]
    node leftChildType = bits(io.mem.dataOut_1, 54, 54) @[TreePE.scala 34:41]
    node rightChildType = bits(io.mem.dataOut_1, 55, 55) @[TreePE.scala 35:42]
    node is_valid = bits(io.mem.dataOut_1, 56, 56) @[TreePE.scala 36:36]
    node depth_indicator = bits(io.mem.dataOut_1, 59, 57) @[TreePE.scala 37:43]
    reg REG : Fixed<16><<8>>[4], clock with :
      reset => (UInt<1>("h0"), REG) @[TreePE.scala 39:43]
    REG <= queue.io.deq.bits.features @[TreePE.scala 39:43]
    io.sample_out.bits.features <= REG @[TreePE.scala 39:33]
    reg REG_1 : Fixed<16><<8>>[2], clock with :
      reset => (UInt<1>("h0"), REG_1) @[TreePE.scala 40:42]
    REG_1 <= queue.io.deq.bits.weights @[TreePE.scala 40:42]
    io.sample_out.bits.weights <= REG_1 @[TreePE.scala 40:32]
    reg io_sample_out_bits_tree_to_exec_REG : UInt, clock with :
      reset => (UInt<1>("h0"), io_sample_out_bits_tree_to_exec_REG) @[TreePE.scala 41:47]
    io_sample_out_bits_tree_to_exec_REG <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 41:47]
    io.sample_out.bits.tree_to_exec <= io_sample_out_bits_tree_to_exec_REG @[TreePE.scala 41:37]
    reg REG_2 : Fixed<16><<8>>[4], clock with :
      reset => (UInt<1>("h0"), REG_2) @[TreePE.scala 42:41]
    REG_2 <= queue.io.deq.bits.scores @[TreePE.scala 42:41]
    io.sample_out.bits.scores <= REG_2 @[TreePE.scala 42:31]
    reg REG_3 : UInt<1>, clock with :
      reset => (UInt<1>("h0"), REG_3) @[TreePE.scala 74:19]
    REG_3 <= queue.io.deq.bits.search_for_root @[TreePE.scala 74:19]
    when REG_3 : @[TreePE.scala 74:48]
      io.sample_out.bits.search_for_root <= UInt<1>("h1") @[TreePE.scala 75:44]
      reg io_sample_out_bits_offset_REG : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_offset_REG) @[TreePE.scala 76:45]
      io_sample_out_bits_offset_REG <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 76:45]
      io.sample_out.bits.offset <= io_sample_out_bits_offset_REG @[TreePE.scala 76:35]
      io.sample_out.bits.shift <= UInt<1>("h0") @[TreePE.scala 77:34]
    else :
      wire offset : UInt<10> @[TreePE.scala 79:26]
      wire shift : UInt<1> @[TreePE.scala 80:25]
      reg features_bits : Fixed<16><<8>>[4], clock with :
        reset => (UInt<1>("h0"), features_bits) @[TreePE.scala 81:36]
      features_bits <= queue.io.deq.bits.features @[TreePE.scala 81:36]
      node _T = asFixedPoint(threshold, 8) @[TreePE.scala 82:61]
      node _T_1 = lt(features_bits[attr_id], _T) @[TreePE.scala 82:37]
      when _T_1 : @[TreePE.scala 82:68]
        shift <= leftChildType @[TreePE.scala 83:17]
        offset <= leftChildInfo @[TreePE.scala 84:18]
      else :
        shift <= rightChildType @[TreePE.scala 86:17]
        offset <= rightChildInfo @[TreePE.scala 87:18]
      node _T_2 = eq(shift, UInt<1>("h0")) @[TreePE.scala 89:20]
      when _T_2 : @[TreePE.scala 89:32]
        reg io_sample_out_bits_offset_REG_1 : UInt, clock with :
          reset => (UInt<1>("h0"), io_sample_out_bits_offset_REG_1) @[TreePE.scala 90:47]
        io_sample_out_bits_offset_REG_1 <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 90:47]
        io.sample_out.bits.offset <= io_sample_out_bits_offset_REG_1 @[TreePE.scala 90:37]
        io.sample_out.bits.shift <= UInt<1>("h0") @[TreePE.scala 91:36]
        io.sample_out.bits.search_for_root <= UInt<1>("h1") @[TreePE.scala 92:46]
        reg scores_bits : Fixed<16><<8>>[4], clock with :
          reset => (UInt<1>("h0"), scores_bits) @[TreePE.scala 93:36]
        scores_bits <= queue.io.deq.bits.scores @[TreePE.scala 93:36]
        reg weights_bits : Fixed<16><<8>>[2], clock with :
          reset => (UInt<1>("h0"), weights_bits) @[TreePE.scala 94:37]
        weights_bits <= queue.io.deq.bits.weights @[TreePE.scala 94:37]
        when is_valid : @[TreePE.scala 95:25]
          node _T_3 = bits(offset, 1, 0)
          node _io_sample_out_bits_scores_T = bits(offset, 1, 0)
          node _io_sample_out_bits_scores_T_1 = bits(depth_indicator, 0, 0)
          node _io_sample_out_bits_scores_T_2 = add(scores_bits[_io_sample_out_bits_scores_T], weights_bits[_io_sample_out_bits_scores_T_1]) @[TreePE.scala 96:72]
          node _io_sample_out_bits_scores_T_3 = tail(_io_sample_out_bits_scores_T_2, 1) @[TreePE.scala 96:72]
          node _io_sample_out_bits_scores_T_4 = asFixedPoint(_io_sample_out_bits_scores_T_3, 8) @[TreePE.scala 96:72]
          io.sample_out.bits.scores[_T_3] <= _io_sample_out_bits_scores_T_4 @[TreePE.scala 96:49]
        else :
          node _T_4 = bits(offset, 1, 0)
          node _io_sample_out_bits_scores_T_5 = bits(offset, 1, 0)
          io.sample_out.bits.scores[_T_4] <= scores_bits[_io_sample_out_bits_scores_T_5] @[TreePE.scala 98:49]
      else :
        io.sample_out.bits.offset <= offset @[TreePE.scala 101:37]
        reg REG_4 : Fixed<16><<8>>[4], clock with :
          reset => (UInt<1>("h0"), REG_4) @[TreePE.scala 102:47]
        REG_4 <= queue.io.deq.bits.scores @[TreePE.scala 102:47]
        io.sample_out.bits.scores <= REG_4 @[TreePE.scala 102:37]
        io.sample_out.bits.shift <= UInt<1>("h0") @[TreePE.scala 103:36]
        io.sample_out.bits.search_for_root <= UInt<1>("h0") @[TreePE.scala 104:46]
    reg REG_5 : UInt, clock with :
      reset => (UInt<1>("h0"), REG_5) @[TreePE.scala 109:17]
    REG_5 <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 109:17]
    node _T_5 = eq(REG_5, UInt<2>("h3")) @[TreePE.scala 109:43]
    when _T_5 : @[TreePE.scala 109:61]
      io.sample_out.bits.dest <= UInt<1>("h1") @[TreePE.scala 110:31]
    else :
      io.sample_out.bits.dest <= UInt<1>("h0") @[TreePE.scala 112:31]
    reg io_sample_out_bits_last_REG : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_sample_out_bits_last_REG) @[TreePE.scala 115:39]
    io_sample_out_bits_last_REG <= queue.io.deq.bits.last @[TreePE.scala 115:39]
    io.sample_out.bits.last <= io_sample_out_bits_last_REG @[TreePE.scala 115:29]
    reg io_sample_out_valid_REG : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_sample_out_valid_REG) @[TreePE.scala 116:35]
    io_sample_out_valid_REG <= queue.io.deq.valid @[TreePE.scala 116:35]
    io.sample_out.valid <= io_sample_out_valid_REG @[TreePE.scala 116:25]
    reg queue_io_deq_ready_REG : UInt<1>, clock with :
      reset => (UInt<1>("h0"), queue_io_deq_ready_REG) @[TreePE.scala 117:27]
    queue_io_deq_ready_REG <= io.sample_out.ready @[TreePE.scala 117:27]
    queue.io.deq.ready <= queue_io_deq_ready_REG @[TreePE.scala 117:17]

  module TreePEwithBRAM_3 :
    input clock : Clock
    input reset : Reset
    output pe_io : { flip sample_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[2], dest : UInt<1>, last : UInt<1>}}, flip mem : { flip enable_1 : UInt<1>, flip write_1 : UInt<1>, flip addr_1 : UInt<10>, flip dataIn_1 : UInt<64>, dataOut_1 : UInt<64>, flip enable_2 : UInt<1>, flip write_2 : UInt<1>, flip addr_2 : UInt<10>, flip dataIn_2 : UInt<64>, dataOut_2 : UInt<64>}, sample_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[2], dest : UInt<1>, last : UInt<1>}}}

    inst pe of TreePE_3 @[TreePE.scala 148:18]
    pe.clock <= clock
    pe.reset <= reset
    pe_io.sample_out.bits <= pe.io.sample_out.bits @[TreePE.scala 150:9]
    pe_io.sample_out.valid <= pe.io.sample_out.valid @[TreePE.scala 150:9]
    pe.io.sample_out.ready <= pe_io.sample_out.ready @[TreePE.scala 150:9]
    pe.io.mem <= pe_io.mem @[TreePE.scala 150:9]
    pe.io.sample_in <= pe_io.sample_in @[TreePE.scala 150:9]

  module BRAMLikeMem1_2 :
    input clock : Clock
    input reset : Reset
    output io : { flip enable_1 : UInt<1>, flip write_1 : UInt<1>, flip addr_1 : UInt<10>, flip dataIn_1 : UInt<64>, dataOut_1 : UInt<64>, flip enable_2 : UInt<1>, flip write_2 : UInt<1>, flip addr_2 : UInt<10>, flip dataIn_2 : UInt<64>, dataOut_2 : UInt<64>}

    smem mem : UInt<64> [1024] @[ME.scala 58:24]
    when io.write_1 : @[ME.scala 60:20]
      write mport MPORT = mem[io.addr_1], clock
      MPORT <= io.dataIn_1
    wire _io_dataOut_1_WIRE : UInt @[ME.scala 61:27]
    _io_dataOut_1_WIRE is invalid @[ME.scala 61:27]
    when io.enable_1 : @[ME.scala 61:27]
      _io_dataOut_1_WIRE <= io.addr_1 @[ME.scala 61:27]
      node _io_dataOut_1_T = or(_io_dataOut_1_WIRE, UInt<10>("h0")) @[ME.scala 61:27]
      node _io_dataOut_1_T_1 = bits(_io_dataOut_1_T, 9, 0) @[ME.scala 61:27]
      read mport io_dataOut_1_MPORT = mem[_io_dataOut_1_T_1], clock @[ME.scala 61:27]
    io.dataOut_1 <= io_dataOut_1_MPORT @[ME.scala 61:16]
    when io.write_2 : @[ME.scala 63:20]
      write mport MPORT_1 = mem[io.addr_2], clock
      MPORT_1 <= io.dataIn_2
    wire _io_dataOut_2_WIRE : UInt @[ME.scala 64:27]
    _io_dataOut_2_WIRE is invalid @[ME.scala 64:27]
    when io.enable_2 : @[ME.scala 64:27]
      _io_dataOut_2_WIRE <= io.addr_2 @[ME.scala 64:27]
      node _io_dataOut_2_T = or(_io_dataOut_2_WIRE, UInt<10>("h0")) @[ME.scala 64:27]
      node _io_dataOut_2_T_1 = bits(_io_dataOut_2_T, 9, 0) @[ME.scala 64:27]
      read mport io_dataOut_2_MPORT = mem[_io_dataOut_2_T_1], clock @[ME.scala 64:27]
    io.dataOut_2 <= io_dataOut_2_MPORT @[ME.scala 64:16]
    node _T = lt(io.addr_1, UInt<11>("h400")) @[ME.scala 66:21]
    node _T_1 = lt(io.addr_2, UInt<11>("h400")) @[ME.scala 66:48]
    node _T_2 = and(_T, _T_1) @[ME.scala 66:34]
    node _T_3 = asUInt(reset) @[ME.scala 66:9]
    node _T_4 = eq(_T_3, UInt<1>("h0")) @[ME.scala 66:9]
    when _T_4 : @[ME.scala 66:9]
      node _T_5 = eq(_T_2, UInt<1>("h0")) @[ME.scala 66:9]
      when _T_5 : @[ME.scala 66:9]
        printf(clock, UInt<1>("h1"), "Assertion failed\n    at ME.scala:66 assert((io.addr_1 < entries.U) && (io.addr_2 < entries.U))\n") : printf @[ME.scala 66:9]
      assert(clock, _T_2, UInt<1>("h1"), "") : assert @[ME.scala 66:9]

  module BRAMLikeMem1_3 :
    input clock : Clock
    input reset : Reset
    output io : { flip enable_1 : UInt<1>, flip write_1 : UInt<1>, flip addr_1 : UInt<10>, flip dataIn_1 : UInt<64>, dataOut_1 : UInt<64>, flip enable_2 : UInt<1>, flip write_2 : UInt<1>, flip addr_2 : UInt<10>, flip dataIn_2 : UInt<64>, dataOut_2 : UInt<64>}

    smem mem : UInt<64> [1024] @[ME.scala 58:24]
    when io.write_1 : @[ME.scala 60:20]
      write mport MPORT = mem[io.addr_1], clock
      MPORT <= io.dataIn_1
    wire _io_dataOut_1_WIRE : UInt @[ME.scala 61:27]
    _io_dataOut_1_WIRE is invalid @[ME.scala 61:27]
    when io.enable_1 : @[ME.scala 61:27]
      _io_dataOut_1_WIRE <= io.addr_1 @[ME.scala 61:27]
      node _io_dataOut_1_T = or(_io_dataOut_1_WIRE, UInt<10>("h0")) @[ME.scala 61:27]
      node _io_dataOut_1_T_1 = bits(_io_dataOut_1_T, 9, 0) @[ME.scala 61:27]
      read mport io_dataOut_1_MPORT = mem[_io_dataOut_1_T_1], clock @[ME.scala 61:27]
    io.dataOut_1 <= io_dataOut_1_MPORT @[ME.scala 61:16]
    when io.write_2 : @[ME.scala 63:20]
      write mport MPORT_1 = mem[io.addr_2], clock
      MPORT_1 <= io.dataIn_2
    wire _io_dataOut_2_WIRE : UInt @[ME.scala 64:27]
    _io_dataOut_2_WIRE is invalid @[ME.scala 64:27]
    when io.enable_2 : @[ME.scala 64:27]
      _io_dataOut_2_WIRE <= io.addr_2 @[ME.scala 64:27]
      node _io_dataOut_2_T = or(_io_dataOut_2_WIRE, UInt<10>("h0")) @[ME.scala 64:27]
      node _io_dataOut_2_T_1 = bits(_io_dataOut_2_T, 9, 0) @[ME.scala 64:27]
      read mport io_dataOut_2_MPORT = mem[_io_dataOut_2_T_1], clock @[ME.scala 64:27]
    io.dataOut_2 <= io_dataOut_2_MPORT @[ME.scala 64:16]
    node _T = lt(io.addr_1, UInt<11>("h400")) @[ME.scala 66:21]
    node _T_1 = lt(io.addr_2, UInt<11>("h400")) @[ME.scala 66:48]
    node _T_2 = and(_T, _T_1) @[ME.scala 66:34]
    node _T_3 = asUInt(reset) @[ME.scala 66:9]
    node _T_4 = eq(_T_3, UInt<1>("h0")) @[ME.scala 66:9]
    when _T_4 : @[ME.scala 66:9]
      node _T_5 = eq(_T_2, UInt<1>("h0")) @[ME.scala 66:9]
      when _T_5 : @[ME.scala 66:9]
        printf(clock, UInt<1>("h1"), "Assertion failed\n    at ME.scala:66 assert((io.addr_1 < entries.U) && (io.addr_2 < entries.U))\n") : printf @[ME.scala 66:9]
      assert(clock, _T_2, UInt<1>("h1"), "") : assert @[ME.scala 66:9]

  module Queue_12 :
    input clock : Clock
    input reset : Reset
    output io : { flip enq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[2], dest : UInt<1>, last : UInt<1>}}, deq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[2], dest : UInt<1>, last : UInt<1>}}, count : UInt<8>}

    cmem ram : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[2], dest : UInt<1>, last : UInt<1>} [128] @[Decoupled.scala 275:95]
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

  module Queue_13 :
    input clock : Clock
    input reset : Reset
    output io : { flip enq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[2], dest : UInt<1>, last : UInt<1>}}, deq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[2], dest : UInt<1>, last : UInt<1>}}, count : UInt<8>}

    cmem ram : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[2], dest : UInt<1>, last : UInt<1>} [128] @[Decoupled.scala 275:95]
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

  module FirstInterconnectPE_1 :
    input clock : Clock
    input reset : Reset
    output io : { flip sample_entering : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[2], dest : UInt<1>, last : UInt<1>}}, flip sample_looping : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[2], dest : UInt<1>, last : UInt<1>}}, sample_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[2], dest : UInt<1>, last : UInt<1>}}}

    inst queue_entering of Queue_12 @[Decoupled.scala 377:21]
    queue_entering.clock <= clock
    queue_entering.reset <= reset
    queue_entering.io.enq.valid <= io.sample_entering.valid @[Decoupled.scala 379:22]
    queue_entering.io.enq.bits.last <= io.sample_entering.bits.last @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.dest <= io.sample_entering.bits.dest @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.weights[0] <= io.sample_entering.bits.weights[0] @[Decoupled.scala 380:21]
    queue_entering.io.enq.bits.weights[1] <= io.sample_entering.bits.weights[1] @[Decoupled.scala 380:21]
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
    inst queue_looping of Queue_13 @[Decoupled.scala 377:21]
    queue_looping.clock <= clock
    queue_looping.reset <= reset
    queue_looping.io.enq.valid <= io.sample_looping.valid @[Decoupled.scala 379:22]
    queue_looping.io.enq.bits.last <= io.sample_looping.bits.last @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.dest <= io.sample_looping.bits.dest @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.weights[0] <= io.sample_looping.bits.weights[0] @[Decoupled.scala 380:21]
    queue_looping.io.enq.bits.weights[1] <= io.sample_looping.bits.weights[1] @[Decoupled.scala 380:21]
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
    when queue_looping.io.deq.valid : @[Interconnect.scala 65:30]
      io.sample_out.bits <= queue_looping.io.deq.bits @[Interconnect.scala 66:28]
      io.sample_out.valid <= UInt<1>("h1") @[Interconnect.scala 67:29]
      queue_looping.io.deq.ready <= io.sample_out.ready @[Interconnect.scala 68:29]
      queue_entering.io.deq.ready <= UInt<1>("h0") @[Interconnect.scala 69:30]
    else :
      when queue_entering.io.deq.valid : @[Interconnect.scala 70:37]
        io.sample_out.bits <= queue_entering.io.deq.bits @[Interconnect.scala 71:28]
        io.sample_out.valid <= UInt<1>("h1") @[Interconnect.scala 72:29]
        queue_entering.io.deq.ready <= io.sample_out.ready @[Interconnect.scala 73:30]
        queue_looping.io.deq.ready <= UInt<1>("h1") @[Interconnect.scala 74:29]
      else :
        io.sample_out.bits <= queue_entering.io.deq.bits @[Interconnect.scala 76:28]
        io.sample_out.valid <= UInt<1>("h0") @[Interconnect.scala 77:29]
        queue_looping.io.deq.ready <= UInt<1>("h1") @[Interconnect.scala 78:29]
        queue_entering.io.deq.ready <= UInt<1>("h1") @[Interconnect.scala 79:30]

  module Queue_14 :
    input clock : Clock
    input reset : Reset
    output io : { flip enq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[2], dest : UInt<1>, last : UInt<1>}}, deq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[2], dest : UInt<1>, last : UInt<1>}}, count : UInt<2>}

    cmem ram : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[2], dest : UInt<1>, last : UInt<1>} [3] @[Decoupled.scala 275:95]
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

  module LastInterconnectPE_1 :
    input clock : Clock
    input reset : Reset
    output io : { flip sample_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[2], dest : UInt<1>, last : UInt<1>}}, sample_looping : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[2], dest : UInt<1>, last : UInt<1>}}, sample_leaving : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[2], dest : UInt<1>, last : UInt<1>}}}

    inst queue of Queue_14 @[Decoupled.scala 377:21]
    queue.clock <= clock
    queue.reset <= reset
    queue.io.enq.valid <= io.sample_in.valid @[Decoupled.scala 379:22]
    queue.io.enq.bits.last <= io.sample_in.bits.last @[Decoupled.scala 380:21]
    queue.io.enq.bits.dest <= io.sample_in.bits.dest @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[0] <= io.sample_in.bits.weights[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[1] <= io.sample_in.bits.weights[1] @[Decoupled.scala 380:21]
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

  module Queue_15 :
    input clock : Clock
    input reset : Reset
    output io : { flip enq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[2], dest : UInt<1>, last : UInt<1>}}, deq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[2], dest : UInt<1>, last : UInt<1>}}, count : UInt<2>}

    cmem ram : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[2], dest : UInt<1>, last : UInt<1>} [3] @[Decoupled.scala 275:95]
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
    output io : { flip sample_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[2], dest : UInt<1>, last : UInt<1>}}, sample_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : Fixed<16><<8>>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : Fixed<16><<8>>[4], weights : Fixed<16><<8>>[2], dest : UInt<1>, last : UInt<1>}}}

    inst queue of Queue_15 @[Decoupled.scala 377:21]
    queue.clock <= clock
    queue.reset <= reset
    queue.io.enq.valid <= io.sample_in.valid @[Decoupled.scala 379:22]
    queue.io.enq.bits.last <= io.sample_in.bits.last @[Decoupled.scala 380:21]
    queue.io.enq.bits.dest <= io.sample_in.bits.dest @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[0] <= io.sample_in.bits.weights[0] @[Decoupled.scala 380:21]
    queue.io.enq.bits.weights[1] <= io.sample_in.bits.weights[1] @[Decoupled.scala 380:21]
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
    output wrapper_io : { sample_in : { flip TDATA : UInt<240>, flip TKEEP : UInt<30>, flip TLAST : UInt<1>, TREADY : UInt<1>, flip TVALID : UInt<1>}, flip sample_out : { flip TDATA : UInt<240>, flip TKEEP : UInt<30>, flip TLAST : UInt<1>, TREADY : UInt<1>, flip TVALID : UInt<1>}}
    output brams_io_0 : { flip bram_addr_a : UInt<16>, flip bram_clk_a : UInt<1>, flip bram_wrdata_a : UInt<64>, bram_rddata_a : UInt<64>, flip bram_en_a : UInt<1>, flip bram_rst_a : UInt<1>, flip bram_we_a : UInt<8>}
    output brams_io_1 : { flip bram_addr_a : UInt<16>, flip bram_clk_a : UInt<1>, flip bram_wrdata_a : UInt<64>, bram_rddata_a : UInt<64>, flip bram_en_a : UInt<1>, flip bram_rst_a : UInt<1>, flip bram_we_a : UInt<8>}
    output brams_io_2 : { flip bram_addr_a : UInt<16>, flip bram_clk_a : UInt<1>, flip bram_wrdata_a : UInt<64>, bram_rddata_a : UInt<64>, flip bram_en_a : UInt<1>, flip bram_rst_a : UInt<1>, flip bram_we_a : UInt<8>}
    output brams_io_3 : { flip bram_addr_a : UInt<16>, flip bram_clk_a : UInt<1>, flip bram_wrdata_a : UInt<64>, bram_rddata_a : UInt<64>, flip bram_en_a : UInt<1>, flip bram_rst_a : UInt<1>, flip bram_we_a : UInt<8>}

    inst forward_converter of ForwardConverter @[TreePEsWrapper.scala 61:35]
    forward_converter.clock <= clock
    forward_converter.reset <= reset
    inst dispatcher of DispatcherPE @[TreePEsWrapper.scala 62:28]
    dispatcher.clock <= clock
    dispatcher.reset <= reset
    inst voter of VoterPE @[TreePEsWrapper.scala 63:23]
    voter.clock <= clock
    voter.reset <= reset
    inst backward_converter of BackwardConverter @[TreePEsWrapper.scala 64:36]
    backward_converter.clock <= clock
    backward_converter.reset <= reset
    inst pes_0 of TreePEwithBRAM @[TreePEsWrapper.scala 70:65]
    pes_0.clock <= clock
    pes_0.reset <= reset
    inst pes_1 of TreePEwithBRAM_1 @[TreePEsWrapper.scala 70:65]
    pes_1.clock <= clock
    pes_1.reset <= reset
    inst brams_0 of BRAMLikeMem1 @[TreePEsWrapper.scala 71:67]
    brams_0.clock <= clock
    brams_0.reset <= reset
    inst brams_1 of BRAMLikeMem1_1 @[TreePEsWrapper.scala 71:67]
    brams_1.clock <= clock
    brams_1.reset <= reset
    inst first_interconnects_0 of FirstInterconnectPE @[TreePEsWrapper.scala 72:40]
    first_interconnects_0.clock <= clock
    first_interconnects_0.reset <= reset
    inst last_interconnect of LastInterconnectPE @[TreePEsWrapper.scala 73:39]
    last_interconnect.clock <= clock
    last_interconnect.reset <= reset
    inst increment of IncrementTreePE @[TreePEsWrapper.scala 74:31]
    increment.clock <= clock
    increment.reset <= reset
    brams_0.io.enable_1 <= pes_0.pe_io.mem.enable_1 @[TreePEsWrapper.scala 79:34]
    brams_0.io.write_1 <= pes_0.pe_io.mem.write_1 @[TreePEsWrapper.scala 80:33]
    brams_0.io.addr_1 <= pes_0.pe_io.mem.addr_1 @[TreePEsWrapper.scala 81:32]
    brams_0.io.dataIn_1 <= pes_0.pe_io.mem.dataIn_1 @[TreePEsWrapper.scala 82:34]
    pes_0.pe_io.mem.dataOut_1 <= brams_0.io.dataOut_1 @[TreePEsWrapper.scala 83:40]
    brams_0.io.enable_2 <= brams_io_0.bram_en_a @[TreePEsWrapper.scala 85:34]
    node _brams_0_io_write_2_T = bits(brams_io_0.bram_we_a, 0, 0) @[TreePEsWrapper.scala 86:63]
    brams_0.io.write_2 <= _brams_0_io_write_2_T @[TreePEsWrapper.scala 86:33]
    brams_0.io.addr_2 <= brams_io_0.bram_addr_a @[TreePEsWrapper.scala 87:32]
    brams_0.io.dataIn_2 <= brams_io_0.bram_wrdata_a @[TreePEsWrapper.scala 88:34]
    brams_io_0.bram_rddata_a <= brams_0.io.dataOut_2 @[TreePEsWrapper.scala 89:45]
    pes_0.pe_io.mem.dataOut_2 is invalid @[TreePEsWrapper.scala 91:40]
    brams_1.io.enable_1 <= pes_1.pe_io.mem.enable_1 @[TreePEsWrapper.scala 79:34]
    brams_1.io.write_1 <= pes_1.pe_io.mem.write_1 @[TreePEsWrapper.scala 80:33]
    brams_1.io.addr_1 <= pes_1.pe_io.mem.addr_1 @[TreePEsWrapper.scala 81:32]
    brams_1.io.dataIn_1 <= pes_1.pe_io.mem.dataIn_1 @[TreePEsWrapper.scala 82:34]
    pes_1.pe_io.mem.dataOut_1 <= brams_1.io.dataOut_1 @[TreePEsWrapper.scala 83:40]
    brams_1.io.enable_2 <= brams_io_1.bram_en_a @[TreePEsWrapper.scala 85:34]
    node _brams_1_io_write_2_T = bits(brams_io_1.bram_we_a, 0, 0) @[TreePEsWrapper.scala 86:63]
    brams_1.io.write_2 <= _brams_1_io_write_2_T @[TreePEsWrapper.scala 86:33]
    brams_1.io.addr_2 <= brams_io_1.bram_addr_a @[TreePEsWrapper.scala 87:32]
    brams_1.io.dataIn_2 <= brams_io_1.bram_wrdata_a @[TreePEsWrapper.scala 88:34]
    brams_io_1.bram_rddata_a <= brams_1.io.dataOut_2 @[TreePEsWrapper.scala 89:45]
    pes_1.pe_io.mem.dataOut_2 is invalid @[TreePEsWrapper.scala 91:40]
    inst pes_0_1 of TreePEwithBRAM_2 @[TreePEsWrapper.scala 70:65]
    pes_0_1.clock <= clock
    pes_0_1.reset <= reset
    inst pes_1_1 of TreePEwithBRAM_3 @[TreePEsWrapper.scala 70:65]
    pes_1_1.clock <= clock
    pes_1_1.reset <= reset
    inst brams_0_1 of BRAMLikeMem1_2 @[TreePEsWrapper.scala 71:67]
    brams_0_1.clock <= clock
    brams_0_1.reset <= reset
    inst brams_1_1 of BRAMLikeMem1_3 @[TreePEsWrapper.scala 71:67]
    brams_1_1.clock <= clock
    brams_1_1.reset <= reset
    inst first_interconnects_1 of FirstInterconnectPE_1 @[TreePEsWrapper.scala 72:40]
    first_interconnects_1.clock <= clock
    first_interconnects_1.reset <= reset
    inst last_interconnect_1 of LastInterconnectPE_1 @[TreePEsWrapper.scala 73:39]
    last_interconnect_1.clock <= clock
    last_interconnect_1.reset <= reset
    inst increment_1 of IncrementTreePE_1 @[TreePEsWrapper.scala 74:31]
    increment_1.clock <= clock
    increment_1.reset <= reset
    brams_0_1.io.enable_1 <= pes_0_1.pe_io.mem.enable_1 @[TreePEsWrapper.scala 79:34]
    brams_0_1.io.write_1 <= pes_0_1.pe_io.mem.write_1 @[TreePEsWrapper.scala 80:33]
    brams_0_1.io.addr_1 <= pes_0_1.pe_io.mem.addr_1 @[TreePEsWrapper.scala 81:32]
    brams_0_1.io.dataIn_1 <= pes_0_1.pe_io.mem.dataIn_1 @[TreePEsWrapper.scala 82:34]
    pes_0_1.pe_io.mem.dataOut_1 <= brams_0_1.io.dataOut_1 @[TreePEsWrapper.scala 83:40]
    brams_0_1.io.enable_2 <= brams_io_2.bram_en_a @[TreePEsWrapper.scala 85:34]
    node _brams_0_io_write_2_T_1 = bits(brams_io_2.bram_we_a, 0, 0) @[TreePEsWrapper.scala 86:63]
    brams_0_1.io.write_2 <= _brams_0_io_write_2_T_1 @[TreePEsWrapper.scala 86:33]
    brams_0_1.io.addr_2 <= brams_io_2.bram_addr_a @[TreePEsWrapper.scala 87:32]
    brams_0_1.io.dataIn_2 <= brams_io_2.bram_wrdata_a @[TreePEsWrapper.scala 88:34]
    brams_io_2.bram_rddata_a <= brams_0_1.io.dataOut_2 @[TreePEsWrapper.scala 89:45]
    pes_0_1.pe_io.mem.dataOut_2 is invalid @[TreePEsWrapper.scala 91:40]
    brams_1_1.io.enable_1 <= pes_1_1.pe_io.mem.enable_1 @[TreePEsWrapper.scala 79:34]
    brams_1_1.io.write_1 <= pes_1_1.pe_io.mem.write_1 @[TreePEsWrapper.scala 80:33]
    brams_1_1.io.addr_1 <= pes_1_1.pe_io.mem.addr_1 @[TreePEsWrapper.scala 81:32]
    brams_1_1.io.dataIn_1 <= pes_1_1.pe_io.mem.dataIn_1 @[TreePEsWrapper.scala 82:34]
    pes_1_1.pe_io.mem.dataOut_1 <= brams_1_1.io.dataOut_1 @[TreePEsWrapper.scala 83:40]
    brams_1_1.io.enable_2 <= brams_io_3.bram_en_a @[TreePEsWrapper.scala 85:34]
    node _brams_1_io_write_2_T_1 = bits(brams_io_3.bram_we_a, 0, 0) @[TreePEsWrapper.scala 86:63]
    brams_1_1.io.write_2 <= _brams_1_io_write_2_T_1 @[TreePEsWrapper.scala 86:33]
    brams_1_1.io.addr_2 <= brams_io_3.bram_addr_a @[TreePEsWrapper.scala 87:32]
    brams_1_1.io.dataIn_2 <= brams_io_3.bram_wrdata_a @[TreePEsWrapper.scala 88:34]
    brams_io_3.bram_rddata_a <= brams_1_1.io.dataOut_2 @[TreePEsWrapper.scala 89:45]
    pes_1_1.pe_io.mem.dataOut_2 is invalid @[TreePEsWrapper.scala 91:40]
    first_interconnects_0.io.sample_entering <= dispatcher.io.samples_out[0] @[DispatcherPE.scala 23:27]
    first_interconnects_1.io.sample_entering <= dispatcher.io.samples_out[1] @[DispatcherPE.scala 23:27]
    increment.io.sample_in <= last_interconnect.io.sample_looping @[Interconnect.scala 34:27]
    voter.io.samples_in[0] <= last_interconnect.io.sample_leaving @[Interconnect.scala 50:27]
    last_interconnect.io.sample_in <= pes_1.pe_io.sample_out @[TreePE.scala 153:22]
    pes_1_1.pe_io.sample_in <= pes_0_1.pe_io.sample_out @[TreePE.scala 157:22]
    increment_1.io.sample_in <= last_interconnect_1.io.sample_looping @[Interconnect.scala 34:27]
    voter.io.samples_in[1] <= last_interconnect_1.io.sample_leaving @[Interconnect.scala 50:27]
    first_interconnects_0.io.sample_looping <= increment.io.sample_out @[IncrementTreePE.scala 30:23]
    pes_0_1.pe_io.sample_in <= first_interconnects_1.io.sample_out @[Interconnect.scala 83:23]
    last_interconnect_1.io.sample_in <= pes_1_1.pe_io.sample_out @[TreePE.scala 153:22]
    pes_1.pe_io.sample_in <= pes_0.pe_io.sample_out @[TreePE.scala 157:22]
    first_interconnects_1.io.sample_looping <= increment_1.io.sample_out @[IncrementTreePE.scala 30:23]
    pes_0.pe_io.sample_in <= first_interconnects_0.io.sample_out @[Interconnect.scala 83:23]
    forward_converter.io.sample_in.TVALID <= wrapper_io.sample_in.TVALID @[TreePEsWrapper.scala 133:26]
    wrapper_io.sample_in.TREADY <= forward_converter.io.sample_in.TREADY @[TreePEsWrapper.scala 133:26]
    forward_converter.io.sample_in.TLAST <= wrapper_io.sample_in.TLAST @[TreePEsWrapper.scala 133:26]
    forward_converter.io.sample_in.TKEEP <= wrapper_io.sample_in.TKEEP @[TreePEsWrapper.scala 133:26]
    forward_converter.io.sample_in.TDATA <= wrapper_io.sample_in.TDATA @[TreePEsWrapper.scala 133:26]
    dispatcher.io.sample_in <= forward_converter.io.sample_out @[TreePEsWrapper.scala 134:37]
    backward_converter.io.sample_in <= voter.io.sample_out @[TreePEsWrapper.scala 135:25]
    backward_converter.io.sample_out <= wrapper_io.sample_out @[TreePEsWrapper.scala 136:27]

