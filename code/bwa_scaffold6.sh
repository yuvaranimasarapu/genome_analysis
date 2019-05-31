#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 5:00:00
#SBATCH -J bwa_mapping_scaffold6
#SBATCH --mail-type=ALL
#SBATCH --mail-user Yuvarani.Masarapu.5991@student.uu.se

#Load modules
module load bioinfo-tools
module load bwa/0.7.17

#My commands
bwa mem /home/yuvarani/genomeanalysis/pacbio/pacbio_results/pacbio_assembly_scaffold6_190423/pacbio_assembly_scaffold6_190423.contigs.fasta \
/home/yuvarani/genomeanalysis/illumina/illumina_scaffold61P_rd.fastq.gz /home/ylvjon/genomeanalysis/illumina/illumina_scaffold62P_rd.fastq.gz > /home/yuvarani/genomeanalysis/analysis/bwa_res.sam
