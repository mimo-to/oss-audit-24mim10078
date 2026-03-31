#!/bin/bash
# Script 1: System Identity Report

# --- Variables ---
STUDENT_NAME="Rounak Hati"
SOFTWARE_CHOICE="Linux Kernel"

# --- System Info ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DATE=$(date)
DISTRO=$(hostnamectl | grep "Operating System" | cut -d ':' -f2)

# --- Output ---
echo "===================================="
echo " Open Source Audit — $STUDENT_NAME"
echo "===================================="
echo "Software : $SOFTWARE_CHOICE"
echo "Kernel   : $KERNEL"
echo "User     : $USER_NAME"
echo "Uptime   : $UPTIME"
echo "Date     : $DATE"
echo "Distro   : $DISTRO"
echo "License  : GNU General Public License (GPL)"
echo "===================================="
