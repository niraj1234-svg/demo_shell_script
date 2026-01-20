#!/bin/bash
<<info 
check if user is exits
info
read -p "give me username that u want to check"username
count=$(cat /etc/passwd | grep $username | wc | awk '{print $1}')
if [$count==0];
then echo"usern is not exit"
else 
	echo"user exits"
fi
