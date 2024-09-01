#!/bin/bash

FILE=$1


USAGE(){
    echo "USAGE: sudo sh $0 <filename>"
    exit 1
}
if [ $# -eq 0 ]
then
USAGE
fi

while IFS= read -r file
do 

# awk '{print}' $file |tr '[:upper:]' '[:lower:]'|wc -m

# Remove special characters, convert to lowercase, replace spaces with newlines, and count words
 awk '{print}' $file | tr -c '[:alnum:]' '[\n*]' |tr '[:upper:]' '[:lower:]' | sort | uniq -c | sort -nr



done <<< $FILE

