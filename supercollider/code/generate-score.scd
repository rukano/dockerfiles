"Generating score".postln;
x = 16.collect{ |i| [i/4, [\s_new, 'ping', 1000+i, 0, 0, \freq, exprand(200.0, 2000.0), \sustain, exprand(0.1, 0.3), \out, 0, \amp, exprand(0.1, 0.3)]] };
x = x.add([4.5, [\c_set, 0, 0]]);
Score.write(x, "score.osc");