"Executing synths file".postln;
"/supercollider/code/synth-defs.scd".load;

"Executing generator".postln;
"/supercollider/code/generate-score.scd".load;

"Rendering audio file...".postln;
"scsynth -N /supercollider/score.osc _ /supercollider/out.wav 44100 WAVE int16 -o 1".systemCmd;

0.exit;