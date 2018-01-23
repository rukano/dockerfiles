"Loading synths...".postln;
"/tmp/code/synth-defs.scd".load;

"Generating...".postln;
"/tmp/code/generate-score.scd".load;

"Rendering audio file...".postln;
("scsynth -N /tmp/out/score-" ++ c.asString ++ ".osc _ /tmp/out/out-"  ++ c.asString ++ ".wav 44100 WAVE int16 -o 1").systemCmd;