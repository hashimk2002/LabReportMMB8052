ensembl108 = useEnsembl(biomart="ensembl", version=108)
ensembl108 = useDataset("mmusculus_gene_ensembl", mart=ensembl108)
annotation2 = getBM(attributes=c('ensembl_gene_id', 'chromosome_name', 
                                'start_position', 'end_position', 
                                'strand', 'gene_biotype', 'external_gene_name', 
                                'description'), 
                   filters = 'ensembl_gene_id', values = filtered_resultsNvs2$ensembl_gene_id, 
                   mart = ensembl108)
annot_results2 = left_join(filtered_resultsNvs2, annotation)
annot_results2 = arrange(annot_results2, padj)

degs2 = filter(annot_results2, abs(log2FoldChange) > 1 & padj < 0.05)
Top20_2=slice_head(arrange(degs2, desc(abs(log2FoldChange))), n=20)
