#!/bin/bash
# Written By: Sarvpreet Kaur
# Date: 8 April 2017
# Purpose: Run a project wide ctaging, diving into all the subdirectories, generate the local tag files, as well as the master tag file to connect the sub-components.
# User must pass the project home path as parm 1

if [ -z "$1" ]
 then
        echo "Need a project root to start ctaging from!"
 else
        echo "Starting from: $1"
        cd "$1"
        find * -type d -exec dirtag.sh {} \;

        cd "$1"
        ctags --c++-kinds=+p --fields=+iaS --extra=+qf -R .
fi

