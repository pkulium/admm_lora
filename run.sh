#!/bin/bash

#Submit this script with: sbatch thefilename

#SBATCH --time=0-10:00:00  # max job runtime
#SBATCH --cpus-per-task=16  # number of processor cores
#SBATCH --nodes=1  # number of nodes
#SBATCH --partition=gpu  # partition(s)
#SBATCH --gres=gpu:a100-sxm4-80gb:1 
#SBATCH --mem=160G  # max memory


# LOAD MODULES, INSERT CODE, AND RUN YOUR PROGRAMS HERE
module load ml-gpu/20220928
ml-gpu /work/LAS/wzhang-lab/mlgpuvenv-20220928/bin/python finetune_lm.py \
    --model_name_or_path decapoda-research/llama-7b-hf \
    --dataset_name c4 \
    --num_train_epochs 1 \
    --block_size 1024 \
    --per_device_train_batch_size 2 \
    --per_device_eval_batch_size 8 \
    --do_train \
    --do_eval \
    --max_train_samples 80000 \
    --max_eval_samples 128 \
    --learning_rate 1e-4 \
    --overwrite_output_dir \
    --output_dir ./results/c4_80k_1_epoch/lr_1e-4
