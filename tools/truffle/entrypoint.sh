#!/bin/sh

cd /app

# clear the file
echo -n "" > logs/truffle.log

echo " " | tee -a /app/logs/truffle.log
echo "======================================" | tee -a logs/truffle.log
echo "           Starting Truffle...        " | tee -a logs/truffle.log
echo "======================================" | tee -a logs/truffle.log
echo " " | tee -a logs/truffle.log

echo "truffle -> installing dependencies..." | tee -a logs/truffle.log
npm install | tee -a logs/truffle.log

echo "truffle -> compiling contracts..." | tee -a logs/truffle.log
truffle compile | tee -a logs/truffle.log

echo "truffle -> executing ethlint..." | tee -a logs/truffle.log

echo "truffle -> executing tests..." | tee -a logs/truffle.log
truffle test --network ganache | tee -a logs/truffle.log

# shut down the ganache instance since we are done with it
docker stop eth-ci.ganache-cli