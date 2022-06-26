#!/bin/bash

# go to the directory where the files are
cd /home/marc/media

#set a variable for the filetypes you want to move
media_files=`ls *.jpg *.jpeg *.mov *.heic`

# create a looping structure to itterate on the files in
# your variable array

for item in $media_files;
    do
	# Doing the work. The & speeds it up by backgrouding
	# each move operation.

	mv /home/marc/media/$item  /home/marc/backups/$item &
    done
exit 0
