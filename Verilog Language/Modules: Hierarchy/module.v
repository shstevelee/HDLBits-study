// Solution by Seunghyeok Lee
// Problem: Modules
// Problem link: https://hdlbits.01xz.net/wiki/Module

module top_module (
    input a, b,
    output out
);

    mod_a instance1 (.in1(a), .in2(b), .out(out));
    
endmodule