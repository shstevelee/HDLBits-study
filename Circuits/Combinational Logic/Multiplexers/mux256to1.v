// Solution by Seunghyeok Lee
// Problem: 256-to-1 multiplexer
// Problem link: https://hdlbits.01xz.net/wiki/Exams/Mux256to1

module top_module( 
    input [255:0]   in,
    input [7:0]     sel,
    output          out 
);

    assign out = in[sel];

endmodule