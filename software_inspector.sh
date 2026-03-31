#!/bin/bash 
# Script 2: FOSS Package Inspector 
# Author: Arpita | Software: Python3

# Define the package we want to audit
PACKAGE="python3"   

echo "========================================"
echo "      FOSS PACKAGE INSPECTOR"
echo "========================================"

# Check if package is installed (Using dpkg for Ubuntu/WSL)
if dpkg -l $PACKAGE &>/dev/null; then 
    echo "[STATUS]: $PACKAGE is installed." 
    echo "----------------------------------------"
    # Pulling specific details: Version and Summary
    apt-cache show $PACKAGE | grep -E 'Version|Description' | head -n 2
else 
    echo "[STATUS]: $PACKAGE is NOT installed." 
    echo "Note: You might need to run 'sudo apt install $PACKAGE'"
fi 

echo "----------------------------------------"
echo "PHILOSOPHY NOTE:"

# Case statement to print a description based on the name
case $PACKAGE in 
    python3)
        echo "Python: Built for 'programmer happiness' and clean, readable code." ;; 
    httpd|apache2)  
        echo "Apache: The open-source server that basically built the internet." ;; 
    mysql|mariadb-server)  
        echo "MySQL: Open source data management at the heart of millions of apps." ;; 
    bash)
        echo "Bash: The essential 'Bourne Again Shell' for Linux automation." ;;
    *)
        echo "Software: A vital piece of the open-source community." ;;
esac

echo "========================================"
