#!/bin/bash

# set -euo pipefail
set -x

echo "Updating EC2"

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi


echo "Updating Complete"
