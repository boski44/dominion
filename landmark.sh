#!/bin/bash
<<boy
write a script to enable a newuser register for landmark classes.
if the registration fee is greater or less than 3500 dollars,then the system will reject the registration.the fee should be exactly 3500.
boy
echo welcome to landmark tecnology,kindly fill your name
read name
echo your name is $name
echo put your registration price
read price
echo the price you put is $price
if [ $price -ge 3500 ] 
then
echo welcome $name you have sucessfully registered for the lanmark tecnology class 2024
else
echo sorry $name  your $price is not correct and your registration has been declined.
fi
