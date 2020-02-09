#!/bin/bash

set -x

PARENT_PATH=$(cd "$(dirname "${BASH_SOURCE[0]}")";pwd -P)
ROOT="$PARENT_PATH"/../../..
CI="$ROOT"/Pipelines/CI
SCRIPTS="$ROOT"/Pipelines/Scripts
source $SCRIPTS/header.sh

ls -la

cd tested

###############################################################################

header 'CREATE DOCKER IMAGE'

cd $CI

ls -la

docker build --tag morsley-uk-walking-skeleton-api .

header 'CREATE DOCKER IMAGE'

###############################################################################

header 'UPLOAD DOCKER IMAGE'


header 'UPLOAD DOCKER IMAGE'

###############################################################################