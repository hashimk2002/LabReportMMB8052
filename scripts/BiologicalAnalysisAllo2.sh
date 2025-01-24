#Takes the filtered results of the comparison between Nvs2 and only selects those with absolute log folg change greater than 1 into the significant results table#
significant_results2 = filter(filtered_resultsNvs2, abs(log2FoldChange) > 1 & padj < 0.05)
#A list of the significant genes is then produced from this#
significant_genes2 = pull(significant_results2, ensembl_gene_id)
#All the background genes needed for ontological analyis is then obtained from the filtered results#
universe_genes2 = pull(filtered_resultsNvs2, ensembl_gene_id)
#gene enrichment is performed and hypergeometric analysis to produce ego which matches genes to their GO term and calculates the significance of each GO term, in this case Biological Process(BP) has been specifically chosen over cellular characteristic and molecular function to focus on this tissue's overall response to transplant and reperfusion#
ego = enrichGO(gene=significant_genes2,
               universe=universe_genes2,
               OrgDb = org.Mm.eg.db,
               keyType = 'ENSEMBL',
               ont = "BP",
               pAdjustMethod = "BH",
               pvalueCutoff = 0.01,
               qvalueCutoff = 0.05,
               readable = TRUE)
#A dotplot which produces figure 6 details the gene ratio and count for each GO term as well as their significance#               
dotplot(ego)
