fork{
	0.1.wait;
	"Creating OSC receiver".postln;
	OSCdef(\generator, { |m, t, a, p|
		c = m[1].asString;
		"OSC message received:".postln;
		if ( c.size < 1) { "Warning: ID was empty".warn };
		"Generating: %".format(c).postln;
//		"/tmp/code/generate.scd".load;
	}, "/generate");
	"Testing the reciever sending messages".postln;
	n = NetAddr("localhost", 57120);
	1.do { |i|
		"Sent message locally %".format(i.asString).postln;
		n.sendMsg("/generate", i.asString);
	};
}