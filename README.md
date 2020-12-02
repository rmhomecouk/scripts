# scripts


## check_eth

opkg update
opkg install ca-certificates
opkg install libustream-openssl

create check.sh with the following:
#!/bin/sh
wget -O - https://raw.githubusercontent.com/rmhomecouk/scripts/main/check_eth.sh | sh


add the following to startup script:
/usr/sbin/screen -dmS ethcheck /root/check.sh
/usr/sbin/screen -dmS iperf3 /usr/bin/iperf3 -s
