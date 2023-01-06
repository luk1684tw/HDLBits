module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);

    wire temp_cout;
    add16 add_lo( .a(a[15: 0]), .b(b[15: 0]), .cin(1'b0), .sum(sum[15: 0]), .cout(temp_cout));
    add16 add_hi( .a(a[31:16]), .b(b[31:16]), .cin(temp_cout), .sum(sum[31:16]), .cout());

endmodule

module add1 ( input a, input b, input cin, output sum, output cout );
    assign sum = a ^ b ^ cin;
    assign cout = (a & b) | (a & cin) | (cin & b);
endmodule