// Solution by Seunghyeok Lee
// Problem: Priority encoder
// Problem link: https://hdlbits.01xz.net/wiki/Always_case2

// A priority encoder is a combinational circuit that, 
// when given an input bit vector, outputs the position of the 
// first 1 bit in the vector. For example, a 8-bit priority encoder 
// given the input 8'b10010000 would output 3'd4, because bit[4] 
// is first bit that is high.

module top_module (
    input [3:0] in,
    output reg [1:0] pos  
);

    always @(*) begin
        if (in & 4'd1)
            pos = 0;
        else if (in & 4'd2)
            pos = 1;
        else if (in & 4'd4)
            pos = 2;
        else if (in & 4'd8)
            pos = 3;
        else
            pos = 0;
    end
    
endmodule