#!/bin/sh

cd /app

# clear the file
echo -n "" > logs/ganache.log

echo " " | tee -a logs/ganache.log
echo "======================================" | tee -a logs/ganache.log
echo "           Starting Ganache...        " | tee -a logs/ganache.log
echo "======================================" | tee -a logs/ganache.log
echo " " | tee -a logs/ganache.log

# start ganache
node ganache-core.docker.cli.js | tee -a logs/ganache.log