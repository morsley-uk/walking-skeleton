#!/bin/bash

WD=$(pwd)
echo "WD:" ${WD}
SCRIPTS=${WD}/deploy/Pipelines/Scripts
echo "SCRIPTS:" ${SCRIPTS}
source ${SCRIPTS}/header.sh

ARTIFACTS=${WD}/deploy/Artifacts
echo "ARTIFACTS:" ${ARTIFACTS}

K8S=${WD}/deploy/k8s
echo "K8S:" ${K8S}

header 'DEPLOY'

echo "Artifacts:"
cd ${ARTIFACTS} && ll -la

echo "Kubernetes:"
cd ${K8S} && ll -la

kubectl version --client