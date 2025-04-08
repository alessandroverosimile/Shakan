#include <iostream>
#include <vector>
#include <map>
#include <cmath>
#include <limits>
#include <algorithm>
#include <iostream>
#include <fstream>
#include <sstream>
#include <string>

#pragma once

typedef int target_t;

// Function to parse the dataset from a space-separated .txt file
void parseDataset(const std::string& filename, std::vector<std::vector<double>>& X, std::vector<target_t>& y, int skip_begin=0, int skip_first_lines=0) {
    std::ifstream file(filename);
    if (!file.is_open()) {
        std::cerr << "Error: Could not open file " << filename << std::endl;
        return;
    }

    int skipped = 0;

    std::string line;
    while (getline(file, line)) {
        std::stringstream ss(line);
        std::vector<double> features;
        double value;
        target_t target;

        for(int k=0; k<skip_begin; k++) ss >> value;

        // Read all the feature values
        while (ss >> value) {
            features.push_back(value);
        }

        // The last element should be the target (label)
        target = features.back();
        features.pop_back();  // Remove the target from the features

        // Add to dataset
        X.push_back(features);
        y.push_back(target);
    }

    file.close();
}

void dataset_satellite(std::vector<std::vector<double>>& X_train, std::vector<target_t>& y_train, std::vector<std::vector<double>>& X_test, std::vector<target_t>& y_test){
    X_train.clear();
    y_train.clear();
    X_test.clear();
    y_test.clear();
    parseDataset("data/ds/sat.trn",X_train,y_train);
    parseDataset("data/ds/sat.tst",X_test,y_test);
}

void dataset_accelerometer(std::vector<std::vector<double>>& X_train, std::vector<target_t>& y_train, std::vector<std::vector<double>>& X_test, std::vector<target_t>& y_test){
    X_train.clear();
    y_train.clear();
    X_test.clear();
    y_test.clear();
    parseDataset("data/acc/acc.trn",X_train,y_train);
    parseDataset("data/acc/acc.tst",X_test,y_test);
}

void dataset_vowel(std::vector<std::vector<double>>& X_train, std::vector<target_t>& y_train, std::vector<std::vector<double>>& X_test, std::vector<target_t>& y_test){
    X_train.clear();
    y_train.clear();
    X_test.clear();
    y_test.clear();
    parseDataset("data/vowel/vowel_train.csv",X_train,y_train,3);
    parseDataset("data/vowel/vowel_test.csv",X_test,y_test,3);
}

// Function to parse the dataset from a space-separated .txt file
void parseCarsDataset(std::vector<std::vector<double>>& X, std::vector<target_t>& y, std::vector<std::vector<double>>& X2, std::vector<target_t>& y2, double test_set_size) {
    
    const char *files[]=
    {
        "data/vehicles/xaa.csv",
        "data/vehicles/xab.csv",
        "data/vehicles/xac.csv",
        "data/vehicles/xad.csv",
        "data/vehicles/xae.csv",
        "data/vehicles/xaf.csv",
        "data/vehicles/xag.csv",
        "data/vehicles/xah.csv",
        "data/vehicles/xai.csv"
    };
    
    for(int f=0; f<9; f++){

        std::ifstream file(files[f]);
        if (!file.is_open()) {
            std::cerr << "Error: Could not open file " << files[f] << std::endl;
            return;
        }

        int skipped = 0;

        std::string line;

        getline(file, line);
        while (getline(file, line)) {
            std::stringstream ss(line);
            std::vector<double> features;
            double value;
            target_t target;
            std::string vehicle_name;

            // Read all the feature values
            for(int i=0; i<18; i++){
                ss >> value;
                features.push_back(value);
            }

            ss >> vehicle_name;
            if (vehicle_name == "saab")
                target = 0;
            else if (vehicle_name == "van")
                target = 1;
            else if (vehicle_name == "opel")
                target = 2;
            else if (vehicle_name == "bus")
                target = 3;
            else{
                std::cout << "Wrong class name '" << vehicle_name << "'" << std::endl;
                exit(1);
            }

            // Add to dataset
            X.push_back(features);
            y.push_back(target);
        }

        file.close();

    }

    int ts_size = (int)X.size() * test_set_size;
    while(X2.size()<ts_size){
        int pos = rand()%X.size();

        X2.push_back(X[pos]);
        y2.push_back(y[pos]);

        X.erase(X.begin()+pos);
        y.erase(y.begin()+pos);
    }
}

void dataset_vehicles(std::vector<std::vector<double>>& X_train, std::vector<target_t>& y_train, std::vector<std::vector<double>>& X_test, std::vector<target_t>& y_test){
    X_train.clear();
    y_train.clear();
    X_test.clear();
    y_test.clear();
    parseCarsDataset(X_train,y_train,X_test,y_test,0.2);
}

void dataset_shuttle(std::vector<std::vector<double>>& X_train, std::vector<target_t>& y_train, std::vector<std::vector<double>>& X_test, std::vector<target_t>& y_test){
    X_train.clear();
    y_train.clear();
    X_test.clear();
    y_test.clear();
    parseDataset("data/shuttle/shuttle.csv",X_train,y_train);

    int ts_size = (int)X_train.size() * 0.2;
    while(X_test.size()<ts_size){
        int pos = rand()%X_train.size();

        X_test.push_back(X_train[pos]);
        y_test.push_back(y_train[pos]);

        X_train.erase(X_train.begin()+pos);
        y_train.erase(y_train.begin()+pos);
    }
}

void dataset_person_activity(std::vector<std::vector<double>>& X_train, std::vector<target_t>& y_train, std::vector<std::vector<double>>& X_test, std::vector<target_t>& y_test){
    X_train.clear();
    y_train.clear();
    X_test.clear();
    y_test.clear();
    parseDataset("data/activity/person_activity.csv",X_train,y_train);
    
    int ts_size = (int)X_train.size() * 0.2;
    while(X_test.size()<ts_size){
        int pos = rand()%X_train.size();

        X_test.push_back(X_train[pos]);
        y_test.push_back(y_train[pos]);

        X_train.erase(X_train.begin()+pos);
        y_train.erase(y_train.begin()+pos);
    }
}


// Function to parse the dataset from a space-separated .txt file
void parseEGDataset(std::vector<std::vector<double>>& X, std::vector<target_t>& y, std::vector<std::vector<double>>& X2, std::vector<target_t>& y2, double test_set_size) {
    
    const char *files[]=
    {
        "data/electrical_grid/ElectricalGrid.csv"
    };
    
    for(int f=0; f<1; f++){

        std::ifstream file(files[f]);
        if (!file.is_open()) {
            std::cerr << "Error: Could not open file " << files[f] << std::endl;
            return;
        }

        int skipped = 0;

        std::string line;

        getline(file, line);
        while (getline(file, line)) {
            std::stringstream ss(line);
            std::vector<double> features;
            double value;
            target_t target;
            std::string vehicle_name;

            // Read all the feature values
            for(int i=0; i<13; i++){
                ss >> value;
                features.push_back(value);
            }

            ss >> vehicle_name;
            if (vehicle_name == "stable")
                target = 0;
            else if (vehicle_name == "unstable")
                target = 1;
            else{
                std::cout << "Wrong class name '" << vehicle_name << "'" << std::endl;
                exit(1);
            }

            // Add to dataset
            X.push_back(features);
            y.push_back(target);
        }

        file.close();

    }

    int ts_size = (int)X.size() * test_set_size;
    while(X2.size()<ts_size){
        int pos = rand()%X.size();

        X2.push_back(X[pos]);
        y2.push_back(y[pos]);

        X.erase(X.begin()+pos);
        y.erase(y.begin()+pos);
    }
}

void dataset_egrid(std::vector<std::vector<double>>& X_train, std::vector<target_t>& y_train, std::vector<std::vector<double>>& X_test, std::vector<target_t>& y_test){
    X_train.clear();
    y_train.clear();
    X_test.clear();
    y_test.clear();
    parseEGDataset(X_train,y_train,X_test,y_test,0.2);
}