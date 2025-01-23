filtered_resultsNvs2=mutate(filtered_resultsNvs2,FoldChange="")
filtered_resultsNvs2$FoldChange[filtered_resultsNvs2$Significant==TRUE & filtered_resultsNvs2$log2FoldChange>0]="Significantly Positive"
filtered_resultsNvs2$FoldChange[filtered_resultsNvs2$Significant==TRUE & filtered_resultsNvs2$log2FoldChange<0]="Significantly Negative"
filtered_resultsNvs2$FoldChange[filtered_resultsNvs2$Significant==FALSE]="Unsignificant"


ggplot(filtered_resultsNvs2, aes(y=log2FoldChange, x=logPVal, color=FoldChange)) + 
  geom_point() +geom_hline(yintercept=0)+geom_vline(xintercept=-log10(0.05))+scale_colour_manual(values = c("black","blue","yellow"))
