#!/bin/bash -v

RUN_DIR="saved_models/lamin_b1_50k"
N_ITER=50000
BUFFER_SIZE=30
PATH_DATA_TRAIN="data/lamin_b1_train.csv"
PATH_DATA_TEST="data/lamin_b1_test.csv"

cd $(cd "$(dirname ${BASH_SOURCE})" && pwd)/..

python train_model.py \
       --n_iter ${N_ITER} \
       --buffer_size ${BUFFER_SIZE} \
       --replace_interval -1 \
       --path_train_csv ${PATH_DATA_TRAIN} \
       --path_test_csv ${PATH_DATA_TEST} \
       --batch_size 24 \
       --nn_module ttf_v8_nn \
       --path_run_dir ${RUN_DIR}


RUN_DIR="saved_models/lamin_b1_100k"
N_ITER=100000

python train_model.py \
       --n_iter ${N_ITER} \
       --buffer_size ${BUFFER_SIZE} \
       --replace_interval -1 \
       --path_train_csv ${PATH_DATA_TRAIN} \
       --path_test_csv ${PATH_DATA_TEST} \
       --batch_size 24 \
       --nn_module ttf_v8_nn \
       --path_run_dir ${RUN_DIR}

