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


# Remove special characters, convert to lowercase, replace spaces with newlines, and count words
 awk '{print}' $FILE | tr -c '[:alnum:]' '[\n*]' |tr -s '\n'|tr '[:upper:]' '[:lower:]' | sort | uniq -c | sort -rn|top -n 5 



