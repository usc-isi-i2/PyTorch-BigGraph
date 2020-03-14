#!/bin/bash

# conda activate embs-env

dataset="cn"

rm -rf data/$dataset
rm -rf model/$dataset

python torchbiggraph/examples/${dataset}.py --data_dir .

torchbiggraph_export_to_tsv \
  /nas/home/ilievski/PyTorch-BigGraph/torchbiggraph/examples/configs/${dataset}_config.py \
  --entities-output embeddings/${dataset}/entity_embeddings.tsv \
  --relation-types-output embeddings/${dataset}/relation_types_parameters.tsv
