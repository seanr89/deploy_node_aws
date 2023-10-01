#!/bin/bash

set -euo pipefail

echo "Updating API"

echo "Un-packing zip"

unzip ~/zipped/release.zip -d /unzipped/

echo "Removing files"

rm -rf ~/zipped/release.zip

echo "Restarting API"

pm2 restart server

echo "Complete"