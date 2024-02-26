#!/bin/bash
#write a script to authenticate a user to login sucessfully using a pin.
#use the condition statements too.
cpy=tdbank
country=america


echo "welcome to $cpy $country"
echo please put your username
read username
echo please put your pin
read pin
if [ $pin -eq 1993 ]
then
echo welcome $username you have access to your account
echo you are now a $cpy member
else
echo the $pin you inserted is incorrect,sorry you can try again.
fi
