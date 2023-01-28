#!/bin/bash
# This script uses Figlet, pygmentize, and Lolcat for ASCII art decoration#
# If you can't meet these requirements, delete them on lines 5 and 10 #

echo "Text2Binary" | figlet | lolcat -p 0.2
echo "Scripted by: Brandon Anderson"
echo -ne "\nType the desired text to be converted to binary:\n"
read bin_input
echo -ne "\nNow converting '$bin_input' to binary: \n"
echo $bin_input | xxd -b | colrm 1 10 | colrm 56 90 | pygmentize
