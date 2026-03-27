#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Harshita Yadav (24BCE11003)
# Course: Open Source Software
# Requirement: read for input, string concatenation, writing to file (>), date

echo "------------------------------------------------"
echo "   WELCOME TO THE OSS MANIFESTO GENERATOR"
echo "------------------------------------------------"

# Interactive questions [cite: 424, 425, 426]
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# Variables [cite: 428, 429]
DATE_VAL=$(date +'%d %B %Y')
OUTPUT="manifesto_24BCE11003.txt"

# Creating the manifesto paragraph [cite: 430, 431]
echo "===========================================" > $OUTPUT
echo "       MY OPEN SOURCE MANIFESTO" >> $OUTPUT
echo "===========================================" >> $OUTPUT
echo "On $DATE_VAL, I, Harshita Yadav, declare my commitment to FOSS." >> $OUTPUT
echo "" >> $OUTPUT
echo "To me, freedom in software means $FREEDOM. Every day, I rely on $TOOL " >> $OUTPUT
echo "to learn and grow. In the spirit of community, I pledge to build " >> $OUTPUT
echo "$BUILD and share it freely with the world." >> $OUTPUT
echo "===========================================" >> $OUTPUT

echo ""
echo "Success! Your manifesto has been saved to $OUTPUT" [cite: 432]
echo "------------------------------------------------"
cat $OUTPUT 
