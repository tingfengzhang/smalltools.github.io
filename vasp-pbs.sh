#!/bin/bash

touch vasp.pbs

echo '#!/bin/bash -x

#PBS -N mpi
#PBS -l nodes=2:ppn=24
#PBS -o mpi.log
#PBS -e mpi.err
#PBS -q batch
#define variables
echo $PBS_O_WORKDIR
NCPUS=`wc -l $PBS_NODEFILE | awk '{print $1}'`
echo $NCPUS
#Run your executable
#echo starting
#date
cd $PBS_O_WORKDIR

PAR="-np $NCPUS -machinefile $PBS_NODEFILE"
VASP=/public/sourcecode/apps/VASP/vasp.6.1.0-varsoc-varopt-wanner90_1.2/bin/vasp_std
logfile=runlog

run="mpirun $PAR $VASP"
$run >runlog
' > vasp.pbs