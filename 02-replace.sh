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
 file=$(find $FILE -name "*.txt")

# awk '{print}'  $file|mv the they

for i in $file
do

sed -i 's/the/they/g' $file

done

# echo ${fil//the/tehy}
