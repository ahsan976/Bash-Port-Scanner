#!/bin/bash

# ========= CONFIG =========
NETWORK="192.168.1.0/24"
PORTS="443,80,21,22,554,139,3306,53,25,3389,23"
OUTDIR="./scan_results"
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
OUTFILE="$OUTDIR/scan_$TIMESTAMP.txt"
SUMMARY="$OUTDIR/summary_$TIMESTAMP.txt"
# ==========================

# âœ… Create output folder
mkdir -p "$OUTDIR"

# âœ… Show banner
if command -v figlet >/dev/null; then
    figlet "Port Scanner"
else
    echo "=========================================="
    echo "        ðŸ›¡ï¸Nmap Port Scanner        "
    echo "=========================================="
fi
echo "Network: $NETWORK"
echo "Scanning ports: $PORTS"
echo "Started at: $(date)"
echo "Output: $OUTFILE"
echo

# âœ… Start scan
echo "[*] Running Nmap TCP connect scan..."
nmap -sT "$NETWORK" -p "$PORTS" -oG "$OUTFILE"

# âœ… Filter and summarize open ports
echo "[*] Extracting open ports from scan..."
grep "open" "$OUTFILE" > "$SUMMARY"

# âœ… Display results
echo
echo "========== Scan Summary =========="
cat "$SUMMARY"
echo "=================================="
echo "Scan completed at: $(date)"
echo "Results saved in: $SUMMARY"

# âœ… ðŸ”” Alert if any open ports found
if grep -q "open" "$SUMMARY"; then
    echo -e "\a"   # Terminal beep
    echo "ðŸ”” ALERT: Open ports found!"

    # Optional: play sound file if installed
    if command -v paplay >/dev/null; then
        paplay /usr/share/sounds/freedesktop/stereo/complete.oga
    elif command -v aplay >/dev/null; then
        aplay /usr/share/sounds/alsa/Front_Center.wav
    elif command -v play >/dev/null; then
        play /usr/share/sounds/freedesktop/stereo/complete.oga
    fi
else
    echo "âœ… No open ports found. No alert triggered."
fi