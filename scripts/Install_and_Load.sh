#Biomanager is a Bioconductor package which faciltates the downloading of the bioconductor packages needed for analysis#
install.packages('BiocManager')
library(BiocManager)
install(c('tximport', 'DESeq2', 'biomaRt', 'pheatmap'))
#tximport is a bioconductor package which will import the relevant transcript data and summarise it into a matrix for further gene level analysis#
library(tximport)
#DESeq2 is a bioconductor package which performs normalisation, dispersion estimation and determines the differential expression of genes#
library(DESeq2)
#biomaRt is a bioconductor package that enables the interfacing with public databases in this case its used for the ensembl gene ids#
library(biomaRt)
#pheatmap makes heatmaps#
library(pheatmap)
#tidyverse allows for table manipulation and the use of ggplot for graphs #
library(tidyverse)
