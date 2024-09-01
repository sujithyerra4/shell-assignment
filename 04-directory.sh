#!/bin/bash

SOUREC_DIR=$1
DES_DIR=$2
DAYS=${3:14}
TIMESTAMP=$(date +%Y-%m-%d-%H-%M-%S)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"


USAGE(){

    echo -e " $R USAGE $N: sudo sh $0 <soure-dir> <des-dir>"

}

if [ $# -lt 2 ]
then
USAGE
exit 1
fi
#touch `date +%Y%m%d_%H%M%S` file2.txt

if [ -d $SOURCE_DIR ]
then
echo -e "Directory $G exists $N"
else
echo -e "Directory not  $R exists $N"
fi

if [ -d $SDES_DIR ]
then
echo -e "Directory $G exists $N"
else
echo -e "Directory not  $R exists $N"
fi

FILES=$(find $SOURCE_DIR -name "*.txt" -mtime +3)

if [ -f $FILES ]
then

 ZIP_FILE=$DES_DIR/updated-$TIMESTAMP.txt

 find $SOURCE_DIR -name "*.txt" -mtime +3 | zip $ZIP_FILE -@

 if [ ! -f $ZIP_FILE ]
 then

 echo succesfully zipped files older than $DAYS
        while IFS= read -r file
        do
        echo "Deleting file:$file"
        rm -rf $FILES
        done <<< $FILES

    else
        echo -e "Failed  zipping files older than $DAYS"
        exit 1
        fi
else
  echo files are not found
fi
