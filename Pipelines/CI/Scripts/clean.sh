#!/bin/bash

parent_path=$(cd "$(dirname "${BASH_SOURCE[0]}")";pwd -P)
common="$parent_path"/../../Scripts
source $common/header.sh

header 'CLEAN STARTED'

#dotnet clean --verbosity normal --nologo

#find . -iname "bin" | xargs rm -rf
#find . -iname "obj" | xargs rm -rf

#rm -r Published

mkdir Clean

header 'CLEAN COMPLETED'