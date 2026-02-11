// Solution by Seunghyeok Lee
// Problem: Connecting ports by position
// Problem link: https://hdlbits.01xz.net/wiki/Module_pos

module top_module (
    input a, b,
    output out
);

    mod_a instance1 (out1, out2, a, b, c, d);
    
endmodule