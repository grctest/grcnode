#!/bin/bash
echo "########### The server will reboot when the script is complete"
echo "########### Changing to home dir"
cd ~

echo "########### Adding Google DNS"
echo "dns-nameservers 8.8.8.8 8.8.4.4" >> /etc/network/interface

# echo "########### Disabling IPv6"
# sed -i '$anet.ipv6.conf.all.disable_ipv6 = 1' /etc/sysctl.conf
# sed -i '$anet.ipv6.conf.default.disable_ipv6 = 1' /etc/sysctl.conf
# sed -i '$anet.ipv6.conf.lo.disable_ipv6 = 1' /etc/sysctl.conf
# sudo sysctl -p

echo "########### Installing necessary packages"
apt-get -y dist-upgrade
apt-get -y update && apt-get -y upgrade; apt-get install -y --no-install-recommends apt-utils && apt-get -y install dialog && apt-get -y install software-properties-common && apt-get -y install sudo && apt-get -y install git && apt-get -y install gcc && apt-get -y install make && apt-get -y install unzip
add-apt-repository -y ppa:gridcoin/gridcoin-daily
apt-get -y update && apt-get -y upgrade; apt-get -y install gridcoinresearchd

echo "########### Creating gridcoin user"
useradd -m gridcoin

echo "########### Creating gridcoinresearch.conf file"
cd ~gridcoin
sudo -u gridcoin mkdir .GridcoinResearch
cd /home/gridcoin/.GridcoinResearch/

echo "########### Downloading blockchain files..."
# Gridcoin.us: Official source
# Alternative sources for faster trusted member downloads over SSL:
# Google Drive (bit.ly): managed by NeuralMiner
# SpiderOak: managed by Peppernrino

# sudo -u gridcoin wget http://download.gridcoin.us/download/downloadstake/signed/snapshot.zip
# sudo -u gridcoin wget https://bit.ly/GRCSnapshot
# sudo -u gridcoin wget https://spideroak.com/share/N4YFAZLQOBSXEMDP/public/d%3A/Gridcoin.Tools/Share/snapshot.zip
# sudo unzip snapshot.zip

# Use bootstrap of blockchain vs. snapshot. Slower, but more verification. (Recommended method)
# sudo -u gridcoin wget https://bit.ly/GRCBootstrap
sudo -u gridcoin wget https://spideroak.com/share/N4YFAZLQOBSXEMDP/public/d%3A/Gridcoin.Tools/Share/bootstrap.zip
sudo unzip bootstrap.zip

echo "########### Deleting .zip package to save space :)"
# sudo rm ./snapshot.zip
sudo rm ./bootstrap.zip

sudo chown -R gridcoin:gridcoin /home/gridcoin/.GridcoinResearch/*
config="gridcoinresearch.conf"
sudo -u gridcoin touch $config
echo "server=1" > $config
echo "daemon=1" >> $config
echo "rpcport=9332" >> $config
echo "listen=1" >> $config
echo "suppressupgrade=false" >> $config
echo "suppressvoice=true" >> $config
echo "enablespeech=false" >> $config
echo "poolmining=false" >> $config
echo "UpdatingLeaderboard=false" >> $config
echo "cpumining=false" >> $config
echo "addnode=104.244.75.96" >> $config
echo "addnode=amsterdam.grcnode.co.uk" >> $config
echo "addnode=frankfurt.grcnode.co.uk" >> $config
echo "addnode=grc.z9.de" >> $config
echo "addnode=grcnode01.centralus.cloudapp.azure.com" >> $config
echo "addnode=grcnode02.eastus.cloudapp.azure.com" >> $config
echo "addnode=grcnode03.westus.cloudapp.azure.com" >> $config
echo "addnode=gridcoin.asia" >> $config
echo "addnode=gridcoin.is.dopeshit.net" >> $config
echo "addnode=ils.gridcoin.co.il" >> $config
echo "addnode=node.gridcoin.us" >> $config
echo "addnode=node.gridcoinapp.xyz" >> $config
echo "addnode=node1.chick3nman.com" >> $config
echo "addnode=oregon.gridcoin.stablenode.net" >> $config
echo "addnode=quebec.gridcoin.co.il" >> $config
echo "addnode=seattle.grcnode.deluxe-host.net" >> $config
echo "addnode=seattle2.gridcoin.stablenode.net" >> $config
randUser=`< /dev/random tr -dc A-Za-z0-9 | head -c64`
randPass=`< /dev/random tr -dc A-Za-z0-9 | head -c64`
echo "rpcuser=$randUser" >> $config
echo "rpcpassword=$randPass" >> $config

echo "########### Setting up chrony"
cd ~
git clone git://git.tuxfamily.org/gitroot/chrony/chrony.git
cd ~/chrony
./configure
 
echo "########### Cleaning up unnecessary packages"
apt-get -y remove git && apt-get -y remove gcc && apt-get -y remove unzip
apt-get -y autoremove

echo "########### Gridcoinresearch daemon will start automagically on boot"
sed '$isudo -u gridcoin gridcoinresearchd' /etc/rc.local

echo "########### All done! Thank you for supporting the Gridcoin network!"
reboot
