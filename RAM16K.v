CHIP RAM16K {
    IN in[16], load, address[14];
    OUT out[16];

    PARTS:
    DMux4Way(in=load, sel=address[0..1], a=a, b=b, c=c, d=d);

    RAM4K(in=in, load=a, address=address[2..13], out=aOut);
    RAM4K(in=in, load=b, address=address[2..13], out=bOut);
    RAM4K(in=in, load=c, address=address[2..13], out=cOut);
    RAM4K(in=in, load=d, address=address[2..13], out=dOut);
    
    Mux4Way16(a=aOut, b=bOut, c=cOut, d=dOut, sel=address[0..1], out=out);
}