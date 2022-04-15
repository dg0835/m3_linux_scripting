#!/bin/sh

DIR_TO_SEARCH="/home/ec2-user/Assignments/Linux_Scripting/2/filesToRename"

FILENAMES=`ls $DIR_TO_SEARCH`
CURRENT_DATE=`date -I`

cd filesToRename

for file in $FILENAMES; do

	FILENAME_NO_EXTENSION=`basename $file .txt`
	echo $FILENAME_NO_EXTENSION

	RENAMED_FILE=$FILENAME_NO_EXTENSION.`date -I`
	echo $RENAMED_FILE

	mv $file $RENAMED_FILE

done
