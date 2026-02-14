// Solution by Seunghyeok Lee
// Problem: Combinational for-loop: Vector reversal 2
// Problem link: https://hdlbits.01xz.net/wiki/Vector100r

module top_module( 
    input [99:0] in,
    output [99:0] out
);

    // In SystemVerilog, streaming operator {<<{}} works here
    always @(*) begin
        for (int i=0; i<100; i++) begin
            out[99-i] = in[i];
        end
    end
    
endmodule