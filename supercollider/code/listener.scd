o.free;
o = OSCFunc({ |m, t, a|
	var id = m[1].asString;
	"OSC message received:".postln;
	if ( id.size < 1) {
		"Warning: ID was empty".warn;
	};
	"Generating: %".format(id).postln;
}, '/generate');