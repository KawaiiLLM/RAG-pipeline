python -m pyserini.encode \
  input   --corpus  /path/to/corpus \
          --fields text \
          --delimiter '[SEP]' \
          --shard-id 0 \
          --shard-num 1 \
  output  --embeddings /path/to/embeddings \
          --to-faiss \
  encoder --encoder /path/to/encoder \
          --fields text \
          --batch 16 \
          --max-length 512 \
          --dimension 1024 \
          --pooling 'cls' \
          --device 'cuda:0' \
          --l2-norm \
          --fp16
