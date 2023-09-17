#!/bin/sh
# Not great but it gets the job done.
cat Main/* | sed "/^[}{]/d; s/^\s*\"//; s/\":\s*/ = /; s/,$//"
