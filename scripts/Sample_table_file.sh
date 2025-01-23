sample_table = read_csv('https://raw.githubusercontent.com/sjcockell/mmb8052/main/practicals/practical_08/data/sample_table.csv')
files = pull(sample_table, Run)
files = paste0('../counts/', files, '/quant.sf')
names(files) = pull(sample_table, Run)
