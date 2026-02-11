// Solution by Seunghyeok Lee
// Problem: Modules and vectors
// Problem link: https://hdlbits.01xz.net/wiki/Module_shift8

module top_module ( 
    input         clk, 
    input   [7:0] d, 
    input   [1:0] sel, 
    output  [7:0] q 
);
    wire [7:0] q1, q2, q3;
    my_dff8 d1 (.clk(clk), .d(d), .q(q1));
    my_dff8 d2 (.clk(clk), .d(q1), .q(q2));
    my_dff8 d3 (.clk(clk), .d(q2), .q(q3));
    
    wire [3:0][7:0] q_in;
    assign q_in = {q3, q2, q1, d};
    assign q    = q_in[sel];
    
endmodule