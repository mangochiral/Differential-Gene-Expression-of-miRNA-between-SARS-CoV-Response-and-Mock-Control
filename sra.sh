#!/bin/bash

sras_mock=(SRR22269883 SRR22269882 SRR22269881 SRR22269877 SRR22269876 SRR22269875)

for i in "${sras_mock[@]}"; do
    fasterq-dump "$i"
done
cd ..
cd sars_cov_2/
sras_sars=(SRR22269880 SRR22269879 SRR22269878 SRR22269874 SRR22269873 SRR22269872)

for i in "${sras_sars[@]}"; do
    fasterq-dump "$i" 
done

