#!/bin/sh
# Not great but it gets the job done.
cat Main/* | sed "/^[}{]/d; s/^\s*\"//; s/\":\s*/ = /; s/,$//"

echo
echo "vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv"
echo "THIS IS THE OLD SCRIPT, USE OF IT IS NOT RECOMMENDED. USE setup.sh INSTEAD."
echo "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
