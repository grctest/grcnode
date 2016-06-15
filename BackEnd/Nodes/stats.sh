#!/bin/bash
shopt -s expand_aliases
source ~/.bashrc

# node-stats function
function node-stats {
    echo "Gridcoin client running. Creating files!"
    
    grc getinfo > getinfo.json
    grc getpeerinfo > getpeerinfo.json

    # bash command didn't provide quotation marks for blockhash & broke identicons.
    variable="$(grc getbestblockhash)"
    echo '"'$variable'"' > getbestblockhash.json

    echo "Moving files"
    \cp getinfo.json /usr/share/netdata/web/
    \cp getpeerinfo.json /usr/share/netdata/web/
    \cp getbestblockhash.json /usr/share/netdata/web/

    echo "Changing file ownership"
    sudo chown netdata:netdata /usr/share/netdata/web/getinfo.json
    sudo chown netdata:netdata /usr/share/netdata/web/getpeerinfo.json
    sudo chown netdata:netdata /usr/share/netdata/web/getbestblockhash.json

    echo "Deleting files"
    rm -rf getinfo.json
    rm -rf getpeerinfo.json
    rm -rf getbestblockhash.json
}

# Check if gridcoin is running, call node stats script
if pgrep "gridcoin" > /dev/null
then
    while true
    do
     node-stats
     sleep 30
    done
else
    echo "Gridcoin is not running!"
    exit 1
fi

# Start this script with the following:
# source ./stats.sh >/dev/null 2>&1 < /dev/null &

# crontab -e
# @reboot source ./stats.sh >/dev/null 2>&1 < /dev/null &