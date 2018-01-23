var score_path= "/tmp/out/score-" ++ c.asString ++ ".osc";
var sound_path = "/tmp/out/out-"  ++ c.asString ++ ".wav";

"Loading synths...".postln;
"/tmp/code/synth-defs.scd".load;

"Generating...".postln;
"/tmp/code/generate-score.scd".load;

"Rendering audio file...".postln;
("scsynth -N " ++ score_path ++ " _ " ++ sound_path ++ " 44100 WAVE int16 -o 1").systemCmd;

"Removing temp score file".postln;
("rm " ++ score_path).systemCmd;