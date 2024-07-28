//IC7458 has 10 inputs and 2 outputs, which has 4 and gates and 2 or gates
module ic7458_top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );
    wire [3:0] imr;//intermediate result
    and(imr[0],p2a,p2b);
    and(imr[1],p2c,p2d);
    or(p2y,imr[0],imr[1]);//first output
    and(imr[2],p1a,p1c,p1b);
    and(imr[3],p1d,p1e,p1f);
    or(p1y,imr[2],imr[3]);//second output
endmodule
