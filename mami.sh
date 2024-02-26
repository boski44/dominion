#!/bin/bash
<<boy 
this script is meant to create a new user in the system and add.
boy

echo enter your username
read username
echo the name you entered is $username
echo put your password
read password
echo hello $username your account has been created sucessfully
sudo adduser $username
grep $username /etc/passwd
sudo groupadd developers
sudo usermod -aG developers $username
