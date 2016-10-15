#!/bin/bash
echo "########### The server will reboot when the script is complete"
echo "########### Changing to home dir"
cd ~
echo "########### Updating Ubuntu"
add-apt-repository -y ppa:gridcoin/gridcoin-daily
apt-get -y update
apt-get -y upgrade
apt-get -y install Gridcoinresearchd
apt-get -y install unzip
# apt-get -y upgrade -- don't upgrade, there is an issue with grub that prompts the user, and to keep this non-interactive it's best just to ignore it
# apt-get -y dist-upgrade


echo "########### Creating Swap"
dd if=/dev/zero of=/swapfile bs=1M count=2048 ; mkswap /swapfile ; swapon /swapfile
echo "/swapfile swap swap defaults 0 0" >> /etc/fstab

echo "########### Create Gridcoin User"
useradd -m gridcoin

echo "########### Creating config"
cd ~gridcoin
sudo -u gridcoin mkdir .GridcoinResearch
cd /home/gridcoin/.GridcoinResearch/
sudo -u gridcoin wget http://download.gridcoin.us/download/downloadstake/signed/snapshot.zip
#sudo -u gridcoin tar -xvf snapshot.tar.gz
sudo unzip snapshot.zip
sudo chown -R gridcoin:gridcoin /home/gridcoin/.GridcoinResearch/*
config="gridcoinresearch.conf"
sudo -u gridcoin touch $config
echo "server=1" > $config
echo "daemon=1" >> $config
echo "listen=1" >> $config
echo "addnode=grc.z9.de" >> $config
echo "addnode=sepulcher.wha.la" >> $config
echo "addnode=typh00n.net" >> $config
echo "addnode=node.gridcoin.us" >> $config
echo "addnode=gridcoin.asia" >> $config
echo "addnode=frankfurt.grcnode.co.uk" >> $config
echo "addnode=quebec.gridcoin.co.il" >> $config
echo "addnode=ils.gridcoin.co.il" >> $config
echo "addnode=node.gridcoinapp.xyz" >> $config
echo "rpcport=9332" >> $config
randUser=`< /dev/urandom tr -dc A-Za-z0-9 | head -c128`
randPass=`< /dev/urandom tr -dc A-Za-z0-9 | head -c128`
echo "rpcuser=$randUser" >> $config
echo "rpcpassword=$randPass" >> $config

# setting up ntp
echo "########### Setting up NTP"
apt-get -y install ntp
/etc/init.d/ntp start

# setting up firewall
# Disabled - locked myself out, need to read up on ufw more..
#echo "########### Setting up firewall"
#ufw allow 9332/tcp
#ufw allow 22/tcp
#ufw --force enable

#echo "########### Setting up autostart (cron)"
#crontab -l > tempcron
#echo "0 3 * * * reboot" >> tempcron  # reboot at 3am to keep things working okay
#crontab tempcron
#rm tempcron

# Attempting to start GRC on boot
#sed -i '2a\
#sudo -u gridcoin /usr/local/bin/gridcoinresearchd' /etc/rc.local

#echo "############ Add an alias for easy use"
echo "alias grc=\"sudo -u gridcoin gridcoinresearchd -datadir=/home/gridcoin/.GridcoinResearch\"" >> ~/.bashrc  # example use: btc getinfo

## Adding the following function to ~/.bashrc allows for 'grc' to be used in bash scripts! Asliases don't work in bash scripts.
#function grc()
#{
# sudo -u gridcoin gridcoinresearchd -datadir=/home/gridcoin/.GridcoinResearch "$@"
#}
#export -f grc

reboot
