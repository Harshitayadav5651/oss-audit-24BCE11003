#!/bin/bash
# Script 4: Log File Analyzer
# Author: Harshita Yadav (24BCE11003)
# Course: Open Source Software
# Requirement: while-read loop, counter, and $1 argument

# Use the first command-line argument as the file path [cite: 166]
LOGFILE=$1
# Default keyword is 'GET' if not provided [cite: 171]
KEYWORD=${2:-"GET"}
COUNT=0

# Check if the log file exists [cite: 174]
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found."
    exit 1
fi

echo "Analyzing $LOGFILE for keyword: '$KEYWORD'..."

# Read file line by line using while-read loop [cite: 165, 177]
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1)) # Increment counter [cite: 181]
    fi
done < "$LOGFILE"

echo "------------------------------------------"
echo "Total occurrences of '$KEYWORD': $COUNT"
echo "------------------------------------------"
# Show the last 5 matching lines [cite: 184]
echo "Most recent entries:"
grep -i "$KEYWORD" "$LOGFILE" | tail -n 5

















