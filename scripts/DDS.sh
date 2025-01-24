#DESeqDataset from TXImport creates a DEeq Data set(dds)which is designed for comparison based on Group i.e. Naive, Allo2h and Allo24h, from the txi matrix made by Combined_Data_matrix.sh# 
dds = DESeqDataSetFromTximport(txi, colData = sample_table, design = ~ Group)
#DESeq performs normalisation using oth median of ratios and per-gene average transcript length as well as dispersion estimation#
dds=DESeq(dds)
#plotDispEsts, plots the dispersion estimates displaying max likelihood, fitted line and shrinkage estimation as described in figure 1#
plotDispEsts(dds)
