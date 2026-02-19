// Solution by Seunghyeok Lee
// Problem: 2-to-1 multiplexer
// Problem link: https://hdlbits.01xz.net/wiki/Exams/Mux2to1

module top_module( 
    input  a, b, sel,
    output out 
);

    assign out = (sel ? b : a);

endmodule