significant_results2 = filter(filtered_resultsNvs2, abs(log2FoldChange) > 1 & padj < 0.05)
significant_genes2 = pull(significant_results2, ensembl_gene_id)
universe_genes2 = pull(filtered_results2, ensembl_gene_id)
ego = enrichGO(gene=significant_genes2,
               universe=universe_genes2,
               OrgDb = org.Mm.eg.db,
               keyType = 'ENSEMBL',
               ont = "BP",
               pAdjustMethod = "BH",
               pvalueCutoff = 0.01,
               qvalueCutoff = 0.05,
               readable = TRUE)
dotplot(ego)
