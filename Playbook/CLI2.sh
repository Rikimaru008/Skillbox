#!/bin/bash

yc init

read -p "напишите пасфразу ssh:" lock
if [ -z "$lock" ];then
    lock='""'
fi



sudo apt-get update

yc vpc network create \
  --name my-yc-network \
  --labels my-label=my-value \
  --description "my first network via yc"
  
yc vpc subnet create \
  --name my-yc-subnet-a \
  --zone ru-central1-a \
  --range 10.1.2.0/24 \
  --network-name my-yc-network \
  --description "my first subnet via yc"
  
  ssh-keygen -t ed25519 -f ~/.ssh/id_rsa -N $lock
 
 
 
 
yc compute instance create \
  --name backup \
  --network-interface subnet-name=my-yc-subnet-a,nat-ip-version=ipv4 \
  --zone ru-central1-a \
  --ssh-key ~/.ssh/id_rsa.pub 



  
yc compute instance create \
  --name monitoring \
  --network-interface subnet-name=my-yc-subnet-a,nat-ip-version=ipv4 \
  --zone ru-central1-a \
  --ssh-key ~/.ssh/id_rsa.pub 
  
yc compute instance create \
  --name openvpn \
  --network-interface subnet-name=my-yc-subnet-a,nat-ip-version=ipv4 \
  --zone ru-central1-a \
  --ssh-key ~/.ssh/id_rsa.pub 

yc compute instance get backup
yc compute instance get monitoring
yc compute instance get openvpn
