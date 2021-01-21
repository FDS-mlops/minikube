#!/bin/bash
#minikube start --cpus 6 --memory 12288 --disk-size=120g --extra-config=apiserver.service-account-issuer=api --extra-config=apiserver.service-account-signing-key-file=/var/lib/minikube/certs/apiserver.key --extra-config=apiserver.service-account-api-audiences=api

minikube start --vm-driver=docker --cpus 6 --memory 12288 --disk-size=120g --feature-gates=DevicePlugins=true --extra-config=apiserver.service-account-issuer=api --extra-config=apiserver.service-account-signing-key-file=/var/lib/minikube/certs/apiserver.key --extra-config=apiserver.service-account-api-audiences=api

#minikube addons enable nvidia-gpu-device-plugin
#minikube addons enable nvidia-driver-installer

#kubectl get nodes -ojson | jq .items[].status.capacity

#minikube start --vm-driver=none --apiserver-ips 127.0.0.1 --apiserver-name localhost --docker-opt default-runtime=nvidia --feature-gates=DevicePlugins=true --kubernetes-version v1.15.0
