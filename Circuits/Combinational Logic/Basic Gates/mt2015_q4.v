// Solution by Seunghyeok Lee
// Problem: Combine circuits A and B
// Problem link: https://hdlbits.01xz.net/wiki/Exams/Mt2015_q4

module top_module (
    input  x, 
    input  y, 
    output z
);

    wire [1:0] w1, w2;
    assign w1 = {(x ^ y) & x, ~(x^y)};
    assign w2 = {|w1, &w1};
    assign z = ^w2;

endmodule
