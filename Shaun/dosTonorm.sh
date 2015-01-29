#!/bin/bash
# Given a DOS-formatted text file (lines end with \r\n rather than just \n), convert it to a standard text file.

#Usage
#chmod +x tdosTonorm.sh
#./dosTonorm.sh file1 file2

OLD = "\r\n"
NEW = "\n"

sed 's/$OLD/$NEW/g' $1 > $2
mv $2 $1
echo "Done"