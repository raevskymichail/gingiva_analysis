#!/usr/bin/env bash
# -*- coding: utf-8 -*-

set -e

cd /mnt/e/Oncobox/gingiva_project


## BATCH #1

Rscript ./scripts/main/plot_go_enrichment.R --dif-exp-results-path="analyses/RNAseq/dataset_batch_1/DEGs_Volcano/degs_volcano_2D_diff_SMC_vs_2D_nondiff_SMC_results.RDS" \
                             --output-dir="analyses/RNAseq/dataset_batch_1/DEGs_GO_enrichment" \
                             --output-filename="go_enrichment_2D_diff_SMC_vs_2D_nondiff_SMC" \
                             --samples-list="./data/exp_data/RNAseq/dataset_batch_1/2D_diff_SMC_vs_2D_nondiff_SMC.txt"

Rscript ./scripts/main/plot_go_enrichment.R --dif-exp-results-path="analyses/RNAseq/dataset_batch_1/DEGs_Volcano/degs_volcano_3D_diff_SMC_vs_3D_nondiff_SMC_results.RDS" \
                             --output-dir="analyses/RNAseq/dataset_batch_1/DEGs_GO_enrichment" \
                             --output-filename="go_enrichment_3D_diff_SMC_vs_3D_nondiff_SMC" \
                             --samples-list="./data/exp_data/RNAseq/dataset_batch_1/3D_diff_SMC_vs_3D_nondiff_SMC.txt"

Rscript ./scripts/main/plot_go_enrichment.R --dif-exp-results-path="analyses/RNAseq/dataset_batch_1/DEGs_Volcano/degs_volcano_2D_diff_AMC_vs_2D_nondiff_AMC_results.RDS" \
                             --output-dir="analyses/RNAseq/dataset_batch_1/DEGs_GO_enrichment" \
                             --output-filename="go_enrichment_2D_diff_AMC_vs_2D_nondiff_AMC" \
                             --samples-list="./data/exp_data/RNAseq/dataset_batch_1/2D_diff_AMC_vs_2D_nondiff_AMC.txt"

Rscript ./scripts/main/plot_go_enrichment.R --dif-exp-results-path="analyses/RNAseq/dataset_batch_1/DEGs_Volcano/degs_volcano_3D_diff_AMC_vs_3D_nondiff_AMC_results.RDS" \
                             --output-dir="analyses/RNAseq/dataset_batch_1/DEGs_GO_enrichment" \
                             --output-filename="go_enrichment_3D_diff_AMC_vs_3D_nondiff_AMC" \
                             --samples-list="./data/exp_data/RNAseq/dataset_batch_1/3D_diff_AMC_vs_3D_nondiff_AMC.txt"

# GO Enrichment of DEGs intersections - all genes

COMPARISON="SMC_2D_vs_AMC_2D"
Rscript ./scripts/main/plot_go_enrichment.R --dif-exp-results-path="./analyses/RNAseq/dataset_batch_1/DEGs_GO_enrichment/DEGs_intersection/venn_degs_SMC_2D_vs_AMC_2D_all_common_DEGs.RDS" \
                             --output-dir="analyses/RNAseq/dataset_batch_1/DEGs_GO_enrichment/DEGs_intersection" \
                             --output-filename="go_enrichment_${COMPARISON}_all_common_DEGs" \
                             --p-adj-treshold="0.05" 

COMPARISON="AMC_2D_vs_AMC_3D"
Rscript ./scripts/main/plot_go_enrichment.R --dif-exp-results-path="./analyses/RNAseq/dataset_batch_1/DEGs_GO_enrichment/DEGs_intersection/venn_degs_AMC_2D_vs_AMC_3D_all_common_DEGs.RDS" \
                             --output-dir="analyses/RNAseq/dataset_batch_1/DEGs_GO_enrichment/DEGs_intersection" \
                             --output-filename="go_enrichment_${COMPARISON}_all_common_DEGs" \
                             --p-adj-treshold="0.05" 

COMPARISON="SMC_3D_vs_AMC_3D"
Rscript ./scripts/main/plot_go_enrichment.R --dif-exp-results-path="./analyses/RNAseq/dataset_batch_1/DEGs_GO_enrichment/DEGs_intersection/venn_degs_SMC_3D_vs_AMC_3D_all_common_DEGs.RDS" \
                             --output-dir="analyses/RNAseq/dataset_batch_1/DEGs_GO_enrichment/DEGs_intersection" \
                             --output-filename="go_enrichment_${COMPARISON}_all_common_DEGs" \
                             --p-adj-treshold="0.05" 

COMPARISON="SMC_2D_vs_SMC_3D"
Rscript ./scripts/main/plot_go_enrichment.R --dif-exp-results-path="./analyses/RNAseq/dataset_batch_1/DEGs_GO_enrichment/DEGs_intersection/venn_degs_SMC_2D_vs_SMC_3D_all_common_DEGs.RDS" \
                             --output-dir="analyses/RNAseq/dataset_batch_1/DEGs_GO_enrichment/DEGs_intersection" \
                             --output-filename="go_enrichment_${COMPARISON}_all_common_DEGs" \
                             --p-adj-treshold="0.05" 


## BATCH #2


Rscript ./scripts/main/plot_go_enrichment.R --dif-exp-results-path="analyses/RNAseq/dataset_batch_2/DEGs_Volcano/degs_volcano_2D_diff_SMC_vs_2D_nondiff_SMC_results.RDS" \
                             --output-dir="analyses/RNAseq/dataset_batch_2/DEGs_GO_enrichment" \
                             --output-filename="go_enrichment_2D_diff_SMC_vs_2D_nondiff_SMC" \
                             --samples-list="./data/exp_data/RNAseq/dataset_batch_2/2D_diff_SMC_vs_2D_nondiff_SMC.txt"

Rscript ./scripts/main/plot_go_enrichment.R --dif-exp-results-path="analyses/RNAseq/dataset_batch_2/DEGs_Volcano/degs_volcano_3D_diff_SMC_vs_3D_nondiff_SMC_results.RDS" \
                             --output-dir="analyses/RNAseq/dataset_batch_2/DEGs_GO_enrichment" \
                             --output-filename="go_enrichment_3D_diff_SMC_vs_3D_nondiff_SMC" \
                             --samples-list="./data/exp_data/RNAseq/dataset_batch_2/3D_diff_SMC_vs_3D_nondiff_SMC.txt"

Rscript ./scripts/main/plot_go_enrichment.R --dif-exp-results-path="analyses/RNAseq/dataset_batch_2/DEGs_Volcano/degs_volcano_2D_diff_AMC_vs_2D_nondiff_AMC_results.RDS" \
                             --output-dir="analyses/RNAseq/dataset_batch_2/DEGs_GO_enrichment" \
                             --output-filename="go_enrichment_2D_diff_AMC_vs_2D_nondiff_AMC" \
                             --samples-list="./data/exp_data/RNAseq/dataset_batch_2/2D_diff_AMC_vs_2D_nondiff_AMC.txt"

Rscript ./scripts/main/plot_go_enrichment.R --dif-exp-results-path="analyses/RNAseq/dataset_batch_2/DEGs_Volcano/degs_volcano_3D_diff_AMC_vs_3D_nondiff_AMC_results.RDS" \
                             --output-dir="analyses/RNAseq/dataset_batch_2/DEGs_GO_enrichment" \
                             --output-filename="go_enrichment_3D_diff_AMC_vs_3D_nondiff_AMC" \
                             --samples-list="./data/exp_data/RNAseq/dataset_batch_2/3D_diff_AMC_vs_3D_nondiff_AMC.txt"

# GO Enrichment of DEGs intersections - all genes

COMPARISON="SMC_2D_vs_AMC_2D"
Rscript ./scripts/main/plot_go_enrichment.R --dif-exp-results-path="./analyses/RNAseq/dataset_batch_2/DEGs_GO_enrichment/DEGs_intersection/venn_degs_SMC_2D_vs_AMC_2D_all_common_DEGs.RDS" \
                             --output-dir="analyses/RNAseq/dataset_batch_2/DEGs_GO_enrichment/DEGs_intersection" \
                             --output-filename="go_enrichment_${COMPARISON}_all_common_DEGs" \
                             --p-adj-treshold="0.05" 

COMPARISON="AMC_2D_vs_AMC_3D"
Rscript ./scripts/main/plot_go_enrichment.R --dif-exp-results-path="./analyses/RNAseq/dataset_batch_2/DEGs_GO_enrichment/DEGs_intersection/venn_degs_AMC_2D_vs_AMC_3D_all_common_DEGs.RDS" \
                             --output-dir="analyses/RNAseq/dataset_batch_2/DEGs_GO_enrichment/DEGs_intersection" \
                             --output-filename="go_enrichment_${COMPARISON}_all_common_DEGs" \
                             --p-adj-treshold="0.05" 

COMPARISON="SMC_3D_vs_AMC_3D"
Rscript ./scripts/main/plot_go_enrichment.R --dif-exp-results-path="./analyses/RNAseq/dataset_batch_2/DEGs_GO_enrichment/DEGs_intersection/venn_degs_SMC_3D_vs_AMC_3D_all_common_DEGs.RDS" \
                             --output-dir="analyses/RNAseq/dataset_batch_2/DEGs_GO_enrichment/DEGs_intersection" \
                             --output-filename="go_enrichment_${COMPARISON}_all_common_DEGs" \
                             --p-adj-treshold="0.05" 

COMPARISON="SMC_2D_vs_SMC_3D"
Rscript ./scripts/main/plot_go_enrichment.R --dif-exp-results-path="./analyses/RNAseq/dataset_batch_2/DEGs_GO_enrichment/DEGs_intersection/venn_degs_SMC_2D_vs_SMC_3D_all_common_DEGs.RDS" \
                             --output-dir="analyses/RNAseq/dataset_batch_2/DEGs_GO_enrichment/DEGs_intersection" \
                             --output-filename="go_enrichment_${COMPARISON}_all_common_DEGs" \
                             --p-adj-treshold="0.05" 

# COMPARISON="2D_SMC_vs_2D_AMC"
# Rscript ./scripts/main/plot_go_enrichment.R --dif-exp-results-path="analyses/RNAseq/dataset_batch_1/venn_DEGs_intersection/no_padj/venn_degs_${COMPARISON}_all_common_DEGs.RDS" \
#                              --output-dir="analyses/RNAseq/dataset_batch_1/DEGs_GO_enrichment/DEGs_intersection" \
#                              --output-filename="go_enrichment_${COMPARISON}_all_common_DEGs" \
#                              --p-adj-treshold="0" \
#                              --dif-exp-results-as-intersection

# COMPARISON="2D_AMC_vs_3D_AMC"
# Rscript ./scripts/main/plot_go_enrichment.R --dif-exp-results-path="analyses/RNAseq/dataset_batch_1/venn_DEGs_intersection/no_padj/venn_degs_${COMPARISON}_all_common_DEGs.RDS" \
#                              --output-dir="analyses/RNAseq/dataset_batch_1/DEGs_GO_enrichment/DEGs_intersection" \
#                              --output-filename="go_enrichment_${COMPARISON}_all_common_DEGs" \
#                              --p-adj-treshold="0" \
#                              --dif-exp-results-as-intersection

# COMPARISON="2D_AMC_vs_3D_SMC"
# Rscript ./scripts/main/plot_go_enrichment.R --dif-exp-results-path="analyses/RNAseq/dataset_batch_1/venn_DEGs_intersection/no_padj/venn_degs_${COMPARISON}_all_common_DEGs.RDS" \
#                              --output-dir="analyses/RNAseq/dataset_batch_1/DEGs_GO_enrichment/DEGs_intersection" \
#                              --output-filename="go_enrichment_${COMPARISON}_all_common_DEGs" \
#                              --p-adj-treshold="0" \
#                              --dif-exp-results-as-intersection

# COMPARISON="2D_SMC_vs_3D_SMC"
# Rscript ./scripts/main/plot_go_enrichment.R --dif-exp-results-path="analyses/RNAseq/dataset_batch_1/venn_DEGs_intersection/no_padj/venn_degs_${COMPARISON}_all_common_DEGs.RDS" \
#                              --output-dir="analyses/RNAseq/dataset_batch_1/DEGs_GO_enrichment/DEGs_intersection" \
#                              --output-filename="go_enrichment_${COMPARISON}_all_common_DEGs" \
#                              --p-adj-treshold="0" \
#                              --dif-exp-results-as-intersection

