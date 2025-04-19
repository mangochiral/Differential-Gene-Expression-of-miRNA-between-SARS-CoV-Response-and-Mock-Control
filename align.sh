#!/bin/bash

mkdir -p result/align_25_q_20

for i in /N/slate/chmodak/mirna_analysis/mock/result/trimming_25_q_20/*.fq;
do
    base=$(basename "$i" .fq)
    hisat2 -x /N/slate/chmodak/mirna_analysis/hg38_tran/genome_tran -U "$i" -S result/align_25_q_20/"$base".sam --summary-file result/align_25_q_20/"$base"_alignment_report.txt
done

cd ../sars_cov_2/

mkdir -p result/align_25_q_20

for i in /N/slate/chmodak/mirna_analysis/sars_cov_2/result/trimming_25_q_20/*.fq;
do
    base=$(basename "$i" .fq)
    hisat2 -x /N/slate/chmodak/mirna_analysis/hg38_tran/genome_tran -U "$i" -S result/align_25_q_20/"$base".sam --summary-file result/align_25_q_20/"$base"_alignment_report.txt
done

