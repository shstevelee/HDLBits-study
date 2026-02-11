// Solution by Seunghyeok Lee
// Problem: Adder-subtractor
// Problem link: https://hdlbits.01xz.net/wiki/Module_addsub

module top_module(
    input  [31:0] a,
    input  [31:0] b,
    input         sub,
    output [31:0] sum
);
	wire cout;
    wire [31:0] signed_b;

    assign signed_b = sub? ~b: b;

    add16 a1 (.a(a[15:0]), .b(signed_b[15:0]), .cin(sub), .cout(cout), .sum(sum[15:0]));
    add16 a2 (.a(a[31:16]), .b(signed_b[31:16]), .cin(cout), .sum(sum[31:16]));

endmodule