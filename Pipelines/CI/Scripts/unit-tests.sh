#!/bin/bash

#set -x

PARENT_PATH=$(cd "$(dirname "${BASH_SOURCE[0]}")";pwd -P)
ROOT="$PARENT_PATH"/../../..
SCRIPTS="$ROOT"/Pipelines/Scripts
source $SCRIPTS/header.sh

cd built/Tests/Unit

###############################################################################

header 'UNIT TESTS STARTED'

for d in */; do

    cd "$d"

    # dotnet test $projectFile --configuration=Release \
    #                          --no-build \
    #                          --no-restore \
    #                          --results-directory=$ROOT/TestResults/Unit \
    #                          --logger=trx \
    #                          --verbosity=diagnostic

    test-project=$(find . -type f -name "*.csproj")

    if [[ $test_project ]]; then
    
        sub-header 'TESTS INITIATED'

        filename=$(basename $test_project)    
        filename=${filename%.*}.dll
        echo $filename
        
        test_dll=$(find *bin/Release* -type f -name $filename)
        echo $test_dll
    
        dotnet vstest $test_dll --logger:trx \
                                --ResultsDirectory:$PARENT_PATH/UnitTestsResults

        sub-header 'TESTS FINISHED'

    fi
    

    cd ..

done

header 'UNIT TESTS COMPLETED'

###############################################################################

# ToDo --> Remove Unit Tests folder.