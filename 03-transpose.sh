#!/bin/bash

FILE=$1  # Input file path

USAGE() {
    echo "USAGE: sudo sh $0 <filename>"
    exit 1
}

if [ $# -eq 0 ]; then
    USAGE
fi

if [ -f "$FILE" ]
 then
 
# awk '{print}' "$FILE" | tr ' ' '\n' | column

awk '
{
    for (i = 1; i <= NF; i++) {
        arr[i, NR] = $i
    }
    max_rows = (NR > max_rows) ? NR : max_rows

    #condition? true:false
    #max_rows wil finallly have total rows
}

END {
    for (i = 1; i <= NF; i++) {
        for (j = 1; j <= max_rows; j++) {
            printf "%s", arr[i, j]
            if (j < max_rows) printf OFS
        }
        printf "\n"
    }
}
' "$FILE"

else 
    echo "File $FILE does not exist."
    exit 1
fi
