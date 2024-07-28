module nor_top_module( 
    input a, 
    input b, 
    output out );
   // nor(out,a,b);
    assign out=~(a|b);
endmodule
