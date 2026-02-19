// Solution by Seunghyeok Lee
// Problem: Truth tables
// Problem link: https://hdlbits.01xz.net/wiki/Exams/Truthtable1

module top_module( 
    input x3,
    input x2,
    input x1,  // three inputs
    output f   // one output
);

    // SOP form
	wire w2, w3, w5, w7;
    assign w2 = ~x3 & x2 & ~x1;
    assign w3 = ~x3 & x2 & x1;
    assign w5 = x3 & ~x2 & x1;
    assign w7 = x3 & x2 & x1;
    assign f = w2 | w3 | w5 | w7;
    
endmodule
