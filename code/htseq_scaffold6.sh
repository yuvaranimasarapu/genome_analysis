#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 10:00:00
#SBATCH -J htseq_scaffold6
#SBATCH --mail-type=ALL
#SBATCH --mail-user Yuvarani.Masarapu.5991@student.uu.se

module load bioinfo-tools
module load samtools/1.9
module load htseq/0.9.1

htseq-count -f bam -r pos -t gene -i ID -s no \
/home/yuvarani/genomeanalysis/analysis/differential_expressions/tophat_scaf6_92_leaf.bam \
/home/yuvarani/genomeanalysis/analysis/differential_expressions/tophat_scaf6_93_root.bam \
/home/yuvarani/genomeanalysis/analysis/differential_expressions/tophat_scaf6_94_arild.bam \
/home/yuvarani/genomeanalysis/analysis/differential_expressions/tophat_scaf6_96_stem.bam \
/home/yuvarani/genomeanalysis/analysis/maker_output_try2/COPY_pilon_improved_assembly_scaf6.maker.output/pilon_improved_assembly_scaf6.gff3 \
> /home/yuvarani/genomeanalysis/analysis/differential_expressions/htseq_92939496_counts.out
