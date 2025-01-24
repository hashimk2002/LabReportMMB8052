# LabReportMMB8052
Repo for Lab report detailing the transcriptomics workflow
# Author
MRes Bioinformatics student 24/25
# Process

  # Install_and_Load.sh
  Installs and loads the necessary software for analysis

  # Sample_table_file.sh
  Obtains the sample table file with SOFT formatting for relevant metadata 

  # Gene_Map_Download
  Obtains the Gene_Mapping data from the internet

  # Combined_Data_Matrix.sh
  Uses tximport to combine the gene map, sample table and the quantification data into a single matrix

  # DDS.sh
  Uses DESeq program to form a deseq database from txi, then normalise the data for comparison and calculate dispersion estimates and wald significance for interpretation.
  Also contains the plotting of dispersion estimates against mean estimates.

  # dds_PCA.sh
  Performs a regular logarithm transformation on the data to account for variation in gene count and uses the result to plot a principal component analysis graph to identify outliers.

  # dds_SampleHeatmap.sh
  Performs the same regular logarithm transformation on the data to account for variation from gene count and produces a matrix of euclidean distan between the samples rld values. This matrix is then used to form a heatmap.

  # Table_N_vs_24.sh and Table_N_vs_2h.sh
  Two scripts which produced tables of fold changes filtering null values to produce useful visualisation for their respective comparisons.

  # VolcanoPlotN_vs_2.sh and VolcanoPlotN_vs_24.sh
  These two scripts use ggplot to plot the fold change values of the values in the above filtered results tables which are modified to include lines and colour to differentiate between upregulation, downregulation and significance.

  # Annotatingres2.sh and Annotatingres24.sh
  These two scripts annotate the results table using the biomart function to access the ensembl108 gene data base, it then filters the results for fold change and significance to find the differentially expressed genes (degs).

  # Heatmap_Allo2.sh and Heatmap_Allo24.sh
  These two scripts produce heatmaps for comparing the regularised log transformed data between Naivs vs Allo2 and Naive vs Allo24. They select the 20 genes with the greatest absolut fold change in each comparison and compare their absolute values as well as have heatmaps for within gene comparisons and within sample comparisons. Within sample comparisons are not shown in the report.

  # Install_Organism_data.sh 
   Installs the clusterprofiler and organism database needed for annotation in the gene ontology analysis. 
   
  # BiologicalAnalysisAllo2.sh and BiologicalAnalysisAllo24.sh
  These two scripts take the above annotations and link them to the existing results, gene ontology analysis is then performed using enrich go which then produces dot plots depicting the gene ratio per GO term, the count and their significance


# Data
The zip file with the count data as well as the SOFT file format have been obtained for the Gene expression omnibus under the tag GSE116583.
Gene map data was obtained from the ensembl gene database as given in the practical.
Annotation data came from two sources, initially the ensembl108 gene database and then organism data for gene ontology was obtained using the Bioconductor annotation package 0rg.MM.eg.db(Release 3.20) for Mouse based on Entrez Gene Identifiers.

# Software
The majority of the packages downloaded come from Bioconductor version 3.20
pheatmap version used is 1.012

  
  
  
