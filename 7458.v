module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );

    wire temp1, temp2, temp3, temp4;

    assign temp1 = p1a && p1b && p1c;
    assign temp2 = p1d && p1e && p1f;

    assign temp3 = p2a && p2b;
    assign temp4 = p2c && p2d;

    assign p1y = temp1 || temp2;
    assign p2y = temp3 || temp4;
    
endmodule
