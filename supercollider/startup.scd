//"Creating test sound".postln;
//f = SoundFile.new.headerFormat_("AIFF").sampleFormat_("int16").numChannels_(1);
//f.openWrite("/supercollider/test.aiff");
//b = Signal.sineFill(100, (1..20).reciprocal);
//441.do({ f.writeData(b) });
//f.close;
//"Finished writing file, will shut down".postln;

"Executing synths file".postln;
"/supercollider/code/synth-defs.scd".load;
"/supercollider/code/generate-score.scd".load;
"./scsynth -N score.osc _ out.aiff 44100 AIFF int16 -o 1".unixCmd;
0.exit;