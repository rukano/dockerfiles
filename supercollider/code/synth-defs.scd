SynthDef('ping', { |out, freq=440, amp=0.1, sustain=0.1|
	var fb = XLine.ar( ExpRand(0.5, 0.1), ExpRand(0.1, 0.01), sustain);
	var mod = LFNoise2.kr(1, 0.015, 1);
	var snd = SinOscFB.ar(freq * mod, fb);
	snd = snd * amp;
	snd = snd * EnvGen.ar(Env.perc(0.01, sustain), doneAction:2);
	Out.ar(out, snd)
}).writeDefFile;