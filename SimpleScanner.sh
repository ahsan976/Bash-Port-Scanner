#!/bin/bash

# Simple Bash Port Scanner

read -p "Enter target IP or domain: " target
read -p "Start port: " start_port
read -p "End port: " end_port

echo -e "\nScanning $target from port $start_port to $end_port...\n"

for ((port=$start_port; port<=$end_port; port++)); do
    nc -z -v -w 1 $target $port 2>&1 | grep -q "succeeded" && echo "[+] Port $port is OPEN"
done

echo -e "\nScan complete."
