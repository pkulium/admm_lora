CUDA_VISIBLE_DEVICES=0 python -m pdb finetune_lm.py \
    --model_name_or_path /work/LAS/wzhang-lab/mingl/code/admm_lora/out/llama_7b/2-4/wanda/weight \
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


# --model_name_or_path decapoda-research/llama-7b-hf \