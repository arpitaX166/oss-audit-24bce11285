#!/bin/bash 
# Script 1: System Identity Report 
# Author: Arpita | Course: Open Source Software 

# --- Variables --- 
STUDENT_NAME="Arpita"         
SOFTWARE_CHOICE="Python & Bash"      

# --- System info --- 
KERNEL=$(uname -r) 
USER_NAME=$(whoami) 
HOME_DIR=$HOME
UPTIME=$(uptime -p) 
DISTRO=$(grep "PRETTY_NAME" /etc/os-release | cut -d'"' -f2)
CURRENT_TIME=$(date)

# --- Display --- 
echo "================================" 
echo "  Open Source Audit — $STUDENT_NAME" 
echo "================================" 
echo "Software Choice : $SOFTWARE_CHOICE"
echo "Distro Name     : $DISTRO"
echo "Kernel Version  : $KERNEL" 
echo "Current User    : $USER_NAME" 
echo "Home Directory  : $HOME_DIR"
echo "System Uptime   : $UPTIME" 
echo "Date & Time     : $CURRENT_TIME"
echo "--------------------------------"
echo "LICENSE MESSAGE:"
echo "This system is powered by the GNU General Public License (GPL)."
echo "This ensures the freedom to run, study, share, and modify the code."
echo "================================"
