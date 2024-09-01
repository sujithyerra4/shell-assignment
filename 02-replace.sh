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
if [ -z "$file" ]
then
   
for i in $file
do
echo $i 

sed -i 's/they/the/g' $i
done

else

echo files are not found

fi

# .bak will create backuup before replacing
# sed - stream editor - It can perform various text operations, such as search and replace, insert, delete, and more.