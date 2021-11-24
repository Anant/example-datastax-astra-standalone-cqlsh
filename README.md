# Connect To DataStax Astra via standalone CQLSH

Quickly connect to your DataStax Astra database via standalone CQLSH. This repo uses Gitpod, so you can spin up this repo on any device!

## Prerequisites
- Free Astra Account
- Astra token (clientId + clientSecret)
- Secure Connect Bundle

## Hit the button below to get started!

[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/Anant/example-datastax-astra-standalone-cqlsh)


## Method 1
In method 1, we will use a bash script

### 1. Answer Prompts in Terminal
The `startup.sh` script either uses stored credentials from the `creds.config file` or prompts you to insert them in via the command line. If prompted to input credentials, then they will get saved to creds.config, so you do not have to do it repeatedly. 

## Method 2
In method 2, we will use cqlshrc. This is currently a manual method since Gitpod does not currently persist the `~/` directory upon workspace restart. A bash script for this is in the works.

### 1. Update cqlshrc file with credentials stored in creds.config
#### 1.1
```bash
bash cqlshrc.sh
```
#### 1.2
```bash
sudo mkdir -p ~/.cassandra
```
#### 1.3
```bash
mv cqlshrc ~/.cassandra
```

#### 1.4
```bash
./cqlsh-astra/bin/cqlsh
```

## Next Actions
- Add ability to read from ENV vars
- Improve process for cqlshrc method
- Pivot to connect to Scylla Cloud, AWS Keyspaces, Azure Cosmos DB, etc
