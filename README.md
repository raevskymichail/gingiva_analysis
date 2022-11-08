<h1 align="center">
  Molecular mechanisms implicated in myogenic differentiation of human alveolar mucosa derived cells
  <br>
</h1>

[![](https://img.shields.io/github/languages/code-size/raevskymichail/gingiva_analysis)](https://img.shields.io/github/languages/code-size/raevskymichail/gingiva_analysis)
[![](https://img.shields.io/github/languages/top/raevskymichail/gingiva_analysis)](https://img.shields.io/github/languages/top/raevskymichail/gingiva_analysis)
[![](https://img.shields.io/github/issues/raevskymichail/gingiva_analysis)](https://img.shields.io/github/issues/raevskymichail/gingiva_analysis)
[![](https://img.shields.io/github/license/raevskymichail/gingiva_analysis)](https://img.shields.io/github/license/raevskymichail/gingiva_analysis)

This repository contains primary source code for _"Molecular mechanisms implicated in myogenic differentiation of human alveolar mucosa derived cells"_ manuscript.

## Introduction

Different approaches of _skeletal muscle cell (SMC)_ regeneration originated from progenitor cells are extensively studied under the strategies of muscle tissue pathologies treatment. Recently it was discovered that anatomically localized _alveolar mucosa multipotent mesenchymal stromal cells (AMC)_ are characterized by myogenic potential and high feasibility for muscle tissue recovery and regeneration.

Although the resulting multinuclear myotubes are featured by expressing skeletal muscle specific markers (skeletal myosin, actin, myogenin and MyoD1) the exact molecular mechanism controlling differentiation of AMC in myogenic direction is still unclear and poorly scrutinized.

In this study we used combination of large-scale transcriptome analysis and bioinformatics approach to appreciate molecular pathways and crucial nodes responsible for myogenic differentiation.

Several leading pathways such as _TGF_-$\beta$, _MAPK_, and _RAS_ play the fundamental role in cell differentiation have been discovered. Among them, _TGF_-$\beta$, seems to be the most important in initiation and guiding progenitor activity. It was suggested that inhibition of focal adhesion kinases _PTK2_ and _PTK2B_ activity mediating negative regulation of integrin signaling and, in oppose, un-regulation of _FERMT2_ supporting cells adhesion via integrin signaling, may be key molecular events encompassing differentiation process and termination to multinuclear myotubes formation. In this study we tried reconstructing the chain of molecular events for deeper understanding of mechanisms underlying myogenic potency of AMC cells.

## 📝 Requirements

Main dependencies are:

- preprocessCore >= 1.50.0
- DESeq2 >= 1.38.0
- EnhancedVolcano >= 1.16.0
- ROCR >= 1.0.11
- biomaRt >= 2.44.4
- pacman >= 0.5.1

Other (minor) dependecies will be automatically installed if they are missing by `pacman` package within an execution of source scripts.

## 🚀 Quick start

Source scripts that can be used for a reproduction is located at `./scripts`.
Annotation of AMC and SMC biosamples as well supplementary data files used across analyses can be found at `./annotations` and `./data`

## 🆘 Help

Please feel free to contact Mikhail Raevskiy (raevskii.mm@phystech.edu) if you have any questions about the software.

## 📃 License

This project is [Apache 2.0](https://github.com/raevskymichail/CRNDE_glioblastoma/blob/main/LICENSE) licensed.
