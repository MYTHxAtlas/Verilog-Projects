module xnor_top_module( 
    input a, 
    input b, 
    output out );
   // xnor(out,a,b);
    assign out=~(~a&b|a&~b);
endmodule
