#!/bin/bash

echo "Firstly lets take a look at where your routing table is going."
echo "Press enter to further the script"
read
netstat -r
echo "another manner of looking at it is by cating the file directly at /proc/net/route"
cat /proc/net/route
echo "Or by looking in the sbin"
/sbin/route -n

echo "The routing process is simple, a datagram is recieved, the destination is compared with each table. The best match is selected and the datagram is forewarded. Voila."
echo " To change this table you can use some basic commands. The first step being ifconfig eth0 192.168.1.10 mask 255.255.255.0 up"
echo " To add an entry into the routing table would be route add -net 192.168.1.0 255.255.255.0 eth0"
echo "The -net argument tells us it is a network route. You can use -host as well if specific to one IP"
echo "The default route will make it easier to contact hosts outside of your IP"
echo "route add default gw 192.168.1.1 eth0"
echo "That would be the basics of changing your routing table."
echo "To add though, to add a PPP link, which would be a level 2 routing protocol you would add"
echo "route add default ppp0"
echo "There is no need to specify a gateway as there is only ever has two hosts on a network."
echo ""
