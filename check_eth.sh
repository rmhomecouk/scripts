#!/bin/sh
clear
sleep 1
echo $(date -u) "script to check eth port is correct on wireless bridges"
while(true)
do
if ethtool eth1 | grep -q "Speed: 100Mb/s" && ethtool eth1 | grep -q "Duplex: Full" ; then
#    echo $(date -u) "Online"
sleep 1
else
    echo $(date -u) "Not online"
    ethtool eth1 | grep -q "Speed:"
    ethtool eth1 | grep -q "Duplex:"
ethtool -s eth1 speed 100 duplex full autoneg off
fi
done
