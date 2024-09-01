 #!/bin/bash

# SOURCE_DIR=$1
# DESTINATION_DIR=$2
# DAYS=${3:-14}
# TIME_STAMP=$(date +%Y-%m-%d-%H-%M-%S)


# USAGE(){

# echo -e  "$R USAGE $N: sudo sh $0 <source> <destination> <days(optional)>"

# }

# if [ $# -lt 2 ]
# then
# USAGE
# exit 1
# fi

# if [ ! -d $SOURCE_DIR ]
#  then
#    echo  $SOURCE_DIR doesnt exists
#  fi

# if [ ! -d $DESTINATION_DIR ]
# then
#  echo $DESTINATION_DIR doesnt exists
# fi

# FILES=$(find $SOURCE_DIR -name "*.txt" -mtime "$DAYS")
# echo Files:$FILES

# if [ ! -z "$FILES" ]  
#     then
#     echo files are found
#     ZIP_FILE=$DESTINATION_DIR/app-logs-$TIME_STAMP.zip
#     find $SOURCE_DIR -name "*.txt" -mtime "$DAYS"| zip $ZIP_FILE -@

#         if [ -f $ZIP_FILE ]
#         then 

#         echo succesfully zipped files older than $DAYS
#         while IFS= read -r file
#         do
#         echo "Deleting file:$file"
#         rm -rf $FILES
#         done <<< $FILES

#     else
#         echo -e "Failed  zipping files older than $DAYS"
#         exit 1
#         fi
# else
#   echo files are not found
# fi



# #true only if files are epmty if files are not empty it gives false , then reslut will go to else
# #instead of this we can also use  -n or -f



SOURCE_DIR=$1
DESTINATION_DIR=$2

USAGE() {
    echo "Usage: $0 <source_directory> <destination_directory>"
}

# Check for correct number of arguments
if [ $# -ne 2 ]; then
    USAGE
    exit 1
fi

# Check if source directory exists
if [ ! -d "$SOURCE_DIR" ]; then
    echo "Source directory $SOURCE_DIR does not exist."
    exit 1
fi

# Check if destination directory exists
if [ ! -d "$DESTINATION_DIR" ]; then
    echo "Destination directory $DESTINATION_DIR does not exist."
    exit 1
fi

# Perform synchronization using rsync
sync=$(rsync -av --update "$SOURCE_DIR" "$DESTINATION_DIR")

while IFS= read -r file
do
 echo "Deleting file:$file"
 rm -rf $FILES

done <<< $sync


# Check if rsync command was successful
if [ $? -eq 0 ]; then
    echo "Synchronization complete."
else
    echo "Error during synchronization."
    exit 1
fi
