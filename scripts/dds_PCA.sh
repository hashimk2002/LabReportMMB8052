#performs regularised logarithm transform on the Deseq data set to generate homoskedascity, this same function is at the start of the sample distance heatmap script so doesn't need to be run twice#
rld = rlog(dds)
#ann_colors sets the colors for color coding the groups in the PCA plot#
ann_colors = c(Naive="black", Allo2h="blue", Allo24h="yellow")
plotPCA(rld, intgroup='Group') + geom_point(size=1)+scale_colour_manual(values=ann_colors)
