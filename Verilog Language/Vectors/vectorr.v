// Solution by Seunghyeok Lee
// Problem: Vector reversal 1
// Problem link: https://hdlbits.01xz.net/wiki/Vectorr

module top_module( 
    input [7:0] in,
    output [7:0] out
);
    assign out[7:0] = {in[0], in[1], in[2], in[3], in[4], in[5], in[6], in[7]};
    // NOTE: for sv, you can use {<<{...}} operator

endmodule