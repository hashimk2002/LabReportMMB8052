#txi Combines the gene-specific data i.e. abundance, count and length data found in the quant file and the location described in 'files' into a matrix with the gene mapping information
txi = tximport(files, 
               type='salmon',
               tx2gene=gene_map,
               ignoreTxVersion=TRUE)
