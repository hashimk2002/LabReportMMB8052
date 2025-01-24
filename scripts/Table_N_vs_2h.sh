#takes data from the deseq database with the aim of comparing Allo2h and Naive into a results table#
results_tableNvs2 = results(dds, contrast= c('Group', 'Allo2h', 'Naive'))
#This is converted into a tibble for further functionality as a data frame and rownames are set according to the gen ids#
results_tibbleNvs2 = as_tibble(results_tableNvs2, rownames='ensembl_gene_id')
#The filtered table is produced with the missing values managed by complete.cases and then extra categories added demonstrate the level of significance#
filtered_resultsNvs2 = filter(results_tibbleNvs2, complete.cases(results_tibbleNvs2))
filtered_resultsNvs2 = mutate(filtered_resultsNvs2, logPVal = -log10(padj))
filtered_resultsNvs2 = mutate(filtered_resultsNvs2, Significant = padj<0.05)
