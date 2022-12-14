% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/preprocessing.R
\name{get_mut_sample_annotations}
\alias{get_mut_sample_annotations}
\title{Load annotations for expression samples}
\usage{
get_mut_sample_annotations(
  sample_ann_table_path = "data/TCGA_VCFs_found_AA_changes.xlsx",
  check_gene_mutated,
  check_aa_change,
  sample_list_path = NULL,
  set_control_wo_any_genes_mut = FALSE,
  set_control_as_norms = FALSE
)
}
\arguments{
\item{sample_ann_table_path}{path to sample annotations table}

\item{check_gene_mutated}{HGNC gene name. If provided return annotation
for selected genes with either "Mutated" or "Control" values}

\item{sample_list_path}{optional. Path to \code{.txt} file containing a list of TCGA patient codes to subset from the expression matrix.}

\item{set_control_wo_any_genes_mut}{bool. Sets controls as samples without any mutations in \code{check_gene_mutated} AND without any mutations in other genes (EGFR, BRAF, *RAS)}

\item{set_control_as_norms}{bool. Sets controls as adjanced normal samples, that should be marked with "Norm_" prefix in sample annotation table}
}
\value{
a named vector, where values are mutations (AA changes) and names are TCGA case IDs
}
\description{
Load annotations for expression samples
}
