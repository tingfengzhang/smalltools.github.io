#!/bin/bash

touch INCAR

echo 'SYSTEM = XXX

# General Calculation
ISTART =  1            (Read existing wavefunction, if there)
ISPIN  =  1            (Non-Spin polarised DFT)
# ICHARG =  11         (Non-self-consistent: GGA/LDA band structures)
LREAL  = .FALSE.       (Projection operators: automatic)
ENCUT  =  500          (Cut-off energy for plane wave basis set, in eV)
PREC   =  Accurate     (Precision level: Normal or Accurate, set Accurate when perform structure lattice relaxation calculation)
LWAVE  = .TRUE.        (Write WAVECAR or not)
LCHARG = .TRUE.        (Write CHGCAR or not)
ADDGRID= .TRUE.        (Increase grid, helps GGA convergence)
# LVHAR  = .TRUE.      (ionic plus Hartree)
NCORE  =  12 


# Optimization Method
IALGO  = 58            (preconditioned conjugated gradient)
ALGO  = A
# IALGO  = 48          (Residual minimization method direct inversion in the iterative subspace)
# ALGO  = F

# Static Calculation
ISMEAR =  0            (insulators or big cell(0);for semiconductors or insulators(-5);metals(1 or 2))
SIGMA  =  0.05         (insulators or big cell for 0.03-0.05;metals for 0.2)
LORBIT =  11           (PAW radii for projected DOS)
NEDOS  =  2001         (DOSCAR points)
NELM   =  100          (Max electronic SCF steps)
EDIFF  =  1E-06        (SCF energy convergence, in eV)

# Spin-Orbit Coupling
# LSORBIT    = .TRUE.    (Activate SOC)
# ISYM       =  -1       (Switch symmetry off)

# DFT+U Calculation
# LDAU   = .TRUE.        (Activate DFT+U)
# LDATYPE=  2            (Dudarev, only U-J matters)
# LDAUL  =  2 -1         (Orbitals for each species)
# LDAUU  =  2  0         (U for each species)
# LDAUJ  =  0  0         (J for each species)
# LMAXMIX=  4            (Mixing cut-off, 4-d, 6-f)

# WANIER90 Calculation
# LWANNIER90 = .TRUE.    (Open VASP to WANNIER90)
' > INCAR