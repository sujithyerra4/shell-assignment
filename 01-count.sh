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

while IFS= read -r line
do 

echo $line


done <<< $FILE

