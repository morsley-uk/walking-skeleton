#!/bin/bash

parent_path=$(cd "$(dirname "${BASH_SOURCE[0]}")";pwd -P)
common="$parent_path"/../../Scripts
source $common/header.sh

cd built/Tests/Unit

###############################################################################

header 'TESTS STARTED'

for d in */; do

    #echo "$d"
    #cd "$d"

    #ls -la

    projectFile=$(find . -type f -name "*.csproj")
    echo $projectFile
    #cd "$projectFile"

    #echo "-------------------------------------------------------------------------------"
    #printf "\n"
    #echo "---------- TESTS INITIATED ----------"

    dotnet test --help

    #dotnet test $projectFile --verbosity normal \
    #                         --no-build \
    #                         --no-restore \
    #                         --results-directory built/TestResults \
    #                         --logger trx \
    #                         --configuration Release

    #echo "---------- TESTS FINISHED ----------"
    #printf "\n"
    #echo "-------------------------------------------------------------------------------"
    #printf "\n"
    #printf "\n"
    #printf "\n"

done

header 'TESTS COMPLETED'

###############################################################################