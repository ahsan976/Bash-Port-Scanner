#!/bin/bash

# Advanced Bash Port Scanner with Open Port Bell Alert

read -p "Enter target IP or domain: " target
read -p "Start Port: " start_port
read -p "End Port: " end_port
read -p "Timeout per port (seconds, e.g. 1): " timeout_duration

# Function to check a single port
scan_port() {
    local port=$1
    if timeout ${timeout_duration}s bash -c "echo >/dev/tcp/$target/$port" 2>/dev/null; then
        # Get service name using /etc/services
        service_name=$(getent services $port | awk '{print $1}' | cut -d'/' -f1)
        [[ -z "$service_name" ]] && service_name="Unknown"
        echo -e "\e[32m[+] Port $port is OPEN ($service_name)\e[0m \a"
    else
        echo -e "\e[90m[-] Port $port is closed\e[0m"
    fi
}

# Header
echo -e "\nStarting scan on $target from port $start_port to $end_port...\n"

# Scanning loop with parallel processing
for ((port=$start_port; port<=$end_port; port++)); do
    scan_port $port &
    sleep 0.02  # Small delay to prevent overwhelming the system
done

wait  # Wait for all background jobs to finish

echo -e "\nScan completed."
