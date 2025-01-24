#A Heatmap table is generated with regularised logarithm values and the ensemble gene names and the more readable names to produce the heatmap#
HTMAP=assay(rld)[Top20_2$ensembl_gene_id,]
colnames(HTMAP)=row.names(sample_table)
row.names(HTMAP)=Top20_2$external_gene_name
#Establishes a colour blind friendly colour scheme for diverging data#
myDivergePal=brewer.pal(7,"BrBG")

#the program for 3 different heatmaps are described#
#Heatmap 1 is directly of the rld values which are all positive and as such require a sequential colour scheme#
pheatmap(HTMAP, color=mypalette, fontsize_row = 6,number_color = "black" ,annotation_col = heatmap_annotation,display_numbers = TRUE, annotation_colors = mat_colors, scale="none",annotation_legend = TRUE, main = "Regular Log Transformed Fold Change for the top 20 genes")
#Heatmap 2 has been scaled by row so is for within gene comparison across the samples, the scale performs a z transformation with z scores calculated against the mean of the rld values for the gene across all the samples, z scores can be negative and so requires a diverging colour scheme#
pheatmap(HTMAP, color=myDivergePal, fontsize_row = 6,number_color = "black" ,annotation_col = heatmap_annotation,display_numbers = TRUE, annotation_colors = mat_colors, scale="row",annotation_legend = TRUE, main = "Regular Log Transformed Fold Change for the top 20 genes")
#Heatmap 3 has been scaled by column so is for within sample comparison across different genes, the scale performs a z transformation with z scores calculated against the mean of all the rld values in a sample, again this requires a diverging colour scheme to compare which genes are most involved and how the proportion shifts#
pheatmap(HTMAP, color=myDivergePal, fontsize_row = 6,number_color = "black" ,annotation_col = heatmap_annotation,display_numbers = TRUE, annotation_colors = mat_colors, scale="column",annotation_legend = TRUE, main = "Regular Log Transformed Fold Change for the top 20 genes")
