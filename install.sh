#!/bin/bash

#The job should run on the testing partition
#SBATCH -p testing

#The name of the job is test_job
#SBATCH -J install_job

#The job requires 1 compute node
#SBATCH -N 1

#The job requires 1 task per node
#SBATCH --ntasks-per-node=1

#The maximum walltime of the job is a half hour
#SBATCH -t 0-00:00:10

#These commands are run on one of the nodes allocated to the job (batch node)

module load python/3.6.3
module load gcc-7.1.0

python -m pip install spacy --user

python -m pip install https://github.com/explosion/spacy-models/releases/download/en_core_web_sm-2.1.0/en_core_web_sm-2.1.0.tar.gz --user