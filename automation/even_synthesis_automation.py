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
    for trees_blocks in range(base_block_trees[i],0,-1)
        for paths in range(depths[i],1,-1):
            if trees_blocks == base_block_trees[i] and paths>3:
                continue
            n_trees = trees_blocks * trees_per_block[i]
            max_depth = depths[i]
            
            cmd = f"python3 generate_best_equal_paths_architecture.py {n_trees} {max_depth} {n_attr} {n_classes} {frqs[0]} {n_split_features[1]} {coeff_bits[1]} {paths}"
            success = os.system(cmd)

            if(success > 0):
                print("run failed")
                sys.exit(-10)

            print(f"Execution of synthesis completed, depth: {max_depth}, n_trees: {n_trees} (base {trees_per_block[i]}), n_paths: {paths}")
        

# for i,couple in enumerate(couples):
    
#     n_trees = couple[0]
#     max_depth = couple[1]
    
#     n_classes = 7
#     n_attr = 5

#     cmd = f"python3 generate_best_equal_paths_architecture.py {n_trees} {max_depth} {n_attr} {n_classes} {frqs[0]} {n_split_features[1]} {coeff_bits[1]} "
#     success = os.system(cmd)

#     if(success > 0):
#         print("run failed")
#         sys.exit(-10)

#     print(f"Execution of synthesis {i} completed")