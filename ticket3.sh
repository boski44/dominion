#!/bin/bash

<<<multilinecomment
User Management
Create a new user account with the username "testuser" using the useradd command.
Set a password for the "testuser" account using the passwd command.
Verify that you can log in as "testuser."
Delete the "testuser" account
multilinecomment

sudo adduser testuser
sudo passwd testuser
sudo grep testuser /etc/shadow
