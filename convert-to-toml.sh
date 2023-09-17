#!/bin/sh
cat ClientAppSettings.json | sed \ "/^[{}]/d; s/^\s*\"//; s/\":\s*/ = /; s/,$//"
