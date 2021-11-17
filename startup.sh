#!/bin/bash
# Ask the user for their name
read -p "Client ID: " clientId
read -sp "Client Secret: " clientSecret
echo
echo "Drag-and-drop your secure connect bundle into the root directory and copy the path"
read -p "Path for Secure Connect Bundle: " secureConnectBundlePath
echo "Starting CQLSH"
./cqlsh-astra/bin/cqlsh -u $clientId -p $clientSecret -b $secureConnectBundlePath
