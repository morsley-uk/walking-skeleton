#!/bin/bash

#ls -la

#set -x

#PARENT_PATH=$(cd "$(dirname "${BASH_SOURCE[0]}")";pwd -P)

WD=$(pwd)
echo "WD:" ${WD}
#cd ${WD}
#ls -la

SCRIPTS=${WD}/deploy/Pipelines/Scripts
#echo "ROOT:" ${ROOT}
#cd ${ROOT}
#ls -la

#SCRIPTS=${ROOT}/Pipelines/Scripts
echo "SCRIPTS:" ${SCRIPTS}
cd ${SCRIPTS}
ls -la
source ${SCRIPTS}/header.sh

#echo "PARENT_PATH:" ${PARENT_PATH}
#cd ${PARENT_PATH}
#ls -la

kubectl version --client