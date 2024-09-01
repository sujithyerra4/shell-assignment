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
#  file=$(find $FILE -name "*.txt")
while IFS='' read -r fil
do

awk '{print}'  $fil

# echo ${fil//the/tehy}

done <<< $FILE