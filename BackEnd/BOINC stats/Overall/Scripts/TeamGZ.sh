#!/bin/sh
echo "SETI start"
cd ./SETI
wget -N --tries=2 http://setiweb.ssl.berkeley.edu/stats/team.gz
echo "Download finished"
gunzip team.gz
mv team team.xml
clamscan team.xml
echo "SETI end"

echo "Einstein start"
cd ../Einstein
wget -N --tries=2 http://einstein.phys.uwm.edu/stats/team_id.gz
echo "Download finished"
gunzip team_id.gz
mv team_id team_id.xml
clamscan team_id.xml
echo "Einstein end"

echo "ClimatePrediction start"
cd ../ClimatePrediction
wget -N --tries=2 http://climateapps2.oucs.ox.ac.uk/cpdnboinc/stats/team.xml.gz
echo "Download finished"
gunzip team.xml.gz
clamscan team.xml
echo "ClimatePrediction end"

echo "Rosetta start"
cd ../Rosetta
wget -N --tries=2 http://boinc.bakerlab.org/rosetta/stats/team.gz
echo "Download finished"
gunzip team.gz
mv team team.xml
clamscan team.xml
echo "Rosetta end"

echo "BURP start"
cd ../BURP
wget -N --tries=2 http://burp.boinc.dk/stats/team_id.gz
echo "Download finished"
gunzip team_id.gz
mv team_id team_id.xml
clamscan team_id.xml
echo "BURP end"

echo "PrimeGrid start"
cd ../PrimeGrid
wget -N --tries=2 http://www.primegrid.com/stats/team_id.gz
echo "Download finished"
gunzip team_id.gz
mv team_id team_id.xml
clamscan team_id.xml
echo "PrimeGrid end"

echo "Sztaki start"
cd ../Sztaki
wget -N --tries=2 http://szdg.lpds.sztaki.hu/szdg/stats/team.xml.gz
echo "Download finished"
gunzip team.xml.gz
clamscan team.xml
echo "Sztaki end"

echo "WCG start"
cd ../WCG
wget -N --tries=2 http://www.worldcommunitygrid.org/boinc/stats/team.gz
echo "Download finished"
gunzip team.gz
mv team team.xml
clamscan team.xml
echo "WCG end"

echo "MalariaControl start"
cd ../MalariaControl
wget -N --tries=2 http://www.malariacontrol.net/stats/team.gz
echo "Download finished"
gunzip team.gz
mv team team.xml
clamscan team.xml
echo "MalariaControl end"

echo "Lattice start"
cd ../lattice2
wget -N --tries=2 http://boinc.umiacs.umd.edu/stats/team.gz
echo "Download finished"
gunzip team.gz
mv team team.xml
clamscan team.xml
echo "Lattice end"

echo "BBC-CPDN start"
cd ../BBC-CPDN
wget -N --tries=2 http://bbc.cpdn.org/stats/team.xml.gz
echo "Download finished"
gunzip team.xml.gz
clamscan team.xml
echo "BBC-CPDN end"

echo "Leiden start"
cd ../Leiden
wget -N --tries=2 http://boinc.gorlaeus.net/stats/team.xml.gz
echo "Download finished"
gunzip team.xml.gz
clamscan team.xml
echo "Leiden end"

echo "MooWrap start"
cd ../MooWrap
wget -N --tries=2 http://moowrap.net/stats/team.gz
echo "Download finished"
gunzip team.gz
mv team team.xml
clamscan team.xml
echo "MooWrap end"

echo "GridcoinFinance start"
cd ../GridcoinFinance
wget -N --tries=2 http://finance.gridcoin.us/stats/team.gz
echo "Download finished"
gunzip team.gz
mv team team.xml
clamscan team.xml
echo "GridcoinFinance end"

echo "GPUGRID start"
cd ../GPUGRID
wget -N --tries=2 https://www.gpugrid.net/stats/team.gz
echo "Download finished"
gunzip team.gz
mv team team.xml
clamscan team.xml
echo "GPUGRID end"

echo "Asteroids start"
cd ../Asteroids
wget -N --tries=2 http://asteroidsathome.net/boinc/stats/team.gz
echo "Download finished"
gunzip team.gz
mv team team.xml
clamscan team.xml
echo "Asteroids end"

echo "Milkyway start"
cd ../Milkyway
wget -N --tries=2 http://milkyway.cs.rpi.edu/milkyway/stats/team.gz
echo "Download finished"
gunzip team.gz
mv team team.xml
clamscan team.xml
echo "Milkyway end"

echo "POEM start"
cd ../POEM
wget -N --tries=2 http://boinc.fzk.de/poem/stats/team.gz
echo "Download finished"
gunzip team.gz
mv team team.xml
clamscan team.xml
echo "POEM end"

echo "Collatz start"
cd ../Collatz
wget -N --tries=2 http://boinc.thesonntags.com/collatz/stats/team.gz
echo "Download finished"
gunzip team.gz
mv team team.xml
clamscan team.xml
echo "Collatz end"

echo "CSG start"
cd ../CSG
wget -N --tries=2 http://csgrid.org/csg/stats/team.gz
echo "Download finished 1/2"
gunzip team.gz
mv team team.xml
clamscan team.xml
wget -N --tries=2 http://csgrid.org/csg/stats/team_work.gz
echo "Download finished 2/2"
gunzip team_work.gz
mv team_work team_work.xml
clamscan team_work.xml
echo "CSG end"

echo "YAFU start"
cd ../YAFU
wget -N --tries=2 http://yafu.myfirewall.org/yafu/stats/team.gz
echo "Download finished"
gunzip team.gz
mv team team.xml
clamscan team.xml
echo "YAFU end"

echo "FindAtHome start"
cd ../FindAtHome
wget -N --tries=2 http://findah.ucd.ie/stats/team.gz
echo "Download finished"
gunzip team.gz
mv team team.xml
clamscan team.xml
echo "FindAtHome end"

echo "Cosmology start"
cd ../Cosmology
wget -N --tries=2 http://www.cosmologyathome.org/stats/team.gz
echo "Download finished"
gunzip team.gz
mv team team.xml
clamscan team.xml
echo "Cosmology end"

echo "vLHC start"
cd ../vLHC
wget -N --tries=2 http://lhcathome2.cern.ch/vLHCathome/stats/team.gz
echo "Download finished"
gunzip team.gz
mv team team.xml
clamscan team.xml
echo "vLHC end"

echo "MindModeling start"
cd ../MindModeling
wget -N --tries=2 https://mindmodeling.org/stats/team.gz
echo "Download finished"
gunzip team.gz
mv team team.xml
clamscan team.xml
echo "MindModeling end"

echo "NFS start"
cd ../NFS
wget -N --tries=2 https://escatter11.fullerton.edu/nfs/stats/team.gz
echo "Download finished 1/2"
gunzip team.gz
mv team team.xml
clamscan team.xml
wget -N --tries=2 https://escatter11.fullerton.edu/nfs/stats/team_work.gz
echo "Download finished 2/2"
gunzip team_work.gz
mv team_work team_work.xml
clamscan team_work.xml
echo "NFS end"

echo "NumbersFields start"
cd ../NumbersFields
wget -N --tries=2 http://numberfields.asu.edu/NumberFields/stats/team.gz
echo "Download finished"
gunzip team.gz
mv team team.xml
clamscan team.xml
echo "NumbersFields end"

echo "Skynet start"
cd ../Skynet
wget -N --tries=2 https://pogs.theskynet.org/pogs/stats/team.gz
echo "Download finished"
gunzip team.gz
mv team team.xml
clamscan team.xml
echo "Skynet end"

echo "YOYO start"
cd ../YOYO
wget -N --tries=2 http://www.rechenkraft.net/yoyo/stats/team.gz
echo "Download finished"
gunzip team.gz
mv team team.xml
clamscan team.xml
echo "YOYO end"

echo "SAT start"
cd ../SAT
wget -N --tries=2 http://sat.isa.ru/pdsat/stats/team.gz
echo "Download finished"
gunzip team.gz
mv team team.xml
clamscan team.xml
echo "SAT end"

echo "ATLAS start"
cd ../ATLAS
wget -N --tries=2 http://atlasathome.cern.ch/stats/team.gz
echo "Download finished"
gunzip team.gz
mv team team.xml
clamscan team.xml
echo "ATLAS end"