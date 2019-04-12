#!/bin/bash -l
#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 21:00:00
#SBATCH -J DNA_assembly_CANU_0405_22pm
#SBATCH --mail-type=ALL
#SBATCH --mail-user Yuvarani.Masarapu.5991@student.uu.se
# Load modules
module load bioinfo-tools
module load canu
# Your commands
canu \
 -p durian_pacbio_assembly_0405_44m_22pm -d /domus/h1/yuvarani/pacbio_results \
 genomeSize=27m \
 stopOnReadQuality=false \
 -pacbio-raw /domus/h1//domus/h1/yuvarani/pacbio_scaffold06.fq.gz
