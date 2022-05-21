#!/bin/bash

# Energy band calculation

mkdir bands
cp INCAR PO* vasp.pbs WAVECAR CHG* bands/.
cd bands
echo -e '302' | vaspkit
cp KPATH.in KPOINTS
sed -i 's/# ICHARG =  11/ICHARG =  11/g' INCAR