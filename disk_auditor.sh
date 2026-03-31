#!/bin/bash 
# Script 3: Disk and Permission Auditor 
# Author: Arpita | Software: Python3

# List of directories to audit
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp") 

echo "================================"
echo "    DIRECTORY AUDIT REPORT"
echo "================================"

# Loop through the list of directories
for DIR in "${DIRS[@]}"; do 
    if [ -d "$DIR" ]; then 
        # Extracting Permissions (col 1), Owner (col 3), and Group (col 4)
        PERMS=$(ls -ld "$DIR" | awk '{print $1}')
        OWNER=$(ls -ld "$DIR" | awk '{print $3":"$4}')
        
        # Checking size (du -sh gives human-readable size)
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1) 
        
        echo "DIR: $DIR"
        echo " -> Perms: $PERMS | Owner: $OWNER | Size: $SIZE"
        echo "--------------------------------"
    else 
        echo "$DIR does not exist on this system" 
    fi 
done 

# --- Software Specific Check ---
# Checking Python3's system config directory
CONF_DIR="/etc/python3"

echo "PYTHON CONFIG AUDIT:"
if [ -d "$CONF_DIR" ]; then
    C_PERMS=$(ls -ld "$CONF_DIR" | awk '{print $1}')
    C_OWNER=$(ls -ld "$CONF_DIR" | awk '{print $3}')
    echo "Found $CONF_DIR | Permissions: $C_PERMS | Owner: $C_OWNER"
else
    echo "Python3 config directory ($CONF_DIR) not found."
fi
echo "================================"
