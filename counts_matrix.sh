#!/bin/bash

# Create the output directory
mkdir -p result/counts_matrix_25_q_20

# Set the path to the GTF file
GTF_FILE="/N/slate/chmodak/mirna_analysis/mock/Homo_sapiens.GRCh38.113.gtf"

# Loop over each BAM file in the directory
for i in /N/slate/chmodak/mirna_analysis/mock/result/sam_bam_25_q_20/*_trimmed_sort.bam; 
do
    # Get the base name of the BAM file without the .bam extension
    base=$(basename "$i" .bam)
	featureCounts -a "$GTF_FILE" -o result/counts_matrix_25_q_20/${base}_counts.txt "$i"
done


cd ../sars_cov_2/

mkdir -p result/counts_matrix_25_q_20

for i in /N/slate/chmodak/mirna_analysis/sars_cov_2/result/sam_bam_25_q_20/*_trimmed_sort.bam; 
do
    # Get the base name of the BAM file without the .bam extension
    base=$(basename "$i" .bam)
    
    # Run htseq-count and save the output in the result/counts_matrix directory
    featureCounts -a "$GTF_FILE" -o result/counts_matrix_25_q_20/${base}_counts.txt "$i"
done
