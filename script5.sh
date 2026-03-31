#!/bin/bash
# Script 5: Open Source Manifesto Generator

echo "Answer three questions to generate your manifesto."
echo ""

read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

echo "" > $OUTPUT

echo "On $DATE, I reflect on the power of open source." >> $OUTPUT
echo "Using tools like $TOOL, I experience the meaning of freedom as $FREEDOM." >> $OUTPUT
echo "I believe in building and sharing $BUILD to contribute to the open world." >> $OUTPUT
echo "Open source gives users control over what they use, allowing them to understand, modify, and contribute instead of just consuming." >> $OUTPUT

echo ""
echo "Manifesto saved to $OUTPUT"
echo ""
cat $OUTPUT
