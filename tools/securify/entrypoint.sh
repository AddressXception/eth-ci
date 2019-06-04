#!/bin/sh

# clear the file
echo -n "" > /app/logs/securify.log

echo " " | tee -a /app/logs/securify.log
echo "======================================" | tee -a /app/logs/securify.log
echo "          Starting Securify...        " | tee -a /app/logs/securify.log
echo "======================================" | tee -a /app/logs/securify.log
echo " " | tee -a /app/logs/securify.log

cd /sec

python3 docker_run_securify.py -p /project | tee -a /app/logs/securify.log