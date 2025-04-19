#!/bin/bash

mkdir -p result
mkdir -p result/fastqc

for i in *.fastq;
	do
		fastqc $i -o result/fastqc
	done
cd ..
cd sars_cov_2/

mkdir -p result
mkdir -p result/fastqc

for i in *.fastq;
	do
		fastqc $i -o result/fastqc
	done



