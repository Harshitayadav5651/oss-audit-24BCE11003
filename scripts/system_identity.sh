#!/bin/bash
# Script 1: System Identity Report
# Author: Harshita Yadav (24BCE11003)
# Course: Open Source Software
# Purpose: Display system distribution, kernel, user, and uptime.

# --- Variables ---
STUDENT_NAME="Harshita Yadav"
REG_NO="24BCE11003"
SOFTWARE_CHOICE="Apache HTTP Server"

# --- System Info Retrieval (Command Substitution) ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DISTRO=$(lsb_release -ds)
CURRENT_DATE=$(date)

# --- Display Output ---
echo "=========================================="
echo "       OPEN SOURCE AUDIT REPORT"
echo "=========================================="
echo "Student Name : $STUDENT_NAME"
echo "Reg Number   : $REG_NO"
echo "Software     : $SOFTWARE_CHOICE"
echo "------------------------------------------"
echo "System Distribution : $DISTRO"
echo "Kernel Version      : $KERNEL"
echo "Current User        : $USER_NAME"
echo "System Uptime       : $UPTIME"
echo "Date and Time       : $CURRENT_DATE"
echo "------------------------------------------"
echo "This OS is protected by the GNU General Public License (GPL)."
echo "=========================================="
