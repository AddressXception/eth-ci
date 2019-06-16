#!/bin/bash
set -e

echo "Deploying Containers"
docker-compose -f docker-compose.yml up