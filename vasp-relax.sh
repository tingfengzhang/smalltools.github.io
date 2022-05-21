#!/bin/bash

touch INCAR

echo 'SYSTEM = XXX

# General Calculation
ISTART =  0            (Read existing wavefunction, if there)
ICHARG =  2            (Non-self-consistent: GGA/LDA band structures)
LREAL  = .FALSE.       (Projection operators: automatic)
ENCUT  =  500          (Cut-off energy for plane wave basis set, in eV)
PREC   =  Normal     (Precision level: Normal or Accurate, set Accurate when perform structure lattice relaxation calculation)
LWAVE  = .FALSE.       (Write WAVECAR or not)
LCHARG = .FALSE.       (Write CHGCAR or not)
ADDGRID= .TRUE.        (Increase grid, helps GGA convergence)
NCORE  =  12 

# Optimization Method
IALGO  = 58            (preconditioned conjugated gradient)
ALGO  = A
# IALGO  = 48          (Residual minimization method direct inversion in the iterative subspace)
# ALGO  = F

# Electronic Relaxation
ISMEAR =  0            (Gaussian smearing, metals:1)
SIGMA  =  0.01         (Smearing value in eV, metals:0.2)
NELM   =  90           (Max electronic SCF steps)
NELMIN =  6            (Min electronic SCF steps)
EDIFF  =  1E-03        (SCF energy convergence, in eV)
# GGA  =  PS           (PBEsol exchange-correlation)

# Ionic Relaxation
NSW    =  500          (Max ionic steps)
IBRION =  1            (Algorithm: 0-MD, 1-Quasi-New, 2-CG)
ISIF   =  4            (Stress/relaxation: 2-Ions, 3-Shape/Ions/V, 4-Shape/Ions)
POTIM = 0.3            (the time step in molecular dynamics or the step width in ionic relaxations)
EDIFFG = -1E-1         (Ionic convergence, eV/AA)
' > INCAR