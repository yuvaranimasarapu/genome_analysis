#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 10:00:00
#SBATCH -J tophat_concat_align_scaffold6
#SBATCH --mail-type=ALL
#SBATCH --mail-user Yuvarani.Masarapu.5991@student.uu.se

#Load modules
module load bioinfo-tools
module load samtools
module load bowtie2
module load tophat

# My commands
tophat -o /home/yuvarani/genomeanalysis/analysis/tophat_outfiles/transass_6S66 -p 4 /home/yuvarani/genomeanalysis/analysis/genome_index_base/bowtie2onpilon /home/yuvarani/genomeanalysis/RNAdata/trimmed/trimmed_transcriptome_6S661.fastq.gz /home/yuvarani/genomeanalysis/RNAdata/trimmed/trimmed_transcriptome_6S662.fastq.gz

tophat -o /home/yuvarani/genomeanalysis/analysis/tophat_outfiles/transass_6S67 -p 4 /home/yuvarani/genomeanalysis/analysis/genome_index_base/bowtie2onpilon /home/yuvarani/genomeanalysis/RNAdata/trimmed/trimmed_transcriptome_6S671.fastq.gz /home/yuvarani/genomeanalysis/RNAdata/trimmed/trimmed_transcriptome_6S672.fastq.gz

tophat -o /home/yuvarani/genomeanalysis/analysis/tophat_outfiles/transass_6S69 -p 4 /home/yuvarani/genomeanalysis/analysis/genome_index_base/bowtie2onpilon /home/yuvarani/genomeanalysis/RNAdata/trimmed/trimmed_transcriptome_6S691.fastq.gz /home/yuvarani/genomeanalysis/RNAdata/trimmed/trimmed_transcriptome_6S692.fastq.gz

tophat -o /home/yuvarani/genomeanalysis/analysis/tophat_outfiles/transass_6S92 -p 4 /home/yuvarani/genomeanalysis/analysis/genome_index_base/bowtie2onpilon /home/yuvarani/genomeanalysis/RNAdata/trimmed/trimmed_transcriptome_6S921.fastq.gz /home/yuvarani/genomeanalysis/RNAdata/trimmed/trimmed_transcriptome_6S922.fastq.gz

tophat -o /home/yuvarani/genomeanalysis/analysis/tophat_outfiles/transass_6S93 -p 4 /home/yuvarani/genomeanalysis/analysis/genome_index_base/bowtie2onpilon /home/yuvarani/genomeanalysis/RNAdata/trimmed/trimmed_transcriptome_6S931.fastq.gz /home/yuvarani/genomeanalysis/RNAdata/trimmed/trimmed_transcriptome_6S932.fastq.gz

tophat -o /home/yuvarani/genomeanalysis/analysis/tophat_outfiles/transass_6S94 -p 4 /home/yuvarani/genomeanalysis/analysis/genome_index_base/bowtie2onpilon /home/yuvarani/genomeanalysis/RNAdata/trimmed/trimmed_transcriptome_6S941.fastq.gz /home/yuvarani/genomeanalysis/RNAdata/trimmed/trimmed_transcriptome_6S942.fastq.gz

tophat -o /home/yuvarani/genomeanalysis/analysis/tophat_outfiles/transass_6S96 -p 4 /home/yuvarani/genomeanalysis/analysis/genome_index_base/bowtie2onpilon /home/yuvarani/genomeanalysis/RNAdata/trimmed/trimmed_transcriptome_6S961.fastq.gz /home/yuvarani/genomeanalysis/RNAdata/trimmed/trimmed_transcriptome_6S962.fastq.gz

tophat -o /home/yuvarani/genomeanalysis/analysis/tophat_outfiles/transass_6S97 -p 4 /home/yuvarani/genomeanalysis/analysis/genome_index_base/bowtie2onpilon /home/yuvarani/genomeanalysis/RNAdata/trimmed/trimmed_transcriptome_6S971.fastq.gz /home/yuvarani/genomeanalysis/RNAdata/trimmed/trimmed_transcriptome_6S972.fastq.gz
