#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Harshita Yadav (24BCE11003)
# Course: Open Source Software
# Requirement: Uses for-loop, du/df, ls -ld, and awk

# List of directories to audit (from PDF requirement)
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "=========================================="
echo "    DIRECTORY AUDIT REPORT (SECURITY)"
echo "=========================================="

# Loop through the list of directories
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Extract permissions and owner using awk
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        # Extract size using du
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
        
        echo "DIR: $DIR"
        echo "Permissions/Owner: $PERMS"
        echo "Total Size: $SIZE"
        echo "------------------------------------------"
    else
        echo "Notice: $DIR does not exist on this system."
    fi
done

# TODO Section: Check Apache config directory specifically (Requirement from PDF)
APACHE_CONF="/etc/apache2"
echo "SPECIFIC AUDIT: $SOFTWARE_CHOICE Config"
if [ -d "$APACHE_CONF" ]; then
    ls -ld $APACHE_CONF | awk '{print "Path: " $9 " | Perms: " $1 " | Owner: " $3}'
else
    echo "Apache config folder not found."
fi
echo "=========================================="
