#!/bin/bash
minikube start
sleep 60
export NAMESPACE=istio-system
kubectl port-forward -n ${NAMESPACE} svc/istio-ingressgateway 8080:80
