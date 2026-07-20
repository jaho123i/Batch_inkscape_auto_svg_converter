# SVG to 128px PNG Batch Converter

A lightweight Windows Batch script that automates the conversion of multiple `.svg` files into `128x128px` `.png` images. 

The script uses Inkscape's command-line interface to process the files and integrates with PowerShell to calculate the exact scaling factor, ensuring the original aspect ratio is perfectly preserved.

## 🚀 Features
- **Batch Processing:** Converts all `.svg` files in the current directory automatically.
- **Smart Scaling:** Scales the image to fit a 128px bounding box without distorting proportions.
- **Auto-Directory:** Creates a dedicated `128p_pictures` output folder to keep your workspace clean.

## 📋 Prerequisites
To use this script, you need:
1. **Windows OS** (uses built-in Batch and PowerShell).
2. **Inkscape** installed and [added to your system PATH](https://inkscape.org/learn/faq/#how-add-inkscape-windows-path).

## 🛠️ Usage
1. Place the `.bat` script file in the same folder as your `.svg` images.
2. Double-click the script to run it (or run it via Command Prompt).
3. Wait for the processing to finish. The output files will be located in the newly created `128p_pictures` directory.

## 📄 License
This project is open-source and available under the [GNU v3.0 License](LICENSE).
