#!/bin/bash
source ./.env

kubectl get namespace $NAMESPACE &> /dev/null || kubectl create namespace $NAMESPACE

helm repo add appuio https://charts.appuio.ch
helm repo update

kubectl create namespace $NAMESPACE
helm install $RELEASE appuio/k8up --namespace $NAMESPACE

# Prereqs for k8up
sudo apt install jq
sudo apt-get install restic
