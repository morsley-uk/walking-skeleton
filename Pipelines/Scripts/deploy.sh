#!/bin/bash

WD=$(pwd)
echo "WD:" ${WD}
SCRIPTS=${WD}/deploy/Pipelines/Scripts
echo "SCRIPTS:" ${SCRIPTS}
source ${SCRIPTS}/header.sh

ARTIFACTS=${WD}/deploy/Artifacts
echo "ARTIFACTS:" ${ARTIFACTS}

K8S=${WD}/deploy/Pipelines/k8s
echo "K8S:" ${K8S}

header 'DEPLOY'

echo "Artifacts:"
cd ${ARTIFACTS} && ls -la

echo "Kubernetes:"
cd ${K8S} && ls -la

kubectl version --client