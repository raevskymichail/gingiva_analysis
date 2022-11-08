#!/bin/bash

set -e

cd /mnt/e/Oncobox/gingiva_project

## BATCH #1

SAMPLE_ANN="./data/exp_data/RNAseq/dataset_batch_1/RNAseq_exp_samples_source_annotation.csv"

Rscript ./scripts/main/print_n_up_down_dif_exp_genes.R --dif-exp-results-path="analyses/RNAseq/dataset_batch_1/DEGs_Volcano/degs_volcano_2D_diff_SMC_vs_2D_nondiff_SMC_results.RDS" \
                            --sample-annotations="$SAMPLE_ANN" \
                            --samples-list="./data/exp_data/RNAseq/dataset_batch_1/2D_diff_SMC_vs_2D_nondiff_SMC.txt"

Rscript ./scripts/main/print_n_up_down_dif_exp_genes.R --dif-exp-results-path="analyses/RNAseq/dataset_batch_1/DEGs_Volcano/degs_volcano_3D_diff_SMC_vs_3D_nondiff_SMC_results.RDS" \
                            --sample-annotations="$SAMPLE_ANN" \
                            --samples-list="./data/exp_data/RNAseq/dataset_batch_1/3D_diff_SMC_vs_3D_nondiff_SMC.txt"

Rscript ./scripts/main/print_n_up_down_dif_exp_genes.R --dif-exp-results-path="analyses/RNAseq/dataset_batch_1/DEGs_Volcano/degs_volcano_2D_diff_AMC_vs_2D_nondiff_AMC_results.RDS" \
                            --sample-annotations="$SAMPLE_ANN" \
                            --samples-list="./data/exp_data/RNAseq/dataset_batch_1/2D_diff_AMC_vs_2D_nondiff_AMC.txt"

Rscript ./scripts/main/print_n_up_down_dif_exp_genes.R --dif-exp-results-path="analyses/RNAseq/dataset_batch_1/DEGs_Volcano/degs_volcano_3D_diff_AMC_vs_3D_nondiff_AMC_results.RDS" \
                            --sample-annotations="$SAMPLE_ANN" \
                            --samples-list="./data/exp_data/RNAseq/dataset_batch_1/3D_diff_AMC_vs_3D_nondiff_AMC.txt"

## BATCH #2

SAMPLE_ANN="./data/exp_data/RNAseq/dataset_batch_2/RNAseq_exp_samples_source_annotation.csv"

Rscript ./scripts/main/print_n_up_down_dif_exp_genes.R --dif-exp-results-path="analyses/RNAseq/dataset_batch_2/DEGs_Volcano/degs_volcano_2D_diff_SMC_vs_2D_nondiff_SMC_results.RDS" \
                            --sample-annotations="$SAMPLE_ANN" \
                            --samples-list="./data/exp_data/RNAseq/dataset_batch_2/2D_diff_SMC_vs_2D_nondiff_SMC.txt"

Rscript ./scripts/main/print_n_up_down_dif_exp_genes.R --dif-exp-results-path="analyses/RNAseq/dataset_batch_2/DEGs_Volcano/degs_volcano_3D_diff_SMC_vs_3D_nondiff_SMC_results.RDS" \
                            --sample-annotations="$SAMPLE_ANN" \
                            --samples-list="./data/exp_data/RNAseq/dataset_batch_2/3D_diff_SMC_vs_3D_nondiff_SMC.txt"

Rscript ./scripts/main/print_n_up_down_dif_exp_genes.R --dif-exp-results-path="analyses/RNAseq/dataset_batch_2/DEGs_Volcano/degs_volcano_2D_diff_AMC_vs_2D_nondiff_AMC_results.RDS" \
                            --sample-annotations="$SAMPLE_ANN" \
                            --samples-list="./data/exp_data/RNAseq/dataset_batch_2/2D_diff_AMC_vs_2D_nondiff_AMC.txt"

Rscript ./scripts/main/print_n_up_down_dif_exp_genes.R --dif-exp-results-path="analyses/RNAseq/dataset_batch_2/DEGs_Volcano/degs_volcano_3D_diff_AMC_vs_3D_nondiff_AMC_results.RDS" \
                            --sample-annotations="$SAMPLE_ANN" \
                            --samples-list="./data/exp_data/RNAseq/dataset_batch_2/3D_diff_AMC_vs_3D_nondiff_AMC.txt"

