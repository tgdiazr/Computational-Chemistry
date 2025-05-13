🧪 Theoretical Insights from Molecular Dynamics Simulations
This repository presents a comprehensive molecular dynamics (MD) study carried out with LAMMPS to understand the thermal and structural behavior of a porous silica matrix functionalized with APTMS and loaded with AST molecules. A custom ReaxFF reactive force field was developed using the ParAMS tool from SCM for this specific system.

🔬 Computational Methodology
🧱 System Preparation
Composite modeled: SiOH–APTMS–AST

Simulation cell dimensions: 10.99 × 6.44 × 60.44 Å

Atomic configuration relaxed using simulated annealing

MD engine: LAMMPS

🔥 Annealing Protocol
Temperature range: 303 K → 373 K, in 20 K increments

Total trajectory time: 115 fs

Cooling rate: 10.92 K/fs

Purpose: Analyze thermal stability, structural changes, and possible degradation

⚛️ Force Field Development
Force field type: ReaxFF

Developed using: ParAMS (SCM software)

Files: ffield.ff, param.qeq

Validated by comparing simulation outputs to experimental data

Designed specifically for the functionalized porous silica system

📁 Repository Contents
🔹 Input Files
File	Description
ffield.ff	Custom reactive force field
geom.data	Atomic coordinates for the system
param.qeq	Charge equilibration parameters
lmp_control	LAMMPS run control file
SiOH-Aptms-Ast.in	LAMMPS input script
someter	Bash job script for submitting the MD run to a supercomputer (HPC scheduler compatible)

🔸 Output Files
File	Description
SiOH-Aptms-Ast.out	LAMMPS main output
log.lammps	Thermodynamic data from the run
dump.lammpstrj	Atomic trajectories
pos.out	Atomic positions in XYZ format (for OVITO)
C_example.pot	Charge and potential data
C_example.trj	Additional trajectory data
log.cite	Auto-generated citation log

📊 Data Analytics & Visualization
📈 EnergyPlot.py (Python script)
This Python script (used in Google Colab) loads .dat files containing total energy vs time data from the simulation, processes them, and creates publication-quality plots using:

numpy, matplotlib, and scipy

Cubic spline interpolation

Duplicate and NaN handling

Saves and downloads a plot.png image

This script enabled thermal behavior analysis through visual comparison of energy profiles across temperature ramps.

You can find the scripts and plots in the MD_Simulation_Plots folder, which is included as a separate directory.

🧠 Project Highlights
Novel ReaxFF potential developed for APTMS-functionalized silica with AST

Integrated workflow: structure prep → MD → HPC job submission → analysis

Includes automated energy plotting script and trajectory visualization-ready outputs

HPC-enabled simulations using a Bash scheduler script (someter)
