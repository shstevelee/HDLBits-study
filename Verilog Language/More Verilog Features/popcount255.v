// Solution by Seunghyeok Lee
// Problem: Combinational for-loop: 255 bit population count
// Problem link: https://hdlbits.01xz.net/wiki/Popcount255

module top_module( 
    input [254:0] in,
    output [7:0] out 
);
    
    reg [7:0] count;
    always @(*) begin
        count = 8'd0;
        for (int i=0; i<255; i++) begin
            count += in[i];
        end
    end
    assign out = count;
    
endmodule
