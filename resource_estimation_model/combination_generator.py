import numpy as np
import pandas as pd
import math

def main():
    
    couples = [(4,4,1),(4,4,2),(12,4,3),(4,4,4),(20,4,5),(12,4,6),
               (4,6,1),(4,6,2),(12,6,3),(4,6,4),(20,6,5),
               (4,8,1),(4,8,2),(12,8,3),(4,8,4),
               ] 
    second_run_couples = [(864,5,1),(720,5,1),(576,5,1),(432,5,1),(288,5,1),
                          (288,6,2),(360,6,2),(108,7,2),(48,8,2),(24,9,2),
                          (720,5,3),(1440,4,3),(1152,4,3)]
    
    n_attr = [5,3,7,10,15,20]
    sample_dims = [n*32+11*16+48 for n in n_attr]
    rows = []
    for dim in sample_dims:
        for couple in couples:
            total_pes = np.max(math.ceil(couple[0]/(4*576/(2**(couple[1]-1)))),couple[2])*couple[1]
            n_paths = couple[2]
            rows.append([total_pes, n_paths, dim])

    for dim in sample_dims:
        for couple in second_run_couples:
            total_pes = np.max(math.ceil(couple[0]/(4*576/(2**(couple[1]-1)))),couple[2])*couple[1]
            n_paths = couple[2]
            rows.append([total_pes, n_paths, dim])
    
    rows = np.array(rows)

    df = pd.DataFrame(rows)
    df.columns = ["total_pes","n_paths","sample_dim"]
    df.to_csv("resource_consumption_dataset.csv")


if __name__ == "__main__":
    main()