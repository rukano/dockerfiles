fork{
	0.1.wait;
	"Creating OSC receiver".postln;
	OSCdef(\generator, { |m, t, a, p|
		c = m[1].asString;
		if ( c.size < 1) { "Warning: ID was empty".warn };
		"Generating: %".format(c).postln;
		"/tmp/code/generate.scd".load;
	}, "/generate");
};