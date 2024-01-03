CHIP Bit {
    IN in, load;
    OUT out;

    PARTS:
    Mux(a=repout, b=in, sel=load, out=Muxout);
    DFF(in=Muxout, out=out, out=repout);
}