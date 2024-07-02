#import codecs
import jinja2
import os
import numpy as np
import sys
import shutil
import math

fsloader = jinja2.FileSystemLoader(r'./')
env = jinja2.Environment(loader=fsloader)

curdir = os.curdir

frqs = [166] #[166, 187, 214]
#n_trees_values = [10, 25, 30, 50, 75, 100, 180, 200, 300, 700, 1080]
#max_depth_values = [5,7,9]

#couples = []
#for i in n_trees_values:
#    for j in max_depth_values:
#        couples.append((i,j))

#couples = [(4,4,1),(4,4,2),(12,4,3),(4,4,4),(20,4,5),(12,4,6),
#            (4,6,1),(4,6,2),(12,6,3),(4,6,4),(20,6,5),
#            (4,8,1),(4,8,2),(12,8,3),(4,8,4)]

couples = [(4,4,1),(4,4,2),(12,4,3),(4,4,4),
            (4,6,1),(4,6,2),(20,4,5),(12,6,3),(4,6,4),
            (4,8,1),(4,8,2),(12,8,3)]

second_run_couples = [(864,5,1),(720,5,1),(576,5,1),(432,5,1),(288,5,1),
                          (288,6,2),(360,6,2),(108,7,2),(24,9,2),
                          (720,5,3),(1440,4,3),(1152,4,3)]

overall_couples = couples + second_run_couples

for frq in frqs:
	for n_attr in [21]: #[9,13,17,21,25]:
		for i,couple in enumerate(overall_couples[:1]):
			
			n_trees = couple[0]
			max_depth = couple[1]
			min_depth = max_depth - 3
			n_depths = max_depth - min_depth + 1
			n_paths = couple[2]

			while(n_trees%n_depths != 0 or n_trees%n_paths!=0):
				n_trees += 1

			#if((max_depth > 5 and n_trees > 225) or (max_depth > 7 and n_trees > 30)):
			#	print("Exection with " + str(max_depth) + " depth, " + str(n_trees) + " estimators and " + str(frq) + "MHz frequency skipped")
			#	continue

			if(n_attr==9 and n_paths!=3):
				print("Exection with " + str(max_depth) + " depth, " + str(n_trees) + " estimators and " + str(frq) + "MHz frequency skipped")
				continue
	
			total, used, free = shutil.disk_usage("/")
			print(total/10**9, used/10**9, free/10**9)
			if free // (2**30) < 4:
				print("NO SPACE")
				sys.exit(-10)

			os.chdir(f"{curdir}/../chisel_project")
			
			n_classes = 6
			#n_attr = 5
			bram_size = 36*1024
			instruction_per_bram = int(bram_size/64)
			max_trees_per_set = int(n_depths*(instruction_per_bram/(2**(max_depth-1))))
			necessary_set_of_pes = int(math.ceil(n_trees/max_trees_per_set))
			set_of_pes = max(necessary_set_of_pes,n_paths)
			width = 32*n_attr+(n_depths+n_classes)*16+48
			while width%32 != 0:
				width += 8
			dma_bits = 2**int(np.log2(width))

			print("Execution with depth, n_trees, freq, n_paths, n_attr equals to ",  max_depth, n_trees, frq, n_paths, n_attr)

			cmd = f'sbt "runMain YoseUe_SATL.VerilogGenerator {n_trees} {max_depth} {min_depth} {n_attr} {n_classes} {n_paths} {width} {necessary_set_of_pes}"'
			success = os.system(cmd)

			if(success > 0):
				print("run failed")
				sys.exit(-10)

			os.chdir("../automation")

			print("Total PEs ", set_of_pes*max_depth)

			template = env.get_template('vivadoScript.tcl.jinja')
			template.stream(n_pes=set_of_pes*max_depth, dma_bits=dma_bits, trgt_freq=frq, width=int(width/8), dma_bytes=int(dma_bits/8)).dump('vivadoScript.tcl')

			cmd = f"source /xilinx/software/Vivado/2021.2/settings64.sh && vivado -nojournal -nolog -mode batch -source vivadoScript.tcl"
			success = os.system(cmd)
			
			if(success > 0):
				print("'project1' failed")
				sys.exit(-10)
			
			cmd = "source /xilinx/software/Vivado/2021.2/settings64.sh && vivado -nojournal -nolog -mode batch -source synth_and_impl.tcl"
			success = os.system(cmd)
			
			if(success > 0):
				print("'project1' failed")

			cmd = 'mv ./vivado_project/block_diagram/block_diagram.gen/sources_1/bd/design_2/hw_handoff/design_2.hwh ./vivado_project/block_diagram/block_diagram.gen/sources_1/bd/design_2/hw_handoff/design_2_wrapper.hwh'
			success = os.system(cmd)
			if(success > 0):
				print("Rename of .hwh failed")

			cmd = 'mkdir ../Deploys/DeployParametricDepth' + str(max_depth) + 'Trees' + str(n_trees) + 'Frq' + str(frq) + 'Paths' + str(n_paths) + 'Attr' + str(n_attr) + '/'
			success = os.system(cmd)
			if(success > 0):
				print("Directory not created")
				
			cmd = 'cp ./vivado_project/block_diagram/block_diagram.gen/sources_1/bd/design_2/hw_handoff/design_2_wrapper.hwh ../Deploys/DeployParametricDepth' + str(max_depth) + 'Trees' + str(n_trees) + 'Frq' + str(frq) + 'Paths' + str(n_paths) + 'Attr' + str(n_attr) + '/'
			success = os.system(cmd)

			cmd = 'cp ./vivado_project/block_diagram/block_diagram.runs/impl_1/design_2_wrapper.bit ../Deploys/DeployParametricDepth' + str(max_depth) + 'Trees' + str(n_trees) + 'Frq' + str(frq) + 'Paths' + str(n_paths) + 'Attr' + str(n_attr) + '/'
			success = os.system(cmd)
			if(success > 0):
				print("'build' failed")
				cmd = '>> ../Deploys/DeployParametricDepth' + str(max_depth) + 'Trees' + str(n_trees) + 'Frq' + str(frq) + 'Paths' + str(n_paths) + 'Attr' + str(n_attr) + 'Attr' + str(n_attr) + '/FAIL.txt'
				os.system(cmd)

			cmd = 'cp ./vivado_project/block_diagram/block_diagram.gen/utilization_report.txt ../Deploys/DeployParametricDepth' + str(max_depth) + 'Trees' + str(n_trees) + 'Frq' + str(frq) + 'Paths' + str(n_paths) + 'Attr' + str(n_attr) + '/'
			os.system(cmd)
			if(success > 0):
				print("Utilization report not created")

			cmd = 'cp ./vivado_project/block_diagram/block_diagram.gen/timing_report.txt ../Deploys/DeployParametricDepth' + str(max_depth) + 'Trees' + str(n_trees) + 'Frq' + str(frq) + 'Paths' + str(n_paths) + 'Attr' + str(n_attr) + '/'
			os.system(cmd)
			if(success > 0):
				print("Timing report not created")
			
			print("Synthesis with " + str(max_depth) + " depth, " + str(n_trees) + " estimators in " + str(n_paths) + " paths with " + str(n_attr) + " attributes completed")


