install.packages(c("tidyverse", "ggpubr", "openxlsx"))

if (!require("BiocManager", quietly = TRUE))
  install.packages("BiocManager")  
BiocManager::install(version = "3.20")

BiocManager::install(c("GEOquery", "TCGAbiolinks", "DESeq2", "airway"))

library(tidyverse) 
library(GEOquery) 
library(ggpubr) 
library(openxlsx) 

res <- getGEO(GEO = "GSE21942", GSEMatrix = T)
metadata <- pData(phenoData(res[[1]]))

