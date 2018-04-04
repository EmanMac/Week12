#!/bin/bash

echo "firstly, let's do a basic tcpdump."
echo "press enter to forward the script."
read
sudo tcpdump -i any
read
echo "And now a verbose output that has no hostname resolution or port numbers."
read
sudo tcpdump -ttttnnvvS
read
echo "This will put things into hex output."
read
sudo tcpdump -nnvXSs 0 -c1 icmp
read
echo "This one will isolate by port number(80 in this case), try opening your browser while this one is running."
read
sudo tcpdump port 80
read
echo "and to sort by protocol type, in this case tcp."
sudo tcpdump tcp
read
echo "Also by IP type."
read
sudo tcpdump ip6
read
echo "Portrange here."
read
sudo tcpdump portrange 21-80
read
echo "we can capture a file now to view with the -w portion."
read
sudo tcpdump port 80 -w capture_file
read
echo "and read it now."
read
sudo tcpdump -r capture_file
read
rm capture_file

