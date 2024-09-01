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

echo $file|tr '[:upper:]' '[:lower:]'|wc -l


done <<< $FILE