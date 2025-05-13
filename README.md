# Bash-Port-Scanner
A simple and advanced Bash port scanner using Nmap. Includes TCP connect scans, logging, and sound alerts for open ports.
This project contains two custom Bash scripts for scanning ports on devices in a local network using Nmap.

## 🚀 Features

### ✅ Simple Scanner
- Scans selected ports across a local subnet
- Uses Nmap's TCP connect scan (`-sT`)
- Saves and filters open ports to a text file

### 🔧 Advanced Scanner
- Interactive banner and user-friendly output
- Logs results with timestamped filenames
- Plays an alert sound when open ports are detected
- Clean summary of results
- Automatically creates output directories

## 📦 Requirements

- Bash (default in Linux)
- Nmap
- (Optional for sound alerts): `paplay`, `aplay`, or `sox`

## 🔧 Usage

1. Make the script executable:
   ```bash
 chmod +x advanced_scanner.sh
