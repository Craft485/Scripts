#!/usr/bin/bash

shellFiles=`ls --file-type *.sh`

mkdir -p out

for file in $shellFiles; do
    if [[ ! $file =~ "test.sh" ]] && [[ ! $file =~ "build_scripts" ]]; then
        fileContents=`cat $file`
        # echo "$fileContents"
        fileName="${file/\.sh/""}"
        # echo "$fileName"
        echo "$fileContents" > ./out/$fileName
    fi
done