#!/bin/bash

#set -x

PARENT_PATH=$(cd "$(dirname "${BASH_SOURCE[0]}")";pwd -P)
ROOT="$PARENT_PATH"/../../..
SCRIPTS="$ROOT"/Pipelines/Scripts
source $SCRIPTS/header.sh

cd built

rm --recursive Tests

cd Source

###############################################################################

header 'PUBLISH STARTED'

dotnet publish --configuration Release \
               --nologo \
               --no-build \
               --no-restore \
               --output $ROOT/Published \
               --verbosity normal

header 'PUBLISH COMPLETED'

###############################################################################

rm --recursive Source