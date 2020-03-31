#!/bin/bash

# dirlist is array of list directory want to create
# if just want make 1 directory, write 1 line in dirlist.txt
cat "./dirlist.txt" | while read nameDir
    do 
        # handler for skip line using symbol "#"
        case "$nameDir" in \#*)
            continue
            ;;
        esac
            # function create directory
            if [ ! -d "$nameDir/${YYYY}/${MM}" ]; 
                then
                    mkdir -p "$nameDir/${YYYY}/${MM}"
            fi
    done
