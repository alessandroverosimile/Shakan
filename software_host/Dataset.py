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

def import_accelerometer(split_pctgs):
    dataframes = []
    for i in range(15):
        string = "../data/accelerometer/" + str(i+1) + ".csv"
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

    cum_pctg = 0
    X_sets = []
    Y_sets = []
    for pctg in split_pctgs:
        start_index = int(cum_pctg*n_samples)
        cum_pctg += pctg
        end_index = int(cum_pctg*n_samples)
        x_set = dataset[start_index:end_index,:18]
        X_sets.append(x_set)
        Y_sets.append(dataset[start_index:end_index,18]-1)

    return X_sets, Y_sets



def import_vehicles(split_pctgs):
    csvs = ['xaa','xab','xac','xad','xae','xaf','xag','xah','xai']
    dfs = []
    for csv in csvs:
        dfs.append(pd.read_csv('../data/vehicles/' + csv + '.csv',sep=' '))

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
    
    np.random.seed(0) #for reproducibility
    np.random.shuffle(dataset)
    n_samples = dataset.shape[0]

    cum_pctg = 0
    X_sets = []
    Y_sets = []
    for pctg in split_pctgs:
        start_index = int(cum_pctg*n_samples)
        cum_pctg += pctg
        end_index = int(cum_pctg*n_samples)
        x_set = dataset[start_index:end_index,:18]
        X_sets.append(x_set)
        y_set = dataset[start_index:end_index,18]
        Y_sets.append(y_set.astype(int))

    return X_sets, Y_sets


def import_vowel(split_pctgs):
    df = pd.read_csv('../data/vowel.csv')
    df = df.drop(columns=['Id'])
    df['sex'][df['sex']=='Male'] = 1
    df['sex'][df['sex']=='Female'] = 0
    dataset = df.to_numpy()

    np.random.seed(0) #for reproducibility
    np.random.shuffle(dataset)
    n_samples = dataset.shape[0]

    cum_pctg = 0
    X_sets = []
    Y_sets = []
    le = LabelEncoder()

    for i,pctg in enumerate(split_pctgs):
        start_index = int(cum_pctg*n_samples)
        cum_pctg += pctg
        end_index = int(cum_pctg*n_samples)
        x_set = dataset[start_index:end_index,:11]
        y_set = dataset[start_index:end_index,11]
        if i==0:
            le.fit(list(set(y_set)))
        
        X_sets.append(x_set)
        Y_sets.append(le.transform(y_set))

    return X_sets, Y_sets


def import_sonar(split_pctgs):
    df = pd.read_csv('../data/sonar.all-data.csv')
    df['mean'] = np.mean(df.drop(columns=['class']).to_numpy(),axis=1)
    df['std'] = np.std(df.drop(columns=['class']).to_numpy(),axis=1)
    np.random.seed(0) #for reproducibility
    df = df.sample(frac=1)
    dataset = df.drop(columns=['class']).to_numpy()
    labels = df['class'].to_numpy()

    n_samples = dataset.shape[0]
    cum_pctg = 0
    X_sets = []
    Y_sets = []
    le = LabelEncoder()

    for i,pctg in enumerate(split_pctgs):
        start_index = int(cum_pctg*n_samples)
        cum_pctg += pctg
        end_index = int(cum_pctg*n_samples)
        x_set = dataset[start_index:end_index]
        y_set = labels[start_index:end_index]
        if i==0:
            le.fit(list(set(y_set)))
        
        X_sets.append(x_set)
        Y_sets.append(le.transform(y_set))

    return X_sets, Y_sets

def import_satellite(split_pctgs):
    df_train = pd.read_csv('../data/Satellite/Sat_train.csv')
    df_test = pd.read_csv('../data/Satellite/Sat_test.csv')
    np.random.seed(0) #for reproducibility
    df_train = df_train.sample(frac=1)
    dataset = df_train.to_numpy()

    n_samples = dataset.shape[0]
    cum_pctg = 0
    X_sets = []
    Y_sets = []
    
    print("Last percentage ignored, test set is a separated set")

    if np.sum(split_pctgs[:-1]!=1 and split_pctgs[-1]!=0):
        print("Warning: specify split percentages that sum to 1 excluding the test set (last percentage)")

    for pctg in split_pctgs:
        start_index = int(cum_pctg*n_samples)
        cum_pctg += pctg
        end_index = int(cum_pctg*n_samples)
        x_set = dataset[start_index:end_index,:36]
        y_set = dataset[start_index:end_index,36]
        
        X_sets.append(x_set)
        Y_sets.append(y_set)

    X_test = df_test.to_numpy()[:,:36]
    Y_test = df_test.to_numpy()[:,36]

    X_sets.append(X_test)
    Y_sets.append(Y_test)

    return X_sets, Y_sets


def import_shuttle(split_pctgs):
    df = pd.read_csv('../data/shuttle.csv',sep=' ')
    dataset = df.to_numpy()
    np.random.seed(0) #for reproducibility
    np.random.shuffle(dataset)

    n_samples = dataset.shape[0]
    cum_pctg = 0
    X_sets = []
    Y_sets = []

    for pctg in split_pctgs:
        start_index = int(cum_pctg*n_samples)
        cum_pctg += pctg
        end_index = int(cum_pctg*n_samples)
        x_set = dataset[start_index:end_index,:9]
        y_set = dataset[start_index:end_index,9]
        y_set = y_set - 1
        X_sets.append(x_set)
        Y_sets.append(y_set)

    return X_sets, Y_sets