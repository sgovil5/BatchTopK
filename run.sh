#!/bin/bash

#SBATCH -J wta                      # Job name
#SBATCH -N1 --gres=gpu:A100:1                # Number of nodes and GPUs requiredi
#SBATCH --mem-per-gpu=40G                    # Memory per gpu
#SBATCH -t1:00:00                            # Duration of the job (Ex: 15 mins)
#SBATCH -o results/wta.out          # Combined output and error messages file
#SBATCH --mail-type=BEGIN,END,FAIL           # Mail preferences
#SBATCH --mail-user=sgovil9@gatech.edu           # e-mail address for notifications

module load anaconda3
conda activate wta
python main.py