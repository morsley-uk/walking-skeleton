#!/bin/bash

#set -x

parent_path=$(cd "$(dirname "${BASH_SOURCE[0]}")";pwd -P)
common="$parent_path"/../../Scripts
source $common/header.sh

cd built

mkdir TestResults

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
                             --results-directory=built/TestResults \
                             --logger=trx \
                             --verbosity=normal

    echo 'TESTS FINISHED'

    cd ..

done

header 'UNIT TESTS COMPLETED'

###############################################################################