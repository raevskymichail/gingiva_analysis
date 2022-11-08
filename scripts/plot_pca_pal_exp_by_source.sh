#!/bin/bash

set -e

cd /mnt/e/Oncobox/gingiva_project

## BATCH #1

Rscript ./scripts/main/plot_pca_pal_by_source.R --pathways-activations-db="data/pathway_activation/dataset_batch_1/pathway_activation_diff_vs_nondiff.xlsx" \
                             --output-dir="./analyses/RNAseq/dataset_batch_1/pca_pal_by_source" \
                             --output-filename="pca_plot_by_source" \
                             --samples-list="./data/exp_data/RNAseq/dataset_batch_1/RNAseq_exp_samples_for_PCA.txt"

# Plot only significant pathways with 10+ genes
Rscript ./scripts/main/plot_pca_pal_by_source.R --pathways-activations-db="data/pathway_activation/dataset_batch_1/pathway_activation_diff_vs_nondiff_10_plus_genes.xlsx" \
                             --output-dir="./analyses/RNAseq/dataset_batch_1/pca_pal_by_source/only_pws_10_plus_genes" \
                             --output-filename="pca_plot_by_source" \
                             --samples-list="./data/exp_data/RNAseq/dataset_batch_1/RNAseq_exp_samples_for_PCA.txt"


## BATCH #2

Rscript ./scripts/main/plot_pca_pal_by_source.R --pathways-activations-db="data/pathway_activation/dataset_batch_2/pathway_activation_diff_vs_nondiff.xlsx" \
                             --output-dir="./analyses/RNAseq/dataset_batch_2/pca_pal_by_source" \
                             --output-filename="pca_plot_by_source" \
                             --samples-list="./data/exp_data/RNAseq/dataset_batch_2/RNAseq_exp_samples_for_PCA.txt"

# Plot only significant pathways with 10+ genes
Rscript ./scripts/main/plot_pca_pal_by_source.R --pathways-activations-db="data/pathway_activation/dataset_batch_2/pathway_activation_diff_vs_nondiff_10_plus_genes.xlsx" \
                             --output-dir="./analyses/RNAseq/dataset_batch_2/pca_pal_by_source/only_pws_10_plus_genes" \
                             --output-filename="pca_plot_by_source" \
                             --samples-list="./data/exp_data/RNAseq/dataset_batch_2/RNAseq_exp_samples_for_PCA.txt"
