conda activate embs-env

rm -rf data/cskg
rm -rf model/cskg

python torchbiggraph/examples/cskg.py --data_dir .

torchbiggraph_export_to_tsv \
  torchbiggraph/examples/configs/cskg_config.py \
  --entities-output cskg_entity_embeddings.tsv \
  --relation-types-output cskg_relation_types_parameters.tsv
