#!/bin/bash


<<info

here the passwd of an existing user

info


echo "user to reset the passwd" $1

echo "passwd to reset" $2
echo -e "$2\n$2" | sudo passwd $1

cat /etc/passwd | grep -i "$1"






