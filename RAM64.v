CHIP RAM64 {
    IN in[16], load, address[6];
    OUT out[16];

    PARTS:

    DMux8Way(in=load, sel=address[0..2], a=a, b=b, c=c, d=d, e=e, f=f, g=g, h=h);

    RAM8(in=in, load=a, address=address[3..5], out=aOut);
    RAM8(in=in, load=b, address=address[3..5], out=bOut);
    RAM8(in=in, load=c, address=address[3..5], out=cOut);
    RAM8(in=in, load=d, address=address[3..5], out=dOut);
    RAM8(in=in, load=e, address=address[3..5], out=eOut);
    RAM8(in=in, load=f, address=address[3..5], out=fOut);
    RAM8(in=in, load=g, address=address[3..5], out=gOut);
    RAM8(in=in, load=h, address=address[3..5], out=hOut);

    Mux8Way16(a=aOut, b=bOut, c=cOut, d=dOut, e=eOut, f=fOut, g=gOut, h=hOut, sel=address[0..2], out=out);
}

