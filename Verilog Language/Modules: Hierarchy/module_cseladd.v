// Solution by Seunghyeok Lee
// Problem: Carry-select adder
// Problem link: https://hdlbits.01xz.net/wiki/Module_cseladd

// Bigger, faster adder than module_fadd.v
module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);

    wire sel;
    add16 asel (.a(a[15:0]), .b(b[15:0]), .cin(1'b0), .cout(sel), .sum(sum[15:0]));

    wire [31:16] s0, s1;

    add16 a0 (.a(a[31:16]), .b(b[31:16]), .cin(1'b0), .sum(s0));
    add16 a1 (.a(a[31:16]), .b(b[31:16]), .cin(1'b1), .sum(s1));

    assign sum[31:16] = sel? s1 : s0;
    
endmodule