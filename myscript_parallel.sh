#!/bin/bash
#SBATCH --job-name=mergesort_par
#SBATCH --output=results_mergesort_par.txt
#SBATCH --time=01:00:00
#SBATCH --partition=Centaurus
#SBATCH --cpus-per-task=4
#SBATCH --mem=32G

for arraySize in 10000 100000 1000000 10000000 50000000 100000000 500000000;
do
echo "Running parallel mergesort with array size $arraySize"
  ./mergesort_par $arraySize
done
