// Solution by Seunghyeok Lee
// Problem: Adder 2
// Problem link: https://hdlbits.01xz.net/wiki/Module_fadd

// Very small slow adder
module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire cout;
    add16 a1 (.a(a[15:0]), .b(b[15:0]), .cin(1'b0), .cout(cout), .sum(sum[15:0]));
    add16 a2 (.a(a[31:16]), .b(b[31:16]), .cin(cout), .sum(sum[31:16]));

endmodule

// Full adder
module add1 ( 
    input  a, 
    input  b, 
    input  cin,   
    output sum, 
    output cout );

	wire w1, wc1, wc2;

    assign w1 = a^b;
    assign sum = w1^cin;
    assign wc1 = w1&cin;
	assign wc2 = a&b;
    assign cout = wc1 | wc2;

endmodule
