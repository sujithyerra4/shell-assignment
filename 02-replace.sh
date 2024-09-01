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



for i in $file
do

sed -i.bak 's/the/they/g' $i

done


# sed - stream editor - It can perform various text operations, such as search and replace, insert, delete, and more.