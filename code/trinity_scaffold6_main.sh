#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 08:00:00
#SBATCH -J trinity_scaffold6
#SBATCH --mail-type=ALL
#SBATCH --mail-user Yuvarani.Masarapu.5991@student.uu.se

# Load modules
module load bioinfo-tools
module load trinity

# My commands
Trinity --genome_guided_bam /home/yuvarani/genomeanalysis/analysis/tophat_sorted/tophat_4tissues_sorted.bam --max_memory 30G --genome_guided_max_intron 10000 --CPU 4 --output /home/yuvarani/genomeanalysis/analysis/trinity_right_output
