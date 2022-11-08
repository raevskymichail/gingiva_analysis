#!/bin/bash

set -e

cd /mnt/e/Oncobox/gingiva_project

## BATCH #1

Rscript ./scripts/main/plot_pca_gene_exp_by_source.R --exp-matrix="./data/exp_data/RNAseq/processed/RNAseq_exp_matrix.txt" \
                             --output-dir="./analyses/RNAseq/dataset_batch_1/pca_gene_exp_by_source" \
                             --output-filename="pca_gene_exp_by_source" \
                             --samples-list="./data/exp_data/RNAseq/dataset_batch_1/RNAseq_exp_samples_for_PCA.txt"

## BATCH #2

Rscript ./scripts/main/plot_pca_gene_exp_by_source.R --exp-matrix="./data/exp_data/RNAseq/processed/RNAseq_exp_matrix.txt" \
                             --output-dir="./analyses/RNAseq/dataset_batch_2/pca_gene_exp_by_source" \
                             --output-filename="pca_gene_exp_by_source" \
                             --samples-list="./data/exp_data/RNAseq/dataset_batch_2/RNAseq_exp_samples_for_PCA.txt"

