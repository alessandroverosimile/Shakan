circuit TreePEsWrapper :
  module Queue :
    input clock : Clock
    input reset : Reset
    output io : { flip enq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : UInt<16>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : UInt<8>[4], weights : UInt<8>[2], dest : UInt<1>}}, deq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : UInt<16>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : UInt<8>[4], weights : UInt<8>[2], dest : UInt<1>}}, count : UInt<2>}

    cmem ram : { features : UInt<16>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : UInt<8>[4], weights : UInt<8>[2], dest : UInt<1>} [3] @[Decoupled.scala 275:95]
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
    output io : { flip sample_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : UInt<16>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : UInt<8>[4], weights : UInt<8>[2], dest : UInt<1>}}, samples_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : UInt<16>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : UInt<8>[4], weights : UInt<8>[2], dest : UInt<1>}}[2]}

    inst queue of Queue @[Decoupled.scala 377:21]
    queue.clock <= clock
    queue.reset <= reset
    queue.io.enq.valid <= io.sample_in.valid @[Decoupled.scala 379:22]
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
    output io : { flip enq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : UInt<16>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : UInt<8>[4], weights : UInt<8>[2], dest : UInt<1>}}, deq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : UInt<16>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : UInt<8>[4], weights : UInt<8>[2], dest : UInt<1>}}, count : UInt<2>}

    cmem ram : { features : UInt<16>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : UInt<8>[4], weights : UInt<8>[2], dest : UInt<1>} [3] @[Decoupled.scala 275:95]
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
    output io : { flip sample_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : UInt<16>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : UInt<8>[4], weights : UInt<8>[2], dest : UInt<1>}}, flip mem : { flip enable_1 : UInt<1>, flip write_1 : UInt<1>, flip addr_1 : UInt<10>, flip dataIn_1 : UInt<64>, dataOut_1 : UInt<64>, flip enable_2 : UInt<1>, flip write_2 : UInt<1>, flip addr_2 : UInt<10>, flip dataIn_2 : UInt<64>, dataOut_2 : UInt<64>}, sample_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : UInt<16>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : UInt<8>[4], weights : UInt<8>[2], dest : UInt<1>}}}

    inst queue of Queue_1 @[Decoupled.scala 377:21]
    queue.clock <= clock
    queue.reset <= reset
    queue.io.enq.valid <= io.sample_in.valid @[Decoupled.scala 379:22]
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
    reg REG : UInt<16>[4], clock with :
      reset => (UInt<1>("h0"), REG) @[TreePE.scala 39:43]
    REG <= queue.io.deq.bits.features @[TreePE.scala 39:43]
    io.sample_out.bits.features <= REG @[TreePE.scala 39:33]
    reg REG_1 : UInt<8>[2], clock with :
      reset => (UInt<1>("h0"), REG_1) @[TreePE.scala 40:42]
    REG_1 <= queue.io.deq.bits.weights @[TreePE.scala 40:42]
    io.sample_out.bits.weights <= REG_1 @[TreePE.scala 40:32]
    reg io_sample_out_bits_tree_to_exec_REG : UInt, clock with :
      reset => (UInt<1>("h0"), io_sample_out_bits_tree_to_exec_REG) @[TreePE.scala 41:47]
    io_sample_out_bits_tree_to_exec_REG <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 41:47]
    io.sample_out.bits.tree_to_exec <= io_sample_out_bits_tree_to_exec_REG @[TreePE.scala 41:37]
    reg REG_2 : UInt<8>[4], clock with :
      reset => (UInt<1>("h0"), REG_2) @[TreePE.scala 42:41]
    REG_2 <= queue.io.deq.bits.scores @[TreePE.scala 42:41]
    io.sample_out.bits.scores <= REG_2 @[TreePE.scala 42:31]
    wire offset : UInt<10> @[TreePE.scala 45:24]
    wire shift : UInt<1> @[TreePE.scala 46:23]
    reg features_bits : UInt<16>[4], clock with :
      reset => (UInt<1>("h0"), features_bits) @[TreePE.scala 47:34]
    features_bits <= queue.io.deq.bits.features @[TreePE.scala 47:34]
    node _T = lt(features_bits[attr_id], threshold) @[TreePE.scala 48:35]
    when _T : @[TreePE.scala 48:47]
      shift <= leftChildType @[TreePE.scala 49:15]
      offset <= leftChildInfo @[TreePE.scala 50:16]
    else :
      shift <= rightChildType @[TreePE.scala 52:15]
      offset <= rightChildInfo @[TreePE.scala 53:16]
    node _T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 55:18]
    when _T_1 : @[TreePE.scala 55:30]
      reg io_sample_out_bits_offset_REG : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_offset_REG) @[TreePE.scala 56:45]
      io_sample_out_bits_offset_REG <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 56:45]
      io.sample_out.bits.offset <= io_sample_out_bits_offset_REG @[TreePE.scala 56:35]
      io.sample_out.bits.shift <= UInt<1>("h0") @[TreePE.scala 57:34]
      io.sample_out.bits.search_for_root <= UInt<1>("h1") @[TreePE.scala 58:44]
      reg scores_bits : UInt<8>[4], clock with :
        reset => (UInt<1>("h0"), scores_bits) @[TreePE.scala 59:34]
      scores_bits <= queue.io.deq.bits.scores @[TreePE.scala 59:34]
      reg weights_bits : UInt<8>[2], clock with :
        reset => (UInt<1>("h0"), weights_bits) @[TreePE.scala 60:35]
      weights_bits <= queue.io.deq.bits.weights @[TreePE.scala 60:35]
      when is_valid : @[TreePE.scala 61:23]
        node _T_2 = bits(offset, 1, 0)
        node _io_sample_out_bits_scores_T = bits(offset, 1, 0)
        node _io_sample_out_bits_scores_T_1 = bits(depth_indicator, 0, 0)
        node _io_sample_out_bits_scores_T_2 = add(scores_bits[_io_sample_out_bits_scores_T], weights_bits[_io_sample_out_bits_scores_T_1]) @[TreePE.scala 62:70]
        node _io_sample_out_bits_scores_T_3 = tail(_io_sample_out_bits_scores_T_2, 1) @[TreePE.scala 62:70]
        io.sample_out.bits.scores[_T_2] <= _io_sample_out_bits_scores_T_3 @[TreePE.scala 62:47]
      else :
        node _T_3 = bits(offset, 1, 0)
        node _io_sample_out_bits_scores_T_4 = bits(offset, 1, 0)
        io.sample_out.bits.scores[_T_3] <= scores_bits[_io_sample_out_bits_scores_T_4] @[TreePE.scala 64:47]
    else :
      io.sample_out.bits.offset <= offset @[TreePE.scala 68:35]
      reg REG_3 : UInt<8>[4], clock with :
        reset => (UInt<1>("h0"), REG_3) @[TreePE.scala 69:45]
      REG_3 <= queue.io.deq.bits.scores @[TreePE.scala 69:45]
      io.sample_out.bits.scores <= REG_3 @[TreePE.scala 69:35]
      io.sample_out.bits.shift <= UInt<1>("h0") @[TreePE.scala 70:34]
      io.sample_out.bits.search_for_root <= UInt<1>("h0") @[TreePE.scala 71:44]
    reg REG_4 : UInt, clock with :
      reset => (UInt<1>("h0"), REG_4) @[TreePE.scala 109:17]
    REG_4 <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 109:17]
    node _T_4 = eq(REG_4, UInt<2>("h3")) @[TreePE.scala 109:43]
    when _T_4 : @[TreePE.scala 109:61]
      io.sample_out.bits.dest <= UInt<1>("h1") @[TreePE.scala 110:31]
    else :
      io.sample_out.bits.dest <= UInt<1>("h0") @[TreePE.scala 112:31]
    reg io_sample_out_valid_REG : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_sample_out_valid_REG) @[TreePE.scala 115:35]
    io_sample_out_valid_REG <= queue.io.deq.valid @[TreePE.scala 115:35]
    io.sample_out.valid <= io_sample_out_valid_REG @[TreePE.scala 115:25]
    reg queue_io_deq_ready_REG : UInt<1>, clock with :
      reset => (UInt<1>("h0"), queue_io_deq_ready_REG) @[TreePE.scala 116:27]
    queue_io_deq_ready_REG <= io.sample_out.ready @[TreePE.scala 116:27]
    queue.io.deq.ready <= queue_io_deq_ready_REG @[TreePE.scala 116:17]

  module TreePEwithBRAM :
    input clock : Clock
    input reset : Reset
    output pe_io : { flip sample_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : UInt<16>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : UInt<8>[4], weights : UInt<8>[2], dest : UInt<1>}}, flip mem : { flip enable_1 : UInt<1>, flip write_1 : UInt<1>, flip addr_1 : UInt<10>, flip dataIn_1 : UInt<64>, dataOut_1 : UInt<64>, flip enable_2 : UInt<1>, flip write_2 : UInt<1>, flip addr_2 : UInt<10>, flip dataIn_2 : UInt<64>, dataOut_2 : UInt<64>}, sample_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : UInt<16>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : UInt<8>[4], weights : UInt<8>[2], dest : UInt<1>}}}

    inst pe of TreePE @[TreePE.scala 147:18]
    pe.clock <= clock
    pe.reset <= reset
    pe_io.sample_out.bits <= pe.io.sample_out.bits @[TreePE.scala 149:9]
    pe_io.sample_out.valid <= pe.io.sample_out.valid @[TreePE.scala 149:9]
    pe.io.sample_out.ready <= pe_io.sample_out.ready @[TreePE.scala 149:9]
    pe.io.mem <= pe_io.mem @[TreePE.scala 149:9]
    pe.io.sample_in <= pe_io.sample_in @[TreePE.scala 149:9]

  module Queue_2 :
    input clock : Clock
    input reset : Reset
    output io : { flip enq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : UInt<16>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : UInt<8>[4], weights : UInt<8>[2], dest : UInt<1>}}, deq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : UInt<16>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : UInt<8>[4], weights : UInt<8>[2], dest : UInt<1>}}, count : UInt<2>}

    cmem ram : { features : UInt<16>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : UInt<8>[4], weights : UInt<8>[2], dest : UInt<1>} [3] @[Decoupled.scala 275:95]
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
    output io : { flip sample_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : UInt<16>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : UInt<8>[4], weights : UInt<8>[2], dest : UInt<1>}}, flip mem : { flip enable_1 : UInt<1>, flip write_1 : UInt<1>, flip addr_1 : UInt<10>, flip dataIn_1 : UInt<64>, dataOut_1 : UInt<64>, flip enable_2 : UInt<1>, flip write_2 : UInt<1>, flip addr_2 : UInt<10>, flip dataIn_2 : UInt<64>, dataOut_2 : UInt<64>}, sample_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : UInt<16>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : UInt<8>[4], weights : UInt<8>[2], dest : UInt<1>}}}

    inst queue of Queue_2 @[Decoupled.scala 377:21]
    queue.clock <= clock
    queue.reset <= reset
    queue.io.enq.valid <= io.sample_in.valid @[Decoupled.scala 379:22]
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
    reg REG : UInt<16>[4], clock with :
      reset => (UInt<1>("h0"), REG) @[TreePE.scala 39:43]
    REG <= queue.io.deq.bits.features @[TreePE.scala 39:43]
    io.sample_out.bits.features <= REG @[TreePE.scala 39:33]
    reg REG_1 : UInt<8>[2], clock with :
      reset => (UInt<1>("h0"), REG_1) @[TreePE.scala 40:42]
    REG_1 <= queue.io.deq.bits.weights @[TreePE.scala 40:42]
    io.sample_out.bits.weights <= REG_1 @[TreePE.scala 40:32]
    reg io_sample_out_bits_tree_to_exec_REG : UInt, clock with :
      reset => (UInt<1>("h0"), io_sample_out_bits_tree_to_exec_REG) @[TreePE.scala 41:47]
    io_sample_out_bits_tree_to_exec_REG <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 41:47]
    io.sample_out.bits.tree_to_exec <= io_sample_out_bits_tree_to_exec_REG @[TreePE.scala 41:37]
    reg REG_2 : UInt<8>[4], clock with :
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
      reg features_bits : UInt<16>[4], clock with :
        reset => (UInt<1>("h0"), features_bits) @[TreePE.scala 81:36]
      features_bits <= queue.io.deq.bits.features @[TreePE.scala 81:36]
      node _T = lt(features_bits[attr_id], threshold) @[TreePE.scala 82:37]
      when _T : @[TreePE.scala 82:49]
        shift <= leftChildType @[TreePE.scala 83:17]
        offset <= leftChildInfo @[TreePE.scala 84:18]
      else :
        shift <= rightChildType @[TreePE.scala 86:17]
        offset <= rightChildInfo @[TreePE.scala 87:18]
      node _T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 89:20]
      when _T_1 : @[TreePE.scala 89:32]
        reg io_sample_out_bits_offset_REG_1 : UInt, clock with :
          reset => (UInt<1>("h0"), io_sample_out_bits_offset_REG_1) @[TreePE.scala 90:47]
        io_sample_out_bits_offset_REG_1 <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 90:47]
        io.sample_out.bits.offset <= io_sample_out_bits_offset_REG_1 @[TreePE.scala 90:37]
        io.sample_out.bits.shift <= UInt<1>("h0") @[TreePE.scala 91:36]
        io.sample_out.bits.search_for_root <= UInt<1>("h1") @[TreePE.scala 92:46]
        reg scores_bits : UInt<8>[4], clock with :
          reset => (UInt<1>("h0"), scores_bits) @[TreePE.scala 93:36]
        scores_bits <= queue.io.deq.bits.scores @[TreePE.scala 93:36]
        reg weights_bits : UInt<8>[2], clock with :
          reset => (UInt<1>("h0"), weights_bits) @[TreePE.scala 94:37]
        weights_bits <= queue.io.deq.bits.weights @[TreePE.scala 94:37]
        when is_valid : @[TreePE.scala 95:25]
          node _T_2 = bits(offset, 1, 0)
          node _io_sample_out_bits_scores_T = bits(offset, 1, 0)
          node _io_sample_out_bits_scores_T_1 = bits(depth_indicator, 0, 0)
          node _io_sample_out_bits_scores_T_2 = add(scores_bits[_io_sample_out_bits_scores_T], weights_bits[_io_sample_out_bits_scores_T_1]) @[TreePE.scala 96:72]
          node _io_sample_out_bits_scores_T_3 = tail(_io_sample_out_bits_scores_T_2, 1) @[TreePE.scala 96:72]
          io.sample_out.bits.scores[_T_2] <= _io_sample_out_bits_scores_T_3 @[TreePE.scala 96:49]
        else :
          node _T_3 = bits(offset, 1, 0)
          node _io_sample_out_bits_scores_T_4 = bits(offset, 1, 0)
          io.sample_out.bits.scores[_T_3] <= scores_bits[_io_sample_out_bits_scores_T_4] @[TreePE.scala 98:49]
      else :
        io.sample_out.bits.offset <= offset @[TreePE.scala 101:37]
        reg REG_4 : UInt<8>[4], clock with :
          reset => (UInt<1>("h0"), REG_4) @[TreePE.scala 102:47]
        REG_4 <= queue.io.deq.bits.scores @[TreePE.scala 102:47]
        io.sample_out.bits.scores <= REG_4 @[TreePE.scala 102:37]
        io.sample_out.bits.shift <= UInt<1>("h0") @[TreePE.scala 103:36]
        io.sample_out.bits.search_for_root <= UInt<1>("h0") @[TreePE.scala 104:46]
    reg REG_5 : UInt, clock with :
      reset => (UInt<1>("h0"), REG_5) @[TreePE.scala 109:17]
    REG_5 <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 109:17]
    node _T_4 = eq(REG_5, UInt<2>("h3")) @[TreePE.scala 109:43]
    when _T_4 : @[TreePE.scala 109:61]
      io.sample_out.bits.dest <= UInt<1>("h1") @[TreePE.scala 110:31]
    else :
      io.sample_out.bits.dest <= UInt<1>("h0") @[TreePE.scala 112:31]
    reg io_sample_out_valid_REG : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_sample_out_valid_REG) @[TreePE.scala 115:35]
    io_sample_out_valid_REG <= queue.io.deq.valid @[TreePE.scala 115:35]
    io.sample_out.valid <= io_sample_out_valid_REG @[TreePE.scala 115:25]
    reg queue_io_deq_ready_REG : UInt<1>, clock with :
      reset => (UInt<1>("h0"), queue_io_deq_ready_REG) @[TreePE.scala 116:27]
    queue_io_deq_ready_REG <= io.sample_out.ready @[TreePE.scala 116:27]
    queue.io.deq.ready <= queue_io_deq_ready_REG @[TreePE.scala 116:17]

  module TreePEwithBRAM_1 :
    input clock : Clock
    input reset : Reset
    output pe_io : { flip sample_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : UInt<16>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : UInt<8>[4], weights : UInt<8>[2], dest : UInt<1>}}, flip mem : { flip enable_1 : UInt<1>, flip write_1 : UInt<1>, flip addr_1 : UInt<10>, flip dataIn_1 : UInt<64>, dataOut_1 : UInt<64>, flip enable_2 : UInt<1>, flip write_2 : UInt<1>, flip addr_2 : UInt<10>, flip dataIn_2 : UInt<64>, dataOut_2 : UInt<64>}, sample_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : UInt<16>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : UInt<8>[4], weights : UInt<8>[2], dest : UInt<1>}}}

    inst pe of TreePE_1 @[TreePE.scala 147:18]
    pe.clock <= clock
    pe.reset <= reset
    pe_io.sample_out.bits <= pe.io.sample_out.bits @[TreePE.scala 149:9]
    pe_io.sample_out.valid <= pe.io.sample_out.valid @[TreePE.scala 149:9]
    pe.io.sample_out.ready <= pe_io.sample_out.ready @[TreePE.scala 149:9]
    pe.io.mem <= pe_io.mem @[TreePE.scala 149:9]
    pe.io.sample_in <= pe_io.sample_in @[TreePE.scala 149:9]

  module BRAMLikeMem1 :
    input clock : Clock
    input reset : Reset
    output io : { flip enable_1 : UInt<1>, flip write_1 : UInt<1>, flip addr_1 : UInt<10>, flip dataIn_1 : UInt<64>, dataOut_1 : UInt<64>, flip enable_2 : UInt<1>, flip write_2 : UInt<1>, flip addr_2 : UInt<10>, flip dataIn_2 : UInt<64>, dataOut_2 : UInt<64>}

    smem mem : UInt<64> [1024] @[ME.scala 48:24]
    when io.write_1 : @[ME.scala 50:20]
      write mport MPORT = mem[io.addr_1], clock
      MPORT <= io.dataIn_1
    wire _io_dataOut_1_WIRE : UInt @[ME.scala 51:27]
    _io_dataOut_1_WIRE is invalid @[ME.scala 51:27]
    when io.enable_1 : @[ME.scala 51:27]
      _io_dataOut_1_WIRE <= io.addr_1 @[ME.scala 51:27]
      node _io_dataOut_1_T = or(_io_dataOut_1_WIRE, UInt<10>("h0")) @[ME.scala 51:27]
      node _io_dataOut_1_T_1 = bits(_io_dataOut_1_T, 9, 0) @[ME.scala 51:27]
      read mport io_dataOut_1_MPORT = mem[_io_dataOut_1_T_1], clock @[ME.scala 51:27]
    io.dataOut_1 <= io_dataOut_1_MPORT @[ME.scala 51:16]
    when io.write_2 : @[ME.scala 53:20]
      write mport MPORT_1 = mem[io.addr_2], clock
      MPORT_1 <= io.dataIn_2
    wire _io_dataOut_2_WIRE : UInt @[ME.scala 54:27]
    _io_dataOut_2_WIRE is invalid @[ME.scala 54:27]
    when io.enable_2 : @[ME.scala 54:27]
      _io_dataOut_2_WIRE <= io.addr_2 @[ME.scala 54:27]
      node _io_dataOut_2_T = or(_io_dataOut_2_WIRE, UInt<10>("h0")) @[ME.scala 54:27]
      node _io_dataOut_2_T_1 = bits(_io_dataOut_2_T, 9, 0) @[ME.scala 54:27]
      read mport io_dataOut_2_MPORT = mem[_io_dataOut_2_T_1], clock @[ME.scala 54:27]
    io.dataOut_2 <= io_dataOut_2_MPORT @[ME.scala 54:16]
    node _T = lt(io.addr_1, UInt<11>("h400")) @[ME.scala 56:21]
    node _T_1 = lt(io.addr_2, UInt<11>("h400")) @[ME.scala 56:48]
    node _T_2 = and(_T, _T_1) @[ME.scala 56:34]
    node _T_3 = asUInt(reset) @[ME.scala 56:9]
    node _T_4 = eq(_T_3, UInt<1>("h0")) @[ME.scala 56:9]
    when _T_4 : @[ME.scala 56:9]
      node _T_5 = eq(_T_2, UInt<1>("h0")) @[ME.scala 56:9]
      when _T_5 : @[ME.scala 56:9]
        printf(clock, UInt<1>("h1"), "Assertion failed\n    at ME.scala:56 assert((io.addr_1 < entries.U) && (io.addr_2 < entries.U))\n") : printf @[ME.scala 56:9]
      assert(clock, _T_2, UInt<1>("h1"), "") : assert @[ME.scala 56:9]

  module BRAMLikeMem1_1 :
    input clock : Clock
    input reset : Reset
    output io : { flip enable_1 : UInt<1>, flip write_1 : UInt<1>, flip addr_1 : UInt<10>, flip dataIn_1 : UInt<64>, dataOut_1 : UInt<64>, flip enable_2 : UInt<1>, flip write_2 : UInt<1>, flip addr_2 : UInt<10>, flip dataIn_2 : UInt<64>, dataOut_2 : UInt<64>}

    smem mem : UInt<64> [1024] @[ME.scala 48:24]
    when io.write_1 : @[ME.scala 50:20]
      write mport MPORT = mem[io.addr_1], clock
      MPORT <= io.dataIn_1
    wire _io_dataOut_1_WIRE : UInt @[ME.scala 51:27]
    _io_dataOut_1_WIRE is invalid @[ME.scala 51:27]
    when io.enable_1 : @[ME.scala 51:27]
      _io_dataOut_1_WIRE <= io.addr_1 @[ME.scala 51:27]
      node _io_dataOut_1_T = or(_io_dataOut_1_WIRE, UInt<10>("h0")) @[ME.scala 51:27]
      node _io_dataOut_1_T_1 = bits(_io_dataOut_1_T, 9, 0) @[ME.scala 51:27]
      read mport io_dataOut_1_MPORT = mem[_io_dataOut_1_T_1], clock @[ME.scala 51:27]
    io.dataOut_1 <= io_dataOut_1_MPORT @[ME.scala 51:16]
    when io.write_2 : @[ME.scala 53:20]
      write mport MPORT_1 = mem[io.addr_2], clock
      MPORT_1 <= io.dataIn_2
    wire _io_dataOut_2_WIRE : UInt @[ME.scala 54:27]
    _io_dataOut_2_WIRE is invalid @[ME.scala 54:27]
    when io.enable_2 : @[ME.scala 54:27]
      _io_dataOut_2_WIRE <= io.addr_2 @[ME.scala 54:27]
      node _io_dataOut_2_T = or(_io_dataOut_2_WIRE, UInt<10>("h0")) @[ME.scala 54:27]
      node _io_dataOut_2_T_1 = bits(_io_dataOut_2_T, 9, 0) @[ME.scala 54:27]
      read mport io_dataOut_2_MPORT = mem[_io_dataOut_2_T_1], clock @[ME.scala 54:27]
    io.dataOut_2 <= io_dataOut_2_MPORT @[ME.scala 54:16]
    node _T = lt(io.addr_1, UInt<11>("h400")) @[ME.scala 56:21]
    node _T_1 = lt(io.addr_2, UInt<11>("h400")) @[ME.scala 56:48]
    node _T_2 = and(_T, _T_1) @[ME.scala 56:34]
    node _T_3 = asUInt(reset) @[ME.scala 56:9]
    node _T_4 = eq(_T_3, UInt<1>("h0")) @[ME.scala 56:9]
    when _T_4 : @[ME.scala 56:9]
      node _T_5 = eq(_T_2, UInt<1>("h0")) @[ME.scala 56:9]
      when _T_5 : @[ME.scala 56:9]
        printf(clock, UInt<1>("h1"), "Assertion failed\n    at ME.scala:56 assert((io.addr_1 < entries.U) && (io.addr_2 < entries.U))\n") : printf @[ME.scala 56:9]
      assert(clock, _T_2, UInt<1>("h1"), "") : assert @[ME.scala 56:9]

  module Queue_3 :
    input clock : Clock
    input reset : Reset
    output io : { flip enq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : UInt<16>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : UInt<8>[4], weights : UInt<8>[2], dest : UInt<1>}}, deq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : UInt<16>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : UInt<8>[4], weights : UInt<8>[2], dest : UInt<1>}}, count : UInt<8>}

    cmem ram : { features : UInt<16>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : UInt<8>[4], weights : UInt<8>[2], dest : UInt<1>} [128] @[Decoupled.scala 275:95]
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
    output io : { flip enq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : UInt<16>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : UInt<8>[4], weights : UInt<8>[2], dest : UInt<1>}}, deq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : UInt<16>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : UInt<8>[4], weights : UInt<8>[2], dest : UInt<1>}}, count : UInt<8>}

    cmem ram : { features : UInt<16>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : UInt<8>[4], weights : UInt<8>[2], dest : UInt<1>} [128] @[Decoupled.scala 275:95]
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
    output io : { flip sample_entering : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : UInt<16>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : UInt<8>[4], weights : UInt<8>[2], dest : UInt<1>}}, flip sample_looping : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : UInt<16>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : UInt<8>[4], weights : UInt<8>[2], dest : UInt<1>}}, sample_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : UInt<16>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : UInt<8>[4], weights : UInt<8>[2], dest : UInt<1>}}}

    inst queue_entering of Queue_3 @[Decoupled.scala 377:21]
    queue_entering.clock <= clock
    queue_entering.reset <= reset
    queue_entering.io.enq.valid <= io.sample_entering.valid @[Decoupled.scala 379:22]
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
    inst queue_looping of Queue_4 @[Decoupled.scala 377:21]
    queue_looping.clock <= clock
    queue_looping.reset <= reset
    queue_looping.io.enq.valid <= io.sample_looping.valid @[Decoupled.scala 379:22]
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

  module Queue_5 :
    input clock : Clock
    input reset : Reset
    output io : { flip enq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : UInt<16>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : UInt<8>[4], weights : UInt<8>[2], dest : UInt<1>}}, deq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : UInt<16>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : UInt<8>[4], weights : UInt<8>[2], dest : UInt<1>}}, count : UInt<2>}

    cmem ram : { features : UInt<16>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : UInt<8>[4], weights : UInt<8>[2], dest : UInt<1>} [3] @[Decoupled.scala 275:95]
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
    output io : { flip sample_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : UInt<16>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : UInt<8>[4], weights : UInt<8>[2], dest : UInt<1>}}, sample_looping : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : UInt<16>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : UInt<8>[4], weights : UInt<8>[2], dest : UInt<1>}}, sample_leaving : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : UInt<16>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : UInt<8>[4], weights : UInt<8>[2], dest : UInt<1>}}}

    inst queue of Queue_5 @[Decoupled.scala 377:21]
    queue.clock <= clock
    queue.reset <= reset
    queue.io.enq.valid <= io.sample_in.valid @[Decoupled.scala 379:22]
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

  module Queue_6 :
    input clock : Clock
    input reset : Reset
    output io : { flip enq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : UInt<16>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : UInt<8>[4], weights : UInt<8>[2], dest : UInt<1>}}, deq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : UInt<16>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : UInt<8>[4], weights : UInt<8>[2], dest : UInt<1>}}, count : UInt<2>}

    cmem ram : { features : UInt<16>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : UInt<8>[4], weights : UInt<8>[2], dest : UInt<1>} [3] @[Decoupled.scala 275:95]
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
    output io : { flip sample_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : UInt<16>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : UInt<8>[4], weights : UInt<8>[2], dest : UInt<1>}}, sample_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : UInt<16>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : UInt<8>[4], weights : UInt<8>[2], dest : UInt<1>}}}

    inst queue of Queue_6 @[Decoupled.scala 377:21]
    queue.clock <= clock
    queue.reset <= reset
    queue.io.enq.valid <= io.sample_in.valid @[Decoupled.scala 379:22]
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
    io.sample_out.valid <= queue.io.deq.valid @[IncrementTreePE.scala 24:25]
    queue.io.deq.ready <= io.sample_out.ready @[IncrementTreePE.scala 26:17]

  module Queue_7 :
    input clock : Clock
    input reset : Reset
    output io : { flip enq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : UInt<16>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : UInt<8>[4], weights : UInt<8>[2], dest : UInt<1>}}, deq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : UInt<16>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : UInt<8>[4], weights : UInt<8>[2], dest : UInt<1>}}, count : UInt<2>}

    cmem ram : { features : UInt<16>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : UInt<8>[4], weights : UInt<8>[2], dest : UInt<1>} [3] @[Decoupled.scala 275:95]
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
    output io : { flip sample_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : UInt<16>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : UInt<8>[4], weights : UInt<8>[2], dest : UInt<1>}}, flip mem : { flip enable_1 : UInt<1>, flip write_1 : UInt<1>, flip addr_1 : UInt<10>, flip dataIn_1 : UInt<64>, dataOut_1 : UInt<64>, flip enable_2 : UInt<1>, flip write_2 : UInt<1>, flip addr_2 : UInt<10>, flip dataIn_2 : UInt<64>, dataOut_2 : UInt<64>}, sample_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : UInt<16>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : UInt<8>[4], weights : UInt<8>[2], dest : UInt<1>}}}

    inst queue of Queue_7 @[Decoupled.scala 377:21]
    queue.clock <= clock
    queue.reset <= reset
    queue.io.enq.valid <= io.sample_in.valid @[Decoupled.scala 379:22]
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
    reg REG : UInt<16>[4], clock with :
      reset => (UInt<1>("h0"), REG) @[TreePE.scala 39:43]
    REG <= queue.io.deq.bits.features @[TreePE.scala 39:43]
    io.sample_out.bits.features <= REG @[TreePE.scala 39:33]
    reg REG_1 : UInt<8>[2], clock with :
      reset => (UInt<1>("h0"), REG_1) @[TreePE.scala 40:42]
    REG_1 <= queue.io.deq.bits.weights @[TreePE.scala 40:42]
    io.sample_out.bits.weights <= REG_1 @[TreePE.scala 40:32]
    reg io_sample_out_bits_tree_to_exec_REG : UInt, clock with :
      reset => (UInt<1>("h0"), io_sample_out_bits_tree_to_exec_REG) @[TreePE.scala 41:47]
    io_sample_out_bits_tree_to_exec_REG <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 41:47]
    io.sample_out.bits.tree_to_exec <= io_sample_out_bits_tree_to_exec_REG @[TreePE.scala 41:37]
    reg REG_2 : UInt<8>[4], clock with :
      reset => (UInt<1>("h0"), REG_2) @[TreePE.scala 42:41]
    REG_2 <= queue.io.deq.bits.scores @[TreePE.scala 42:41]
    io.sample_out.bits.scores <= REG_2 @[TreePE.scala 42:31]
    wire offset : UInt<10> @[TreePE.scala 45:24]
    wire shift : UInt<1> @[TreePE.scala 46:23]
    reg features_bits : UInt<16>[4], clock with :
      reset => (UInt<1>("h0"), features_bits) @[TreePE.scala 47:34]
    features_bits <= queue.io.deq.bits.features @[TreePE.scala 47:34]
    node _T = lt(features_bits[attr_id], threshold) @[TreePE.scala 48:35]
    when _T : @[TreePE.scala 48:47]
      shift <= leftChildType @[TreePE.scala 49:15]
      offset <= leftChildInfo @[TreePE.scala 50:16]
    else :
      shift <= rightChildType @[TreePE.scala 52:15]
      offset <= rightChildInfo @[TreePE.scala 53:16]
    node _T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 55:18]
    when _T_1 : @[TreePE.scala 55:30]
      reg io_sample_out_bits_offset_REG : UInt, clock with :
        reset => (UInt<1>("h0"), io_sample_out_bits_offset_REG) @[TreePE.scala 56:45]
      io_sample_out_bits_offset_REG <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 56:45]
      io.sample_out.bits.offset <= io_sample_out_bits_offset_REG @[TreePE.scala 56:35]
      io.sample_out.bits.shift <= UInt<1>("h0") @[TreePE.scala 57:34]
      io.sample_out.bits.search_for_root <= UInt<1>("h1") @[TreePE.scala 58:44]
      reg scores_bits : UInt<8>[4], clock with :
        reset => (UInt<1>("h0"), scores_bits) @[TreePE.scala 59:34]
      scores_bits <= queue.io.deq.bits.scores @[TreePE.scala 59:34]
      reg weights_bits : UInt<8>[2], clock with :
        reset => (UInt<1>("h0"), weights_bits) @[TreePE.scala 60:35]
      weights_bits <= queue.io.deq.bits.weights @[TreePE.scala 60:35]
      when is_valid : @[TreePE.scala 61:23]
        node _T_2 = bits(offset, 1, 0)
        node _io_sample_out_bits_scores_T = bits(offset, 1, 0)
        node _io_sample_out_bits_scores_T_1 = bits(depth_indicator, 0, 0)
        node _io_sample_out_bits_scores_T_2 = add(scores_bits[_io_sample_out_bits_scores_T], weights_bits[_io_sample_out_bits_scores_T_1]) @[TreePE.scala 62:70]
        node _io_sample_out_bits_scores_T_3 = tail(_io_sample_out_bits_scores_T_2, 1) @[TreePE.scala 62:70]
        io.sample_out.bits.scores[_T_2] <= _io_sample_out_bits_scores_T_3 @[TreePE.scala 62:47]
      else :
        node _T_3 = bits(offset, 1, 0)
        node _io_sample_out_bits_scores_T_4 = bits(offset, 1, 0)
        io.sample_out.bits.scores[_T_3] <= scores_bits[_io_sample_out_bits_scores_T_4] @[TreePE.scala 64:47]
    else :
      io.sample_out.bits.offset <= offset @[TreePE.scala 68:35]
      reg REG_3 : UInt<8>[4], clock with :
        reset => (UInt<1>("h0"), REG_3) @[TreePE.scala 69:45]
      REG_3 <= queue.io.deq.bits.scores @[TreePE.scala 69:45]
      io.sample_out.bits.scores <= REG_3 @[TreePE.scala 69:35]
      io.sample_out.bits.shift <= UInt<1>("h0") @[TreePE.scala 70:34]
      io.sample_out.bits.search_for_root <= UInt<1>("h0") @[TreePE.scala 71:44]
    reg REG_4 : UInt, clock with :
      reset => (UInt<1>("h0"), REG_4) @[TreePE.scala 109:17]
    REG_4 <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 109:17]
    node _T_4 = eq(REG_4, UInt<2>("h3")) @[TreePE.scala 109:43]
    when _T_4 : @[TreePE.scala 109:61]
      io.sample_out.bits.dest <= UInt<1>("h1") @[TreePE.scala 110:31]
    else :
      io.sample_out.bits.dest <= UInt<1>("h0") @[TreePE.scala 112:31]
    reg io_sample_out_valid_REG : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_sample_out_valid_REG) @[TreePE.scala 115:35]
    io_sample_out_valid_REG <= queue.io.deq.valid @[TreePE.scala 115:35]
    io.sample_out.valid <= io_sample_out_valid_REG @[TreePE.scala 115:25]
    reg queue_io_deq_ready_REG : UInt<1>, clock with :
      reset => (UInt<1>("h0"), queue_io_deq_ready_REG) @[TreePE.scala 116:27]
    queue_io_deq_ready_REG <= io.sample_out.ready @[TreePE.scala 116:27]
    queue.io.deq.ready <= queue_io_deq_ready_REG @[TreePE.scala 116:17]

  module TreePEwithBRAM_2 :
    input clock : Clock
    input reset : Reset
    output pe_io : { flip sample_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : UInt<16>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : UInt<8>[4], weights : UInt<8>[2], dest : UInt<1>}}, flip mem : { flip enable_1 : UInt<1>, flip write_1 : UInt<1>, flip addr_1 : UInt<10>, flip dataIn_1 : UInt<64>, dataOut_1 : UInt<64>, flip enable_2 : UInt<1>, flip write_2 : UInt<1>, flip addr_2 : UInt<10>, flip dataIn_2 : UInt<64>, dataOut_2 : UInt<64>}, sample_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : UInt<16>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : UInt<8>[4], weights : UInt<8>[2], dest : UInt<1>}}}

    inst pe of TreePE_2 @[TreePE.scala 147:18]
    pe.clock <= clock
    pe.reset <= reset
    pe_io.sample_out.bits <= pe.io.sample_out.bits @[TreePE.scala 149:9]
    pe_io.sample_out.valid <= pe.io.sample_out.valid @[TreePE.scala 149:9]
    pe.io.sample_out.ready <= pe_io.sample_out.ready @[TreePE.scala 149:9]
    pe.io.mem <= pe_io.mem @[TreePE.scala 149:9]
    pe.io.sample_in <= pe_io.sample_in @[TreePE.scala 149:9]

  module Queue_8 :
    input clock : Clock
    input reset : Reset
    output io : { flip enq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : UInt<16>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : UInt<8>[4], weights : UInt<8>[2], dest : UInt<1>}}, deq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : UInt<16>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : UInt<8>[4], weights : UInt<8>[2], dest : UInt<1>}}, count : UInt<2>}

    cmem ram : { features : UInt<16>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : UInt<8>[4], weights : UInt<8>[2], dest : UInt<1>} [3] @[Decoupled.scala 275:95]
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
    output io : { flip sample_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : UInt<16>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : UInt<8>[4], weights : UInt<8>[2], dest : UInt<1>}}, flip mem : { flip enable_1 : UInt<1>, flip write_1 : UInt<1>, flip addr_1 : UInt<10>, flip dataIn_1 : UInt<64>, dataOut_1 : UInt<64>, flip enable_2 : UInt<1>, flip write_2 : UInt<1>, flip addr_2 : UInt<10>, flip dataIn_2 : UInt<64>, dataOut_2 : UInt<64>}, sample_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : UInt<16>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : UInt<8>[4], weights : UInt<8>[2], dest : UInt<1>}}}

    inst queue of Queue_8 @[Decoupled.scala 377:21]
    queue.clock <= clock
    queue.reset <= reset
    queue.io.enq.valid <= io.sample_in.valid @[Decoupled.scala 379:22]
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
    reg REG : UInt<16>[4], clock with :
      reset => (UInt<1>("h0"), REG) @[TreePE.scala 39:43]
    REG <= queue.io.deq.bits.features @[TreePE.scala 39:43]
    io.sample_out.bits.features <= REG @[TreePE.scala 39:33]
    reg REG_1 : UInt<8>[2], clock with :
      reset => (UInt<1>("h0"), REG_1) @[TreePE.scala 40:42]
    REG_1 <= queue.io.deq.bits.weights @[TreePE.scala 40:42]
    io.sample_out.bits.weights <= REG_1 @[TreePE.scala 40:32]
    reg io_sample_out_bits_tree_to_exec_REG : UInt, clock with :
      reset => (UInt<1>("h0"), io_sample_out_bits_tree_to_exec_REG) @[TreePE.scala 41:47]
    io_sample_out_bits_tree_to_exec_REG <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 41:47]
    io.sample_out.bits.tree_to_exec <= io_sample_out_bits_tree_to_exec_REG @[TreePE.scala 41:37]
    reg REG_2 : UInt<8>[4], clock with :
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
      reg features_bits : UInt<16>[4], clock with :
        reset => (UInt<1>("h0"), features_bits) @[TreePE.scala 81:36]
      features_bits <= queue.io.deq.bits.features @[TreePE.scala 81:36]
      node _T = lt(features_bits[attr_id], threshold) @[TreePE.scala 82:37]
      when _T : @[TreePE.scala 82:49]
        shift <= leftChildType @[TreePE.scala 83:17]
        offset <= leftChildInfo @[TreePE.scala 84:18]
      else :
        shift <= rightChildType @[TreePE.scala 86:17]
        offset <= rightChildInfo @[TreePE.scala 87:18]
      node _T_1 = eq(shift, UInt<1>("h0")) @[TreePE.scala 89:20]
      when _T_1 : @[TreePE.scala 89:32]
        reg io_sample_out_bits_offset_REG_1 : UInt, clock with :
          reset => (UInt<1>("h0"), io_sample_out_bits_offset_REG_1) @[TreePE.scala 90:47]
        io_sample_out_bits_offset_REG_1 <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 90:47]
        io.sample_out.bits.offset <= io_sample_out_bits_offset_REG_1 @[TreePE.scala 90:37]
        io.sample_out.bits.shift <= UInt<1>("h0") @[TreePE.scala 91:36]
        io.sample_out.bits.search_for_root <= UInt<1>("h1") @[TreePE.scala 92:46]
        reg scores_bits : UInt<8>[4], clock with :
          reset => (UInt<1>("h0"), scores_bits) @[TreePE.scala 93:36]
        scores_bits <= queue.io.deq.bits.scores @[TreePE.scala 93:36]
        reg weights_bits : UInt<8>[2], clock with :
          reset => (UInt<1>("h0"), weights_bits) @[TreePE.scala 94:37]
        weights_bits <= queue.io.deq.bits.weights @[TreePE.scala 94:37]
        when is_valid : @[TreePE.scala 95:25]
          node _T_2 = bits(offset, 1, 0)
          node _io_sample_out_bits_scores_T = bits(offset, 1, 0)
          node _io_sample_out_bits_scores_T_1 = bits(depth_indicator, 0, 0)
          node _io_sample_out_bits_scores_T_2 = add(scores_bits[_io_sample_out_bits_scores_T], weights_bits[_io_sample_out_bits_scores_T_1]) @[TreePE.scala 96:72]
          node _io_sample_out_bits_scores_T_3 = tail(_io_sample_out_bits_scores_T_2, 1) @[TreePE.scala 96:72]
          io.sample_out.bits.scores[_T_2] <= _io_sample_out_bits_scores_T_3 @[TreePE.scala 96:49]
        else :
          node _T_3 = bits(offset, 1, 0)
          node _io_sample_out_bits_scores_T_4 = bits(offset, 1, 0)
          io.sample_out.bits.scores[_T_3] <= scores_bits[_io_sample_out_bits_scores_T_4] @[TreePE.scala 98:49]
      else :
        io.sample_out.bits.offset <= offset @[TreePE.scala 101:37]
        reg REG_4 : UInt<8>[4], clock with :
          reset => (UInt<1>("h0"), REG_4) @[TreePE.scala 102:47]
        REG_4 <= queue.io.deq.bits.scores @[TreePE.scala 102:47]
        io.sample_out.bits.scores <= REG_4 @[TreePE.scala 102:37]
        io.sample_out.bits.shift <= UInt<1>("h0") @[TreePE.scala 103:36]
        io.sample_out.bits.search_for_root <= UInt<1>("h0") @[TreePE.scala 104:46]
    reg REG_5 : UInt, clock with :
      reset => (UInt<1>("h0"), REG_5) @[TreePE.scala 109:17]
    REG_5 <= queue.io.deq.bits.tree_to_exec @[TreePE.scala 109:17]
    node _T_4 = eq(REG_5, UInt<2>("h3")) @[TreePE.scala 109:43]
    when _T_4 : @[TreePE.scala 109:61]
      io.sample_out.bits.dest <= UInt<1>("h1") @[TreePE.scala 110:31]
    else :
      io.sample_out.bits.dest <= UInt<1>("h0") @[TreePE.scala 112:31]
    reg io_sample_out_valid_REG : UInt<1>, clock with :
      reset => (UInt<1>("h0"), io_sample_out_valid_REG) @[TreePE.scala 115:35]
    io_sample_out_valid_REG <= queue.io.deq.valid @[TreePE.scala 115:35]
    io.sample_out.valid <= io_sample_out_valid_REG @[TreePE.scala 115:25]
    reg queue_io_deq_ready_REG : UInt<1>, clock with :
      reset => (UInt<1>("h0"), queue_io_deq_ready_REG) @[TreePE.scala 116:27]
    queue_io_deq_ready_REG <= io.sample_out.ready @[TreePE.scala 116:27]
    queue.io.deq.ready <= queue_io_deq_ready_REG @[TreePE.scala 116:17]

  module TreePEwithBRAM_3 :
    input clock : Clock
    input reset : Reset
    output pe_io : { flip sample_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : UInt<16>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : UInt<8>[4], weights : UInt<8>[2], dest : UInt<1>}}, flip mem : { flip enable_1 : UInt<1>, flip write_1 : UInt<1>, flip addr_1 : UInt<10>, flip dataIn_1 : UInt<64>, dataOut_1 : UInt<64>, flip enable_2 : UInt<1>, flip write_2 : UInt<1>, flip addr_2 : UInt<10>, flip dataIn_2 : UInt<64>, dataOut_2 : UInt<64>}, sample_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : UInt<16>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : UInt<8>[4], weights : UInt<8>[2], dest : UInt<1>}}}

    inst pe of TreePE_3 @[TreePE.scala 147:18]
    pe.clock <= clock
    pe.reset <= reset
    pe_io.sample_out.bits <= pe.io.sample_out.bits @[TreePE.scala 149:9]
    pe_io.sample_out.valid <= pe.io.sample_out.valid @[TreePE.scala 149:9]
    pe.io.sample_out.ready <= pe_io.sample_out.ready @[TreePE.scala 149:9]
    pe.io.mem <= pe_io.mem @[TreePE.scala 149:9]
    pe.io.sample_in <= pe_io.sample_in @[TreePE.scala 149:9]

  module BRAMLikeMem1_2 :
    input clock : Clock
    input reset : Reset
    output io : { flip enable_1 : UInt<1>, flip write_1 : UInt<1>, flip addr_1 : UInt<10>, flip dataIn_1 : UInt<64>, dataOut_1 : UInt<64>, flip enable_2 : UInt<1>, flip write_2 : UInt<1>, flip addr_2 : UInt<10>, flip dataIn_2 : UInt<64>, dataOut_2 : UInt<64>}

    smem mem : UInt<64> [1024] @[ME.scala 48:24]
    when io.write_1 : @[ME.scala 50:20]
      write mport MPORT = mem[io.addr_1], clock
      MPORT <= io.dataIn_1
    wire _io_dataOut_1_WIRE : UInt @[ME.scala 51:27]
    _io_dataOut_1_WIRE is invalid @[ME.scala 51:27]
    when io.enable_1 : @[ME.scala 51:27]
      _io_dataOut_1_WIRE <= io.addr_1 @[ME.scala 51:27]
      node _io_dataOut_1_T = or(_io_dataOut_1_WIRE, UInt<10>("h0")) @[ME.scala 51:27]
      node _io_dataOut_1_T_1 = bits(_io_dataOut_1_T, 9, 0) @[ME.scala 51:27]
      read mport io_dataOut_1_MPORT = mem[_io_dataOut_1_T_1], clock @[ME.scala 51:27]
    io.dataOut_1 <= io_dataOut_1_MPORT @[ME.scala 51:16]
    when io.write_2 : @[ME.scala 53:20]
      write mport MPORT_1 = mem[io.addr_2], clock
      MPORT_1 <= io.dataIn_2
    wire _io_dataOut_2_WIRE : UInt @[ME.scala 54:27]
    _io_dataOut_2_WIRE is invalid @[ME.scala 54:27]
    when io.enable_2 : @[ME.scala 54:27]
      _io_dataOut_2_WIRE <= io.addr_2 @[ME.scala 54:27]
      node _io_dataOut_2_T = or(_io_dataOut_2_WIRE, UInt<10>("h0")) @[ME.scala 54:27]
      node _io_dataOut_2_T_1 = bits(_io_dataOut_2_T, 9, 0) @[ME.scala 54:27]
      read mport io_dataOut_2_MPORT = mem[_io_dataOut_2_T_1], clock @[ME.scala 54:27]
    io.dataOut_2 <= io_dataOut_2_MPORT @[ME.scala 54:16]
    node _T = lt(io.addr_1, UInt<11>("h400")) @[ME.scala 56:21]
    node _T_1 = lt(io.addr_2, UInt<11>("h400")) @[ME.scala 56:48]
    node _T_2 = and(_T, _T_1) @[ME.scala 56:34]
    node _T_3 = asUInt(reset) @[ME.scala 56:9]
    node _T_4 = eq(_T_3, UInt<1>("h0")) @[ME.scala 56:9]
    when _T_4 : @[ME.scala 56:9]
      node _T_5 = eq(_T_2, UInt<1>("h0")) @[ME.scala 56:9]
      when _T_5 : @[ME.scala 56:9]
        printf(clock, UInt<1>("h1"), "Assertion failed\n    at ME.scala:56 assert((io.addr_1 < entries.U) && (io.addr_2 < entries.U))\n") : printf @[ME.scala 56:9]
      assert(clock, _T_2, UInt<1>("h1"), "") : assert @[ME.scala 56:9]

  module BRAMLikeMem1_3 :
    input clock : Clock
    input reset : Reset
    output io : { flip enable_1 : UInt<1>, flip write_1 : UInt<1>, flip addr_1 : UInt<10>, flip dataIn_1 : UInt<64>, dataOut_1 : UInt<64>, flip enable_2 : UInt<1>, flip write_2 : UInt<1>, flip addr_2 : UInt<10>, flip dataIn_2 : UInt<64>, dataOut_2 : UInt<64>}

    smem mem : UInt<64> [1024] @[ME.scala 48:24]
    when io.write_1 : @[ME.scala 50:20]
      write mport MPORT = mem[io.addr_1], clock
      MPORT <= io.dataIn_1
    wire _io_dataOut_1_WIRE : UInt @[ME.scala 51:27]
    _io_dataOut_1_WIRE is invalid @[ME.scala 51:27]
    when io.enable_1 : @[ME.scala 51:27]
      _io_dataOut_1_WIRE <= io.addr_1 @[ME.scala 51:27]
      node _io_dataOut_1_T = or(_io_dataOut_1_WIRE, UInt<10>("h0")) @[ME.scala 51:27]
      node _io_dataOut_1_T_1 = bits(_io_dataOut_1_T, 9, 0) @[ME.scala 51:27]
      read mport io_dataOut_1_MPORT = mem[_io_dataOut_1_T_1], clock @[ME.scala 51:27]
    io.dataOut_1 <= io_dataOut_1_MPORT @[ME.scala 51:16]
    when io.write_2 : @[ME.scala 53:20]
      write mport MPORT_1 = mem[io.addr_2], clock
      MPORT_1 <= io.dataIn_2
    wire _io_dataOut_2_WIRE : UInt @[ME.scala 54:27]
    _io_dataOut_2_WIRE is invalid @[ME.scala 54:27]
    when io.enable_2 : @[ME.scala 54:27]
      _io_dataOut_2_WIRE <= io.addr_2 @[ME.scala 54:27]
      node _io_dataOut_2_T = or(_io_dataOut_2_WIRE, UInt<10>("h0")) @[ME.scala 54:27]
      node _io_dataOut_2_T_1 = bits(_io_dataOut_2_T, 9, 0) @[ME.scala 54:27]
      read mport io_dataOut_2_MPORT = mem[_io_dataOut_2_T_1], clock @[ME.scala 54:27]
    io.dataOut_2 <= io_dataOut_2_MPORT @[ME.scala 54:16]
    node _T = lt(io.addr_1, UInt<11>("h400")) @[ME.scala 56:21]
    node _T_1 = lt(io.addr_2, UInt<11>("h400")) @[ME.scala 56:48]
    node _T_2 = and(_T, _T_1) @[ME.scala 56:34]
    node _T_3 = asUInt(reset) @[ME.scala 56:9]
    node _T_4 = eq(_T_3, UInt<1>("h0")) @[ME.scala 56:9]
    when _T_4 : @[ME.scala 56:9]
      node _T_5 = eq(_T_2, UInt<1>("h0")) @[ME.scala 56:9]
      when _T_5 : @[ME.scala 56:9]
        printf(clock, UInt<1>("h1"), "Assertion failed\n    at ME.scala:56 assert((io.addr_1 < entries.U) && (io.addr_2 < entries.U))\n") : printf @[ME.scala 56:9]
      assert(clock, _T_2, UInt<1>("h1"), "") : assert @[ME.scala 56:9]

  module Queue_9 :
    input clock : Clock
    input reset : Reset
    output io : { flip enq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : UInt<16>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : UInt<8>[4], weights : UInt<8>[2], dest : UInt<1>}}, deq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : UInt<16>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : UInt<8>[4], weights : UInt<8>[2], dest : UInt<1>}}, count : UInt<8>}

    cmem ram : { features : UInt<16>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : UInt<8>[4], weights : UInt<8>[2], dest : UInt<1>} [128] @[Decoupled.scala 275:95]
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

  module Queue_10 :
    input clock : Clock
    input reset : Reset
    output io : { flip enq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : UInt<16>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : UInt<8>[4], weights : UInt<8>[2], dest : UInt<1>}}, deq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : UInt<16>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : UInt<8>[4], weights : UInt<8>[2], dest : UInt<1>}}, count : UInt<8>}

    cmem ram : { features : UInt<16>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : UInt<8>[4], weights : UInt<8>[2], dest : UInt<1>} [128] @[Decoupled.scala 275:95]
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
    output io : { flip sample_entering : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : UInt<16>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : UInt<8>[4], weights : UInt<8>[2], dest : UInt<1>}}, flip sample_looping : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : UInt<16>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : UInt<8>[4], weights : UInt<8>[2], dest : UInt<1>}}, sample_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : UInt<16>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : UInt<8>[4], weights : UInt<8>[2], dest : UInt<1>}}}

    inst queue_entering of Queue_9 @[Decoupled.scala 377:21]
    queue_entering.clock <= clock
    queue_entering.reset <= reset
    queue_entering.io.enq.valid <= io.sample_entering.valid @[Decoupled.scala 379:22]
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
    inst queue_looping of Queue_10 @[Decoupled.scala 377:21]
    queue_looping.clock <= clock
    queue_looping.reset <= reset
    queue_looping.io.enq.valid <= io.sample_looping.valid @[Decoupled.scala 379:22]
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

  module Queue_11 :
    input clock : Clock
    input reset : Reset
    output io : { flip enq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : UInt<16>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : UInt<8>[4], weights : UInt<8>[2], dest : UInt<1>}}, deq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : UInt<16>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : UInt<8>[4], weights : UInt<8>[2], dest : UInt<1>}}, count : UInt<2>}

    cmem ram : { features : UInt<16>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : UInt<8>[4], weights : UInt<8>[2], dest : UInt<1>} [3] @[Decoupled.scala 275:95]
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
    output io : { flip sample_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : UInt<16>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : UInt<8>[4], weights : UInt<8>[2], dest : UInt<1>}}, sample_looping : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : UInt<16>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : UInt<8>[4], weights : UInt<8>[2], dest : UInt<1>}}, sample_leaving : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : UInt<16>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : UInt<8>[4], weights : UInt<8>[2], dest : UInt<1>}}}

    inst queue of Queue_11 @[Decoupled.scala 377:21]
    queue.clock <= clock
    queue.reset <= reset
    queue.io.enq.valid <= io.sample_in.valid @[Decoupled.scala 379:22]
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

  module Queue_12 :
    input clock : Clock
    input reset : Reset
    output io : { flip enq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : UInt<16>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : UInt<8>[4], weights : UInt<8>[2], dest : UInt<1>}}, deq : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : UInt<16>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : UInt<8>[4], weights : UInt<8>[2], dest : UInt<1>}}, count : UInt<2>}

    cmem ram : { features : UInt<16>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : UInt<8>[4], weights : UInt<8>[2], dest : UInt<1>} [3] @[Decoupled.scala 275:95]
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
    output io : { flip sample_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : UInt<16>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : UInt<8>[4], weights : UInt<8>[2], dest : UInt<1>}}, sample_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : UInt<16>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : UInt<8>[4], weights : UInt<8>[2], dest : UInt<1>}}}

    inst queue of Queue_12 @[Decoupled.scala 377:21]
    queue.clock <= clock
    queue.reset <= reset
    queue.io.enq.valid <= io.sample_in.valid @[Decoupled.scala 379:22]
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
    io.sample_out.valid <= queue.io.deq.valid @[IncrementTreePE.scala 24:25]
    queue.io.deq.ready <= io.sample_out.ready @[IncrementTreePE.scala 26:17]

  module TreePEsWrapper :
    input clock : Clock
    input reset : UInt<1>
    output wrapper_io : { flip sample_in : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : UInt<16>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : UInt<8>[4], weights : UInt<8>[2], dest : UInt<1>}}, sample_out : { flip ready : UInt<1>, valid : UInt<1>, bits : { features : UInt<16>[4], offset : UInt<10>, shift : UInt<1>, search_for_root : UInt<1>, tree_to_exec : UInt<8>, scores : UInt<8>[4], weights : UInt<8>[2], dest : UInt<1>}}[2], flip brams : { flip enable_1 : UInt<1>, flip write_1 : UInt<1>, flip addr_1 : UInt<10>, flip dataIn_1 : UInt<64>, dataOut_1 : UInt<64>, flip enable_2 : UInt<1>, flip write_2 : UInt<1>, flip addr_2 : UInt<10>, flip dataIn_2 : UInt<64>, dataOut_2 : UInt<64>}[4]}
    output brams_io_0 : { flip enable_1 : UInt<1>, flip write_1 : UInt<1>, flip addr_1 : UInt<10>, flip dataIn_1 : UInt<64>, dataOut_1 : UInt<64>, flip enable_2 : UInt<1>, flip write_2 : UInt<1>, flip addr_2 : UInt<10>, flip dataIn_2 : UInt<64>, dataOut_2 : UInt<64>}
    output brams_io_1 : { flip enable_1 : UInt<1>, flip write_1 : UInt<1>, flip addr_1 : UInt<10>, flip dataIn_1 : UInt<64>, dataOut_1 : UInt<64>, flip enable_2 : UInt<1>, flip write_2 : UInt<1>, flip addr_2 : UInt<10>, flip dataIn_2 : UInt<64>, dataOut_2 : UInt<64>}
    output brams_io_2 : { flip enable_1 : UInt<1>, flip write_1 : UInt<1>, flip addr_1 : UInt<10>, flip dataIn_1 : UInt<64>, dataOut_1 : UInt<64>, flip enable_2 : UInt<1>, flip write_2 : UInt<1>, flip addr_2 : UInt<10>, flip dataIn_2 : UInt<64>, dataOut_2 : UInt<64>}
    output brams_io_3 : { flip enable_1 : UInt<1>, flip write_1 : UInt<1>, flip addr_1 : UInt<10>, flip dataIn_1 : UInt<64>, dataOut_1 : UInt<64>, flip enable_2 : UInt<1>, flip write_2 : UInt<1>, flip addr_2 : UInt<10>, flip dataIn_2 : UInt<64>, dataOut_2 : UInt<64>}

    inst dispatcher of DispatcherPE @[TreePEsWrapper.scala 46:28]
    dispatcher.clock <= clock
    dispatcher.reset <= reset
    inst pes_0 of TreePEwithBRAM @[TreePEsWrapper.scala 52:65]
    pes_0.clock <= clock
    pes_0.reset <= reset
    inst pes_1 of TreePEwithBRAM_1 @[TreePEsWrapper.scala 52:65]
    pes_1.clock <= clock
    pes_1.reset <= reset
    inst brams_0 of BRAMLikeMem1 @[TreePEsWrapper.scala 53:67]
    brams_0.clock <= clock
    brams_0.reset <= reset
    inst brams_1 of BRAMLikeMem1_1 @[TreePEsWrapper.scala 53:67]
    brams_1.clock <= clock
    brams_1.reset <= reset
    inst first_interconnects_0 of FirstInterconnectPE @[TreePEsWrapper.scala 54:40]
    first_interconnects_0.clock <= clock
    first_interconnects_0.reset <= reset
    inst last_interconnect of LastInterconnectPE @[TreePEsWrapper.scala 55:39]
    last_interconnect.clock <= clock
    last_interconnect.reset <= reset
    inst increment of IncrementTreePE @[TreePEsWrapper.scala 56:31]
    increment.clock <= clock
    increment.reset <= reset
    pes_0.pe_io.mem <= wrapper_io.brams[0] @[TreePEsWrapper.scala 59:39]
    brams_0.io.enable_1 <= pes_0.pe_io.mem.enable_1 @[TreePEsWrapper.scala 61:34]
    brams_0.io.write_1 <= pes_0.pe_io.mem.write_1 @[TreePEsWrapper.scala 62:33]
    brams_0.io.addr_1 <= pes_0.pe_io.mem.addr_1 @[TreePEsWrapper.scala 63:32]
    brams_0.io.dataIn_1 <= pes_0.pe_io.mem.dataIn_1 @[TreePEsWrapper.scala 64:34]
    pes_0.pe_io.mem.dataOut_1 <= brams_0.io.dataOut_1 @[TreePEsWrapper.scala 65:40]
    brams_0.io.enable_2 <= brams_io_0.enable_2 @[TreePEsWrapper.scala 67:34]
    brams_0.io.write_2 <= brams_io_0.write_2 @[TreePEsWrapper.scala 68:33]
    brams_0.io.addr_2 <= brams_io_0.addr_2 @[TreePEsWrapper.scala 69:32]
    brams_0.io.dataIn_2 <= brams_io_0.dataIn_2 @[TreePEsWrapper.scala 70:34]
    brams_io_0.dataOut_2 <= brams_0.io.dataOut_2 @[TreePEsWrapper.scala 71:41]
    brams_io_0.dataOut_1 <= UInt<1>("h0") @[TreePEsWrapper.scala 73:41]
    pes_1.pe_io.mem <= wrapper_io.brams[1] @[TreePEsWrapper.scala 59:39]
    brams_1.io.enable_1 <= pes_1.pe_io.mem.enable_1 @[TreePEsWrapper.scala 61:34]
    brams_1.io.write_1 <= pes_1.pe_io.mem.write_1 @[TreePEsWrapper.scala 62:33]
    brams_1.io.addr_1 <= pes_1.pe_io.mem.addr_1 @[TreePEsWrapper.scala 63:32]
    brams_1.io.dataIn_1 <= pes_1.pe_io.mem.dataIn_1 @[TreePEsWrapper.scala 64:34]
    pes_1.pe_io.mem.dataOut_1 <= brams_1.io.dataOut_1 @[TreePEsWrapper.scala 65:40]
    brams_1.io.enable_2 <= brams_io_1.enable_2 @[TreePEsWrapper.scala 67:34]
    brams_1.io.write_2 <= brams_io_1.write_2 @[TreePEsWrapper.scala 68:33]
    brams_1.io.addr_2 <= brams_io_1.addr_2 @[TreePEsWrapper.scala 69:32]
    brams_1.io.dataIn_2 <= brams_io_1.dataIn_2 @[TreePEsWrapper.scala 70:34]
    brams_io_1.dataOut_2 <= brams_1.io.dataOut_2 @[TreePEsWrapper.scala 71:41]
    brams_io_1.dataOut_1 <= UInt<1>("h0") @[TreePEsWrapper.scala 73:41]
    wrapper_io.sample_out[0].bits <= last_interconnect.io.sample_leaving.bits @[TreePEsWrapper.scala 89:45]
    wrapper_io.sample_out[0].valid <= last_interconnect.io.sample_leaving.valid @[TreePEsWrapper.scala 89:45]
    last_interconnect.io.sample_leaving.ready <= wrapper_io.sample_out[0].ready @[TreePEsWrapper.scala 89:45]
    inst pes_0_1 of TreePEwithBRAM_2 @[TreePEsWrapper.scala 52:65]
    pes_0_1.clock <= clock
    pes_0_1.reset <= reset
    inst pes_1_1 of TreePEwithBRAM_3 @[TreePEsWrapper.scala 52:65]
    pes_1_1.clock <= clock
    pes_1_1.reset <= reset
    inst brams_0_1 of BRAMLikeMem1_2 @[TreePEsWrapper.scala 53:67]
    brams_0_1.clock <= clock
    brams_0_1.reset <= reset
    inst brams_1_1 of BRAMLikeMem1_3 @[TreePEsWrapper.scala 53:67]
    brams_1_1.clock <= clock
    brams_1_1.reset <= reset
    inst first_interconnects_1 of FirstInterconnectPE_1 @[TreePEsWrapper.scala 54:40]
    first_interconnects_1.clock <= clock
    first_interconnects_1.reset <= reset
    inst last_interconnect_1 of LastInterconnectPE_1 @[TreePEsWrapper.scala 55:39]
    last_interconnect_1.clock <= clock
    last_interconnect_1.reset <= reset
    inst increment_1 of IncrementTreePE_1 @[TreePEsWrapper.scala 56:31]
    increment_1.clock <= clock
    increment_1.reset <= reset
    pes_0_1.pe_io.mem <= wrapper_io.brams[2] @[TreePEsWrapper.scala 59:39]
    brams_0_1.io.enable_1 <= pes_0_1.pe_io.mem.enable_1 @[TreePEsWrapper.scala 61:34]
    brams_0_1.io.write_1 <= pes_0_1.pe_io.mem.write_1 @[TreePEsWrapper.scala 62:33]
    brams_0_1.io.addr_1 <= pes_0_1.pe_io.mem.addr_1 @[TreePEsWrapper.scala 63:32]
    brams_0_1.io.dataIn_1 <= pes_0_1.pe_io.mem.dataIn_1 @[TreePEsWrapper.scala 64:34]
    pes_0_1.pe_io.mem.dataOut_1 <= brams_0_1.io.dataOut_1 @[TreePEsWrapper.scala 65:40]
    brams_0_1.io.enable_2 <= brams_io_2.enable_2 @[TreePEsWrapper.scala 67:34]
    brams_0_1.io.write_2 <= brams_io_2.write_2 @[TreePEsWrapper.scala 68:33]
    brams_0_1.io.addr_2 <= brams_io_2.addr_2 @[TreePEsWrapper.scala 69:32]
    brams_0_1.io.dataIn_2 <= brams_io_2.dataIn_2 @[TreePEsWrapper.scala 70:34]
    brams_io_2.dataOut_2 <= brams_0_1.io.dataOut_2 @[TreePEsWrapper.scala 71:41]
    brams_io_2.dataOut_1 <= UInt<1>("h0") @[TreePEsWrapper.scala 73:41]
    pes_1_1.pe_io.mem <= wrapper_io.brams[3] @[TreePEsWrapper.scala 59:39]
    brams_1_1.io.enable_1 <= pes_1_1.pe_io.mem.enable_1 @[TreePEsWrapper.scala 61:34]
    brams_1_1.io.write_1 <= pes_1_1.pe_io.mem.write_1 @[TreePEsWrapper.scala 62:33]
    brams_1_1.io.addr_1 <= pes_1_1.pe_io.mem.addr_1 @[TreePEsWrapper.scala 63:32]
    brams_1_1.io.dataIn_1 <= pes_1_1.pe_io.mem.dataIn_1 @[TreePEsWrapper.scala 64:34]
    pes_1_1.pe_io.mem.dataOut_1 <= brams_1_1.io.dataOut_1 @[TreePEsWrapper.scala 65:40]
    brams_1_1.io.enable_2 <= brams_io_3.enable_2 @[TreePEsWrapper.scala 67:34]
    brams_1_1.io.write_2 <= brams_io_3.write_2 @[TreePEsWrapper.scala 68:33]
    brams_1_1.io.addr_2 <= brams_io_3.addr_2 @[TreePEsWrapper.scala 69:32]
    brams_1_1.io.dataIn_2 <= brams_io_3.dataIn_2 @[TreePEsWrapper.scala 70:34]
    brams_io_3.dataOut_2 <= brams_1_1.io.dataOut_2 @[TreePEsWrapper.scala 71:41]
    brams_io_3.dataOut_1 <= UInt<1>("h0") @[TreePEsWrapper.scala 73:41]
    wrapper_io.sample_out[1].bits <= last_interconnect_1.io.sample_leaving.bits @[TreePEsWrapper.scala 89:45]
    wrapper_io.sample_out[1].valid <= last_interconnect_1.io.sample_leaving.valid @[TreePEsWrapper.scala 89:45]
    last_interconnect_1.io.sample_leaving.ready <= wrapper_io.sample_out[1].ready @[TreePEsWrapper.scala 89:45]
    increment_1.io.sample_in <= last_interconnect_1.io.sample_looping @[Interconnect.scala 34:27]
    pes_0_1.pe_io.sample_in <= first_interconnects_1.io.sample_out @[Interconnect.scala 83:23]
    increment.io.sample_in <= last_interconnect.io.sample_looping @[Interconnect.scala 34:27]
    first_interconnects_0.io.sample_entering <= dispatcher.io.samples_out[0] @[DispatcherPE.scala 23:27]
    first_interconnects_1.io.sample_entering <= dispatcher.io.samples_out[1] @[DispatcherPE.scala 23:27]
    pes_1.pe_io.sample_in <= pes_0.pe_io.sample_out @[TreePE.scala 156:22]
    first_interconnects_1.io.sample_looping <= increment_1.io.sample_out @[IncrementTreePE.scala 29:23]
    first_interconnects_0.io.sample_looping <= increment.io.sample_out @[IncrementTreePE.scala 29:23]
    pes_1_1.pe_io.sample_in <= pes_0_1.pe_io.sample_out @[TreePE.scala 156:22]
    last_interconnect.io.sample_in <= pes_1.pe_io.sample_out @[TreePE.scala 152:22]
    pes_0.pe_io.sample_in <= first_interconnects_0.io.sample_out @[Interconnect.scala 83:23]
    last_interconnect_1.io.sample_in <= pes_1_1.pe_io.sample_out @[TreePE.scala 152:22]
    dispatcher.io.sample_in <= wrapper_io.sample_in @[TreePEsWrapper.scala 112:26]

