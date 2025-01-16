#!/bin/bash


echo "========================= CREATE USERS ============================"

read -p "Enter the username : " username
read -p "Enter the password : " password


sudo useradd -m $username
echo -e "$password\n$password" | sudo passwd $username

echo "===================== CREATED SUCCESSFULLY ========================="

