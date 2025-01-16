#!/bin/bash


read -p "Do you want to add user or delete : " choice

if [ $choice == "add" ];
then
	read -p "Enter the username : " username
	read -p "Ener the password : " password
	sudo useradd -m $username
	echo -e "$password\n$password" | sudo passwd $username
	echo "=================== Added successfully======================"

elif [ $choice == "delete" ];
then
	read -p "Enter the username : " username
	sudo userdel $username
	echo "====================Deleted Successfully====================="
else
	echo "Choose from add/delete optinos only"

fi
