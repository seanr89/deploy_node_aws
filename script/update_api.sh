#!/bin/bash

# set -euo pipefail

echo "Updating API"

########################################################################

echo npm list -g

echo "PM2 PATH Checks"

export NVM_DIR=~/.nvm
source ~/.nvm/nvm.sh

npm list -g

if [ $PATH != *'versions/node'* ]; then
  export PATH=$PATH:/home/ubuntu/.nvm/versions/node/v18.18.0/bin
fi

########################################################################

echo "Un-packing zipped release"

unzip -o -q ~/zipped/release.zip -d ~/api/deploy_node_aws/

########################################################################

echo "Restarting API via PM2"

sudo pm2 stop server

sudo pm2 start ~/api/deploy_node_aws/server.js --name server

########################################################################

echo "Cleaning zipped folder"

rm -rf ~/zipped/release.zip

########################################################################

echo "Update Complete"