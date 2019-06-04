#!/bin/sh

# https://github.com/crytic/eth-security-toolbox

cd /home/ethsec

# clear the log files
echo -n "" > logs/eth-security-toolbox.log
rm -rf logs/slither.json

echo " " | tee -a logs/eth-security-toolbox.log
echo "======================================" | tee -a logs/eth-security-toolbox.log
echo "   Starting Eth Security Toolbox...   " | tee -a logs/eth-security-toolbox.log
echo "======================================" | tee -a logs/eth-security-toolbox.log
echo " " | tee -a logs/eth-security-toolbox.log

# Change Solc version
solc-select $SOLC_VERSION
solc --version | tee -a logs/eth-security-toolbox.log

echo " " | tee -a logs/eth-security-toolbox.log
echo "Executing Slither.  see slither.log and slither.json for output" | tee -a logs/eth-security-toolbox.log

./run_slither.sh
