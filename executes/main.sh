#!/bin/bash  
value=$(</var/new/MoneroHustle/executes/mywallet.txt)
echo "$value"

sudo /var/new/MoneroHustle/build/bin/xmr-stak -o stratum+tcp://pool.minexmr.com:7777 -u "$value" -p x --currency monero