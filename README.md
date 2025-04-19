# Differential Gene expression in miRNA 
Tools used


Data Dump
1. sra-toolkits version 3.1.1

``` chmod +x sra.sh```

``` ./sra.sh```

QC

2. fastqc  version 0.12.1

```chmod +x qc.sh ```

``` ./qc.sh ```

3. trim-galore  version 0.6.10

```chmod +x trim.sh ```

```./trim.sh ```

Alignment-Alignment was done with hg38_tran

4. hisat2 version 2.2.1

```chmod +x align.sh ```

``` ./align.sh ```

5. samtools version 1.17


```chmod +x sam_bam.sh ```

```./sam_bam.sh ```

Counts matrix - was done using Homo_sapiens.GRCh38.113.gtf

6. featureCounts version 2.0.6 

```chmod +x count_matrix.sh ```

```./count_matrix.sh```

Differential Gene expression
1. DESeq2
2. clusterProfiler
3. org.Hs.eg.db


# DESeq2 Analysis Report
## Overview
This report analyzes differential gene expression data comparing SARS-CoV-2 infected samples with mock controls across different time points (24h and 72h).


# DESeq2 Analysis Report: Extended Analysis

## Statistical Summary
### SARS-CoV-2 vs Mock Comparison
- Total genes analyzed: 856
- Significant DEGs (padj < 0.05): 61
  - Upregulated: 12
  - Downregulated: 48
  - Direction ratio (Up/Down): 0.25

### Time Effect (72h vs 24h)
- Total genes analyzed: 856
- Significant DEGs (padj < 0.05): 41
  - Upregulated: 27
  - Downregulated: 13
  - Direction ratio (Up/Down): 2.08

## Key Differential Expression Findings

### SARS-CoV-2 Response
#### Most Significantly Upregulated Genes:
1. RN7SL634P (log2FC = 3.51, padj = 5.44e-08)
2. RN7SL146P (log2FC = 3.31, padj = 2.70e-04)
3. RN7SL3 (log2FC = 3.15, padj = 1.81e-03)

#### Most Significantly Downregulated Genes:
1. SNORD37 (log2FC = -3.66, padj = 3.13e-07)
2. GAS5 (log2FC = -3.22, padj = 4.98e-07)
3. SNORD100 (log2FC = -3.30, padj = 1.25e-06)

### Time-Dependent Changes
#### Notable Changes from 24h to 72h:
1. ERBB2 (log2FC = -3.75, padj = 6.35e-22)
2. TOP2A (log2FC = -3.45, padj = 1.02e-11)
3. MIR7974 (log2FC = -2.39, padj = 2.58e-05)

### SARS-CoV-2 vs Mock Comparison
Key genes showing significant differential expression include:
- RN7SL634P
- SNORD37
- GAS5
- SNORD100
- SNORD124
- SNORD105B
- MIR1246
- RNA5SP486

### Time Effect (72h vs 24h) Analysis
Notable differentially expressed genes include:
- ERBB2 (HER2)
- TOP2A
- MIR7974
- SHF
- SNORD89
- LINC01012
- RN7SL3
- SNORD7


## Diagnostic Plot Analysis

### PCA Plot Interpretation
1. **Clear Separation of Conditions**:
   - PC1 (39% variance) shows strong separation between SARS-CoV-2 and Mock samples
   - PC2 (13% variance) separates the time points
   - Total explained variance by top 2 PCs: 52%

2. **Sample Clustering**:
   - Four distinct clusters corresponding to treatment-time combinations
   - Consistent grouping within conditions suggesting good experimental control
   - Larger separation in SARS-CoV-2 samples between timepoints compared to Mock

### MA Plots Analysis

1. **SARS-CoV-2 vs Mock**:
   - Symmetrical distribution of fold changes
   - More downregulated genes than upregulated
   - Clear separation of significant genes (red points)
   - Key regulated genes labeled (e.g., RN7SL634P, SNORD37)

2. **Time Effect**:
   - More balanced distribution of up/down regulation
   - Notable temporal regulation of ERBB2 and TOP2A
   - Generally smaller fold changes compared to treatment effect

## Pathway Analysis Insights

### Significantly Enriched Processes
1. RNA Processing:
   - Formation of SL/U4/U5/U6 snRNP complex
   - mRNA trans splicing pathways
   - Spliceosomal assembly

### Gene Categories Affected

1. **Non-coding RNA Regulation**:
   - Multiple SNORD family members
   - Several MicroRNA genes
   - RN7SL family members

2. **Cell Growth and Proliferation**:
   - ERBB2/HER2 pathway
   - TOP2A regulation
   - Cell cycle-related genes

## Technical Quality Assessment
- Good separation of experimental groups in PCA
- Expected MA plot distributions
- Reasonable number of significant DEGs
- Clear biological signal in pathway analysis
- Strong temporal effects indicating dynamic response

## Recommendations for Follow-up Studies
1. Validate key non-coding RNA changes with RT-qPCR
2. Investigate ERBB2 pathway modulation as potential therapeutic target
3. Examine the role of splicing regulation in viral response
4. Consider longer time points to track recovery phase

## Limitations and Considerations
- Limited to two time points
- Complex interaction between time and treatment effects
- High proportion of non-coding RNA regulation
- Potential confounding from cell culture effects
