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
#include <random>
#include <cstring>


//  UTILITY
#define MIN(a,b) ((a)<(b)?(a):(b))
#define MAX(a,b) ((a)>(b)?(a):(b))
#define CLAMP(a,b,c) (MAX((a),MIN((b),(c))))

#define MAX_FEATURE_GROUP(f) (std::floor(std::pow(f,0.5)))
#define MAX_FEATURES_PER_NODE 10

#define TYPE_INSTR 0
#define TYPE_LEAF 1

typedef int target_t;

typedef struct node_s{
    int valid=0;
    int owner=-1;
    int featureIdx[MAX_FEATURES_PER_NODE];
    double featureCoeff[MAX_FEATURES_PER_NODE];
    double threshold;
    int type_l;
    int type_r;
    int offset_l;
    int offset_r;
    target_t label_l;
    target_t label_r;
}node_t;


void linear_coeffs_nth(double featureCoeff[], int n, int f_per_node, int c_values){

    if(c_values==1){
        for(int k=0; k<f_per_node; k++){
            featureCoeff[k] = 1.0;
        }
        return;
    }

    featureCoeff[0] = 1.0;
    int tmp_exp;
    int tmp_sign;
    int cumul = n;
    
    for(int k=1; k<f_per_node; k++){
        tmp_exp = cumul % c_values;
        if(tmp_exp==0){
            tmp_sign = 0;
            tmp_exp = 0;
        }else if(tmp_exp < c_values/2){
            tmp_sign = -1;
            tmp_exp -= c_values/4;
        }else{
            tmp_sign = 1;
            tmp_exp -= c_values/2;
            tmp_exp -= c_values/4;
        }
        featureCoeff[k] = tmp_sign*pow(2.0,tmp_exp);
        cumul /= c_values;
    }
}

double linearComb(std::vector<double>& x, int f_per_node, int featureIdx[], double featureCoeff[]){
    double res = 0.0;
    for(int i=0; i<f_per_node; i++){
        res += x[featureIdx[i]]*featureCoeff[i];
    }
    return res;
}

target_t predict_tree(std::vector<std::vector<node_t>> &table, int f_per_node, std::vector<double>& x, int d, int off, int max_d){
    if(table[d][off].valid == 0){
        return -1;
    }
    if(linearComb(x,f_per_node,table[d][off].featureIdx,table[d][off].featureCoeff) < table[d][off].threshold){
        if(table[d][off].type_l == TYPE_INSTR){
            return predict_tree(table,f_per_node,x,(d+1)%max_d,table[d][off].offset_l, max_d);
        }else{
            return table[d][off].label_l;
        }
    }else{
        if(table[d][off].type_r == TYPE_INSTR){
            return predict_tree(table,f_per_node,x,(d+1)%max_d,table[d][off].offset_r, max_d);
        }else{
            return table[d][off].label_r;
        }
    }
}


target_t _predict_forest(std::vector<std::vector<std::vector<node_t>>> &table, std::vector<double>& x, int num_blocks, int num_layers, int trees_per_layer, int f_per_node){
    std::map<target_t, int> labelCounts;
    target_t prediction;

    for(int b=0; b<num_blocks; b++){
        for(int i=0; i<num_layers; i++){
            for(int j=0; j<trees_per_layer; j++){
                prediction = predict_tree(table[b],f_per_node,x,i,j,num_layers);
                labelCounts[prediction]+= 1;
            }
        }
    }
    target_t maj = -1;
    int max = -1;
    for(const auto& pair : labelCounts){
        if(pair.second > max){
            maj = pair.first;
            max = pair.second;
        }
    }
    return maj;
}

double score_forest(std::vector<std::vector<std::vector<node_t>>> &tables, std::vector<std::vector<double>>& X, std::vector<target_t>& y,
    int num_blocks, int num_layers, int trees_per_layer, int f_per_node
    ){
    int tot = 0.0;
    target_t prediction;
    for(int i=0; i< X.size(); i++){
        prediction = _predict_forest(tables,X[i],num_blocks,num_layers,trees_per_layer,f_per_node);
        if(prediction == y[i]){
            tot++;
        }
        // if(prediction < 0){
        //     fprintf(stderr,"Warning: negative prediction\n");
        // }
    }
    return (double)tot / X.size();
}

int partition_linearcomb(std::vector<std::vector<double>>& X, int f_per_node, int feature_idx[], double feature_coeff[], std::vector<int>& idxs, int low, int high) {
    double pivot = linearComb(X[idxs[high]],f_per_node,feature_idx,feature_coeff);
    int i = (low - 1);
    int tmp;

    for (int j = low; j < high; j++) {
        if (linearComb(X[idxs[j]],f_per_node,feature_idx,feature_coeff) <= pivot) {
            i++;
            tmp = idxs[i];
            idxs[i] = idxs[j];
            idxs[j] = tmp;
        }
    }

    tmp = idxs[i + 1];
    idxs[i + 1] = idxs[high];
    idxs[high] = tmp;
    return (i + 1);
}

void quicksort_linearcomb(std::vector<std::vector<double>>& X, int f_per_node, int feature_idx[], double feature_coeff[], std::vector<int>& idxs, int low, int high){    
    if (low < high) {
        int pi = partition_linearcomb(X,f_per_node,feature_idx,feature_coeff,idxs, low, high);
        quicksort_linearcomb(X,f_per_node,feature_idx,feature_coeff,idxs, low, pi - 1);
        quicksort_linearcomb(X,f_per_node,feature_idx,feature_coeff,idxs, pi + 1, high);
    }
    
}

target_t majority_class(std::vector<target_t>& y, std::vector<int>& idxs, int x_low, int x_high){
    std::map<target_t, int> labelCounts;
    for(int i=x_low; i<x_high; i++){
        labelCounts[y[idxs[i]]]++;
    }
    target_t maj = -1;
    int max = -1;
    for(const auto& pair : labelCounts){
        if(pair.second > max){
            maj = pair.first;
            max = pair.second;
        }
    }
    return maj;
}

void count_labels(std::vector<target_t>& y, std::vector<int>& idxs, std::map<target_t,int>& labelCounts, int x_low, int x_high){
    for(int i=x_low; i<x_high; i++){
        labelCounts[y[idxs[i]]]++;
    }
}

double split_score(std::map<target_t,int>& labelCounts, int tot_samples){
    //GINI SCORE
    double impurity = 1.0;
    int total = tot_samples;
    for (const auto& pair : labelCounts) {
        double prob = (double)pair.second / total;
        impurity -= prob * prob;
    }
    return impurity;
}


int find_best_feature_linearcomb(std::vector<std::vector<double>>& X, std::vector<target_t>& y, std::vector<int>& idxs, int x_low, int x_high, int feature_idx[], double feature_coeff[], double &threshold, int &bound, int f_per_node, int c_values){
    
    int pure = 1;
    for(int i=x_low; i<x_high-1 && pure; i++){
        if(y[idxs[i]] != y[idxs[i+1]]){
            pure = 0;
        }
    }
    if(pure){
        return 0;
    }

    double th;
    std::map<target_t,int> label_count;
    count_labels(y,idxs,label_count,x_low,x_high);
    double best_gini = split_score(label_count,x_high-x_low);
    double gini,pLeft,pRight;

    std::map<target_t,int> count_left, count_right;

    std::vector<int> feature_set;
    int tmp_feat;

    int max_features = MAX_FEATURE_GROUP(X[0].size());

    int features_group[MAX_FEATURES_PER_NODE];
    double feature_tmp_coeffs[MAX_FEATURES_PER_NODE];
    int found = 0;

    int tot_l_combs = std::round(std::pow(c_values,f_per_node - 1));

    for(int i=0; i<max_features; i++){

        for(int k=0; k<f_per_node; k++){

            int is_new = 0;
            int f;

            do{

                f = std::rand() % X[0].size();
                is_new = 1;
                for(int j=0; j<k && is_new; j++){
                    if(features_group[j]==f) is_new = 0;
                }

            }while(!is_new && k<X[0].size());

            features_group[k] = f;

        }

        for(int c=0; c<tot_l_combs; c++){
            
            linear_coeffs_nth(feature_tmp_coeffs,c,f_per_node,c_values);

            quicksort_linearcomb(X,f_per_node,features_group,feature_tmp_coeffs,idxs,x_low,x_high-1);

            count_left.clear();
            count_right.clear();
            count_labels(y,idxs,count_right,x_low,x_high);

            for(int i=x_low; i<x_high-1; i++){
                count_left[y[idxs[i]]]++;
                count_right[y[idxs[i]]]--;
                while(i<x_high-1 && linearComb(X[idxs[i]],f_per_node,features_group,feature_tmp_coeffs) == linearComb(X[idxs[i+1]],f_per_node,features_group,feature_tmp_coeffs)){
                    i++;
                    count_left[y[idxs[i]]]++;
                    count_right[y[idxs[i]]]--;
                }
                if(i==x_high-1)
                    break;
                th = (linearComb(X[idxs[i]],f_per_node,features_group,feature_tmp_coeffs) + linearComb(X[idxs[i+1]],f_per_node,features_group,feature_tmp_coeffs))/2.0;

                pLeft = (double)(i-x_low+1)/(x_high-x_low);
                pRight = 1.0 - pLeft;
                gini = pLeft *  split_score(count_left,i+1-x_low) + pRight * split_score(count_right,x_high-i-1);

                if(gini < best_gini){
                    best_gini = gini;
                    bound = i+1;
                    memcpy(feature_coeff,feature_tmp_coeffs,sizeof(double)*(f_per_node));
                    memcpy(feature_idx,features_group,sizeof(int)*(f_per_node));
                    threshold = th;
                    if(gini==0.0) return 1;
                    found = 1;
                }
            }
        }

    }
    
    return found;
}


int _recursive_tree(std::vector<std::vector<node_t>> &table, int trees_per_layer, int start_d, int start_off, int inner_tree_offs, int curr_d, int max_d, int f_per_node, int c_values, std::vector<std::vector<double>>& X, std::vector<target_t>& y, std::vector<int>& idxs, int x_low, int x_high, int inc=0){

    if(curr_d == start_d && inc>0){
        return -1;
    }
    
    int feature_idx[MAX_FEATURES_PER_NODE];
    double feature_coeffs[MAX_FEATURES_PER_NODE];
    double threshold;
    int valid_feature = 0;
    int bound;

    valid_feature = find_best_feature_linearcomb(X,y,idxs,x_low,x_high,&feature_idx[0],&feature_coeffs[0],threshold,bound,f_per_node,c_values);

    if(!valid_feature){
        return -1;
    }

    int curr_off = trees_per_layer * ((1<<((max_d + curr_d - start_d)%max_d))-1) + start_off*(1<<((max_d + curr_d - start_d)%max_d)) + inner_tree_offs;

    table[curr_d][curr_off].valid = 1;
    memcpy(&table[curr_d][curr_off].featureIdx[0],&feature_idx[0],sizeof(int)*(f_per_node));
    memcpy(&table[curr_d][curr_off].featureCoeff[0],&feature_coeffs[0],sizeof(double)*(f_per_node));
    table[curr_d][curr_off].threshold = threshold;

    quicksort_linearcomb(X,f_per_node,feature_idx,feature_coeffs,idxs,x_low,x_high-1);
    
    int left_off = _recursive_tree(table,trees_per_layer,start_d,start_off,2*inner_tree_offs,(curr_d+1)%max_d,max_d,f_per_node,c_values,X,y,idxs,x_low,bound,inc+1);
    if(left_off>=0){
        table[curr_d][curr_off].type_l = TYPE_INSTR;
        table[curr_d][curr_off].offset_l = left_off;
    }else{
        table[curr_d][curr_off].type_l = TYPE_LEAF;
        table[curr_d][curr_off].label_l = majority_class(y,idxs,x_low,bound);
    }

    int right_off = _recursive_tree(table,trees_per_layer,start_d,start_off,2*inner_tree_offs+1,(curr_d+1)%max_d,max_d,f_per_node,c_values,X,y,idxs,bound,x_high,inc+1);
    if(right_off>=0){
        table[curr_d][curr_off].type_r = TYPE_INSTR;
        table[curr_d][curr_off].offset_r = right_off;
    }else{
        table[curr_d][curr_off].type_r = TYPE_LEAF;
        table[curr_d][curr_off].label_r = majority_class(y,idxs,bound,x_high);
    }

    return curr_off;

}


void create_forest(std::vector<std::vector<node_t>> &table, int trees_per_layer, int max_d, int f_per_node, int c_values, std::vector<std::vector<double>>& X, std::vector<target_t>& y){
    
    int batch = X.size();

    for(int j=0; j<20; j++) printf("\b");
    printf("TREE %d / %d",0,trees_per_layer*max_d);
    fflush(stdout);

    #pragma omp parallel for schedule(dynamic,1) collapse(2)
    for(int d=0; d<max_d; d++){
        for(int off=0; off<trees_per_layer; off++){
            std::vector<int> idxs;
            idxs.clear();
            for(int i=0; i < batch; i++)
                idxs.push_back(i);
            _recursive_tree(table,trees_per_layer,d,off,0,d,max_d,f_per_node,c_values,X,y,idxs,0,idxs.size());
            
            #pragma omp critical
            {
                for(int j=0; j<20; j++) printf("\b");
                printf("TREE %d / %d",off+1 + trees_per_layer*d,trees_per_layer*max_d);
                fflush(stdout);
            }
        }
    }
    for(int j=0; j<20; j++) printf("\b");
    for(int j=0; j<20; j++) printf(" ");
    for(int j=0; j<20; j++) printf("\b");
    fflush(stdout);
}

std::vector<std::vector<double>> _predict_proba(std::vector<std::vector<std::vector<node_t>>> &tables, int blocks, int trees_per_layer, int layers, int f_per_node, std::vector<std::vector<double>>& X, int num_classes){
    std::vector<std::vector<double>> result;
    for(int i=0; i<X.size(); i++){
        result.push_back(std::vector<double>(num_classes));
        for(int k=0; k<num_classes; k++){
            result[i][k] = 0.0;
        }
    }

    target_t pred;

    for(int i=0; i<X.size(); i++){
        for(int b=0; b<blocks; b++){
            for(int d=0; d<layers; d++){
                for(int f=0; f<trees_per_layer; f++){
                    pred = predict_tree(tables[b],f_per_node,X[i],d,f,layers);
                    if(pred>=0) result[i][(int)pred] += 1.0;
                }
            }
        }
    }

    return result;

}



class ObliqueRandomForestHWClassifier{
    int _num_classes;
    std::vector<std::vector<std::vector<node_t>>> tables;
    int _layers;
    int _trees_per_layer;
    int _f_per_node;
    int _bits_per_coeff;
    int _c_values;
    int _instruction_size;
    int _block_size;
    int _num_blocks;
    int _threshold_size;
    int _node_info_size;
    int _feature_index_size;

    public:

    ObliqueRandomForestHWClassifier(int max_depth, int num_blocks, int features_per_node, int coeff_bits, int block_size=576, int instruction_size=64, int threshold_size=16, int node_info_size=10, int feature_index_size=6){
        _layers = max_depth;
        _num_blocks = num_blocks;
        _f_per_node = features_per_node;
        _bits_per_coeff = coeff_bits;
        _block_size = block_size;
        _instruction_size = instruction_size;

        _num_classes = -1;
        _trees_per_layer = (_block_size / ((1<<max_depth)-1));
        _c_values = (1<<(coeff_bits));

        _threshold_size = threshold_size;
        _node_info_size = node_info_size;
        _feature_index_size = feature_index_size;

        // printf("TOTAL TREES: %d\n",_num_blocks*_layers*_trees_per_layer);

        if(_trees_per_layer < 1){
            fprintf(stderr,"Error: block size too small for max depth\nBlock size: %d, Max depth: %d, Required block size: %d\n",_block_size,max_depth, ((1<<max_depth)-1));
            exit(1);
        }

        int actual_instruction_length = _threshold_size + 2 + 2*_node_info_size + 1 + _feature_index_size * _f_per_node + (_f_per_node-1)*_bits_per_coeff*(_bits_per_coeff>1);

        if(actual_instruction_length > _instruction_size){
            fprintf(stderr,"Error: instruction size too small for number of features and coefficients\nInstruction size: %d, Required instruction size: %d\n",_instruction_size,actual_instruction_length);
            exit(1);
        }
    };

    int total_trees(){
        return _num_blocks*_layers*_trees_per_layer;
    }

    int trees_per_block(){
        return _layers*_trees_per_layer;
    }

    int trees_per_layer(){
        return _trees_per_layer;
    }

    void fit(std::vector<std::vector<double>>& X, std::vector<target_t>& y){
        _num_classes = *std::max_element(y.begin(),y.end()) + 1;

        if(_num_classes > (1<<_node_info_size)){
            fprintf(stderr,"Error: too many classes for node info size\n");
            fprintf(stderr,"Node info size: %d, Number of classes: %d, Minimum node info size required: %d\n",_node_info_size,_num_classes,(int)std::ceil(std::log2((double)_num_classes)));
            exit(1);
        }

        if((int)X[0].size() > (1<<_feature_index_size)){
            fprintf(stderr,"Error: too many features for feature index size\n");
            fprintf(stderr,"Feature index size: %d, Number of features: %d, Minimum feature index size required: %d\n",_feature_index_size,(int)X[0].size(),(int)std::ceil(std::log2((double)X[0].size())));
            exit(1);
        }

        tables.clear();
        for(int i=0; i<_num_blocks; i++){
            tables.push_back(std::vector<std::vector<node_t>>());
            for(int j=0; j<_layers; j++){
                tables[i].push_back(std::vector<node_t>());
                for(int k=0; k<_block_size; k++){
                    node_t node;
                    node.valid = 0;
                    tables[i][j].push_back(node);
                }
            }
        }
        for(int i=0; i<_num_blocks; i++){
            create_forest(tables[i],_trees_per_layer,_layers,_f_per_node,_c_values,X,y);
        }
    }

    std::vector<std::vector<double>> predict_proba(std::vector<std::vector<double>>& X){
        return _predict_proba(tables,_num_blocks,_trees_per_layer,_layers,_f_per_node,X,_num_classes);
    }

    double score(std::vector<std::vector<double>>& X, std::vector<target_t>& y){
        return score_forest(tables,X,y,_num_blocks,_layers,_trees_per_layer,_f_per_node);
    }

};
