#!/bin/bash
echo "Executing supercollider scripts"
cd supercollider
sclang startup.scd
echo "Rendering scroe to soundfile"
scsynth -N code/score.osc _ out.wav 44100 WAVE int16 -o 1
echo "Finished"
