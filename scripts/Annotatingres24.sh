ensembl108 = useEnsembl(biomart="ensembl", version=108)
ensembl108 = useDataset("mmusculus_gene_ensembl", mart=ensembl108)
annotation24 = getBM(attributes=c('ensembl_gene_id', 'chromosome_name', 
                                'start_position', 'end_position', 
                                'strand', 'gene_biotype', 'external_gene_name', 
                                'description'), 
                   filters = 'ensembl_gene_id', values = filtered_resultsNvs24$ensembl_gene_id, 
                   mart = ensembl108)
annot_results24 = left_join(filtered_resultsNvs24, annotation)
annot_results24 = arrange(annot_results24, padj)
degs24 = filter(annot_results24, abs(log2FoldChange) > 1 & padj < 0.05)
Top20_24=slice_head(arrange(annot_results24, desc(abs(log2FoldChange))), n=20)
