This project bridges data science and computational chemistry, focusing on the analysis of molecular dynamics (MD) simulations. By extracting, cleaning, and analyzing large datasets generated from MD simulations, this repository demonstrates how data-driven approaches can uncover critical insights about material behavior under thermal stress.

The core of this project revolves around the simulation of porous silica functionalized with APTMS using the ReaxFF force field. Molecular dynamics simulations were performed to capture the thermal response of the system, providing data on the structure, energy, and dynamics of the composite material.

Through data analytics techniques and Python scripting, the project automates the extraction of valuable simulation data, including total energy, temperature, and other key properties over time. By leveraging statistical analysis and visualization, the project enables in-depth exploration of thermal dynamics and material stability.

Key Features:
Data Extraction & Cleaning: Raw simulation data is processed to remove noise, handle missing values, and transform it into structured datasets for analysis.

Time Series Analysis: Using Python libraries like NumPy, Pandas, and SciPy, the simulation data (e.g., energy vs. temperature) is analyzed to detect trends and behavior patterns.

Data Visualization: Generated graphs and plots help visualize key trends, like the relationship between energy and temperature, enabling better interpretation of the system's behavior.

Automated Workflow: Scripts written in Python and Bash facilitate data collection, cleaning, and visualization, offering a streamlined approach for ongoing or future simulation analyses.

Insights into Material Behavior: The analysis explores structural and energetic properties of functionalized silica under various thermal conditions, providing insights into material stability and degradation pathways.

Technologies & Tools Used:
Molecular Dynamics: LAMMPS (Large-scale Atomic/Molecular Massively Parallel Simulator)

Data Science Tools: Python (NumPy, Pandas, Matplotlib, SciPy)

Data Visualization: Plotting graphs and analyzing trends with visual representation

Simulation Data Formats: .dat, .trj, .out, .lammpstrj, and others
