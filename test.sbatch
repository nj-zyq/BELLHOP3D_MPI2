#!/bin/bash
#SBATCH -J test_MPI
#SBATCH -p kshctest
#SBATCH -t 20
#SBATCH --ntasks-per-node=32
#SBATCH -N 8

module purge
module load  compiler/intel/intel-compiler-2020.1.217 mpi/intelmpi/2020.1.217

make clean
make

cp ./Bellhop/bellhop3d.exe ./my/
cd ./my/

srun --mpi=pmi2 ./bellhop3d.exe wedge3dGaussian
