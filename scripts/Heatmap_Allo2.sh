HTMAP=assay(rld)[Top20_2$ensembl_gene_id,]
colnames(HTMAP)=row.names(sample_table)
row.names(HTMAP)=Top20_2$external_gene_name
myDivergePal=brewer.pal(7,"BrBG")
pheatmap(HTMAP, color=mypalette, fontsize_row = 6,number_color = "black" ,annotation_col = heatmap_annotation,display_numbers = TRUE, annotation_colors = mat_colors, scale="none",annotation_legend = TRUE, main = "Regular Log Transformed Fold Change for the top 20 genes")
pheatmap(HTMAP, color=myDivergePal, fontsize_row = 6,number_color = "black" ,annotation_col = heatmap_annotation,display_numbers = TRUE, annotation_colors = mat_colors, scale="row",annotation_legend = TRUE, main = "Regular Log Transformed Fold Change for the top 20 genes")
pheatmap(HTMAP, color=myDivergePal, fontsize_row = 6,number_color = "black" ,annotation_col = heatmap_annotation,display_numbers = TRUE, annotation_colors = mat_colors, scale="column",annotation_legend = TRUE, main = "Regular Log Transformed Fold Change for the top 20 genes")
