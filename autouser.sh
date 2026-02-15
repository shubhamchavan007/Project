#!/bin/bash/

<<info

this script creates user ,
checks the username is available or not,
and displays a succesfully message of user creation

info





src=$1
dest=$2


sudo useradd $src 

echo "===== user creation done====="

echo "=== user passwd creation===="

sudo passwd $dest





