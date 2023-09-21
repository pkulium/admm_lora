git pull
python -m pdb main.py \
    --model decapoda-research/llama-7b-hf \
    --prune_method sparsegpt \
    --sparsity_ratio 0.5 \
    --sparsity_type 2:4 \
    --save out/llama_7b/2-4/wanda/ 