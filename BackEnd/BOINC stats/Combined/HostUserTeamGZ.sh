#!/bin/sh

cd ./seti
wget -N --tries=2 -nv http://setiweb.ssl.berkeley.edu/stats/host.gz
wget -N --tries=2 -nv http://setiweb.ssl.berkeley.edu/stats/team.gz
wget -N --tries=2 -nv http://setiweb.ssl.berkeley.edu/stats/user.gz

cd ../einstein
wget -N --tries=2 -nv http://einstein.phys.uwm.edu/stats/host_id.gz
wget -N --tries=2 -nv http://einstein.phys.uwm.edu/stats/team_id.gz
wget -N --tries=2 -nv http://einstein.phys.uwm.edu/stats/user_id.gz

cd ../climate
wget -N --tries=2 -nv http://climateapps2.oucs.ox.ac.uk/cpdnboinc/stats/host.xml.gz
wget -N --tries=2 -nv http://climateapps2.oucs.ox.ac.uk/cpdnboinc/stats/team.xml.gz
wget -N --tries=2 -nv http://climateapps2.oucs.ox.ac.uk/cpdnboinc/stats/user.xml.gz

cd ../lhc
wget -N --tries=2 -nv http://lhcathome.cern.ch/stats/host_id.gz
wget -N --tries=2 -nv http://lhcathome.cern.ch/stats/team_id.gz
wget -N --tries=2 -nv http://lhcathome.cern.ch/stats/user_id.gz

cd ../tta
wget -N --tries=2 -nv http://boinc.bakerlab.org/rosetta/stats/host.gz
wget -N --tries=2 -nv http://boinc.bakerlab.org/rosetta/stats/team.gz
wget -N --tries=2 -nv http://boinc.bakerlab.org/rosetta/stats/user.gz

cd ../burp
wget -N --tries=2 -nv http://burp.boinc.dk/stats/host_id.gz
wget -N --tries=2 -nv http://burp.boinc.dk/stats/team_id.gz
wget -N --tries=2 -nv http://burp.boinc.dk/stats/user_id.gz

cd ../primegrid
wget -N --tries=2 -nv http://www.primegrid.com/stats/host_id.gz
wget -N --tries=2 -nv http://www.primegrid.com/stats/team_id.gz
wget -N --tries=2 -nv http://www.primegrid.com/stats/user_id.gz

cd ../sztaki
wget -N --tries=2 -nv http://szdg.lpds.sztaki.hu/szdg/stats/host.xml.gz 
wget -N --tries=2 -nv http://szdg.lpds.sztaki.hu/szdg/stats/team.xml.gz 
wget -N --tries=2 -nv http://szdg.lpds.sztaki.hu/szdg/stats/user.xml.gz 

cd ../wcg
wget -N --tries=2 -nv http://www.worldcommunitygrid.org/boinc/stats/host.gz
wget -N --tries=2 -nv http://www.worldcommunitygrid.org/boinc/stats/team.gz
wget -N --tries=2 -nv http://www.worldcommunitygrid.org/boinc/stats/user.gz

cd ../mcp
wget -N --tries=2 -nv http://www.malariacontrol.net/stats/host.gz
wget -N --tries=2 -nv http://www.malariacontrol.net/stats/team.gz
wget -N --tries=2 -nv http://www.malariacontrol.net/stats/user.gz

cd ../lattice2
wget -N --tries=2 -nv http://boinc.umiacs.umd.edu/stats/host.gz
wget -N --tries=2 -nv http://boinc.umiacs.umd.edu/stats/team.gz
wget -N --tries=2 -nv http://boinc.umiacs.umd.edu/stats/user.gz

cd ../seti-beta
wget -N --tries=2 -nv http://setiweb.ssl.berkeley.edu/beta/stats/host.gz
wget -N --tries=2 -nv http://setiweb.ssl.berkeley.edu/beta/stats/team.gz
wget -N --tries=2 -nv http://setiweb.ssl.berkeley.edu/beta/stats/user.gz

cd ../bbc-cpdn
wget -N --tries=2 -nv http://bbc.cpdn.org/stats/host.xml.gz
wget -N --tries=2 -nv http://bbc.cpdn.org/stats/team.xml.gz
wget -N --tries=2 -nv http://bbc.cpdn.org/stats/user.xml.gz

cd ../leiden
wget -N --tries=2 -nv http://boinc.gorlaeus.net/stats/host.xml.gz
wget -N --tries=2 -nv http://boinc.gorlaeus.net/stats/team.xml.gz
wget -N --tries=2 -nv http://boinc.gorlaeus.net/stats/user.xml.gz

cd ../moo
wget -N --tries=2 -nv http://moowrap.net/stats/host.gz
wget -N --tries=2 -nv http://moowrap.net/stats/team.gz
wget -N --tries=2 -nv http://moowrap.net/stats/user.gz

cd ../GridcoinFinance
wget -N --tries=2 -nv http://finance.gridcoin.us/stats/host.gz
wget -N --tries=2 -nv http://finance.gridcoin.us/stats/team.gz
wget -N --tries=2 -nv http://finance.gridcoin.us/stats/user.gz

cd ../GPUGRID
wget -N --tries=2 -nv https://www.gpugrid.net/stats/host.gz
wget -N --tries=2 -nv https://www.gpugrid.net/stats/team.gz
wget -N --tries=2 -nv https://www.gpugrid.net/stats/user.gz

cd ../Asteroids
wget -N --tries=2 -nv http://asteroidsathome.net/boinc/stats/host.gz
wget -N --tries=2 -nv http://asteroidsathome.net/boinc/stats/team.gz
wget -N --tries=2 -nv http://asteroidsathome.net/boinc/stats/user.gz

cd ../Milkyway
wget -N --tries=2 -nv http://milkyway.cs.rpi.edu/milkyway/stats/host.gz
wget -N --tries=2 -nv http://milkyway.cs.rpi.edu/milkyway/stats/team.gz
wget -N --tries=2 -nv http://milkyway.cs.rpi.edu/milkyway/stats/user.gz

cd ../POEM
wget -N --tries=2 -nv http://boinc.fzk.de/poem/stats/host.gz
wget -N --tries=2 -nv http://boinc.fzk.de/poem/stats/team.gz
wget -N --tries=2 -nv http://boinc.fzk.de/poem/stats/user.gz

cd ../Collatz
wget -N --tries=2 -nv http://boinc.thesonntags.com/collatz/stats/host.gz
wget -N --tries=2 -nv http://boinc.thesonntags.com/collatz/stats/team.gz
wget -N --tries=2 -nv http://boinc.thesonntags.com/collatz/stats/user.gz

cd ../CSG
wget -N --tries=2 -nv http://csgrid.org/csg/stats/host.gz
wget -N --tries=2 -nv http://csgrid.org/csg/stats/team.gz
wget -N --tries=2 -nv http://csgrid.org/csg/stats/user.gz
wget -N --tries=2 -nv http://csgrid.org/csg/stats/team_work.gz
wget -N --tries=2 -nv http://csgrid.org/csg/stats/user_work.gz

cd ../YAFU
wget -N --tries=2 -nv http://yafu.myfirewall.org/yafu/stats/host.gz
wget -N --tries=2 -nv http://yafu.myfirewall.org/yafu/stats/team.gz
wget -N --tries=2 -nv http://yafu.myfirewall.org/yafu/stats/user.gz

cd ../FindAtHome
wget -N --tries=2 -nv http://findah.ucd.ie/stats/host.gz
wget -N --tries=2 -nv http://findah.ucd.ie/stats/team.gz
wget -N --tries=2 -nv http://findah.ucd.ie/stats/user.gz

cd ../Cosmology
wget -N --tries=2 -nv http://www.cosmologyathome.org/stats/host.gz
wget -N --tries=2 -nv http://www.cosmologyathome.org/stats/team.gz
wget -N --tries=2 -nv http://www.cosmologyathome.org/stats/user.gz

cd ../vLHC
wget -N --tries=2 -nv http://lhcathome2.cern.ch/vLHCathome/stats/host.gz
wget -N --tries=2 -nv http://lhcathome2.cern.ch/vLHCathome/stats/team.gz
wget -N --tries=2 -nv http://lhcathome2.cern.ch/vLHCathome/stats/user.gz

cd ../MindModeling
wget -N --tries=2 -nv https://mindmodeling.org/stats/host.gz
wget -N --tries=2 -nv https://mindmodeling.org/stats/team.gz
wget -N --tries=2 -nv https://mindmodeling.org/stats/user.gz

cd ../NFS
wget -N --tries=2 -nv https://escatter11.fullerton.edu/nfs/stats/host.gz
wget -N --tries=2 -nv https://escatter11.fullerton.edu/nfs/stats/team.gz
wget -N --tries=2 -nv https://escatter11.fullerton.edu/nfs/stats/user.gz
wget -N --tries=2 -nv https://escatter11.fullerton.edu/nfs/stats/team_work.gz
wget -N --tries=2 -nv https://escatter11.fullerton.edu/nfs/stats/user_work.gz

cd ../NumbersFields
wget -N --tries=2 -nv http://numberfields.asu.edu/NumberFields/stats/host.gz
wget -N --tries=2 -nv http://numberfields.asu.edu/NumberFields/stats/team.gz
wget -N --tries=2 -nv http://numberfields.asu.edu/NumberFields/stats/user.gz

cd ../skynet
wget -N --tries=2 -nv https://pogs.theskynet.org/pogs/stats/host.gz
wget -N --tries=2 -nv https://pogs.theskynet.org/pogs/stats/team.gz
wget -N --tries=2 -nv https://pogs.theskynet.org/pogs/stats/user.gz

cd ../YOYO
wget -N --tries=2 -nv http://www.rechenkraft.net/yoyo/stats/host.gz
wget -N --tries=2 -nv http://www.rechenkraft.net/yoyo/stats/team.gz
wget -N --tries=2 -nv http://www.rechenkraft.net/yoyo/stats/user.gz

cd ../BitcoinUtopia
wget -N --tries=2 -nv http://www.bitcoinutopia.net/bitcoinutopia/stats/host.gz
wget -N --tries=2 -nv http://www.bitcoinutopia.net/bitcoinutopia/stats/team.gz
wget -N --tries=2 -nv http://www.bitcoinutopia.net/bitcoinutopia/stats/user.gz

cd ../SAT
wget -N --tries=2 -nv http://sat.isa.ru/pdsat/stats/host.gz
wget -N --tries=2 -nv http://sat.isa.ru/pdsat/stats/team.gz
wget -N --tries=2 -nv http://sat.isa.ru/pdsat/stats/user.gz

cd ../ATLAS
wget -N --tries=2 -nv http://atlasathome.cern.ch/stats/host.gz
wget -N --tries=2 -nv http://atlasathome.cern.ch/stats/team.gz
wget -N --tries=2 -nv http://atlasathome.cern.ch/stats/user.gz