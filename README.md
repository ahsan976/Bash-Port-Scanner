🔍 Advanced Bash Port Scanner
A fast and parallelized Bash-based port scanner that scans a range of TCP ports, detects open ports with service names, and alerts with a bell sound when an open port is found. Built using Bash and timeout, perfect for quick reconnaissance.

🧪 Simple Bash Port Scanner
A lightweight Bash script that scans a specified port range using Netcat (nc). Easy to use and perfect for beginners learning about basic port scanning and network services.

Give it execute permission two both files:
chmod +x AdvancedScanner.sh

chmod +x SimpleScanner.sh

two both files

look i have done something wrong so if the file does not run or gives error you have to converte this files by using this command for both two files

sudo apt install dos2unix  # if not already installed
sudo dos2unix SimpleScanner.sh
sudo dos2unix AdvacedScanner.sh

Then try running it again:

./AdvancedScanner.sh
./SimpleScanner.sh

now your script will work.
