#!/bin/bash

#SBATCH --job-name=cnn_vgg_initial_150x150_DarthJarJar

#SBATCH --output=/home/bjuarez/%j.out
#SBATCH --error=/home/bjuarez/%j.err

#SBATCH -A CS156b

#SBATCH -t 20:00:00

#SBATCH --ntasks=1

#SBATCH --cpus-per-task=4

#SBATCH --mem=128G

#SBATCH --gres=gpu:1

#SBATCH --mail-user=bjuarez@caltech.edu

#SBATCH--mail-type=BEGIN
#SBATCH--mail-type=END
#SBATCH--mail-type=FAIL

module load cuda/10.2

source /home/bjuarez/venv/bin/activate

python /home/bjuarez/CS156b/scripts/cnn_vgg.py