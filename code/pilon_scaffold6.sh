#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 00:50:00
#SBATCH -J pilon_improved_scaffold6
#SBATCH --mail-type=ALL
#SBATCH --mail-user Yuvarani.Masarapu.5991@student.uu.se

#Load modules
module load bioinfo-tools
module load Pilon/1.22

#My commands
pilon --genome /home/yuvarani/genomeanalysis/pacbio/pacbio_results/pacbio_assembly_scaffold6_190423/pacbio_assembly_scaffold6_190423.contigs.fasta --bam /home/yuvarani/genomeanalysis/analysis/bwa_pacill_assembly_scaf6.sorted.bam --output pilon_improved_scaffold6 --outdir /home/yuvarani/genomeanalysis/analysis --diploid --threads 4
