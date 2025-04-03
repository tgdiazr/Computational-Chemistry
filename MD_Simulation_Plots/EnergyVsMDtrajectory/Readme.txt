
*Description
This script visualizes the total energy of a molecular dynamics simulation over time by reading .dat files, processing the data, and creating smooth plots using cubic spline interpolation. It is designed to be run in a Google Colab environment.

*Features
Google Drive Integration:
The script mounts Google Drive to access simulation data stored in the /content/drive/My Drive/Results-MD/New directory.

Data Handling:
It loads .dat files, skips header lines, and handles missing or invalid data by replacing them with NaN values.

Data Processing:
The script removes duplicate time values, extracts unique time and energy values, and applies cubic spline interpolation to create a smooth curve.

Plot Customization:
The plot includes:

Customized labels and axis settings.

Horizontal and vertical lines for reference (e.g., y = 0 and x = 0).

A fill between the smooth curve and the baseline for visual clarity.

Multiple File Handling:
It loops through all .dat files in the specified directory, plotting data from each one with a unique label based on the file name.

*File Download:
The resulting plot is saved as plot.png and is available for download directly from Google Colab.

*Interactive Visualization:
The plot is displayed within the Colab notebook for further analysis or adjustments.

*Usage
Google Colab Setup:
The script uses google.colab.drive to mount Google Drive and access data files from your Drive.

*Data Input:
Place your .dat files in the directory Results-MD/New on your Google Drive.

*Plotting:
The script will read all .dat files, process the data, and plot smooth curves representing the total energy versus time.

*Download the Plot:
The figure is saved and can be downloaded as plot.png.

*Dependencies
numpy: For data manipulation and numerical operations.

matplotlib: For creating the plot.

scipy: For interpolation (cubic splines).

os: For file system operations.

google.colab.files: To enable file download from Colab.

*Example Output
The output is a plot displaying total energy (in eV) as a function of time (in femtoseconds), with data from multiple .dat files visualized as smooth curves. The plot is saved as plot.png for easy download.
