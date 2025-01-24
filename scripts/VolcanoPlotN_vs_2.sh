#Generates a new column in table 'FoldChange' to describe if the fold change is a significant upregulation, downregulation or unsignificant'
filtered_resultsNvs2=mutate(filtered_resultsNvs2,FoldChange="")
filtered_resultsNvs2$FoldChange[filtered_resultsNvs2$Significant==TRUE & filtered_resultsNvs2$log2FoldChange>0]="Significantly Positive"
filtered_resultsNvs2$FoldChange[filtered_resultsNvs2$Significant==TRUE & filtered_resultsNvs2$log2FoldChange<0]="Significantly Negative"
filtered_resultsNvs2$FoldChange[filtered_resultsNvs2$Significant==FALSE]="Unsignificant"

#Uses ggplot to plot the fold change values against the p values, with a y intercept at 0 to denote the different up and downregulation, and a vertical line at -log10(0.05) to mark those points with a pvalue less than 0.05, the Fold Change area is then made clear using the scale_colour manual colour scheme#
ggplot(filtered_resultsNvs2, aes(y=log2FoldChange, x=logPVal, color=FoldChange)) + 
  geom_point() +geom_hline(yintercept=0)+geom_vline(xintercept=-log10(0.05))+scale_colour_manual(values = c("black","blue","yellow"))
