CHIP RAM8 {
    IN in[16], load, address[3];
    OUT out[16];

    PARTS:

    DMux8Way(in=load, sel=address, a=a, b=b, c=c, d=d, e=e, f=f, g=g, h=h);

    RAM8(in=in, load=a, out=aOut);
    RAM8(in=in, load=b, out=bOut);
    RAM8(in=in, load=c, out=cOut);
    RAM8(in=in, load=d, out=dOut);
    RAM8(in=in, load=e, out=eOut);
    RAM8(in=in, load=f, out=fOut);
    RAM8(in=in, load=g, out=gOut);
    RAM8(in=in, load=h, out=hOut);

    Mux8Way16(a=aOut, b=bOut, c=cOut, d=dOut, e=eOut, f=fOut, g=gOut, h=hOut, sel=address, out=out);
}

