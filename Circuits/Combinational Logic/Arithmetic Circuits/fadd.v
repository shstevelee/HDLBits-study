// Solution by Seunghyeok Lee
// Problem: Full adder
// Problem link: https://hdlbits.01xz.net/wiki/Exams/Fadd

module top_module( 
    input a, b, cin,
    output cout, sum 
);

    wire w;
    assign w = a^b;
    assign sum = w^cin;
    assign cout = (a&b) | (w&cin);

endmodule