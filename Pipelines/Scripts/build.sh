#!/bin/bash

#set -x

PARENT_PATH=$(cd "$(dirname "${BASH_SOURCE[0]}")";pwd -P)
echo "PARENT_PATH:" ${PARENT_PATH}
source ${PARENT_PATH}/header.sh

WD=$(pwd)
echo "WD:" ${WD}

ls -la

cd code

ls -la

###############################################################################

header 'DOTNET VERSION'

dotnet --version

header 'DOTNET VERSION'

###############################################################################

header 'CLEAN STARTED'

ls -la

dotnet clean --nologo \
             --verbosity normal

header 'CLEAN COMPLETED'

###############################################################################

header 'RESTORE STARTED'

ls -la

dotnet restore --verbosity normal

header 'RESTORE COMPLETED'

###############################################################################

header 'BUILD STARTED'

ls -la

dotnet build --configuration Release \
             --no-restore \
             --verbosity normal

header 'BUILD COMPLETED'

###############################################################################

header 'PUBLISH STARTED'

ls -la

cd Source/Presentation/Morsley.UK.Walking.Skeleton.API

ls -la

dotnet publish --configuration Release \
               --nologo \
               --no-build \
               --no-restore \
               --output ${WD}/Published \
               --verbosity normal

header 'PUBLISH COMPLETED'

cd ${WD}/code

ls -la

#rm --recursive --force Source