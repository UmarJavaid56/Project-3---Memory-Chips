CHIP RAM512 {
    IN in[16], load, address[9];
    OUT out[16];

    PARTS:
    DMux8Way(in=load, sel=address[0..2], a=a, b=b, c=c, d=d, e=e, f=f, g=g, h=h);

    RAM64(in=in, load=a, address=address[3..8], out=aOut);
    RAM64(in=in, load=b, address=address[3..8], out=bOut);
    RAM64(in=in, load=c, address=address[3..8], out=cOut);
    RAM64(in=in, load=d, address=address[3..8], out=dOut);
    RAM64(in=in, load=e, address=address[3..8], out=eOut);
    RAM64(in=in, load=f, address=address[3..8], out=fOut);
    RAM64(in=in, load=g, address=address[3..8], out=gOut);
    RAM64(in=in, load=h, address=address[3..8], out=hOut);
    
    Mux8Way16(a=aOut, b=bOut, c=cOut, d=dOut, e=eOut, f=fOut, g=gOut, h=hOut, sel=address[0..2], out=out);
}