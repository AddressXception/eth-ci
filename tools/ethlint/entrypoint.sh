#!/bin/sh

cd /app

# clear the file
echo -n "" > logs/ethlint.log

echo " " | tee -a logs/ethlint.log
echo "======================================" | tee -a logs/ethlint.log
echo "          Starting Ethlint...         " | tee -a logs/ethlint.log
echo "======================================" | tee -a logs/ethlint.log
echo " " | tee -a logs/ethlint.log

solium -d $ETHLINT_CONTRACTS_DIR -c $ETHLINT_CONFIG_FILE | tee -a logs/ethlint.log