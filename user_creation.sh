#!/bin/bash


echo "=====user creation====="

echo "entered username" $1

echo "entered passwd" $2

sudo useradd -m $1 -s /bin/fish

echo -e "$2\n$2" | sudo passwd $1 

cat /etc/passwd | grep -i "$1"

echo "====user creation done======"

echo "==user deletion ===="

sudo userdel $1

echo "user deleted successfully:"

echo "====user deletion done======"

echo "user deletion confirmation"


if [ $(cat /etc/passwd | grep -i "$1" | wc | awk '{print $1}') == 0 ]
then
	echo "user existed"
else
	echo "user doesnt exist"
fi


echo "user deletion confirmation done"




