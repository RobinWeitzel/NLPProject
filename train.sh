#!/bin/bash

#The job should run on the testing partition
#SBATCH -p gpu
#SBATCH --gres=gpu:tesla:1

#The name of the job is test_job
#SBATCH -J train_job

#The job requires 1 compute node
#SBATCH -N 1

#The job requires 1 task per node
#SBATCH --ntasks-per-node=1

#The maximum walltime of the job is a half hour
#SBATCH -t 0-10:00:00

#Memory
#SBATCH --mem=32G 

#These commands are run on one of the nodes allocated to the job (batch node)

module load python/3.6.3
module load gcc-7.1.0

python -m allennlp.run train training_config/bidaf.jsonnet -s output -f