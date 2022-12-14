% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/preprocessing.R
\name{calculate_roc_per_signature}
\alias{calculate_roc_per_signature}
\title{Calculate AUC ROC per each signature based on signature scores and return ROC curve chart}
\usage{
calculate_roc_per_signature(
  sample_names,
  is_mutated,
  signature_names,
  signature_scores,
  gene,
  aa_change = NULL
)
}
\arguments{
\item{sample_names}{a character vector, containing TCGA patient case id codes}

\item{is_mutated}{a character vector, containing either "Control" or "Mutated" values}

\item{signature_names}{a character vector, contatining signature names per each \code{sample_name}}

\item{signature_scores}{a numeric vector, containing PAL scores per each \code{sample_name} and \code{signature_names} pair}

\item{gene}{SYMBOL of analysed gene}
}
\value{
list of arranged ROC plots for each of pathways
}
\description{
Calculate AUC ROC per each signature based on signature scores and return ROC curve chart
}
