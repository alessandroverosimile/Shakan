#include <iostream>
#include <vector>
#include <map>
#include <unordered_map>
#include <cmath>
#include <limits>
#include <algorithm>
#include <iostream>
#include <fstream>
#include <sstream>
#include <string>
#include <random>
#include <cstring>

#include "datasets.cpp"
#include "oblique_RF.cpp"

// 0: satellite, 1: accelerometer, 2: vowel, 3: vehicles, 4: electrical grid, 5: person activity
void test_oblique_rf(int depth, int num_blocks, int features_per_node, int bits_per_coeff, int dataset_id){

    int DEPTH = depth;
    int NUM_BLOCKS = num_blocks;
    int BLOCK_SIZE = 576;
    int FEATURES_PER_NODE = features_per_node;
    int BITS_PER_COEFF = bits_per_coeff;

    std::srand(42);

    int atts = 30;
    double avg = 0.0;
    double score;

    std::vector<std::vector<double>> X;
    std::vector<target_t> y;
    std::vector<std::vector<double>> X2;
    std::vector<target_t> y2;

    if(dataset_id==0) dataset_satellite(X,y,X2,y2);
    if(dataset_id==1) dataset_accelerometer(X,y,X2,y2);
    if(dataset_id==2) dataset_vowel(X,y,X2,y2);

    for(int aaa=0; aaa<atts; aaa++){

        if(dataset_id==3) dataset_vehicles(X,y,X2,y2);
        if(dataset_id==4) dataset_egrid(X,y,X2,y2);
        if(dataset_id==5) dataset_person_activity(X,y,X2,y2);

        ObliqueRandomForestHWClassifier forest(DEPTH,NUM_BLOCKS,FEATURES_PER_NODE,BITS_PER_COEFF,BLOCK_SIZE);

        forest.fit(X,y);

        score = forest.score(X2,y2);
        avg += score/atts;
        printf("SCORE : %lf\n",score);

        printf("TRAIN SCORE : %lf\n",forest.score(X,y));

        printf("AVG SCORE (%d) : %lf\n",aaa+1,avg*atts / ((double)aaa+1.0));

        printf("\n");

    }

    printf("AVERAGE SCORE: %lf\n",avg);

}

int main(int argc, char *argv[]){

    if(argc < 6){
        printf("Usage: %s <depth> <num_blocks> <features_per_node> <bits_per_coeff> <dataset_id>\n",argv[0]);
        printf("0: satellite, 1: accelerometer, 2: vowel, 3: vehicles, 4: electrical grid, 5: person activity\n");
        return 1;
    }

    int depth = atoi(argv[1]);
    int num_blocks = atoi(argv[2]);
    int features_per_node = atoi(argv[3]);
    int bits_per_coeff = atoi(argv[4]);
    int dataset_id = atoi(argv[5]);

    test_oblique_rf(depth,num_blocks,features_per_node,bits_per_coeff,dataset_id);
}