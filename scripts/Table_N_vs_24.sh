#takes data from the deseq database with the aim of comparing Allo24h and Naive into a results table#
results_tableNvs24 = results(dds, contrast= c('Group', 'Allo24h', 'Naive'))
#This is converted into a tibble for further functionality as a data frame and rownames are set according to the gen ids#
results_tibbleNvs24 = as_tibble(results_tableNvs24, rownames='ensembl_gene_id')
#The filtered table is produced with the missing values managed by complete.cases and then extra categories added demonstrate the level of significance#
filtered_resultsNvs24 = filter(results_tibbleNvs24, complete.cases(results_tibbleNvs24))
filtered_resultsNvs24 = mutate(filtered_resultsNvs24, logPVal = -log10(padj))
filtered_resultsNvs24 = mutate(filtered_resultsNvs24, Significant = padj<0.05)
