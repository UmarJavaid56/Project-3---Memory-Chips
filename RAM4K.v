CHIP RAM4K {
    IN in[16], load, address[12];
    OUT out[16];

    PARTS:
    DMux8Way(in=load, sel=address[0..2], a=a, b=b, c=c, d=d, e=e, f=f, g=g, h=h);

    RAM512(in=in, load=a, address=address[3..11], out=aOut);
    RAM512(in=in, load=b, address=address[3..11], out=bOut);
    RAM512(in=in, load=c, address=address[3..11], out=cOut);
    RAM512(in=in, load=d, address=address[3..11], out=dOut);
    RAM512(in=in, load=e, address=address[3..11], out=eOut);
    RAM512(in=in, load=f, address=address[3..11], out=fOut);
    RAM512(in=in, load=g, address=address[3..11], out=gOut);
    RAM512(in=in, load=h, address=address[3..11], out=hOut);
    
    Mux8Way16(a=aOut, b=bOut, c=cOut, d=dOut, e=eOut, f=fOut, g=gOut, h=hOut, sel=address[0..2], out=out);
}