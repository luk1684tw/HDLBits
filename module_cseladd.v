module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire temp_cout;
    reg  [15: 0] sum_hi;
    wire [15: 0] candicate_sum0, candicate_sum1;

    add16 add_lo(.a(a[15: 0]), .b(b[15: 0]), .cin(1'b0), .sum(sum[15: 0]), .cout(temp_cout));

    add16 add_hi1(.a(a[31:16]), .b(b[31:16]), .cin(1'b0), .sum(candicate_sum0), .cout());
    add16 add_hi2(.a(a[31:16]), .b(b[31:16]), .cin(1'b1), .sum(candicate_sum1), .cout());

    always @(*) begin
        case (temp_cout)
            1'b0: begin
                sum_hi = candicate_sum0;
            end

            1'b1: begin
                sum_hi = candicate_sum1;
            end

            default: begin
                sum_hi = 16'b0;
            end
        endcase
    end
    
    assign sum[31:16] = sum_hi;
endmodule
