from ase.io import read

# Cambia "estructura.xyz" por el nombre de tu archivo
atoms = read("SiOH-Aptms-pep-F.xyz")

symbols = atoms.get_chemical_symbols()
positions = atoms.get_positions()
unique_symbols = list(sorted(set(symbols)))
symbol_map = {sym: i + 1 for i, sym in enumerate(unique_symbols)}

print("NumberOfAtoms", len(atoms))
print("NumberOfSpecies", len(unique_symbols))

print("\n%block AtomicCoordinatesAndAtomicSpecies")
for pos, sym in zip(positions, symbols):
    species_id = symbol_map[sym]
    print(f"{pos[0]:.6f} {pos[1]:.6f} {pos[2]:.6f} {species_id}")
print("%endblock AtomicCoordinatesAndAtomicSpecies")

print("\n%block ChemicalSpeciesLabel")
for i, sym in enumerate(unique_symbols):
    atomic_number = atoms[symbols.index(sym)].number
    print(f"{i + 1} {atomic_number} {sym}")
print("%endblock ChemicalSpeciesLabel")

