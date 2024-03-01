#!/bin/bash
#File Permissions
#Practice hanging file permissions in Linux. Create a new file and set specific#permissions for user, group, and others using the chmod command
touch filepermisions
chmod 666 filepermisions
sudo chown testuser filepermisions
sudo chgrp managers filepermisions
sudo usermod -aG managers testuser
