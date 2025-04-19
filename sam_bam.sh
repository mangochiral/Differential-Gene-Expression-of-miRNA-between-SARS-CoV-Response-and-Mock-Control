#!/bin/bash

mkdir -p result/sam_bam_25_q_20

for i in /N/slate/chmodak/mirna_analysis/mock/result/align_25_q_20/*.sam; 
do
    name=$(basename "$i" .sam)
    base="result/sam_bam_25_q_20/${name}.bam"
    
    # Convert SAM to BAM
    samtools view -Sb "$i" > "$base"
    
    # Sort BAM
    sorted_bam="result/sam_bam_25_q_20/${name}_sort.bam"
    samtools sort -o "$sorted_bam" "$base"
    
    # Index BAM
    samtools index "$sorted_bam"
done


cd ../sars_cov_2/

mkdir -p result/sam_bam_25_q_20

for i in /N/slate/chmodak/mirna_analysis/sars_cov_2/result/align_25_q_20/*.sam;
do
    name=$(basename "$i" .sam)
    base="result/sam_bam_25_q_20/${name}.bam"
    
    # Convert SAM to BAM
    samtools view -Sb "$i" > "$base"
    
    # Sort BAM
    sorted_bam="result/sam_bam_25_q_20/${name}_sort.bam"
    samtools sort -o "$sorted_bam" "$base"
    
    # Index BAM
    samtools index "$sorted_bam"
done
