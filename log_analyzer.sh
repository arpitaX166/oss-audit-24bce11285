#!/bin/bash 
# Script 4: Log File Analyzer 
# Author: Arpita | Software: Python3
# Usage: ./log_analyzer.sh [logfile] [keyword]

LOGFILE=$1 
KEYWORD=${2:-"error"}    # Default keyword is 'error' if none provided
COUNT=0 

# --- Retry Logic (Do-While Style) ---
# Checks if file is empty and asks to wait/retry
while [ ! -s "$LOGFILE" ]; do
    echo "Warning: File $LOGFILE is empty or not found. Retrying in 3 seconds..."
    sleep 3
    # If it stays empty, we exit after one retry for this lab
    if [ ! -s "$LOGFILE" ]; then
        echo "Error: File still empty. Exiting."
        exit 1
    fi
done

echo "================================"
echo "    LOG ANALYSIS REPORT"
echo "================================"
echo "Analyzing: $LOGFILE"
echo "Keyword  : $KEYWORD"
echo "--------------------------------"

# --- While-Read Loop ---
while IFS= read -r LINE; do 
    if echo "$LINE" | grep -iq "$KEYWORD"; then 
        COUNT=$((COUNT + 1)) 
    fi 
done < "$LOGFILE" 

echo "Total Matches Found: $COUNT"
echo "--------------------------------"

# --- Tail Section ---
echo "Last 5 matching entries:"
grep -i "$KEYWORD" "$LOGFILE" | tail -n 5

echo "================================"

