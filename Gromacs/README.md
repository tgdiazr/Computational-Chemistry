🧪 GROMACS Simulation Workflow for Biomolecular Systems
This project contains input files, example commands, and instructions for running a typical molecular dynamics (MD) simulation using GROMACS.

📁 File Overview
🔷 Input Files
File Name	Purpose
1AKI_clean.pdb	Original structure file (e.g., from PDB or your model)
1AKI_processed.gro	Output from pdb2gmx, input for further steps
1AKI_newbox.gro	Output from editconf, defines the simulation box
1AKI_solv.gro	Output from solvate, input for ion addition
1AKI_solv_ions.gro	System after ion addition, input for minimization
topol.top	System topology (auto-generated)
posre.itp	Position restraints (included in topology)
ions.mdp	Parameters for the ion neutralization step
minim.mdp	Parameters for energy minimization
run-example.sh	Shell script (optional) for automating steps

🔷 Output Files
File Name	Created By	Description
em.gro	mdrun	Final structure after energy minimization
em.edr	mdrun	Energy data from minimization
em.log	mdrun	Log from minimization run
em.trr	mdrun	Full-precision trajectory
confout.gro	mdrun	Final structure of a simulation
traj.trr	mdrun	Production run trajectory
ener.edr	mdrun	Energy data (used in analysis)
potential.xvg	gmx energy	Energy/time plot data
logs/	(user)	Recommended folder for organizing output

⚠️ Ignore files like #topol.top.1# — they are backups created by editors.

🚀 Example Workflow (Protein: 1AKI)
# Step 1: Generate topology
gmx pdb2gmx -f 1AKI_clean.pdb -o processed.gro -water spce

# Step 2: Define box
gmx editconf -f processed.gro -o newbox.gro -c -d 1.0 -bt cubic

# Step 3: Solvate
gmx solvate -cp newbox.gro -cs spc216.gro -o solv.gro -p topol.top

# Step 4: Add ions
gmx grompp -f ions.mdp -c solv.gro -p topol.top -o ions.tpr
gmx genion -s ions.tpr -o solv_ions.gro -p topol.top -pname NA -nname CL -neutral

# Step 5: Energy minimization
gmx grompp -f minim.mdp -c solv_ions.gro -p topol.top -o em.tpr
gmx mdrun -deffnm em

💧 Example: Water Box Test
For testing purposes with small molecules like water:

# Step 1: Prepare water structure
gmx pdb2gmx -f water.pdb -o processed.gro -water spce

# Step 2: Define simulation box
gmx editconf -f processed.gro -o newbox.gro -c -d 1.0 -bt cubic

# Step 3: Solvate the system
gmx solvate -cp newbox.gro -cs spc216.gro -o solv.gro -p topol.top

# Step 4: Add ions
gmx grompp -f minim.mdp -c solv.gro -p topol.top -o ions.tpr
gmx genion -s ions.tpr -o solv_ions.gro -p topol.top -pname NA -nname CL -neutral

# Step 5: Energy Minimization
gmx grompp -f minim.mdp -c solv_ions.gro -p topol.top -o em.tpr
gmx mdrun -deffnm em

📈 Visualizing & Analyzing Results
To visualize structures and trajectories:
vmd confout.gro
# or
py3dmol confout.gro
To extract energy data:
gmx energy -f ener.edr -o energy.xvg
