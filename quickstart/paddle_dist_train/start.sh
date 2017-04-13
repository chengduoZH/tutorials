#!/bin/bash

function start_train() {
  jobconfig=$TRAINER_PACKAGE_PATH
  cd $jobconfig
  python /root/start_paddle.py \
    --dot_period=10 \
    --ports_num=$CONF_PADDLE_PORTS_NUM \
    --ports_num_for_sparse=$CONF_PADDLE_PORTS_NUM_SPARSE \
    --log_period=50 \
    --num_passes=10 \
    --trainer_count=$TRAINER_COUNT \
    --saving_period=1 \
    --local=0 \
    --config=trainer_config.lr.py \
    --use_gpu=0
}

start_train
