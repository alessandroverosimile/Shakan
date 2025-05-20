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
#n_trees_values = [10, 30, 50, 75, 100, 180, 200, 300, 700, 1080]
#max_depth_values = [5,7,9]

#couples = []
#for i in n_trees_values:
#    for j in max_depth_values:
#        couples.append((i,j))

# couples = [(1080,5),(180,7),(90,3)]
n_split_features = [2,3]
coeff_bits = [2,3]

depths = [
    5,7,9
]

trees_per_block = [
    90,28,9
]

base_block_trees = [
    6,4,3
]

n_classes = 7
n_attr = 5

for i in range(len(depths)):
    for trees_blocks in range(base_block_trees[i],0,-1):
        quit_loop = False
        for paths in range(trees_blocks, ( 0 if depths[i]==9 else 1 ) ,-1):
            if trees_blocks == base_block_trees[i] and paths > ( 3 if depths[i]== 9 else 2 ):
                continue

            n_trees = trees_blocks * trees_per_block[i]
            max_depth = depths[i]
            
            try:
                result_path = f"../Deploys/DeployParametricDepth{max_depth}Trees{n_trees}Frq{frqs[0]}Paths{paths}Attr{n_attr}"
                extension = ".bit"
                timing_report_file = "/timing_report.txt"
                if any(file.endswith(extension) for file in os.listdir(result_path)):
                    quit_loop = True
                    with open(result_path + timing_report_file, "r") as file:
                        for line in file:
                            if "Slack (VIOLATED)" in line:
                                print(f"'Slack (VIOLATED)' found in: {line.strip()}")
                                quit_loop = False
                                break
                    if quit_loop:
                        break
                    continue
            except Exception as e:
                quit_loop = False
                print(e)
            
            cmd = f"python3 generate_best_equal_paths_architecture.py {n_trees} {max_depth} {n_attr} {n_classes} {frqs[0]} {n_split_features[1]} {coeff_bits[1]} {paths}"
            success = os.system(cmd)

            if(success > 0):
                print("run failed")
                sys.exit(-10)

            print(f"Execution of synthesis completed, depth: {max_depth}, n_trees: {n_trees} (base {trees_per_block[i]}), n_paths: {paths}")
            
            try:
                result_path = f"../DeployParametricDepth{max_depth}Trees{n_trees}Frq{frqs[0]}Paths{paths}Attr{n_attr}"
                extension = ".bit"
                timing_report_file = "/timing_report.txt"
                if any(file.endswith(extension) for file in os.listdir(result_path)):
                    quit_loop = True
                    with open(result_path + timing_report_file, "r") as file:
                        for line in file:
                            if "Slack (VIOLATED)" in line:
                                print(f"'Slack (VIOLATED)' found in: {line.strip()}")
                                quit_loop = False
                                break
                    if quit_loop:
                        break
            except Exception as e:
                quit_loop = False
                print(e)
        if quit_loop:
            print(f"Finished for depth {depths[i]}")
            break
        