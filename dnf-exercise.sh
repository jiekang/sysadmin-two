#!/bin/sh

sudo rpm -e python2-libs --nodeps

if [[ "$?" -ne 0 ]]; then 
	echo "Exercise script failed. Exit code: $?"
else 
	echo "Your python interpreter no longer works. Use dnf to find and fix the problem."
fi
