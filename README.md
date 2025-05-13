# 🔐 Bash Port Scanner

A collection of two port scanning tools written in pure Bash — one **advanced** with features like parallel scanning and service detection, and one **simple**, ideal for beginners.

---

## 🔍 Advanced Bash Port Scanner
A fast and parallelized Bash-based port scanner that:

- Scans a custom range of TCP ports

Perfect for quick reconnaissance and learning how Bash handles network tasks.

## 🧪 Simple Bash Port Scanner

A lightweight and beginner-friendly script that:

- Scans a port range using `nc` (Netcat).
- Prints out only open ports.
- Minimal and easy to understand — great for first-time learners.

---

## 🚀 How to Run These Two Files

Follow the steps below to run the tools correctly:

```bash
# Step 1: Clone the repository

sudo git clone https://github.com/rootanonymity/Bash-Port-Scanner.git

# Step 2: Navigate to the project directory

cd Bash-Port-Scanner
chmod +x AdvancedScanner.sh
chmod +x SimpleScanner.sh

⚠️ If you face an error like:
bad interpreter: /bin/bash^M: No such file or directory
It means the script has Windows line endings. You'll need to fix it using dos2unix.

🔧 Convert files to Unix format (Run these commands):
sudo apt install dos2unix   # Only if not already installed
sudo dos2unix SimpleScanner.sh
sudo dos2unix AdvancedScanner.sh

▶️ Now run the scanners:

./AdvancedScanner.sh
./SimpleScanner.sh

✅ Now your scripts will work without errors!
