module mux(
    input wire [1:0] sel,
    input wire [7:0] s0,
    input wire [7:0] s1,
    input wire [7:0] s2,
    input wire [7:0] s3,
    output wire [7:0] out
);
    reg [7:0] temp_out;

    always @(*) begin
        case (sel)
            2'b00: begin
                temp_out = s0;
            end

            2'b01: begin
                temp_out = s1;
            end

            2'b10: begin
                temp_out = s2;
            end

            2'b11: begin
                temp_out = s3;
            end

            default: begin
                temp_out = 8'b0;
            end
        endcase
    end

    assign out = temp_out;
endmodule

module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output [7:0] q 
);

    wire [7:0] temp1, temp2, temp3;

    my_dff8 d1(
        .clk(clk),
        .d(d),
        .q(temp1)
    );

    my_dff8 d2(
        .clk(clk),
        .d(temp1),
        .q(temp2)
    );

    my_dff8 d3(
        .clk(clk),
        .d(temp2),
        .q(temp3)
    );

    mux(.sel(sel), .s0(d), .s1(temp1), .s2(temp2), .s3(temp3), .out(q));

endmodule
