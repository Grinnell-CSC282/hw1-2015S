#!/bin/bash
# Given a standard text file, remove all blank spaces at the end of lines.

#Usage
#chmod +x rmBlankSpace.sh
#./rmBlankSpace.sh file1 file 2

# ref: http://www.unix.com/shell-programming-and-scripting/23602-how-remove-plank-spaces-end-lines.html

sed -e 's/ *$//g' $1 > $2
mv $2 $1
echo "Done"