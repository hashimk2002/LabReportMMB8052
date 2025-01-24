#performs regularised logarithm transform on the Deseq data set to generate homoskedascity, this same function is at the start of the sample distance heatmap script so doesn't need to be run twice#
rld = rlog(dds)
#takes the euclidean distance between each sample and forms a matrix#
sample_distance = dist(t(assay(rld)), method='euclidian')
sample_distance_matrix = as.matrix(sample_distance)
#forms the legend of the heatmap and to demonstrate which samples belong to which group i.e. Naive, Allo2h, Allo24h and mat colours derives the colour scheme for the legend#
heatmap_annotation = data.frame(group=colData(dds)[,c('Group')], row.names=rownames(sample_table))
mat_colors <- list(group = c(Naive="blue",Allo2h="black", Allo24h="yellow"))
#col names and row.names confirm the axes of the table labels#
colnames(sample_distance_matrix)=row.names(sample_table)
row.names(sample_distance_matrix)=row.names(sample_table)
#pheatmap generates the heatmap with clustering analysis which produces dendrograms demonstrating similarity between samples#
pheatmap(sample_distance_matrix, color = mypalette,
         clustering_distance_rows=sample_distance,
         clustering_distance_cols=sample_distance,
         annotation_col = heatmap_annotation, annotation_colors = mat_colors)
