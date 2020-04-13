#!/bin/bash
#
# You should only work under the /scratch/users/<username> directory.
#
# Example job submission script
#
# -= Resources =-
#
#SBATCH --job-name=nqueens
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=32
#SBATCH --partition=short
#SBATCH --time=00:30:00
#SBATCH --output=part-a.out
#SBATCH --exclusive

################################################################################
##################### !!! DO NOT EDIT ABOVE THIS LINE !!! ######################
################################################################################
# Set stack size to unlimited
echo "Setting stack size to unlimited..."
ulimit -s unlimited
ulimit -l unlimited
ulimit -a
echo

echo "Running Job...!"
echo "==============================================================================="
echo "Running compiled binary..."


echo "SERIAL VERSION"
./serial


echo "------------------ PART A --------------------"
echo "------------ STRONG SCALING TEST -------------"


echo "parallel with 1 thread - compact"
export KMP_AFFINITY=granularity=fine,compact
export OMP_DYNAMIC=FALSE
export OMP_NUM_THREADS=1
./parallel_1

echo "parallel with 2 thread - compact"
export KMP_AFFINITY=granularity=fine,compact
export OMP_DYNAMIC=FALSE
export OMP_NUM_THREADS=2
./parallel_1

echo "parallel with 4 thread - compact"
export KMP_AFFINITY=granularity=fine,compact
export OMP_DYNAMIC=FALSE
export OMP_NUM_THREADS=4
./parallel_1

echo "parallel with 8 thread - compact"
export KMP_AFFINITY=granularity=fine,compact
export OMP_DYNAMIC=FALSE
export OMP_NUM_THREADS=8
./parallel_1

echo "parallel with 16 thread - compact"
export KMP_AFFINITY=granularity=fine,compact
export OMP_DYNAMIC=FALSE
export OMP_NUM_THREADS=16
./parallel_1

echo "parallel with 32 thread - compact"
export KMP_AFFINITY=granularity=fine,compact
export OMP_DYNAMIC=FALSE
export OMP_NUM_THREADS=32
./parallel_1

echo "--------------- THREAD BINDING TEST --------------"

echo "parallel with 1 thread - scatter"
export KMP_AFFINITY=granularity=fine,scatter
export OMP_DYNAMIC=FALSE
export OMP_NUM_THREADS=1
./parallel_1

echo "parallel with 2 thread - scatter"
export KMP_AFFINITY=granularity=fine,scatter
export OMP_DYNAMIC=FALSE
export OMP_NUM_THREADS=2
./parallel_1

echo "parallel with 4 thread - scatter"
export KMP_AFFINITY=granularity=fine,scatter
export OMP_DYNAMIC=FALSE
export OMP_NUM_THREADS=4
./parallel_1

echo "parallel with 8 thread - scatter"
export KMP_AFFINITY=granularity=fine,scatter
export OMP_DYNAMIC=FALSE
export OMP_NUM_THREADS=8
./parallel_1

echo "parallel with 16 thread - scatter"
export KMP_AFFINITY=granularity=fine,scatter
export OMP_DYNAMIC=FALSE
export OMP_NUM_THREADS=16
./parallel_1

echo "parallel with 32 thread - scatter"
export KMP_AFFINITY=granularity=fine,scatter
export OMP_DYNAMIC=FALSE
export OMP_NUM_THREADS=32
./parallel_1

echo "---------------- END OF PART A ----------------"

echo "------------------ PART B --------------------"
echo "------------ STRONG SCALING TEST -------------"


echo "parallel with 1 thread - compact"
export KMP_AFFINITY=granularity=fine,compact
export OMP_DYNAMIC=FALSE
export OMP_NUM_THREADS=1
./parallel_2

echo "parallel with 2 thread - compact"
export KMP_AFFINITY=granularity=fine,compact
export OMP_DYNAMIC=FALSE
export OMP_NUM_THREADS=2
./parallel_2

echo "parallel with 4 thread - compact"
export KMP_AFFINITY=granularity=fine,compact
export OMP_DYNAMIC=FALSE
export OMP_NUM_THREADS=4
./parallel_2

echo "parallel with 8 thread - compact"
export KMP_AFFINITY=granularity=fine,compact
export OMP_DYNAMIC=FALSE
export OMP_NUM_THREADS=8
./parallel_2

echo "parallel with 16 thread - compact"
export KMP_AFFINITY=granularity=fine,compact
export OMP_DYNAMIC=FALSE
export OMP_NUM_THREADS=16
./parallel_2

echo "parallel with 32 thread - compact"
export KMP_AFFINITY=granularity=fine,compact
export OMP_DYNAMIC=FALSE
export OMP_NUM_THREADS=32
./parallel_2

echo "--------------- THREAD BINDING TEST --------------"

echo "parallel with 1 thread - scatter"
export KMP_AFFINITY=granularity=fine,scatter
export OMP_DYNAMIC=FALSE
export OMP_NUM_THREADS=1
./parallel_2

echo "parallel with 2 thread - scatter"
export KMP_AFFINITY=granularity=fine,scatter
export OMP_DYNAMIC=FALSE
export OMP_NUM_THREADS=2
./parallel_2

echo "parallel with 4 thread - scatter"
export KMP_AFFINITY=granularity=fine,scatter
export OMP_DYNAMIC=FALSE
export OMP_NUM_THREADS=4
./parallel_2

echo "parallel with 8 thread - scatter"
export KMP_AFFINITY=granularity=fine,scatter
export OMP_DYNAMIC=FALSE
export OMP_NUM_THREADS=8
./parallel_2

echo "parallel with 16 thread - scatter"
export KMP_AFFINITY=granularity=fine,scatter
export OMP_DYNAMIC=FALSE
export OMP_NUM_THREADS=16
./parallel_2

echo "parallel with 32 thread - scatter"
export KMP_AFFINITY=granularity=fine,scatter
export OMP_DYNAMIC=FALSE
export OMP_NUM_THREADS=32
./parallel_2

echo "---------------- END OF PART B ----------------"

echo "------------------ PART C --------------------"
echo "------------ STRONG SCALING TEST -------------"


echo "parallel with 1 thread - compact"
export KMP_AFFINITY=granularity=fine,compact
export OMP_DYNAMIC=FALSE
export OMP_NUM_THREADS=1
./parallel_3

echo "parallel with 2 thread - compact"
export KMP_AFFINITY=granularity=fine,compact
export OMP_DYNAMIC=FALSE
export OMP_NUM_THREADS=2
./parallel_3

echo "parallel with 4 thread - compact"
export KMP_AFFINITY=granularity=fine,compact
export OMP_DYNAMIC=FALSE
export OMP_NUM_THREADS=4
./parallel_3

echo "parallel with 8 thread - compact"
export KMP_AFFINITY=granularity=fine,compact
export OMP_DYNAMIC=FALSE
export OMP_NUM_THREADS=8
./parallel_3

echo "parallel with 16 thread - compact"
export KMP_AFFINITY=granularity=fine,compact
export OMP_DYNAMIC=FALSE
export OMP_NUM_THREADS=16
./parallel_3

echo "parallel with 32 thread - compact"
export KMP_AFFINITY=granularity=fine,compact
export OMP_DYNAMIC=FALSE
export OMP_NUM_THREADS=32
./parallel_3

echo "--------------- THREAD BINDING TEST --------------"

echo "parallel with 1 thread - scatter"
export KMP_AFFINITY=granularity=fine,scatter
export OMP_DYNAMIC=FALSE
export OMP_NUM_THREADS=1
./parallel_3

echo "parallel with 2 thread - scatter"
export KMP_AFFINITY=granularity=fine,scatter
export OMP_DYNAMIC=FALSE
export OMP_NUM_THREADS=2
./parallel_3

echo "parallel with 4 thread - scatter"
export KMP_AFFINITY=granularity=fine,scatter
export OMP_DYNAMIC=FALSE
export OMP_NUM_THREADS=4
./parallel_3

echo "parallel with 8 thread - scatter"
export KMP_AFFINITY=granularity=fine,scatter
export OMP_DYNAMIC=FALSE
export OMP_NUM_THREADS=8
./parallel_3

echo "parallel with 16 thread - scatter"
export KMP_AFFINITY=granularity=fine,scatter
export OMP_DYNAMIC=FALSE
export OMP_NUM_THREADS=16
./parallel_3

echo "parallel with 32 thread - scatter"
export KMP_AFFINITY=granularity=fine,scatter
export OMP_DYNAMIC=FALSE
export OMP_NUM_THREADS=32
./parallel_3

echo "---------------- END OF PART C ----------------"

lscpu
