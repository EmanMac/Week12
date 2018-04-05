#!/bin/bash

echo "Firstly we'll se how the bash shell interprerits certain literals and quotes."
echo $100
echo "$100"
echo '100'
read

echo "You can run this command to look for things that match the r.*t expression"
grep r.*t /etc/passwd
echo "This can sometimes fail if you hhave files in the folder that have names such as r.input. The solution to this is to recognize the characters that have  that kind of string and apply the correct quotes."
grep 'r.*t' /etc/passwd
read
echo "double quotes work like singles except the shell expands any variables within."
echo "There most certainly not is any * in my path, goshdarnit: $PATH"
echo 'There most certainly not is any * in my path, goshdarnit: $PATH'
read
echo "Let's see the process ID.....$$"
read
echo "You can combine commands with the && construct."
ls && ls -l
read
echo "Here's an example of a Here document." 
DATE=$(date)
cat << EOF
Date: $DATE
EOF
read
echo "Now we will use an awk command that will pull out a single field out of a command. Here we will print the time the files were created."
ls -l | awk '{print $6}'

