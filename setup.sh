#!/bin/sh

read -p "Force lighting engine? (voxel,shadowmap,future) [leave blank to allow game-specified]: " forcelighting 

case $forcelighting in
	"voxel") lightingfile="Render/Lighting/Voxel.json5" ;;
	"shadowmap") lightingfile="Render/Lighting/FutureIsBrightPhase2.json5" ;;
	"future") lightingfile="Render/Lighting/FutureIsBrightPhase3.json5" ;;
esac

echo

cat Main/Base.json Main/Privacy.json $lightingfile \
	| sed -r "/^[{}]/d; \ # Remove bracket lines
	s/^\s*\"?//; \ # Remove beginning whitespace and first quote of key
	s/\"?:\s*/ = /; \ # Replace last quote of key and colon with equals sign
	s/,$//" # Remove end comma

echo
