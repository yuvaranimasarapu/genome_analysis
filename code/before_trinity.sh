#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 07:00:00
#SBATCH -J before_trinity
#SBATCH --mail-type=ALL
#SBATCH --mail-user Yuvarani.Masarapu.5991@student.uu.se

# Load modules
module load bioinfo-tools
module load trinity/2.8.2
module load samtools


# Commands
for file in /home/yuvarani/genomeanalysis/analysis/tophat_acceptedhits/*
do
        output=$(basename $file)
        samtools sort $file/accepted_hits_*.bam -o /home/yuvarani/genomeanalysis/analysis/tophat_sorted/accepted_hits_sorted_$output.bam
done
