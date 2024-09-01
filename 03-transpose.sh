#!/bin/bash

FILE=$1  # Input file path

USAGE() {
    echo "USAGE: sudo sh $0 <filename>"
    exit 1
}

if [ $# -eq 0 ]; then
    USAGE
fi

if [ ! -f "$FILE" ]; then
    echo "File $FILE does not exist."
    exit 1
fi

awk '{print}' "$FILE" | tr ' ' '\n' | column
