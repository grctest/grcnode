GridcoinAutoNode
===============

A script to run (ideally just after starting up a new server/vps) to automatically setup `GridcoinResearchcoind` and have it start on boot.

This script runs `GridcoinResearchd` under the `Gridcoin` user. An alias (`grc`) is added to the current user's `.bashrc`. Where you'd normally type `gridcoinresearchd` you can type `grc`, eg: `grc getinfo`.

It has been tested on Ubuntu Server 14.04. It is intended for use only on this distro.

One Liner
---------

    wget https://raw.githubusercontent.com/grctest/GridcoinAutoNode/master/GridcoinAutoNode.sh ; sudo bash GridcoinAutoNode.sh

You should really check out the code before running that though.

Notes
-----

This script installs:
- NTP
- Unzip
- GridcoinResearchd (from ppa:gridcoin/gridcoin-daily, not manually compiled from source).

This script:
- Creates a swap partition for smaller resource nodes.
- Creates a 'Gridcoin' user to run the Gridcoin client under (better than running client as root).
- Downloads official snapshot instead of syncing from 0 (edit script if you don't want it to do this).
- Configures NTP, Firewall (rpc port), crontab (reboot server @ 3am).
- Creates bash shortcut so 'grc' can be used for commands instead of gridcoinresearchd in the terminal.
