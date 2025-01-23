significant_results24 = filter(filtered_resultsNvs24, abs(log2FoldChange) > 1 & padj < 0.05)
significant_genes24 = pull(significant_results24, ensembl_gene_id)
 universe_genes24 = pull(filtered_results24, ensembl_gene_id)
ego = enrichGO(gene=significant_genes24,
               universe=universe_genes24,
               OrgDb = org.Mm.eg.db,
               keyType = 'ENSEMBL',
               ont = "BP",
               pAdjustMethod = "BH",
               pvalueCutoff = 0.01,
               qvalueCutoff = 0.05,
               readable = TRUE)
dotplot(ego)
