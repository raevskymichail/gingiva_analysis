#!/usr/bin/env bash
# -*- coding: utf-8 -*-

set -e

cd /mnt/e/Oncobox/gingiva_project


## BATCH #1

# Intersection of all, positive and negative DEGs

OUTPUT_DIR="analyses/RNAseq/dataset_batch_1/venn_degs_intersection/padj_0.05_FC_0" && mkdir -p $OUTPUT_DIR

Rscript ./scripts/main/plot_venn_degs_intersection.R --dif-exp-results-set-a-path="analyses/RNAseq/dataset_batch_1/DEGs_Volcano/degs_volcano_2D_diff_SMC_vs_2D_nondiff_SMC_results.RDS" \
                             --dif-exp-results-set-b-path="analyses/RNAseq/dataset_batch_1/DEGs_Volcano/degs_volcano_2D_diff_AMC_vs_2D_nondiff_AMC_results.RDS" \
                             --set-a-label="2D_SMC" \
                             --set-b-label="2D_AMC" \
                             --output-dir="$OUTPUT_DIR" \
                             --output-filename="venn_degs_2D_SMC_vs_2D_AMC"

Rscript ./scripts/main/plot_venn_degs_intersection.R --dif-exp-results-set-a-path="analyses/RNAseq/dataset_batch_1/DEGs_Volcano/degs_volcano_2D_diff_AMC_vs_2D_nondiff_AMC_results.RDS" \
                             --dif-exp-results-set-b-path="analyses/RNAseq/dataset_batch_1/DEGs_Volcano/degs_volcano_3D_diff_AMC_vs_3D_nondiff_AMC_results.RDS" \
                             --set-a-label="2D_AMC" \
                             --set-b-label="3D_AMC" \
                             --output-dir="$OUTPUT_DIR" \
                             --output-filename="venn_degs_2D_AMC_vs_3D_AMC"

Rscript ./scripts/main/plot_venn_degs_intersection.R --dif-exp-results-set-a-path="analyses/RNAseq/dataset_batch_1/DEGs_Volcano/degs_volcano_3D_diff_SMC_vs_3D_nondiff_SMC_results.RDS" \
                             --dif-exp-results-set-b-path="analyses/RNAseq/dataset_batch_1/DEGs_Volcano/degs_volcano_3D_diff_AMC_vs_3D_nondiff_AMC_results.RDS" \
                             --set-a-label="3D_SMC" \
                             --set-b-label="3D_AMC" \
                             --output-dir="$OUTPUT_DIR" \
                             --output-filename="venn_degs_3D_SMC_vs_3D_AMC"

Rscript ./scripts/main/plot_venn_degs_intersection.R --dif-exp-results-set-a-path="analyses/RNAseq/dataset_batch_1/DEGs_Volcano/degs_volcano_2D_diff_SMC_vs_2D_nondiff_SMC_results.RDS" \
                             --dif-exp-results-set-b-path="analyses/RNAseq/dataset_batch_1/DEGs_Volcano/degs_volcano_3D_diff_SMC_vs_3D_nondiff_SMC_results.RDS" \
                             --set-a-label="2D_SMC" \
                             --set-b-label="3D_SMC" \
                             --output-dir="$OUTPUT_DIR" \
                             --output-filename="venn_degs_2D_SMC_vs_3D_SMC"


# Intersection of all, positive and negative DEGs - Padj < 0.1

OUTPUT_DIR="analyses/RNAseq/dataset_batch_1/venn_degs_intersection/padj_0.1_FC_2" && mkdir -p $OUTPUT_DIR

Rscript ./scripts/main/plot_venn_degs_intersection.R --dif-exp-results-set-a-path="analyses/RNAseq/dataset_batch_1/DEGs_Volcano/degs_volcano_2D_diff_SMC_vs_2D_nondiff_SMC_results.RDS" \
                             --dif-exp-results-set-b-path="analyses/RNAseq/dataset_batch_1/DEGs_Volcano/degs_volcano_2D_diff_AMC_vs_2D_nondiff_AMC_results.RDS" \
                             --set-a-label="2D_SMC" \
                             --set-b-label="2D_AMC" \
                             --padj-treshold="0.1" \
                             --abs-log-FC-treshold="2" \
                             --output-dir="$OUTPUT_DIR" \
                             --output-filename="venn_degs_2D_SMC_vs_2D_AMC"

Rscript ./scripts/main/plot_venn_degs_intersection.R --dif-exp-results-set-a-path="analyses/RNAseq/dataset_batch_1/DEGs_Volcano/degs_volcano_2D_diff_AMC_vs_2D_nondiff_AMC_results.RDS" \
                             --dif-exp-results-set-b-path="analyses/RNAseq/dataset_batch_1/DEGs_Volcano/degs_volcano_3D_diff_AMC_vs_3D_nondiff_AMC_results.RDS" \
                             --set-a-label="2D_AMC" \
                             --set-b-label="3D_AMC" \
                             --padj-treshold="0.1" \
                             --abs-log-FC-treshold="2" \
                             --output-dir="$OUTPUT_DIR" \
                             --output-filename="venn_degs_2D_AMC_vs_3D_AMC"

Rscript ./scripts/main/plot_venn_degs_intersection.R --dif-exp-results-set-a-path="analyses/RNAseq/dataset_batch_1/DEGs_Volcano/degs_volcano_3D_diff_SMC_vs_3D_nondiff_SMC_results.RDS" \
                             --dif-exp-results-set-b-path="analyses/RNAseq/dataset_batch_1/DEGs_Volcano/degs_volcano_3D_diff_AMC_vs_3D_nondiff_AMC_results.RDS" \
                             --set-a-label="3D_SMC" \
                             --set-b-label="3D_AMC" \
                             --padj-treshold="0.1" \
                             --abs-log-FC-treshold="2" \
                             --output-dir="$OUTPUT_DIR" \
                             --output-filename="venn_degs_3D_SMC_vs_3D_AMC"

Rscript ./scripts/main/plot_venn_degs_intersection.R --dif-exp-results-set-a-path="analyses/RNAseq/dataset_batch_1/DEGs_Volcano/degs_volcano_2D_diff_SMC_vs_2D_nondiff_SMC_results.RDS" \
                             --dif-exp-results-set-b-path="analyses/RNAseq/dataset_batch_1/DEGs_Volcano/degs_volcano_3D_diff_SMC_vs_3D_nondiff_SMC_results.RDS" \
                             --set-a-label="2D_SMC" \
                             --set-b-label="3D_SMC" \
                             --padj-treshold="0.1" \
                             --abs-log-FC-treshold="2" \
                             --output-dir="$OUTPUT_DIR" \
                             --output-filename="venn_degs_2D_SMC_vs_3D_SMC"

# Intersection of all, positive and negative DEGs - Padj < 0.1 & FC 2

OUTPUT_DIR="analyses/RNAseq/dataset_batch_1/venn_degs_intersection/padj_0.05_FC_2" && mkdir -p $OUTPUT_DIR

Rscript ./scripts/main/plot_venn_degs_intersection.R --dif-exp-results-set-a-path="analyses/RNAseq/dataset_batch_1/DEGs_Volcano/degs_volcano_2D_diff_SMC_vs_2D_nondiff_SMC_results.RDS" \
                             --dif-exp-results-set-b-path="analyses/RNAseq/dataset_batch_1/DEGs_Volcano/degs_volcano_2D_diff_AMC_vs_2D_nondiff_AMC_results.RDS" \
                             --set-a-label="2D_SMC" \
                             --set-b-label="2D_AMC" \
                             --padj-treshold="0.05" \
                             --abs-log-FC-treshold="2" \
                             --output-dir="$OUTPUT_DIR" \
                             --output-filename="venn_degs_2D_SMC_vs_2D_AMC"

Rscript ./scripts/main/plot_venn_degs_intersection.R --dif-exp-results-set-a-path="analyses/RNAseq/dataset_batch_1/DEGs_Volcano/degs_volcano_2D_diff_AMC_vs_2D_nondiff_AMC_results.RDS" \
                             --dif-exp-results-set-b-path="analyses/RNAseq/dataset_batch_1/DEGs_Volcano/degs_volcano_3D_diff_AMC_vs_3D_nondiff_AMC_results.RDS" \
                             --set-a-label="2D_AMC" \
                             --set-b-label="3D_AMC" \
                             --padj-treshold="0.05" \
                             --abs-log-FC-treshold="2" \
                             --output-dir="$OUTPUT_DIR" \
                             --output-filename="venn_degs_2D_AMC_vs_3D_AMC"

Rscript ./scripts/main/plot_venn_degs_intersection.R --dif-exp-results-set-a-path="analyses/RNAseq/dataset_batch_1/DEGs_Volcano/degs_volcano_3D_diff_SMC_vs_3D_nondiff_SMC_results.RDS" \
                             --dif-exp-results-set-b-path="analyses/RNAseq/dataset_batch_1/DEGs_Volcano/degs_volcano_3D_diff_AMC_vs_3D_nondiff_AMC_results.RDS" \
                             --set-a-label="3D_SMC" \
                             --set-b-label="3D_AMC" \
                             --padj-treshold="0.05" \
                             --abs-log-FC-treshold="2" \
                             --output-dir="$OUTPUT_DIR" \
                             --output-filename="venn_degs_3D_SMC_vs_3D_AMC"

Rscript ./scripts/main/plot_venn_degs_intersection.R --dif-exp-results-set-a-path="analyses/RNAseq/dataset_batch_1/DEGs_Volcano/degs_volcano_2D_diff_SMC_vs_2D_nondiff_SMC_results.RDS" \
                             --dif-exp-results-set-b-path="analyses/RNAseq/dataset_batch_1/DEGs_Volcano/degs_volcano_3D_diff_SMC_vs_3D_nondiff_SMC_results.RDS" \
                             --set-a-label="2D_SMC" \
                             --set-b-label="3D_SMC" \
                             --padj-treshold="0.05" \
                             --abs-log-FC-treshold="2" \
                             --output-dir="$OUTPUT_DIR" \
                             --output-filename="venn_degs_2D_SMC_vs_3D_SMC"



## BATCH #2


# Intersection of all, positive and negative DEGs

OUTPUT_DIR="analyses/RNAseq/dataset_batch_2/venn_degs_intersection/padj_0.05_FC_0" && mkdir -p $OUTPUT_DIR

Rscript ./scripts/main/plot_venn_degs_intersection.R --dif-exp-results-set-a-path="analyses/RNAseq/dataset_batch_2/DEGs_Volcano/degs_volcano_2D_diff_SMC_vs_2D_nondiff_SMC_results.RDS" \
                             --dif-exp-results-set-b-path="analyses/RNAseq/dataset_batch_2/DEGs_Volcano/degs_volcano_2D_diff_AMC_vs_2D_nondiff_AMC_results.RDS" \
                             --set-a-label="2D_SMC" \
                             --set-b-label="2D_AMC" \
                             --output-dir="$OUTPUT_DIR" \
                             --output-filename="venn_degs_2D_SMC_vs_2D_AMC"

Rscript ./scripts/main/plot_venn_degs_intersection.R --dif-exp-results-set-a-path="analyses/RNAseq/dataset_batch_2/DEGs_Volcano/degs_volcano_2D_diff_AMC_vs_2D_nondiff_AMC_results.RDS" \
                             --dif-exp-results-set-b-path="analyses/RNAseq/dataset_batch_2/DEGs_Volcano/degs_volcano_3D_diff_AMC_vs_3D_nondiff_AMC_results.RDS" \
                             --set-a-label="2D_AMC" \
                             --set-b-label="3D_AMC" \
                             --output-dir="$OUTPUT_DIR" \
                             --output-filename="venn_degs_2D_AMC_vs_3D_AMC"

Rscript ./scripts/main/plot_venn_degs_intersection.R --dif-exp-results-set-a-path="analyses/RNAseq/dataset_batch_2/DEGs_Volcano/degs_volcano_3D_diff_SMC_vs_3D_nondiff_SMC_results.RDS" \
                             --dif-exp-results-set-b-path="analyses/RNAseq/dataset_batch_2/DEGs_Volcano/degs_volcano_3D_diff_AMC_vs_3D_nondiff_AMC_results.RDS" \
                             --set-a-label="3D_SMC" \
                             --set-b-label="3D_AMC" \
                             --output-dir="$OUTPUT_DIR" \
                             --output-filename="venn_degs_3D_SMC_vs_3D_AMC"

Rscript ./scripts/main/plot_venn_degs_intersection.R --dif-exp-results-set-a-path="analyses/RNAseq/dataset_batch_2/DEGs_Volcano/degs_volcano_2D_diff_SMC_vs_2D_nondiff_SMC_results.RDS" \
                             --dif-exp-results-set-b-path="analyses/RNAseq/dataset_batch_2/DEGs_Volcano/degs_volcano_3D_diff_SMC_vs_3D_nondiff_SMC_results.RDS" \
                             --set-a-label="2D_SMC" \
                             --set-b-label="3D_SMC" \
                             --output-dir="$OUTPUT_DIR" \
                             --output-filename="venn_degs_2D_SMC_vs_3D_SMC"


# Intersection of all, positive and negative DEGs - Padj < 0.1

OUTPUT_DIR="analyses/RNAseq/dataset_batch_2/venn_degs_intersection/padj_0.1_FC_2" && mkdir -p $OUTPUT_DIR

Rscript ./scripts/main/plot_venn_degs_intersection.R --dif-exp-results-set-a-path="analyses/RNAseq/dataset_batch_2/DEGs_Volcano/degs_volcano_2D_diff_SMC_vs_2D_nondiff_SMC_results.RDS" \
                             --dif-exp-results-set-b-path="analyses/RNAseq/dataset_batch_2/DEGs_Volcano/degs_volcano_2D_diff_AMC_vs_2D_nondiff_AMC_results.RDS" \
                             --set-a-label="2D_SMC" \
                             --set-b-label="2D_AMC" \
                             --padj-treshold="0.1" \
                             --abs-log-FC-treshold="2" \
                             --output-dir="$OUTPUT_DIR" \
                             --output-filename="venn_degs_2D_SMC_vs_2D_AMC"

Rscript ./scripts/main/plot_venn_degs_intersection.R --dif-exp-results-set-a-path="analyses/RNAseq/dataset_batch_2/DEGs_Volcano/degs_volcano_2D_diff_AMC_vs_2D_nondiff_AMC_results.RDS" \
                             --dif-exp-results-set-b-path="analyses/RNAseq/dataset_batch_2/DEGs_Volcano/degs_volcano_3D_diff_AMC_vs_3D_nondiff_AMC_results.RDS" \
                             --set-a-label="2D_AMC" \
                             --set-b-label="3D_AMC" \
                             --padj-treshold="0.1" \
                             --abs-log-FC-treshold="2" \
                             --output-dir="$OUTPUT_DIR" \
                             --output-filename="venn_degs_2D_AMC_vs_3D_AMC"

Rscript ./scripts/main/plot_venn_degs_intersection.R --dif-exp-results-set-a-path="analyses/RNAseq/dataset_batch_2/DEGs_Volcano/degs_volcano_3D_diff_SMC_vs_3D_nondiff_SMC_results.RDS" \
                             --dif-exp-results-set-b-path="analyses/RNAseq/dataset_batch_2/DEGs_Volcano/degs_volcano_3D_diff_AMC_vs_3D_nondiff_AMC_results.RDS" \
                             --set-a-label="3D_SMC" \
                             --set-b-label="3D_AMC" \
                             --padj-treshold="0.1" \
                             --abs-log-FC-treshold="2" \
                             --output-dir="$OUTPUT_DIR" \
                             --output-filename="venn_degs_3D_SMC_vs_3D_AMC"

Rscript ./scripts/main/plot_venn_degs_intersection.R --dif-exp-results-set-a-path="analyses/RNAseq/dataset_batch_2/DEGs_Volcano/degs_volcano_2D_diff_SMC_vs_2D_nondiff_SMC_results.RDS" \
                             --dif-exp-results-set-b-path="analyses/RNAseq/dataset_batch_2/DEGs_Volcano/degs_volcano_3D_diff_SMC_vs_3D_nondiff_SMC_results.RDS" \
                             --set-a-label="2D_SMC" \
                             --set-b-label="3D_SMC" \
                             --padj-treshold="0.1" \
                             --abs-log-FC-treshold="2" \
                             --output-dir="$OUTPUT_DIR" \
                             --output-filename="venn_degs_2D_SMC_vs_3D_SMC"

# Intersection of all, positive and negative DEGs - Padj < 0.1 & FC 2

OUTPUT_DIR="analyses/RNAseq/dataset_batch_2/venn_degs_intersection/padj_0.05_FC_2" && mkdir -p $OUTPUT_DIR

Rscript ./scripts/main/plot_venn_degs_intersection.R --dif-exp-results-set-a-path="analyses/RNAseq/dataset_batch_2/DEGs_Volcano/degs_volcano_2D_diff_SMC_vs_2D_nondiff_SMC_results.RDS" \
                             --dif-exp-results-set-b-path="analyses/RNAseq/dataset_batch_2/DEGs_Volcano/degs_volcano_2D_diff_AMC_vs_2D_nondiff_AMC_results.RDS" \
                             --set-a-label="2D_SMC" \
                             --set-b-label="2D_AMC" \
                             --padj-treshold="0.05" \
                             --abs-log-FC-treshold="2" \
                             --output-dir="$OUTPUT_DIR" \
                             --output-filename="venn_degs_2D_SMC_vs_2D_AMC"

Rscript ./scripts/main/plot_venn_degs_intersection.R --dif-exp-results-set-a-path="analyses/RNAseq/dataset_batch_2/DEGs_Volcano/degs_volcano_2D_diff_AMC_vs_2D_nondiff_AMC_results.RDS" \
                             --dif-exp-results-set-b-path="analyses/RNAseq/dataset_batch_2/DEGs_Volcano/degs_volcano_3D_diff_AMC_vs_3D_nondiff_AMC_results.RDS" \
                             --set-a-label="2D_AMC" \
                             --set-b-label="3D_AMC" \
                             --padj-treshold="0.05" \
                             --abs-log-FC-treshold="2" \
                             --output-dir="$OUTPUT_DIR" \
                             --output-filename="venn_degs_2D_AMC_vs_3D_AMC"

Rscript ./scripts/main/plot_venn_degs_intersection.R --dif-exp-results-set-a-path="analyses/RNAseq/dataset_batch_2/DEGs_Volcano/degs_volcano_3D_diff_SMC_vs_3D_nondiff_SMC_results.RDS" \
                             --dif-exp-results-set-b-path="analyses/RNAseq/dataset_batch_2/DEGs_Volcano/degs_volcano_3D_diff_AMC_vs_3D_nondiff_AMC_results.RDS" \
                             --set-a-label="3D_SMC" \
                             --set-b-label="3D_AMC" \
                             --padj-treshold="0.05" \
                             --abs-log-FC-treshold="2" \
                             --output-dir="$OUTPUT_DIR" \
                             --output-filename="venn_degs_3D_SMC_vs_3D_AMC"

Rscript ./scripts/main/plot_venn_degs_intersection.R --dif-exp-results-set-a-path="analyses/RNAseq/dataset_batch_2/DEGs_Volcano/degs_volcano_2D_diff_SMC_vs_2D_nondiff_SMC_results.RDS" \
                             --dif-exp-results-set-b-path="analyses/RNAseq/dataset_batch_2/DEGs_Volcano/degs_volcano_3D_diff_SMC_vs_3D_nondiff_SMC_results.RDS" \
                             --set-a-label="2D_SMC" \
                             --set-b-label="3D_SMC" \
                             --padj-treshold="0.05" \
                             --abs-log-FC-treshold="2" \
                             --output-dir="$OUTPUT_DIR" \
                             --output-filename="venn_degs_2D_SMC_vs_3D_SMC"


# # Intersection of positive DEGs

# OUTPUT_DIR="analyses/RNAseq/dataset_batch_1/venn_degs_intersection/pos_DEGs" && mkdir -p $OUTPUT_DIR

# Rscript ./scripts/main/plot_venn_degs_intersection.R --dif-exp-results-set-a-path="analyses/RNAseq/dataset_batch_1/DEGs_Volcano/degs_volcano_2D_diff_SMC_vs_2D_nondiff_SMC_results.RDS" \
#                              --dif-exp-results-set-b-path="analyses/RNAseq/dataset_batch_1/DEGs_Volcano/degs_volcano_2D_diff_AMC_vs_2D_nondiff_AMC_pos_DEGs_results.RDS" \
#                              --set-a-label="2D_SMC" \
#                              --set-b-label="2D_AMC" \
#                              --output-dir="$OUTPUT_DIR" \
#                              --output-filename="venn_degs_2D_SMC_vs_2D_AMC"

# Rscript ./scripts/main/plot_venn_degs_intersection.R --dif-exp-results-set-a-path="analyses/RNAseq/dataset_batch_1/DEGs_Volcano/degs_volcano_2D_diff_AMC_vs_2D_nondiff_AMC_pos_DEGs_results.RDS" \
#                              --dif-exp-results-set-b-path="analyses/RNAseq/dataset_batch_1/DEGs_Volcano/degs_volcano_3D_diff_AMC_vs_3D_nondiff_AMC_pos_DEGs_results.RDS" \
#                              --set-a-label="2D_AMC" \
#                              --set-b-label="3D_AMC" \
#                              --output-dir="$OUTPUT_DIR" \
#                              --output-filename="venn_degs_2D_AMC_vs_3D_AMC"

# Rscript ./scripts/main/plot_venn_degs_intersection.R --dif-exp-results-set-a-path="analyses/RNAseq/dataset_batch_1/DEGs_Volcano/degs_volcano_3D_diff_SMC_vs_3D_nondiff_SMC_pos_DEGs_results.RDS" \
#                              --dif-exp-results-set-b-path="analyses/RNAseq/dataset_batch_1/DEGs_Volcano/degs_volcano_3D_diff_AMC_vs_3D_nondiff_AMC_pos_DEGs_results.RDS" \
#                              --set-a-label="3D_SMC" \
#                              --set-b-label="3D_AMC" \
#                              --output-dir="$OUTPUT_DIR" \
#                              --output-filename="venn_degs_3D_SMC_vs_3D_AMC"

# Rscript ./scripts/main/plot_venn_degs_intersection.R --dif-exp-results-set-a-path="analyses/RNAseq/dataset_batch_1/DEGs_Volcano/degs_volcano_2D_diff_SMC_vs_2D_nondiff_SMC_pos_DEGs_results.RDS" \
#                              --dif-exp-results-set-b-path="analyses/RNAseq/dataset_batch_1/DEGs_Volcano/degs_volcano_3D_diff_SMC_vs_3D_nondiff_SMC_pos_DEGs_results.RDS" \
#                              --set-a-label="2D_SMC" \
#                              --set-b-label="3D_SMC" \
#                              --output-dir="$OUTPUT_DIR" \
#                              --output-filename="venn_degs_2D_SMC_vs_3D_SMC"

# # Intersection of negative DEGs

# OUTPUT_DIR="analyses/RNAseq/dataset_batch_1/venn_degs_intersection/neg_DEGs" && mkdir -p $OUTPUT_DIR

# Rscript ./scripts/main/plot_venn_degs_intersection.R --dif-exp-results-set-a-path="analyses/RNAseq/dataset_batch_1/DEGs_Volcano/degs_volcano_2D_diff_SMC_vs_2D_nondiff_SMC_neg_DEGs_results.RDS" \
#                              --dif-exp-results-set-b-path="analyses/RNAseq/dataset_batch_1/DEGs_Volcano/degs_volcano_2D_diff_AMC_vs_2D_nondiff_AMC_neg_DEGs_results.RDS" \
#                              --set-a-label="2D_SMC" \
#                              --set-b-label="2D_AMC" \
#                              --output-dir="$OUTPUT_DIR" \
#                              --output-filename="venn_degs_2D_SMC_vs_2D_AMC"

# Rscript ./scripts/main/plot_venn_degs_intersection.R --dif-exp-results-set-a-path="analyses/RNAseq/dataset_batch_1/DEGs_Volcano/degs_volcano_2D_diff_AMC_vs_2D_nondiff_AMC_neg_DEGs_results.RDS" \
#                              --dif-exp-results-set-b-path="analyses/RNAseq/dataset_batch_1/DEGs_Volcano/degs_volcano_3D_diff_AMC_vs_3D_nondiff_AMC_neg_DEGs_results.RDS" \
#                              --set-a-label="2D_AMC" \
#                              --set-b-label="3D_AMC" \
#                              --output-dir="$OUTPUT_DIR" \
#                              --output-filename="venn_degs_2D_AMC_vs_3D_AMC"

# Rscript ./scripts/main/plot_venn_degs_intersection.R --dif-exp-results-set-a-path="analyses/RNAseq/dataset_batch_1/DEGs_Volcano/degs_volcano_3D_diff_SMC_vs_3D_nondiff_SMC_neg_DEGs_results.RDS" \
#                              --dif-exp-results-set-b-path="analyses/RNAseq/dataset_batch_1/DEGs_Volcano/degs_volcano_3D_diff_AMC_vs_3D_nondiff_AMC_neg_DEGs_results.RDS" \
#                              --set-a-label="3D_SMC" \
#                              --set-b-label="3D_AMC" \
#                              --output-dir="$OUTPUT_DIR" \
#                              --output-filename="venn_degs_3D_SMC_vs_3D_AMC"

# Rscript ./scripts/main/plot_venn_degs_intersection.R --dif-exp-results-set-a-path="analyses/RNAseq/dataset_batch_1/DEGs_Volcano/degs_volcano_2D_diff_SMC_vs_2D_nondiff_SMC_neg_DEGs_results.RDS" \
#                              --dif-exp-results-set-b-path="analyses/RNAseq/dataset_batch_1/DEGs_Volcano/degs_volcano_3D_diff_SMC_vs_3D_nondiff_SMC_neg_DEGs_results.RDS" \
#                              --set-a-label="2D_SMC" \
#                              --set-b-label="3D_SMC" \
#                              --output-dir="$OUTPUT_DIR" \
#                              --output-filename="venn_degs_2D_SMC_vs_3D_SMC"
