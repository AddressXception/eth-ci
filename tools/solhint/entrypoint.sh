#!/bin/sh

cd /app

# clear the file
echo -n "" > logs/solhint.log

echo " " | tee -a logs/solhint.log
echo "======================================" | tee -a logs/solhint.log
echo "          Starting Solhint...         " | tee -a logs/solhint.log
echo "======================================" | tee -a logs/solhint.log
echo " " | tee -a logs/solhint.log



solhint "${SOLHINT_CONTRACTS_EXECUTION_PATH}" -c $SOLHINT_CONFIG_FILE | tee -a logs/solhint.log