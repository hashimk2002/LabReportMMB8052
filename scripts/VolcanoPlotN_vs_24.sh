filtered_resultsNvs24$FoldChange[filtered_resultsNvs24$Significant==TRUE & filtered_resultsNvs24$log2FoldChange>0]="Significantly Positive"
filtered_resultsNvs24$FoldChange[filtered_resultsNvs24$Significant==TRUE & filtered_resultsNvs24$log2FoldChange<0]="Significantly Negative"
filtered_resultsNvs24$FoldChange[filtered_resultsNvs24$Significant==FALSE]="Unsignificant"

ggplot(filtered_resultsNvs24, aes(y=log2FoldChange, x=logPVal, color=FoldChange)) + geom_point() +geom_hline(yintercept=0)+geom_vline(xintercept=-log10(0.05))+scale_colour_manual(values = c("black","blue","yellow"))
