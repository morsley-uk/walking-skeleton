#!/bin/bash

parent_path=$(cd "$(dirname "${BASH_SOURCE[0]}")";pwd -P)
common="$parent_path"/../../Scripts
source $common/header.sh

cd built

###############################################################################

header 'PUBLISH STARTED'

dotnet publish --configuration Release \
               --nologo \
               --no-build \
               --no-restore \
               --output Published \
               --verbosity normal

header 'PUBLISH COMPLETED'

###############################################################################