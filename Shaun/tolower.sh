#!/bin/bash
# Given a standard text file, convert all uppercase letters to lowercase

#Usage
#chmod +x tolower.sh
#./tolower.sh file1 file2

tr '[:upper:]' '[:lower:]' < $1 > $2
mv $2 $1
echo "Done"
