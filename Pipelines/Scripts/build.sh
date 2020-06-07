#!/bin/bash

WD=$(pwd)
echo "WD:" ${WD}

SCRIPTS=${WD}/code/Pipelines/Scripts
echo "SCRIPTS:" ${SCRIPTS}

source ${SCRIPTS}/header.sh

#echo "------------------------------------------------------------------------------------"

#ls -la

#echo "------------------------------------------------------------------------------------"

#cd code

#ls -la

#echo "------------------------------------------------------------------------------------"

#set -x
#
#PARENT_PATH=$(cd "$(dirname "${BASH_SOURCE[0]}")";pwd -P)
#ROOT="$PARENT_PATH"/../../..
#
#WD=$(pwd)
#echo "WD:" ${WD}
#SCRIPTS=${WD}/code/Pipelines/Scripts
#echo "SCRIPTS:" ${SCRIPTS}

cd code

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

#dotnet publish --configuration Release \
#               --nologo \
#               --no-build \
#               --no-restore \
#               --output ${WD}/Published \
#               --verbosity normal

header 'PUBLISH COMPLETED'

cd ${WD}/code

rm --recursive --force Source