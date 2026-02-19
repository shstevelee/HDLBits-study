// Solution by Seunghyeok Lee
// Problem: Two-bit equality
// Problem link: https://hdlbits.01xz.net/wiki/Exams/Mt2015_eq2

module top_module ( 
    input  [1:0] A, 
    input  [1:0] B, 
    output      z 
);

    assign z = (A == B);
    
endmodule