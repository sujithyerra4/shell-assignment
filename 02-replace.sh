#!/bin/bash

FILE=$1  #give path


USAGE(){
    echo "USAGE: sudo sh $0 <filename>"
    exit 1
}
if [ $# -eq 0 ]
then
USAGE
fi
 file=$(find $FILE -name "*.txt" )

# Check if no files were found
if [ -z "$files" ]; then
    echo "No .txt files found in the specified directory."
    exit 1
fi

for i in $file
do
echo $i 


sed -i 's/they/the/g' $i

done

# .bak will create backuup before replacing
# sed - stream editor - It can perform various text operations, such as search and replace, insert, delete, and more.