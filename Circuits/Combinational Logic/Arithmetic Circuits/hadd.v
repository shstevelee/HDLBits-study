// Solution by Seunghyeok Lee
// Problem: Half adder
// Problem link: https://hdlbits.01xz.net/wiki/Exams/Hadd

module top_module( 
    input  a, b,
    output cout, sum 
);

	assign cout = a & b;
    assign sum = a ^ b;
 
endmodule