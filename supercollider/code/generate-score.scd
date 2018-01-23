"Generating score".postln;
a = Pbind(
	\instrument, \ping,
	\scale, Scale.minor,
	\octave, Prand([4, 5], inf),
	\degree, Pwhite(0, 7, 8),
	\dur, 1/4,
);
b = a.asScore.sort.write("score.osc");