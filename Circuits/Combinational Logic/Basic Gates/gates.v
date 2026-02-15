// Solution by Seunghyeok Lee
// Problem: More logic gates
// Problem link: https://hdlbits.01xz.net/wiki/Gates

module top_module( 
    input a, b,
    output out_and,
    output out_or,
    output out_xor,
    output out_nand,
    output out_nor,
    output out_xnor,
    output out_anotb
);

    assign {out_and, out_or, out_xor} = {a&b, a|b, a^b};
    assign {out_nand, out_nor, out_xnor} = {~out_and, ~out_or, ~out_xor};
    assign out_anotb = a&~b;

endmodule