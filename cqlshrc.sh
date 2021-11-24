#!/bin/bash

. /workspace/example-datastax-astra-standalone-cqlsh/creds.config
sed -i "s#clientId#$clientId#g; s#clientSecret#$clientSecret#g; s#secureConnectBundlePath#$secureConnectBundlePath#g" /workspace/example-datastax-astra-standalone-cqlsh/cqlshrc

# work in progres below
# echo 'Are your credentials already in the creds.config file and is the secure connect bundle uploaded? [yes/no]'
# read answer
# if [ $answer == 'yes' ]
# then 
#     . /workspace/example-datastax-astra-standalone-cqlsh/creds.config
#     sed -i "s#clientId#$clientId#g; s#clientSecret#$clientSecret#g; s#secureConnectBundlePath#$secureConnectBundlePath#g" /workspace/example-datastax-astra-standalone-cqlsh/cqlshrc
#     echo 'Moving cqlshrc to ~/.cassandra'
#     sudo mkdir -p ~/.cassandra
#     mv cqlshrc ~/.cassandra
#     echo "Starting CQLSH"
#     ./cqlsh-astra/bin/cqlsh
# else
#     read -p "Client ID: " clientId
#     read -sp "Client Secret: " clientSecret
#     echo
#     echo "Drag-and-drop your secure connect bundle into the root directory and copy the path"
#     read -p "Path for Secure Connect Bundle: " secureConnectBundlePath
#     sed -i "s#clientId#$clientId#g; s#clientSecret#$clientSecret#g; s#secureConnectBundlePath#$secureConnectBundlePath#g" /workspace/example-datastax-astra-standalone-cqlsh/cqlshrc
#     echo 'Your crendentials have been saved to the cqlshrc file'
#     echo 'Moving cqlshrc to ~/.cassandra'
#     sudo mkdir -p ~/.cassandra
#     mv cqlshrc ~/.cassandra
#     echo "Starting CQLSH"
#     ./cqlsh-astra/bin/cqlsh
# fi

