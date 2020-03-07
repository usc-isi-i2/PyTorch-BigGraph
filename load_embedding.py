import json
import h5py

entity_names_json="data/FB15k/entity_names_all_0.json"
h5_json="model/fb15k/embeddings_all_0.v50.h5"

node="/m/05hf_5"
with open(entity_names_json, "rt") as tf:
    names = json.load(tf)
offset = names.index(node)

with h5py.File(h5_json, "r") as hf:
    embedding = hf["embeddings"][offset, :]

print(len(embedding))
