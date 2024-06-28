open_project ./block_diagram/block_diagram.xpr
open_bd_design {./block_diagram/block_diagram.srcs/sources_1/bd/design_2/design_2.bd}

launch_runs synth_1 -jobs 20
wait_on_run synth_1
launch_runs impl_1 -to_step write_bitstream -jobs 20
wait_on_run impl_1
open_run impl_1
report_utilization -hierarchical -file ./block_diagram/block_diagram.gen/utilization_report.txt
report_timing -file ./block_diagram/block_diagram.gen/timing_report.txt

exit
