#!/bin/bash

touch INCAR

echo 'SYSTEM = XXX

ISTART =      1        (Job: 0-new  1-cont  2-samecut)
ICHARG =      1        (Read charge: 1-file 2-atom 10-const)

# Partial Charge Density
LPARD  = .TRUE.        (Activate decomposed charge density)
LSEPB  = .FALSE.        (Separately write PARCHG.nb by every band or not)
LSEPK  = .FALSE.        (Separately write PARCHG.nk by every kpoint or not)

# Method I: Partial Charge for the specified BANDS and KPOINTS
# IBAND  = 20 21 22 23   (Set this parameters manually)
# KPUSE  = 1 2 3 4       (Set this parameters manually)
 
# Method II: Partial Charge in the energy rang of [-10.3 -5.1]
# EINT = -10.3 -5.1    (Set this parameters manually)
 
# Method III: Partial Charge in the energy rang of [EF-1 -EF]
NBMOD=-3
EINT = -1  0            (Set this parameters manually)
' > INCAR