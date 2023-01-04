`default_nettype none     // Disable implicit nets. Reduces some types of bugs.

// wire [7:0] w;         // 8-bit wire
// reg  [4:1] x;         // 4-bit reg
// output reg [0:0] y;   // 1-bit reg that is also an output port (this is still a vector)
// input wire [3:-2] z;  // 6-bit wire input (negative ranges are allowed)
// output [3:0] a;       // 4-bit output wire. Type is 'wire' unless specified otherwise.
// wire [0:7] b;         // 8-bit wire where b[0] is the most-significant bit.

module top_module( 
    input wire [15:0] in,
    output wire [7:0] out_hi,
    output wire [7:0] out_lo );

endmodule
