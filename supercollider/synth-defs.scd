SynthDef("NRTsine", { |out, freq = 440|
    Out.ar(out,
         SinOsc.ar(freq, 0, 0.2)
    )
}).writeDefFile;