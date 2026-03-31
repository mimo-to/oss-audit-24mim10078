#!/bin/bash
# Script 2: FOSS Package Inspector

PACKAGE="kernel"

# Check if package is installed
if rpm -q $PACKAGE &>/dev/null; then
    echo "$PACKAGE is installed."
    rpm -qi $PACKAGE | grep -E "Version|License|Summary"
else
    echo "$PACKAGE is NOT installed."
fi

echo ""

# Philosophy note using case
case $PACKAGE in
    kernel)
        echo "Linux Kernel: built from a student's need, now powering the backbone of modern computing"
        ;;
    git)
        echo "Git: Linus Torvalds' side project that became the standard for managing every modern codebase"
        ;;
    firefox)
        echo "Firefox: a fight to keep the internet open, private, and not controlled by a few giants"
        ;;
    vlc)
        echo "VLC: the media player that plays everything, where even big corporations struggle to compete"
        ;;
    *)
        echo "Open source lives long"
        ;;
esac
