#!/bin/bash

parent_path=$(cd "$(dirname "${BASH_SOURCE[0]}")";pwd -P)
common="$parent_path"/../../Scripts
source $common/header.sh

cd source-master

###############################################################################

header 'TESTS STARTED'

for d in */; do

	echo "$d"
    #cd "$d"

    #ls -la

    projectFile=$(find . -type f -name "*.csproj")

    echo $projectFile
    #cd "$projectFile"

    #echo "-------------------------------------------------------------------------------"
    #printf "\n"
    #echo "---------- TESTS INITIATED ----------"

    # dotnet test  --verbosity quiet \
    #                          --no-build \
    #                          --no-restore \
    #                          --results-directory TestResults \
    #                          --logger trx \
    #                          --configuration Release

    #echo "---------- TESTS FINISHED ----------"
    #printf "\n"
    #echo "-------------------------------------------------------------------------------"
    #printf "\n"
    #printf "\n"
    #printf "\n"

done

header 'TESTS COMPLETED'

###############################################################################

# header 'RESTORE STARTED'

# dotnet restore --verbosity normal

# header 'RESTORE COMPLETED'

###############################################################################

# header 'BUILD STARTED'

# dotnet build --verbosity normal --configuration Release --no-restore

# header 'BUILD COMPLETED'

###############################################################################

# header 'PUBLISH STARTED'

# dotnet publish --verbosity normal --configuration Release --no-build --no-restore --output Published --nologo

# header 'PUBLISH COMPLETED'

###############################################################################