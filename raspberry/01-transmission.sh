#!/bin/sh
# 01-transmission.sh
# Instala transmission y copia la config desde los dotfiles

sudo apt-get update
sudo apt-get install transmission transmission-daemon

sudo service transmission-daemon stop

#sudo nano /etc/transmission-daemon/settings.json
cp /home/pi/dotfiles/transmission/settings.json /etc/transmission-daemon/settings.json

sudo service transmission-daemon start
