#!/bin/bash 
# Script 5: Open Source Manifesto Generator 
# Author: Arpita | Software: Python3

# --- Alias Concept (Comment Only) ---
# To create a shortcut for this script, I could add this to my ~/.bashrc file:
# alias manifesto='./manifesto_gen.sh'

echo "========================================"
echo "    OPEN SOURCE MANIFESTO GENERATOR"
echo "========================================"
echo "Answer three questions to generate your statement."
echo "" 

# Using 'read -p' to ask questions and store answers in variables
read -p "1. Name one open-source tool you use every day: " TOOL 
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM 
read -p "3. Name one thing you would build and share freely: " BUILD 

# Setup variables for the final document
DATE=$(date '+%d %B %Y') 
OUTPUT="manifesto_$(whoami).txt" 

# --- Compose and Write to File ---
# Using '>' to create/overwrite and '>>' to append lines
echo "PERSONAL OPEN SOURCE MANIFESTO" > "$OUTPUT"
echo "Generated on: $DATE" >> "$OUTPUT"
echo "----------------------------------------" >> "$OUTPUT"
echo "As a developer, I rely on $TOOL to build my projects. To me, " >> "$OUTPUT"
echo "open source represents $FREEDOM. In the spirit of the community, " >> "$OUTPUT"
echo "I commit to building $BUILD and sharing it freely with the world." >> "$OUTPUT"
echo "----------------------------------------" >> "$OUTPUT"

echo ""
echo "Success: Manifesto saved to $OUTPUT"
echo "Printing your manifesto below:"
echo ""

# Display the content of the newly created file using 'cat'
cat "$OUTPUT"
echo ""
echo "========================================"
