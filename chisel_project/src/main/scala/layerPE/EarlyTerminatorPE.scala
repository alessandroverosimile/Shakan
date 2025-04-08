package YoseUe_SATL

import chisel3._
import chisel3.util._
import chisel3.experimental._
import spatial_templates.pe._
import scala.math._

class EarlyTerminatorPE(id: ElemId, n_attr: Int, n_classes: Int, n_depths: Int, info_bit: Int, tree_bit: Int, max_votation: Double, n_ins: Int = 1) 
    extends PE(id) with WithFWConnection {
    val io = IO(new Bundle{
        val samples_in = Vec(n_ins,Flipped(Decoupled(new Sample(n_attr,n_classes,n_depths,info_bit,tree_bit))))
        val samples_back = Vec(n_ins,Decoupled(new Sample(n_attr,n_classes,n_depths,info_bit,tree_bit)))
        val sample_out = Decoupled(new Sample(n_attr,n_classes,n_depths,info_bit,tree_bit))
    })

    val queues = VecInit(Seq.tabulate(n_ins)(i => Queue(io.samples_in(i), 2)))
    val max_votation_fp = max_votation.F(20.W, 8.BP)

    val next_power = ceil(log(n_classes) / log(2)).toInt
    val nextPow2 = pow(2, next_power).toInt

    // Compute total scores
    val total_scores = Wire(Vec(nextPow2, FixedPoint(16.W, 8.BP)))
    for (i <- 0 until nextPow2) {
        if (i < n_classes){
            val sum = queues.map(_.bits.scores(i)).reduce(_ +& _)
            total_scores(i) := sum

        }
        else{
            total_scores(i) := 0.F(16.W, 8.BP)
        }
        //printf(p"SUM ${total_scores(i).asSInt}\n")
    }
    
    val max1 = Wire(FixedPoint(16.W,8.BP))
    val max2 = Wire(FixedPoint(16.W,8.BP))
    val reamining_votes = max_votation_fp - total_scores.map(x => x).reduce(_ + _)
    /*
    //Old implementation
    val half_cycle = ceil((2*next_power-1)/2.0).toInt-1
    val loser = Wire(FixedPoint(16.W,8.BP))
    val best_address = Wire(UInt(next_power.W))
    var inputs = Wire(Vec(nextPow2, FixedPoint(16.W,8.BP)))
    var inputs_indexes = Wire(Vec(nextPow2, UInt(next_power.W)))
    for (j <- 0 until nextPow2){
        inputs(j) := total_scores(j)
        inputs_indexes(j) := j.U
    }

    for (i <- 0 until 2*next_power-1){

        if (i < half_cycle){
            val n_results = (nextPow2/pow(2,i+1)).toInt
            val results = Wire(Vec(n_results,FixedPoint(16.W,8.BP)))
            val indexes = Wire(Vec(n_results,UInt(next_power.W)))
            for (j <- 0 until n_results){
                results(j) := Mux(inputs(2*j)>inputs(2*j+1),inputs(2*j),inputs(2*j+1))
                indexes(j) := Mux(inputs(2*j)>inputs(2*j+1),inputs_indexes(2*j),inputs_indexes(2*j+1))
            }
            inputs = results
            inputs_indexes = indexes
        }else{
            if(i == half_cycle){
                max1 := Mux(inputs(0)>inputs(1),inputs(0),inputs(1))
                loser := Mux(inputs(0)<inputs(1),inputs(0),inputs(1))
                best_address := Mux(inputs(0)>inputs(1),inputs_indexes(0),inputs_indexes(1))
                val n_results = (nextPow2/2).toInt
                val results = Wire(Vec(n_results, FixedPoint(16.W,8.BP)))
                val boolean_check = Wire(Bool())
                boolean_check := Mux(best_address<((nextPow2/2).toInt).U,true.B,false.B)
                for (j <- 0 until n_results){
                    results(j) := Mux(boolean_check,Mux(best_address===j.U,loser,total_scores(j)),Mux((best_address===(j + (nextPow2/2).toInt).U),loser,total_scores(j+(nextPow2/2).toInt)))
                }
                inputs = results
            }else{
                if (i<2*next_power-2){
                    val n_results = (nextPow2/pow(2,i-half_cycle+1)).toInt
                    val results = Wire(Vec(n_results,FixedPoint(16.W,8.BP)))
                    for (j <- 0 until n_results){
                        results(j) := Mux(inputs(2*j)>inputs(2*j+1),inputs(2*j),inputs(2*j+1))
                    }
                    inputs = results
                }else{
                    max2 := Mux(inputs(0)>inputs(1),inputs(0),inputs(1))
                }
            }
        }
        
    }
    */

    def parallelMax(vec: Vec[FixedPoint]): (FixedPoint,FixedPoint,UInt) = {
        var current = vec
        var indexes = Wire(Vec(nextPow2,UInt(next_power.W)))
        for (j <- 0 until nextPow2){
            indexes(j) := j.U
        }
        var loser = Wire(FixedPoint(16.W,8.BP))
        for (level <- 0 until log2Ceil(nextPow2)) {
            val next = Wire(Vec(current.length / 2, FixedPoint(16.W, 8.BP)))
            val next_indexes = Wire(Vec(current.length / 2, UInt(next_power.W)))
            if (level == log2Ceil(nextPow2)-1){
                next(0) := Mux(current(0) > current(1), current(0), current(1))
                loser := Mux(current(0) <= current(1), current(0), current(1))
                next_indexes(0) := Mux(current(0) > current(1), indexes(0),indexes(1))
            }else{
                for (i <- 0 until current.length / 2) {
                    next(i) := Mux(current(2 * i) > current(2 * i + 1), current(2 * i), current(2 * i + 1))
                    next_indexes(i) := Mux(current(2 * i) > current(2 * i + 1), indexes(2*i),indexes(2*i+1))
                }
            }
            current = next
            indexes = next_indexes
        }
        (current(0),loser,indexes(0))
    }

    def secondParallelMax(vec: Vec[FixedPoint]): FixedPoint = {
        var current = vec
        for (level <- 0 until log2Ceil(nextPow2/2)) {
            val next = Wire(Vec(current.length / 2, FixedPoint(16.W, 8.BP)))
            for (i <- 0 until current.length / 2) {
                next(i) := Mux(current(2 * i) > current(2 * i + 1), current(2 * i), current(2 * i + 1))
            }
            current = next
        }
        current(0)
    }

    val index = Wire(UInt(next_power.W))
    val loser = Wire(FixedPoint(16.W,8.BP))
    val temp = parallelMax(total_scores) // Compute the first max
    
    max1 := temp._1
    loser := temp._2
    index := temp._3

    // **Step 2: Find Second Max Using a Similar Reduction Tree**
    val losers = Wire(Vec(nextPow2/2, FixedPoint(16.W, 8.BP)))

    // Populate losers with the values of the half side of the winners, but replace max1 with 0
    when(index>=(nextPow2/2).U){
        for (i <- 0 until nextPow2/2) {
            losers(i) := Mux(index === (i+nextPow2/2).U, loser, total_scores(i+nextPow2/2)) 
        }
    }.otherwise{
        for (i <- 0 until nextPow2/2) {
            losers(i) := Mux(index === i.U, loser, total_scores(i)) 
        }
    }
    max2 := secondParallelMax(losers) // Compute second max on modified input

    val distance = max1 - max2

    val condition = distance >= reamining_votes
    val dest = queues.map(_.bits.dest).reduce(_ & _)

    when(condition | dest){
        io.sample_out.valid := queues(0).valid
        io.sample_out.bits.features := queues(0).bits.features
        io.sample_out.bits.weights := queues(0).bits.weights
        io.sample_out.bits.tree_to_exec := queues(0).bits.tree_to_exec
        io.sample_out.bits.shift := queues(0).bits.shift
        io.sample_out.bits.offset := queues(0).bits.offset
        io.sample_out.bits.dest := queues(0).bits.dest
        io.sample_out.bits.search_for_root := queues(0).bits.search_for_root
        io.sample_out.bits.last := queues(0).bits.last
        io.sample_out.bits.clock_cycles := queues(0).bits.clock_cycles
        for(i <- 0 until n_classes){
            io.sample_out.bits.scores(i) := total_scores(i)
        }
        
        io.samples_back.map(_.valid := false.B)
        io.samples_back.map(_.bits := DontCare)

    }.otherwise{
        io.sample_out.valid := false.B
        io.sample_out.bits := DontCare
        
        for(i <- 0 until n_ins){
            io.samples_back(i).valid := queues(i).valid
            io.samples_back(i).bits := queues(i).bits
        }
    }

    // Assuming paths with equal length, samples always arrive at the same clock cycle from each path
    queues.map(_.ready := io.sample_out.ready) 

    def linkToDest(backward_converter: BackwardConverter) {
        backward_converter.io.sample_in <> io.sample_out
    }

    def linkToDest(incr: IncrementTreePE, i:Int){ 
        io.samples_back(i) <> incr.io.sample_in
    }
}