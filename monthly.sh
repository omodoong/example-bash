#!/bin/bash

# dirlist is array of list directory want to create
# if just want make 1 directory, write 1 line in dirlist.txt
cat "./dirlist.txt" | while read nameDir
    do 
        case "$nameDir" in \#*)
            continue
            ;;
        esac
            if [ ! -d "$nameDir/${YYYY}/${MM}" ]; 
                then
                    mkdir -p "$nameDir/${YYYY}/${MM}"
            fi
    done
