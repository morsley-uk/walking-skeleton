#!/bin/bash

#set -x

PARENT_PATH=$(cd "$(dirname "${BASH_SOURCE[0]}")";pwd -P)
ROOT="$PARENT_PATH"/../../..
SCRIPTS="$ROOT"/Scripts
source $SCRIPTS/header.sh

cd built

#mkdir TestResults
#cd TestResults
#touch test
#cd ..

cd Tests/Unit

###############################################################################

header 'UNIT TESTS STARTED'

for d in */; do

    cd "$d"

    projectFile=$(find . -type f -name "*.csproj")

    sub-header 'TESTS INITIATED'

    dotnet test $projectFile --configuration=Release \
                             --no-build \
                             --no-restore \
                             --results-directory=$ROOT/TestResults/Unit \
                             --logger=trx \
                             --verbosity=normal

    sub-header 'TESTS FINISHED'

    cd ..

done

header 'UNIT TESTS COMPLETED'

###############################################################################