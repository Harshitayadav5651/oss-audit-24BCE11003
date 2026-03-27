#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Harshita Yadav (24BCE11003)
# Course: Open Source Software
# Requirement: Uses if-then-else and case statement

# We are auditing Apache
PACKAGE="apache2"

echo "=========================================="
echo "Searching for $PACKAGE in the system..."

# --- Check if package is installed [cite: 125] ---
if dpkg -l | grep -q "^ii  $PACKAGE"; then
    echo "STATUS: $PACKAGE is correctly installed."
    echo "------------------------------------------"
    # Show version and summary information 
    dpkg -s $PACKAGE | grep -E 'Version|Section|Description'
else
    echo "STATUS: $PACKAGE is NOT found."
    echo "Action: Run 'sudo apt install apache2' to install it."
fi

echo "------------------------------------------"

# --- Philosophy Note using CASE  ---
case $PACKAGE in
    "apache2")
        echo "OSS Philosophy: Apache is the foundation of the open web." ;;
    "mysql-server")
        echo "OSS Philosophy: Democratizing data storage for everyone." ;;
    *)
        echo "OSS Philosophy: Shared code for community progress." ;;
esac
echo "=========================================="
