
# install packages

install.packages("devtools")
library(devtools)

# install bioconductor

install.packages("BiocManager")
library(BiocManager)

if (!require("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

BiocManager::install("TCGAbiolinks")
library(TCGAbiolinks)

TCGAbiolinks:::getProjectSummary("TCGA-LIHC")

query_TCGA = GDCquery(
  project = "TCGA-LIHC",
  data.category = "Transcriptome Profiling", # parameter enforced by GDCquery
  experimental.strategy = "RNA-Seq",
  workflow.type = "HTSeq - Counts")
