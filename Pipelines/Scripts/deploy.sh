#!/bin/bash

set -x

PARENT_PATH=$(cd "$(dirname "${BASH_SOURCE[0]}")";pwd -P)
ROOT="$PARENT_PATH"/../../..
SCRIPTS="$ROOT"/Pipelines/Scripts
source $SCRIPTS/header.sh

echo "PARENT_PATH:" ${PARENT_PATH}
echo "ROOT:" ${ROOT}
echo "SCRIPTS:" ${SCRIPTS}