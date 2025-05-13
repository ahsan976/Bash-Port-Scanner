#! /bin/bash

figlet "SCANNER"
echo "Author:@RooTAnonymity"
echo "Target-Network: 192.168.1.0/24"
echo "----------------------------"

nmap -sT 192.168.1.0/24 -p 443,80,21,22,554,139,3306,53,25,3389,23 -oG MySQLscan
grep open MySQLscan > MySQLscan2
echo "Scan run at $(date)" > MySQLscan2
grep open MySQLscan >> MySQLscan2