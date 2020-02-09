#!/bin/bash

#set -x

PARENT_PATH=$(cd "$(dirname "${BASH_SOURCE[0]}")";pwd -P)
ROOT="$PARENT_PATH"/../../..
SCRIPTS="$ROOT"/Pipelines/Scripts
source $SCRIPTS/header.sh

cd source

###############################################################################

header 'CLEAN STARTED'

dotnet clean --nologo \
             --verbosity normal

header 'CLEAN COMPLETED'

###############################################################################

header 'RESTORE STARTED'

dotnet restore --verbosity normal

header 'RESTORE COMPLETED'

###############################################################################

header 'BUILD STARTED'

dotnet build --configuration Release \
             --no-restore \
             --verbosity normal

header 'BUILD COMPLETED'

###############################################################################

# dotnet publish --configuration Release \
#                --nologo \
#                --no-build \
#                --no-restore \
#                --output $ROOT/Published \
#                --verbosity normal