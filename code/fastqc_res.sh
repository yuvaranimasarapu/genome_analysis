#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 00:55:00
#SBATCH -J fastqc_scaffold6
#SBATCH --mail-type=ALL
#SBATCH --mail-user Yuvarani.Masarapu.5991@student.uu.se

# Load modules
module load bioinfo-tools
module load FastQC/0.11.5

# My commands

for filename in /home/yuvarani/genomeanalysis/raw_data/RNAdata/trimmed/*.fastq.gz
    do
        fastqc $filename -o /home/yuvarani/genomeanalysis/analysis/fastqc_res/;
    done

for filename in /home/yuvarani/genomeanalysis/raw_data/RNAdata/RNA_scaffold*.fastq.gz
    do
        fastqc $filename -o /home/yuvarani/genomeanalysis/analysis/fastqc_res/;
    done

for filename in /home/yuvarani/genomeanalysis/raw_data/illumina/*.fastq.gz
    do
        fastqc $filename -o /home/yuvarani/genomeanalysis/analysis/fastqc_res/;
    done

for filename in /home/yuvarani/genomeanalysis/raw_data/pacbio/pacbio_scaffold6_rawdata.fq.gz
    do
        fastqc $filename -o /home/yuvarani/genomeanalysis/analysis/fastqc_res/;
    done
