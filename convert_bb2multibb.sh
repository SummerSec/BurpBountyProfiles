#!/bin/bash
for file in *.bb
 do 
    echo "Converting File: " $file; python convert.py -i "$file";
done