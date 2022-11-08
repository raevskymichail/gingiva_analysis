#!/usr/bin/env bash
# -*- coding: utf-8 -*-

set -e

cd /mnt/e/Oncobox/gingiva_project


## BATCH #1

# GO Enrichment on all DEGs

OUTPUT_DIR="analyses/RNAseq/dataset_batch_1/venn_go_terms_intersection/all_DEGs" && mkdir -p $OUTPUT_DIR

Rscript ./scripts/main/plot_venn_go_terms_intersection.R --go-enrich-results-set-a-path="analyses/RNAseq/dataset_batch_1/DEGs_GO_enrichment/go_enrichment_2D_diff_SMC_vs_2D_nondiff_SMC.RDS" \
                             --go-enrich-results-set-b-path="analyses/RNAseq/dataset_batch_1/DEGs_GO_enrichment/go_enrichment_2D_diff_AMC_vs_2D_nondiff_AMC.RDS" \
                             --set-a-label="2D_SMC" \
                             --set-b-label="2D_AMC" \
                             --output-dir="$OUTPUT_DIR" \
                             --output-filename="venn_go_terms_2D_SMC_vs_2D_AMC"

Rscript ./scripts/main/plot_venn_go_terms_intersection.R --go-enrich-results-set-a-path="analyses/RNAseq/dataset_batch_1/DEGs_GO_enrichment/go_enrichment_2D_diff_AMC_vs_2D_nondiff_AMC.RDS" \
                             --go-enrich-results-set-b-path="analyses/RNAseq/dataset_batch_1/DEGs_GO_enrichment/go_enrichment_3D_diff_AMC_vs_3D_nondiff_AMC.RDS" \
                             --set-a-label="2D_AMC" \
                             --set-b-label="3D_AMC" \
                             --output-dir="$OUTPUT_DIR" \
                             --output-filename="venn_go_terms_2D_AMC_vs_3D_AMC"

Rscript ./scripts/main/plot_venn_go_terms_intersection.R --go-enrich-results-set-a-path="analyses/RNAseq/dataset_batch_1/DEGs_GO_enrichment/go_enrichment_3D_diff_SMC_vs_3D_nondiff_SMC.RDS" \
                             --go-enrich-results-set-b-path="analyses/RNAseq/dataset_batch_1/DEGs_GO_enrichment/go_enrichment_3D_diff_AMC_vs_3D_nondiff_AMC.RDS" \
                             --set-a-label="3D_SMC" \
                             --set-b-label="3D_AMC" \
                             --output-dir="$OUTPUT_DIR" \
                             --output-filename="venn_go_terms_3D_SMC_vs_3D_AMC"

Rscript ./scripts/main/plot_venn_go_terms_intersection.R --go-enrich-results-set-a-path="analyses/RNAseq/dataset_batch_1/DEGs_GO_enrichment/go_enrichment_2D_diff_SMC_vs_2D_nondiff_SMC.RDS" \
                             --go-enrich-results-set-b-path="analyses/RNAseq/dataset_batch_1/DEGs_GO_enrichment/go_enrichment_3D_diff_SMC_vs_3D_nondiff_SMC.RDS" \
                             --set-a-label="2D_SMC" \
                             --set-b-label="3D_SMC" \
                             --output-dir="$OUTPUT_DIR" \
                             --output-filename="venn_go_terms_2D_SMC_vs_3D_SMC"

# GO Enrichment on positive DEGs

OUTPUT_DIR="analyses/RNAseq/dataset_batch_1/venn_go_terms_intersection/pos_DEGs" && mkdir -p $OUTPUT_DIR

Rscript ./scripts/main/plot_venn_go_terms_intersection.R --go-enrich-results-set-a-path="analyses/RNAseq/dataset_batch_1/DEGs_GO_enrichment/go_enrichment_2D_diff_SMC_vs_2D_nondiff_SMC.RDS" \
                             --go-enrich-results-set-b-path="analyses/RNAseq/dataset_batch_1/DEGs_GO_enrichment/go_enrichment_2D_diff_AMC_vs_2D_nondiff_AMC_pos_DEGs.RDS" \
                             --set-a-label="2D_SMC" \
                             --set-b-label="2D_AMC" \
                             --output-dir="$OUTPUT_DIR" \
                             --output-filename="venn_go_terms_2D_SMC_vs_2D_AMC"

Rscript ./scripts/main/plot_venn_go_terms_intersection.R --go-enrich-results-set-a-path="analyses/RNAseq/dataset_batch_1/DEGs_GO_enrichment/go_enrichment_2D_diff_AMC_vs_2D_nondiff_AMC_pos_DEGs.RDS" \
                             --go-enrich-results-set-b-path="analyses/RNAseq/dataset_batch_1/DEGs_GO_enrichment/go_enrichment_3D_diff_AMC_vs_3D_nondiff_AMC_pos_DEGs.RDS" \
                             --set-a-label="2D_AMC" \
                             --set-b-label="3D_AMC" \
                             --output-dir="$OUTPUT_DIR" \
                             --output-filename="venn_go_terms_2D_AMC_vs_3D_AMC"

Rscript ./scripts/main/plot_venn_go_terms_intersection.R --go-enrich-results-set-a-path="analyses/RNAseq/dataset_batch_1/DEGs_GO_enrichment/go_enrichment_3D_diff_SMC_vs_3D_nondiff_SMC_pos_DEGs.RDS" \
                             --go-enrich-results-set-b-path="analyses/RNAseq/dataset_batch_1/DEGs_GO_enrichment/go_enrichment_3D_diff_AMC_vs_3D_nondiff_AMC_pos_DEGs.RDS" \
                             --set-a-label="3D_SMC" \
                             --set-b-label="3D_AMC" \
                             --output-dir="$OUTPUT_DIR" \
                             --output-filename="venn_go_terms_3D_SMC_vs_3D_AMC"

Rscript ./scripts/main/plot_venn_go_terms_intersection.R --go-enrich-results-set-a-path="analyses/RNAseq/dataset_batch_1/DEGs_GO_enrichment/go_enrichment_2D_diff_SMC_vs_2D_nondiff_SMC_pos_DEGs.RDS" \
                             --go-enrich-results-set-b-path="analyses/RNAseq/dataset_batch_1/DEGs_GO_enrichment/go_enrichment_3D_diff_SMC_vs_3D_nondiff_SMC_pos_DEGs.RDS" \
                             --set-a-label="2D_SMC" \
                             --set-b-label="3D_SMC" \
                             --output-dir="$OUTPUT_DIR" \
                             --output-filename="venn_go_terms_2D_SMC_vs_3D_SMC"

# GO Enrichment on negative DEGs

OUTPUT_DIR="analyses/RNAseq/dataset_batch_1/venn_go_terms_intersection/neg_DEGs" && mkdir -p $OUTPUT_DIR

Rscript ./scripts/main/plot_venn_go_terms_intersection.R --go-enrich-results-set-a-path="analyses/RNAseq/dataset_batch_1/DEGs_GO_enrichment/go_enrichment_2D_diff_SMC_vs_2D_nondiff_SMC_neg_DEGs.RDS" \
                             --go-enrich-results-set-b-path="analyses/RNAseq/dataset_batch_1/DEGs_GO_enrichment/go_enrichment_2D_diff_AMC_vs_2D_nondiff_AMC_neg_DEGs.RDS" \
                             --set-a-label="2D_SMC" \
                             --set-b-label="2D_AMC" \
                             --output-dir="$OUTPUT_DIR" \
                             --output-filename="venn_go_terms_2D_SMC_vs_2D_AMC"

Rscript ./scripts/main/plot_venn_go_terms_intersection.R --go-enrich-results-set-a-path="analyses/RNAseq/dataset_batch_1/DEGs_GO_enrichment/go_enrichment_2D_diff_AMC_vs_2D_nondiff_AMC_neg_DEGs.RDS" \
                             --go-enrich-results-set-b-path="analyses/RNAseq/dataset_batch_1/DEGs_GO_enrichment/go_enrichment_3D_diff_AMC_vs_3D_nondiff_AMC_neg_DEGs.RDS" \
                             --set-a-label="2D_AMC" \
                             --set-b-label="3D_AMC" \
                             --output-dir="$OUTPUT_DIR" \
                             --output-filename="venn_go_terms_2D_AMC_vs_3D_AMC"

Rscript ./scripts/main/plot_venn_go_terms_intersection.R --go-enrich-results-set-a-path="analyses/RNAseq/dataset_batch_1/DEGs_GO_enrichment/go_enrichment_3D_diff_SMC_vs_3D_nondiff_SMC_neg_DEGs.RDS" \
                             --go-enrich-results-set-b-path="analyses/RNAseq/dataset_batch_1/DEGs_GO_enrichment/go_enrichment_3D_diff_AMC_vs_3D_nondiff_AMC_neg_DEGs.RDS" \
                             --set-a-label="3D_SMC" \
                             --set-b-label="3D_AMC" \
                             --output-dir="$OUTPUT_DIR" \
                             --output-filename="venn_go_terms_3D_SMC_vs_3D_AMC"

Rscript ./scripts/main/plot_venn_go_terms_intersection.R --go-enrich-results-set-a-path="analyses/RNAseq/dataset_batch_1/DEGs_GO_enrichment/go_enrichment_2D_diff_SMC_vs_2D_nondiff_SMC_neg_DEGs.RDS" \
                             --go-enrich-results-set-b-path="analyses/RNAseq/dataset_batch_1/DEGs_GO_enrichment/go_enrichment_3D_diff_SMC_vs_3D_nondiff_SMC_neg_DEGs.RDS" \
                             --set-a-label="2D_SMC" \
                             --set-b-label="3D_SMC" \
                             --output-dir="$OUTPUT_DIR" \
                             --output-filename="venn_go_terms_2D_SMC_vs_3D_SMC"


## BATCH #2


# GO Enrichment on all DEGs

OUTPUT_DIR="analyses/RNAseq/dataset_batch_2/venn_go_terms_intersection/all_DEGs" && mkdir -p $OUTPUT_DIR

Rscript ./scripts/main/plot_venn_go_terms_intersection.R --go-enrich-results-set-a-path="analyses/RNAseq/dataset_batch_2/DEGs_GO_enrichment/go_enrichment_2D_diff_SMC_vs_2D_nondiff_SMC.RDS" \
                             --go-enrich-results-set-b-path="analyses/RNAseq/dataset_batch_2/DEGs_GO_enrichment/go_enrichment_2D_diff_AMC_vs_2D_nondiff_AMC.RDS" \
                             --set-a-label="2D_SMC" \
                             --set-b-label="2D_AMC" \
                             --output-dir="$OUTPUT_DIR" \
                             --output-filename="venn_go_terms_2D_SMC_vs_2D_AMC"

Rscript ./scripts/main/plot_venn_go_terms_intersection.R --go-enrich-results-set-a-path="analyses/RNAseq/dataset_batch_2/DEGs_GO_enrichment/go_enrichment_2D_diff_AMC_vs_2D_nondiff_AMC.RDS" \
                             --go-enrich-results-set-b-path="analyses/RNAseq/dataset_batch_2/DEGs_GO_enrichment/go_enrichment_3D_diff_AMC_vs_3D_nondiff_AMC.RDS" \
                             --set-a-label="2D_AMC" \
                             --set-b-label="3D_AMC" \
                             --output-dir="$OUTPUT_DIR" \
                             --output-filename="venn_go_terms_2D_AMC_vs_3D_AMC"

Rscript ./scripts/main/plot_venn_go_terms_intersection.R --go-enrich-results-set-a-path="analyses/RNAseq/dataset_batch_2/DEGs_GO_enrichment/go_enrichment_3D_diff_SMC_vs_3D_nondiff_SMC.RDS" \
                             --go-enrich-results-set-b-path="analyses/RNAseq/dataset_batch_2/DEGs_GO_enrichment/go_enrichment_3D_diff_AMC_vs_3D_nondiff_AMC.RDS" \
                             --set-a-label="3D_SMC" \
                             --set-b-label="3D_AMC" \
                             --output-dir="$OUTPUT_DIR" \
                             --output-filename="venn_go_terms_3D_SMC_vs_3D_AMC"

Rscript ./scripts/main/plot_venn_go_terms_intersection.R --go-enrich-results-set-a-path="analyses/RNAseq/dataset_batch_2/DEGs_GO_enrichment/go_enrichment_2D_diff_SMC_vs_2D_nondiff_SMC.RDS" \
                             --go-enrich-results-set-b-path="analyses/RNAseq/dataset_batch_2/DEGs_GO_enrichment/go_enrichment_3D_diff_SMC_vs_3D_nondiff_SMC.RDS" \
                             --set-a-label="2D_SMC" \
                             --set-b-label="3D_SMC" \
                             --output-dir="$OUTPUT_DIR" \
                             --output-filename="venn_go_terms_2D_SMC_vs_3D_SMC"

# GO Enrichment on positive DEGs

OUTPUT_DIR="analyses/RNAseq/dataset_batch_2/venn_go_terms_intersection/pos_DEGs" && mkdir -p $OUTPUT_DIR

Rscript ./scripts/main/plot_venn_go_terms_intersection.R --go-enrich-results-set-a-path="analyses/RNAseq/dataset_batch_2/DEGs_GO_enrichment/go_enrichment_2D_diff_SMC_vs_2D_nondiff_SMC.RDS" \
                             --go-enrich-results-set-b-path="analyses/RNAseq/dataset_batch_2/DEGs_GO_enrichment/go_enrichment_2D_diff_AMC_vs_2D_nondiff_AMC_pos_DEGs.RDS" \
                             --set-a-label="2D_SMC" \
                             --set-b-label="2D_AMC" \
                             --output-dir="$OUTPUT_DIR" \
                             --output-filename="venn_go_terms_2D_SMC_vs_2D_AMC"

Rscript ./scripts/main/plot_venn_go_terms_intersection.R --go-enrich-results-set-a-path="analyses/RNAseq/dataset_batch_2/DEGs_GO_enrichment/go_enrichment_2D_diff_AMC_vs_2D_nondiff_AMC_pos_DEGs.RDS" \
                             --go-enrich-results-set-b-path="analyses/RNAseq/dataset_batch_2/DEGs_GO_enrichment/go_enrichment_3D_diff_AMC_vs_3D_nondiff_AMC_pos_DEGs.RDS" \
                             --set-a-label="2D_AMC" \
                             --set-b-label="3D_AMC" \
                             --output-dir="$OUTPUT_DIR" \
                             --output-filename="venn_go_terms_2D_AMC_vs_3D_AMC"

Rscript ./scripts/main/plot_venn_go_terms_intersection.R --go-enrich-results-set-a-path="analyses/RNAseq/dataset_batch_2/DEGs_GO_enrichment/go_enrichment_3D_diff_SMC_vs_3D_nondiff_SMC_pos_DEGs.RDS" \
                             --go-enrich-results-set-b-path="analyses/RNAseq/dataset_batch_2/DEGs_GO_enrichment/go_enrichment_3D_diff_AMC_vs_3D_nondiff_AMC_pos_DEGs.RDS" \
                             --set-a-label="3D_SMC" \
                             --set-b-label="3D_AMC" \
                             --output-dir="$OUTPUT_DIR" \
                             --output-filename="venn_go_terms_3D_SMC_vs_3D_AMC"

Rscript ./scripts/main/plot_venn_go_terms_intersection.R --go-enrich-results-set-a-path="analyses/RNAseq/dataset_batch_2/DEGs_GO_enrichment/go_enrichment_2D_diff_SMC_vs_2D_nondiff_SMC_pos_DEGs.RDS" \
                             --go-enrich-results-set-b-path="analyses/RNAseq/dataset_batch_2/DEGs_GO_enrichment/go_enrichment_3D_diff_SMC_vs_3D_nondiff_SMC_pos_DEGs.RDS" \
                             --set-a-label="2D_SMC" \
                             --set-b-label="3D_SMC" \
                             --output-dir="$OUTPUT_DIR" \
                             --output-filename="venn_go_terms_2D_SMC_vs_3D_SMC"

# GO Enrichment on negative DEGs

OUTPUT_DIR="analyses/RNAseq/dataset_batch_2/venn_go_terms_intersection/neg_DEGs" && mkdir -p $OUTPUT_DIR

Rscript ./scripts/main/plot_venn_go_terms_intersection.R --go-enrich-results-set-a-path="analyses/RNAseq/dataset_batch_2/DEGs_GO_enrichment/go_enrichment_2D_diff_SMC_vs_2D_nondiff_SMC_neg_DEGs.RDS" \
                             --go-enrich-results-set-b-path="analyses/RNAseq/dataset_batch_2/DEGs_GO_enrichment/go_enrichment_2D_diff_AMC_vs_2D_nondiff_AMC_neg_DEGs.RDS" \
                             --set-a-label="2D_SMC" \
                             --set-b-label="2D_AMC" \
                             --output-dir="$OUTPUT_DIR" \
                             --output-filename="venn_go_terms_2D_SMC_vs_2D_AMC"

Rscript ./scripts/main/plot_venn_go_terms_intersection.R --go-enrich-results-set-a-path="analyses/RNAseq/dataset_batch_2/DEGs_GO_enrichment/go_enrichment_2D_diff_AMC_vs_2D_nondiff_AMC_neg_DEGs.RDS" \
                             --go-enrich-results-set-b-path="analyses/RNAseq/dataset_batch_2/DEGs_GO_enrichment/go_enrichment_3D_diff_AMC_vs_3D_nondiff_AMC_neg_DEGs.RDS" \
                             --set-a-label="2D_AMC" \
                             --set-b-label="3D_AMC" \
                             --output-dir="$OUTPUT_DIR" \
                             --output-filename="venn_go_terms_2D_AMC_vs_3D_AMC"

Rscript ./scripts/main/plot_venn_go_terms_intersection.R --go-enrich-results-set-a-path="analyses/RNAseq/dataset_batch_2/DEGs_GO_enrichment/go_enrichment_3D_diff_SMC_vs_3D_nondiff_SMC_neg_DEGs.RDS" \
                             --go-enrich-results-set-b-path="analyses/RNAseq/dataset_batch_2/DEGs_GO_enrichment/go_enrichment_3D_diff_AMC_vs_3D_nondiff_AMC_neg_DEGs.RDS" \
                             --set-a-label="3D_SMC" \
                             --set-b-label="3D_AMC" \
                             --output-dir="$OUTPUT_DIR" \
                             --output-filename="venn_go_terms_3D_SMC_vs_3D_AMC"

Rscript ./scripts/main/plot_venn_go_terms_intersection.R --go-enrich-results-set-a-path="analyses/RNAseq/dataset_batch_2/DEGs_GO_enrichment/go_enrichment_2D_diff_SMC_vs_2D_nondiff_SMC_neg_DEGs.RDS" \
                             --go-enrich-results-set-b-path="analyses/RNAseq/dataset_batch_2/DEGs_GO_enrichment/go_enrichment_3D_diff_SMC_vs_3D_nondiff_SMC_neg_DEGs.RDS" \
                             --set-a-label="2D_SMC" \
                             --set-b-label="3D_SMC" \
                             --output-dir="$OUTPUT_DIR" \
                             --output-filename="venn_go_terms_2D_SMC_vs_3D_SMC"


