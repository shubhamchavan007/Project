#!/bin/bash

<<info 
 
here backup script is written 

info

src=$1
dest=$2

zip -r "$dest/backups_$(date '+%F-%h-%s').zip" $src > /dev/null

echo -e "\nbackup completed"

aws s3 sync "$dest" s3://b1sh




