#!/bin/bash
#SBATCH --job-name=mergesort_seq
#SBATCH --output=results_mergesort_seq.txt
#SBATCH --time=01:00:00
#SBATCH --partition=Centaurus
#SBATCH --cpus-per-task=1
#SBATCH --mem=32G

for arraySize in 10000 100000 1000000 10000000 50000000 100000000 500000000;
do
echo "Running sequential mergesort with array size $arraySize"
  ./mergesort_seq $arraySize
done
