#!/bin/sh

# Launch Slither
# see: https://github.com/crytic/slither

echo -n "" > logs/slither.log
echo " " | tee -a logs/slither.log
echo "======================================" | tee -a logs/slither.log
echo "          Starting Slither...         " | tee -a logs/slither.log
echo "======================================" | tee -a logs/slither.log
echo " " | tee -a logs/slither.log

echo " Executing Slither.  see slither.json for output" | tee -a logs/slither.log
echo " For more info on using slither see: https://github.com/crytic/slither" | tee -a logs/slither.log

slither ./app --json logs/slither.json 