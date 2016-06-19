#!/bin/bash
shopt -s expand_aliases
source ~/.bashrc

#stop gridcoin client
grc stop

# Wait 90 seconds
sleep 60s

cd /home/gridcoin/.GridcoinResearch/

if [ -d snapshot/ ] ; then
#Things to do
echo "snapshot folder present"
rm -rf snapshot/
mkdir snapshot/
else #if needed #also: elif [new condition] 
# things to do
echo "snapshot folder not present"
mkdir snapshot/
fi

# Snapshot function
function snapshot {
    echo "Gridcoin client stopped. Commencing generation of snapshot!"
	
    cp -r blk0001.dat snapshot/
    cp -r peers.dat snapshot/
    cp -r chainstate/ snapshot/
    cp -r database/ snapshot/
    cp -r chainstate/ snapshot/
    cp -r txleveldb/ snapshot/
    
    cd snapshot/

    tar -cvzf snapshot.tar.gz *

    # Moving the snapshot back to /home/gridcoin/.GridcoinResearch/
    mv snapshot.tar.gz ..

    cd ..

    rm -rf snapshot/

    echo "Snapshot successfully generated!"
}

# Check if gedit is running
if pgrep "gridcoin" > /dev/null
then
	echo "Gridcoin is still running! Waiting another 120s"
	sleep 120s
		if pgrep "gridcoin" > /dev/null
		then
			echo "Gridcoin client is still running 3 mins after shutdown. Something's wrong."
			exit 1			
		else
			snapshot
		fi
else
	snapshot
fi

# Copying to public facing location (netdata)
echo "Moving snapshot to public location"
scp /home/gridcoin/.GridcoinResearch/snapshot.tar.gz username@server:/destination/location/
echo "Snapshot moved."

echo "Deleting local snapshot"
rm -rf /home/gridcoin/.GridcoinResearch/snapshot.tar.gz
cd ~

# Starting client back up!
echo "Starting Gridcoin client"
grc