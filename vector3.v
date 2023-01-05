// input [15:0] in;
// output [23:0] out;
// assign {out[7:0], out[15:8]} = in;           // Swap two bytes. Right side and left side are both 16-bit vectors.
// assign out[15:0] = {in[7:0], in[15:8]};      // This is the same thing.
// assign out = {in[7:0], in[15:8]};            // This is different. The 16-bit vector on the right is extended to
                                                // match the 24-bit vector on the left, so out[23:16] are zero.
                                                // In the first two examples, out[23:16] are not assigned.

module top_module (
    input [4:0] a, b, c, d, e, f,
    output [7:0] w, x, y, z );//

    assign w = {a[4:0], b[4:2]};
    assign x = {b[1:0], c[4:0], d[4]};
    assign y = {d[3:0], e[4:1]};
    assign z = {e[0], f[4:0], 2'b11};

endmodule
