#!/bin/bash

set -euo pipefail

echo "Updating API"

echo "Un-packing zip"

unzip -o ~/zipped/release.zip -d ~/api/deploy_node_aws/

echo "Removing files"

rm -rf ~/zipped/release.zip

echo "Restarting API"

pm2 stop server

pm2 start ~/api/deploy_node_aws/server.js --name server

echo "Cleaning zipped"

rm ~/zipped/release.zip

echo "Complete"