#!/bin/bash

#set -x

parent_path=$(cd "$(dirname "${BASH_SOURCE[0]}")";pwd -P)
common="$parent_path"/../../Scripts
source $common/header.sh

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

#header 'BUILD STARTED'

dotnet build --configuration Release \
             --no-restore \
             --verbosity normal

#header 'BUILD COMPLETED'

###############################################################################