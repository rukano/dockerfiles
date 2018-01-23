#!/bin/bash
echo "Executing supercollider scripts"
cd /supercollider
sclang startup.scd
echo "Renaming output file to"
echo $1.wav
mv /rendered/out.wav /rendered/$1.wav
echo "Finished"