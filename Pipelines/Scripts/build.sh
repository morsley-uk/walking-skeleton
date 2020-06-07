#!/bin/bash

set -x

PARENT_PATH=$(cd "$(dirname "${BASH_SOURCE[0]}")";pwd -P)
ROOT="$PARENT_PATH"/../..

WD=$(pwd)
echo "WD:" ${WD}
SCRIPTS=${WD}/deploy/Pipelines/Scripts
echo "SCRIPTS:" ${SCRIPTS}
source ${SCRIPTS}/header.sh

ls -la

cd code

ls -la

cd ..

ls -la 

cd .. 

ls -la

###############################################################################

#header 'CLEAN STARTED'
#
#dotnet clean --nologo \
#             --verbosity normal
#
#header 'CLEAN COMPLETED'

###############################################################################

#header 'RESTORE STARTED'
#
#dotnet restore --verbosity normal
#
#header 'RESTORE COMPLETED'

###############################################################################

#header 'BUILD STARTED'
#
#dotnet build --configuration Release \
#             --no-restore \
#             --verbosity normal
#
#header 'BUILD COMPLETED'

###############################################################################

#header 'PUBLISH STARTED'
#
#cd Source/Presentation/Morsley.UK.Walking.Skeleton.API
#
#dotnet publish --configuration Release \
#               --nologo \
#               --no-build \
#               --no-restore \
#               --output ${ROOT}/Published \
#               --verbosity normal
#
#header 'PUBLISH COMPLETED'
#
#cd ../../..
#
#rm --recursive Source