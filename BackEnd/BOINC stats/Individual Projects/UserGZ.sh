#!/bin/sh
echo "SETI start"
cd ./SETI
wget -N --tries=2 http://setiweb.ssl.berkeley.edu/stats/user.gz
gunzip user.gz
mv user user.xml
echo "SETI end"

echo "Einstein start"
cd ../Einstein
wget -N --tries=2 http://einstein.phys.uwm.edu/stats/user_id.gz
gunzip user_id.gz
echo "Einstein end"

echo "ClimatePrediction start"
cd ../ClimatePrediction
wget -N --tries=2 http://climateapps2.oucs.ox.ac.uk/cpdnboinc/stats/user.xml.gz
gunzip user_xml.gz
echo "ClimatePrediction end"

echo "Rosetta start"
cd ../Rosetta
wget -N --tries=2 http://boinc.bakerlab.org/rosetta/stats/user.gz
gunzip user.gz
mv user user.xml
echo "Rosetta end"

echo "BURP start"
cd ../BURP
wget -N --tries=2 http://burp.boinc.dk/stats/user_id.gz
gunzip user_id.gz
echo "BURP end"

echo "PrimeGrid start"
cd ../PrimeGrid
wget -N --tries=2 http://www.primegrid.com/stats/user_id.gz
gunzip user_id.gz
echo "PrimeGrid end"

echo "Sztaki start"
cd ../Sztaki
wget -N --tries=2 http://szdg.lpds.sztaki.hu/szdg/stats/user.xml.gz
gunzip user_xml.gz 
echo "Sztaki end"

echo "WCG start"
cd ../WCG
wget -N --tries=2 http://www.worldcommunitygrid.org/boinc/stats/user.gz
gunzip user.gz
mv user user.xml
echo "WCG end"

echo "MalariaControl start"
cd ../MalariaControl
wget -N --tries=2 http://www.malariacontrol.net/stats/user.gz
gunzip user.gz
mv user user.xml
echo "MalariaControl end"

echo "Lattice start"
cd ../lattice2
wget -N --tries=2 http://boinc.umiacs.umd.edu/stats/user.gz
gunzip user.gz
mv user user.xml
echo "Lattice end"

echo "BBC-CPDN start"
cd ../BBC-CPDN
wget -N --tries=2 http://bbc.cpdn.org/stats/user.xml.gz
gunzip user_xml.gz
echo "BBC-CPDN end"

echo "Leiden start"
cd ../Leiden
wget -N --tries=2 http://boinc.gorlaeus.net/stats/user.xml.gz
gunzip user_xml.gz
echo "Leiden end"

echo "MooWrap start"
cd ../MooWrap
wget -N --tries=2 http://moowrap.net/stats/user.gz
gunzip user.gz
mv user user.xml
echo "MooWrap end"

echo "GridcoinFinance start"
cd ../GridcoinFinance
wget -N --tries=2 http://finance.gridcoin.us/stats/user.gz
gunzip user.gz
mv user user.xml
echo "GridcoinFinance end"

echo "GPUGRID start"
cd ../GPUGRID
wget -N --tries=2 https://www.gpugrid.net/stats/user.gz
gunzip user.gz
mv user user.xml
echo "GPUGRID end"

echo "Asteroids start"
cd ../Asteroids
wget -N --tries=2 http://asteroidsathome.net/boinc/stats/user.gz
gunzip user.gz
mv user user.xml
echo "Asteroids end"

echo "Milkyway start"
cd ../Milkyway
wget -N --tries=2 http://milkyway.cs.rpi.edu/milkyway/stats/user.gz
gunzip user.gz
mv user user.xml
echo "Milkyway end"

echo "POEM start"
cd ../POEM
wget -N --tries=2 http://boinc.fzk.de/poem/stats/user.gz
gunzip user.gz
mv user user.xml
echo "POEM end"

echo "Collatz start"
cd ../Collatz
wget -N --tries=2 http://boinc.thesonntags.com/collatz/stats/user.gz
gunzip user.gz
mv user user.xml
echo "Collatz end"

echo "CSG start"
cd ../CSG
wget -N --tries=2 http://csgrid.org/csg/stats/user.gz
gunzip user.gz
mv user user.xml
wget -N --tries=2 http://csgrid.org/csg/stats/user_work.gz
gunzip user_work.gz
mv user_work user_work.xml
echo "CSG end"

echo "YAFU start"
cd ../YAFU
wget -N --tries=2 http://yafu.myfirewall.org/yafu/stats/user.gz
gunzip user.gz
mv user user.xml
echo "YAFU end"

echo "FindAtHome start"
cd ../FindAtHome
wget -N --tries=2 http://findah.ucd.ie/stats/user.gz
gunzip user.gz
mv user user.xml
echo "FindAtHome end"

echo "Cosmology start"
cd ../Cosmology
wget -N --tries=2 http://www.cosmologyathome.org/stats/user.gz
gunzip user.gz
mv user user.xml
echo "Cosmology end"

echo "vLHC start"
cd ../vLHC
wget -N --tries=2 http://lhcathome2.cern.ch/vLHCathome/stats/user.gz
gunzip user.gz
mv user user.xml
echo "vLHC end"

echo "MindModeling start"
cd ../MindModeling
wget -N --tries=2 https://mindmodeling.org/stats/user.gz
gunzip user.gz
mv user user.xml
echo "MindModeling end"

echo "NFS start"
cd ../NFS
wget -N --tries=2 https://escatter11.fullerton.edu/nfs/stats/user.gz
gunzip user.gz
mv user user.xml
wget -N --tries=2 https://escatter11.fullerton.edu/nfs/stats/user_work.gz
gunzip user_work.gz
mv user_work user_work.xml
echo "NFS end"

echo "NumbersFields start"
cd ../NumbersFields
wget -N --tries=2 http://numberfields.asu.edu/NumberFields/stats/user.gz
gunzip user.gz
mv user user.xml
echo "NumbersFields end"

echo "Skynet start"
cd ../Skynet
wget -N --tries=2 https://pogs.theskynet.org/pogs/stats/user.gz
gunzip user.gz
mv user user.xml
echo "Skynet end"

echo "YOYO start"
cd ../YOYO
wget -N --tries=2 http://www.rechenkraft.net/yoyo/stats/user.gz
gunzip user.gz
mv user user.xml
echo "YOYO end"

echo "BitcoinUtopia start"
cd ../BitcoinUtopia
wget -N --tries=2 http://www.bitcoinutopia.net/bitcoinutopia/stats/user.gz
gunzip user.gz
mv user user.xml
echo "BitcoinUtopia end"

echo "SAT start"
cd ../SAT
wget -N --tries=2 http://sat.isa.ru/pdsat/stats/user.gz
gunzip user.gz
mv user user.xml
echo "SAT end"

echo "ATLAS start"
cd ../ATLAS
wget -N --tries=2 http://atlasathome.cern.ch/stats/user.gz
gunzip user.gz
mv user user.xml
echo "ATLAS end"