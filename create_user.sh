#!/bin/bash
<<help
just like a #
help

function_create_user{
echo "====creation of user started===="
read -p "enter user name " username
read -p "enter user paswrd " pswd
sudo useradd -m "$username" 
echo -e "pswd\npswd" | sudo passwd "$username"}
echo "====creation of user completd===="

sudo userdel $username
fuction_delete_user{
echo "===user is deleted===="
cat /etc/passwd | grep $username | wc
echo "as wc is 0 user is deleted"}
