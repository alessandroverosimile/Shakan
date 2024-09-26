import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import sklearn.ensemble as ske

def calculate_params(matrix): 
    params = []
    for i in range(matrix.shape[1] - 1):
        mean = np.mean(matrix[:,i])
        std = np.std(matrix[:,i])
        perc25 = np.percentile(matrix[:,i],25)
        perc50 = np.percentile(matrix[:,i],50)
        perc75 = np.percentile(matrix[:,i],75)
        f = np.fft.fft(matrix[:,i])
        spEnergy = np.sum(f**2)/len(f)
        params.append(mean)
        params.append(std)
        params.append(perc25)
        params.append(perc50)
        params.append(perc75)
        params.append(spEnergy)
    params.append(matrix[0,3])
    return params

def importDataset():
    dataframes = []
    for i in range(15):
        string = "./accelerometer/" + str(i+1) + ".csv"
        dataframes.append(pd.read_csv(string,header=None))
        dataframes[i].columns = ["pos","x","y","z","action"]

    for i,dataframe in enumerate(dataframes):
        dataframes[i] = dataframe.drop("pos",axis=1)

    dataset = np.zeros((1,19))
    for dataframe in dataframes:
        matrix = dataframe.to_numpy()
        matrices = []
        matrices.append(matrix[matrix[:,3]==1])
        matrices.append(matrix[matrix[:,3]==2])
        matrices.append(matrix[matrix[:,3]==3])
        matrices.append(matrix[matrix[:,3]==4])
        matrices.append(matrix[matrix[:,3]==5])
        matrices.append(matrix[matrix[:,3]==6])
        matrices.append(matrix[matrix[:,3]==7])
        for i,matrix in enumerate(matrices):
            if i != 1:
                stop = False
                index = 0
                while(not stop):
                    if index + 1000 > matrix.shape[0]:
                        sample = matrix[index:matrix.shape[0]]
                        if sample.shape[0] != 0:
                            features = calculate_params(sample)
                        stop = True
                    else:
                        sample = matrix[index:index + 1000]
                        features = calculate_params(sample)
                    index += 1000
                    dataset = np.insert(dataset,dataset.shape[0],features,axis=0)
            else:
                sample = matrix
                features = calculate_params(sample)
                dataset = np.insert(dataset,dataset.shape[0],features,axis=0)
        
    dataset1 = np.delete(dataset,0,0)
    np.random.seed(1234) #for reproducibility
    np.random.shuffle(dataset1)
    n_samples = dataset1.shape[0]
    X_train = dataset1[:int(0.75*n_samples),:18]
    Y_train = dataset1[:int(0.75*n_samples),18]
    X_val = dataset1[int(0.75*n_samples):int(0.90*n_samples),:18]
    Y_val = dataset1[int(0.75*n_samples):int(0.90*n_samples),18]
    X_test = dataset1[int(0.9*n_samples):,:18]
    Y_test = dataset1[int(0.9*n_samples):,18]
    Y_train -= 1
    Y_val -= 1
    Y_test -= 1
    return X_train,X_val,X_test,Y_train,Y_val,Y_test