echo "script to check eth port is correct on wireless bridges"
while(true)
do
if ethtool eth1 | grep -q "Speed: 100Mb/s" && ethtool eth1 | grep -q "Duplex: Full" ; then
#    echo "Online"
sleep 1
else
    echo "Not online"
ethtool -s eth1 speed 100 duplex full autoneg off
fi
done
