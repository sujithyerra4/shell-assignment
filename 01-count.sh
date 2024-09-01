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


# Remove special characters, convert to lowercase, replace spaces with newlines, and count words
 awk '{print}' $FILE | tr -c '[:alnum:]' '[\n*]' |tr -s '\n'|tr '[:upper:]' '[:lower:]' | sort | uniq -c | sort -rn|head -n 5 



# -c : selects all characters except alphanumeric characters (letters and digits).
# \n* - all the selected from -c in to new line 
# -s '\n' -will delete repeated new line  
# uniq -c  Counts occurrences of each unique word.
# sort -rn: Sorts the counted words in descending numerical order.