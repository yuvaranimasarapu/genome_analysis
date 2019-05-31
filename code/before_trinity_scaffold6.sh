#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 2:00:00
#SBATCH -J trinity_before_scaffold6
#SBATCH --mail-type=ALL
#SBATCH --mail-user Yuvarani.Masarapu.5991@student.uu.se

#Load modules
module load bioinfo-tools
module load samtools

samtools merge /home/yuvarani/genomeanalysis/analysis/tophat_acceptedhits/tophat_merged_4tissues.bam \
/home/yuvarani/genomeanalysis/analysis/tophat_outfiles/transass_6S92/accepted_hits.bam \
/home/yuvarani/genomeanalysis/analysis/tophat_outfiles/transass_6S93/accepted_hits.bam \
/home/yuvarani/genomeanalysis/analysis/tophat_outfiles/transass_6S94/accepted_hits.bam \
/home/yuvarani/genomeanalysis/analysis/tophat_outfiles/transass_6S96/accepted_hits.bam \

samtools sort /home/yuvarani/genomeanalysis/analysis/tophat_acceptedhits/tophat_merged_4tissues.bam -o /home/yuvarani/genomeanalysis/analysis/tophat_sorted/tophat_4tissues_sorted.bam
