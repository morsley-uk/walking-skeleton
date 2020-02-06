#!/bin/bash

parent_path=$(cd "$(dirname "${BASH_SOURCE[0]}")";pwd -P)
common="$parent_path"/../../Scripts
source $common/header.sh

cd source

###############################################################################

header 'CLEAN STARTED'

dotnet clean --verbosity normal --nologo

header 'CLEAN COMPLETED'

###############################################################################

header 'RESTORE STARTED'

dotnet restore --verbosity normal

header 'RESTORE COMPLETED'

###############################################################################

header 'BUILD STARTED'

dotnet build --verbosity normal --configuration Release --no-restore

header 'BUILD COMPLETED'

###############################################################################