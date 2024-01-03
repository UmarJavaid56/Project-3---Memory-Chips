CHIP PC {
    IN in[16],inc, load, reset;
    OUT out[16];
    
    PARTS:
    Register(in=resetMuxOut, load=true, out=out, out=regOut);
    Inc16(in=regOut, out=incOut);
    Mux16(a=regOut, b=incOut, sel=inc, out=incMuxOut);
    Mux16(a=incMuxOut, b=in, sel=load, out=loadMuxOut);
    Mux16(a=loadMuxOut, b[0..15]=false, sel=reset, out=resetMuxOut);
}