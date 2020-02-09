#!/bin/bash

set -x

PARENT_PATH=$(cd "$(dirname "${BASH_SOURCE[0]}")";pwd -P)
ROOT="$PARENT_PATH"/../../..
CI="$ROOT"/Pipelines/CI
source $SCRIPTS/header.sh

cd tested

###############################################################################

header 'CREATE DOCKER IMAGE'

cd CI

docker --tag morsley-uk-walking-skeleton-api .

header 'CREATE DOCKER IMAGE'

###############################################################################

header 'UPLOAD DOCKER IMAGE'


header 'UPLOAD DOCKER IMAGE'

###############################################################################