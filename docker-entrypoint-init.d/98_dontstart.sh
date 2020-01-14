#!/bin/bash
#
# Rename this file to 98_dontstart.sh to prevent freeside from starting
# This allows changes to be made to Freeside, the DB, perl modules, etc..
echo "Sleeping to prevent freeside from starting"
while [ 1 -eq 1 ]
do
    sleep 60
done

