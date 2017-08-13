#!/bin/bash
# dweet_ip.sh
# Usar en crontab con @reboot sleep 60 && sh ~/dweet_ip.sh
# Usar despues de que las interfaces de internet conecten: https://www.raspberrypi.org/forums/viewtopic.php?t=78734#p559774

echo "Getting IPs..."
IP_LAN="$(ip route get 8.8.8.8 | awk 'NR==1 {print $NF}')"
IP_WAN="$(curl ipecho.net/plain | awk 'NR==1 {print $NF}')"
echo "Dweeting IPs..."
wget --post-data="IP_LAN=${IP_LAN}&IP_WAN=${IP_WAN}" http://dweet.io/dweet/for/CHANGE-MY-NAME-HERE -O /dev/null
echo "Finished."
