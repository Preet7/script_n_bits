#!/bin/bash

if [ -z "$1" ]; then
	echo "Need a commit message!"
	exit 1
fi

#This commits what we got and pushes it to the server.
#you need to specify a message as part of the commit.

#Add\del all the files for local staging
git add -A


#commit the changes to our local repo
git commit -m "$@"

git push --all https://github.com/Preet7/script_n_bits.git

