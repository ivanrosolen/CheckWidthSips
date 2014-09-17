#!/bin/bash

for file in $(find . -name '*.JPG')
do
    echo "$file"

    WIDTH=`sips -g pixelWidth $file | tail -n1 | cut -d' ' -f4`

    if [ "$WIDTH" -lt "500" ]; then
        mv $file ./nope/
    fi

done
