#Read_csv pulls the table of samples# 
sample_table = read_csv('https://raw.githubusercontent.com/sjcockell/mmb8052/main/practicals/practical_08/data/sample_table.csv')
#pull, is used to take the data from the sample table needed for identifying the correct files fromm the zip with the count data#
files = pull(sample_table, Run)
#paste0 is to complete the construction of the file directory location for each sample's quant file contained withtin the zip, the .. is specific to the download location of my computer#
files = paste0('../counts/', files, '/quant.sf')
names(files) = pull(sample_table, Run)
