import numpy as np
import pandas as pd
import sys
from sklearn.preprocessing import LabelEncoder

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

def import_accelerometer():
    dataframes = []
    for i in range(15):
        string = "accelerometer/" + str(i+1) + ".csv"
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

    dataset = np.delete(dataset,0,0)
    np.random.seed(0) #for reproducibility
    np.random.shuffle(dataset)
    n_samples = dataset.shape[0]
    X_train = dataset[:int(0.7*n_samples),:18]
    Y_train = dataset[:int(0.7*n_samples),18] - 1
    X_val = dataset[int(0.7*n_samples):int(0.8*n_samples),:18]
    Y_val = dataset[int(0.7*n_samples):int(0.8*n_samples),18] - 1
    X_test = dataset[int(0.8*n_samples):,:18]
    Y_test = dataset[int(0.8*n_samples):,18] - 1
    mean = np.mean(X_train,axis=0)
    std = np.std(X_train,axis=0)
    X_train = (X_train - mean)/std
    X_val = (X_val - mean)/std
    X_test = (X_test - mean)/std

    return X_train, X_val, X_test, Y_train, Y_val, Y_test



def import_vehicles():
    csvs = ['xaa','xab','xac','xad','xae','xaf','xag','xah','xai']
    dfs = []
    for csv in csvs:
        dfs.append(pd.read_csv('datasets/vehicles/' + csv + '.csv',sep=' '))

    dataframe = pd.concat([dfs[0],dfs[1],dfs[2],dfs[3],dfs[4],dfs[5],dfs[6],dfs[7],dfs[8]])
    dataset = dataframe.to_numpy()
    for i in range(dataset.shape[0]):
        if dataset[i,18] == 'saab':
            dataset[i,18] = 0
        elif dataset[i,18] == 'van':
            dataset[i,18] = 1
        elif dataset[i,18] == 'opel':
            dataset[i,18] = 2
        elif dataset[i,18] == 'bus':
            dataset[i,18] = 3
        else:
            print("The name of a class is wrong")
            sys.exit()
        
    np.random.shuffle(dataset)
    X_train = dataset[:int(0.7*dataset.shape[0]),:18]
    X_val = dataset[int(0.7*dataset.shape[0]):int(0.8*dataset.shape[0]),:18]
    X_test = dataset[int(0.8*dataset.shape[0]):,:18]
    Y_train = dataset[:int(0.7*dataset.shape[0]),18]
    Y_val = dataset[int(0.7*dataset.shape[0]):int(0.8*dataset.shape[0]),18]
    Y_test = dataset[int(0.8*dataset.shape[0]):,18]

    Y_train = Y_train.astype(int)
    Y_val = Y_val.astype(int)
    Y_test = Y_test.astype(int)

    return X_train, X_val, X_test, Y_train, Y_val, Y_test


def import_vowel():
    df = pd.read_csv('datasets/vowel.csv')
    df = df.drop(columns=['Id'])
    df['sex'][df['sex']=='Male'] = 1
    df['sex'][df['sex']=='Female'] = 0
    dataset = df.to_numpy()
    np.random.shuffle(dataset)
    X_train = dataset[:int(0.7*dataset.shape[0]),:11]
    X_val = dataset[int(0.7*dataset.shape[0]):int(0.8*dataset.shape[0]),:11]
    X_test = dataset[int(0.8*dataset.shape[0]):,:11]
    Y_train = dataset[:int(0.7*dataset.shape[0]),11]
    Y_val = dataset[int(0.7*dataset.shape[0]):int(0.8*dataset.shape[0]),11]
    Y_test = dataset[int(0.8*dataset.shape[0]):,11]

    le = LabelEncoder()
    le.fit(list(set(Y_train)))
    Y_train = le.transform(Y_train)
    Y_val = le.transform(Y_val)
    Y_test = le.transform(Y_test)

    return X_train, X_val, X_test, Y_train, Y_val, Y_test


def import_sonar():
    df = pd.read_csv('datasets/sonar.all-data.csv')
    df['mean'] = np.mean(df.drop(columns=['class']).to_numpy(),axis=1)
    df['std'] = np.std(df.drop(columns=['class']).to_numpy(),axis=1)
    df = df.sample(frac=1)
    dataset = df.drop(columns=['class']).to_numpy()
    labels = df['class'].to_numpy()
    X_train = dataset[:int(0.7*dataset.shape[0])]
    X_val = dataset[int(0.7*dataset.shape[0]):int(0.8*dataset.shape[0])]
    X_test = dataset[int(0.8*dataset.shape[0]):]
    Y_train = labels[:int(0.7*dataset.shape[0])]
    Y_val = labels[int(0.7*dataset.shape[0]):int(0.8*dataset.shape[0])]
    Y_test = labels[int(0.8*dataset.shape[0]):]

    le = LabelEncoder()
    le.fit(list(set(Y_train)))
    Y_train = le.transform(Y_train)
    Y_val = le.transform(Y_val)
    Y_test = le.transform(Y_test)
    
    return X_train, X_val, X_test, Y_train, Y_val, Y_test


def import_satellite():
    df_train = pd.read_csv('datasets/Satellite/Sat_train.csv')
    df_test = pd.read_csv('datasets/Satellite/Sat_test.csv')
    df_train = df_train.sample(frac=1)
    dataset = df_train.to_numpy()
    X_train = dataset[:int(0.9*dataset.shape[0]),:36]
    X_val = dataset[int(0.9*dataset.shape[0]):,:36]
    Y_train = dataset[:int(0.9*dataset.shape[0]),36]
    Y_val = dataset[int(0.9*dataset.shape[0]):,36]
    X_test = df_test.to_numpy()[:,:36]
    Y_test = df_test.to_numpy()[:,36]

    return X_train, X_val, X_test, Y_train, Y_val, Y_test


def import_shuttle():
    df = pd.read_csv('datasets/shuttle.csv',sep=' ')
    dataset = df.to_numpy()
    np.random.shuffle(dataset)
    X_train = dataset[:int(0.7*dataset.shape[0]),:9]
    X_val = dataset[int(0.7*dataset.shape[0]):int(0.8*dataset.shape[0]),:9]
    X_test = dataset[int(0.8*dataset.shape[0]):,:9]
    Y_train = dataset[:int(0.7*dataset.shape[0]),9]
    Y_val = dataset[int(0.7*dataset.shape[0]):int(0.8*dataset.shape[0]),9]
    Y_test = dataset[int(0.8*dataset.shape[0]):,9]

    Y_train = Y_train -1
    Y_val = Y_val -1
    Y_test = Y_test -1

    return X_train, X_val, X_test, Y_train, Y_val, Y_test