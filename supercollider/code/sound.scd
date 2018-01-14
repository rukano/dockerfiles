"Creating test sound".postln;
f = SoundFile.new.headerFormat_("AIFF").sampleFormat_("int16").numChannels_(1);
f.openWrite("/supercollider/code/test.aiff");
b = Signal.sineFill(100, (1..20).reciprocal);
441.do({ f.writeData(b) });
f.close;
"Finished writing file, will shut down".postln;
0.exit;
