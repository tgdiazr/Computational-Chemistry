# XYZ to SIESTA Input Converter

This Python script uses the **ASE (Atomic Simulation Environment)** library to read molecular structures 
from `.xyz` files and convert them into SIESTA-compatible input format.

## Features

- Parses atomic coordinates and chemical species from an `.xyz` file.
- Automatically assigns numerical IDs to each unique chemical species.
- Outputs two key SIESTA input blocks:
  - `%block AtomicCoordinatesAndAtomicSpecies`
  - `%block ChemicalSpeciesLabel`
- Displays the total number of atoms and distinct species.

## Usage

Replace the file name `SiOH-Aptms-pep-F.xyz` in the script with the name of your own `.xyz` file.

Run the script using Python:

```bash
python convert_to_siesta.py

🧰 Requirements
Python 3.x

ASE library

Install ASE using pip:
pip install ase

🛠 Example Output

NumberOfAtoms 92
NumberOfSpecies 4

%block AtomicCoordinatesAndAtomicSpecies
0.000000 0.000000 0.000000 1
...
%endblock AtomicCoordinatesAndAtomicSpecies

%block ChemicalSpeciesLabel
1 14 Si
2 8 O
3 1 H
4 6 C
%endblock ChemicalSpeciesLabel
