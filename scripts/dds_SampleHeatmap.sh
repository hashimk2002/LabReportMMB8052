rld = rlog(dds)
sample_distance = dist(t(assay(rld)), method='euclidian')
sample_distance_matrix = as.matrix(sample_distance)
heatmap_annotation = data.frame(group=colData(dds)[,c('Group')], row.names=rownames(sample_table))
mat_colors <- list(group = c(Naive="blue",Allo2h="black", Allo24h="yellow"))
colnames(sample_distance_matrix)=row.names(sample_table)
row.names(sample_distance_matrix)=row.names(sample_table)
pheatmap(sample_distance_matrix, color = mypalette,
         clustering_distance_rows=sample_distance,
         clustering_distance_cols=sample_distance,
         annotation_col = heatmap_annotation, annotation_colors = mat_colors)
