#!/bin/bash -l

#SBATCH -A g2019003
#SBATCH -p core
#SBATCH -n 6
#SBATCH -t 20:00:00
#SBATCH -J maker2_yuvarani
#SBATCH --mail-type=ALL
#SBATCH --mail-user Yuvarani.Masarapu.5991@student.uu.se

# Load modules
module load bioinfo-tools
module load maker/3.01.1-beta

#maker commands
#Training 2nd time

cd /home/yuvarani/genomeanalysis/analysis/maker_output

maker
