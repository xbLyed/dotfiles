#!/bin/bash

# hostname randomization
NEWHOST=`tr -dc A-Za-z0-9 < /dev/urandom |head -c $(((RANDOM%15)+3))`
echo "127.0.0.1 $NEWHOST" | sudo tee -a /etc/hosts
sudo /bin/hostname "$NEWHOST"
echo "New hostname: $NEWHOST"


echo "Done."