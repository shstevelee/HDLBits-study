// Solution by Seunghyeok Lee
// Problem: Three modules
// Problem link: https://hdlbits.01xz.net/wiki/Module_shift

module top_module (
    input clk, 
    input d, 
    output q 
);

    wire out1, out2;
    my_dff f1 (.clk(clk), .d(d), .q(out1));
    my_dff f2 (.clk(clk), .d(out1), .q(out2));
    my_dff f3 (.clk(clk), .d(out2), .q(q));

endmodule

// Shows an assignment syntax that is faster to write
module alt_assignment_syntax ( 
    input clk, 
    input d, 
    output q 
);
    wire out1, out2;
    my_dff f1 (.q(out1), .*);
    my_dff f2 (.d(out1), .q(out2), .*);
    my_dff f3 (.d(out2), .*);
endmodule