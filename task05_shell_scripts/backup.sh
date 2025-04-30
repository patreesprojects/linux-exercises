#!/bin/bash

folder_name=$1
backup_folder="$HOME/backup"

if [ -z "$folder_name" ]; then
	echo "No folder name provided"
	echo "Proper usage: ./backup.sh folder_name"
	exit 1
fi

if [ -d "$folder_name" ]; then
 echo "folder exists, creating backup..."

	if [ ! -d "$backup_folder" ]; then
	 mkdir -p "$backup_folder"
	 echo "backup folder was created at location: $backup_folder"
 	else
	 echo " backup folder exists, transfering in progress..."
	fi 
 
 date_stamp=$(date +%Y-%m-%d)
 backup_path="$backup_folder/${folder_name}_${date_stamp}"
 
 cp -r "$folder_name" "$backup_path"
 echo "Backup created successfully at: $backup_folder"

else
 echo "Error: folder '$folder_name' does not exist."
 exit 1

fi

	

