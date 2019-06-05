#!/bin/bash

#SBATCH -p gpu
#SBATCH --gres=gpu:tesla:1

#SBATCH -J train4_job

#SBATCH -N 1

#SBATCH --ntasks-per-node=1

#SBATCH -t 1-00:00:00

#SBATCH --mem=64G 

module load python/3.6.3
module load gcc-7.1.0

python -m allennlp.run train training_config/bidaf_elmo_dropout.jsonnet -s output_elmo_dropout -f