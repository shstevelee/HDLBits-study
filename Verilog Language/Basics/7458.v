// Solution by Seunghyeok Lee
// Problem: 7458 chip

module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );

	wire w1_1;
    wire w1_2;
    wire w2_1;
    wire w2_2;

    assign w1_1 = p1a & p1b & p1c;
    assign w1_2 = p1d & p1e & p1f;
    assign w2_1 = p2a & p2b;
    assign w2_2 = p2c & p2d;

    assign p1y = w1_1 | w1_2;
    assign p2y = w2_1 | w2_2;

endmodule