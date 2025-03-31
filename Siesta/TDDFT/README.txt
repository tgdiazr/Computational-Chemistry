Optical Absorbance Calculation

Overview

This repository contains scripts and inputs for calculating the absorbance of materials using SIESTA. The workflow includes input preparation, execution of optical calculations, and visualization of results.

Inputs

*.fdf (input file for SIESTA calculations)

*.psf (pseudopotentials file)

Submission script (for running on a cluster if needed)

Outputs

*.EPSIMG (Intermediate result file)

absorp_coef.out (Final absorption coefficient output)

Optical Calculation Workflow

Prepare the input file (*.fdf) with appropriate system settings.

Run the SIESTA simulation to obtain the electronic structure.

Execute the optical calculation:

./optical < SiH-O-Aptms1.EPSIMG

Extract absorption data from absorp_coef.out.

Plot results using gnuplot:
