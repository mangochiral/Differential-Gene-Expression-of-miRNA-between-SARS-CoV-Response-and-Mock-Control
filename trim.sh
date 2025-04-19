#!/bin/bash

mkdir -p result
#mkdir -p result/trimming
mkdir -p result/trimming_25_q_20

#for i in *.fastq;
#	do
#		trim_galore --phred33 -q 28  --illumina  --fastqc --three_prime_clip_R1 25  $i -o result/trimming
#	done

for i in *.fastq;
	do
		trim_galore --phred33 --illumina  --fastqc --three_prime_clip_R1 25 $i -o result/trimming_25_q_20
	done
cd ..


cd sars_cov_2/

mkdir -p result
#mkdir -p result/trimming
mkdir -p result/trimming_25_q_20
#for i in *.fastq;
#	do
#		trim_galore --phred33 -q 28  --illumina  --fastqc --three_prime_clip_R1 25 $i -o result/trimming
#	done

for i in *.fastq;
	do
		trim_galore --phred33 --illumina  --fastqc --three_prime_clip_R1 25 $i -o result/trimming_25_q_20
	done
cd ..
