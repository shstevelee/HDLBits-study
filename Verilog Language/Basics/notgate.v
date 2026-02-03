// Solution by Seunghyeok Lee
// Problem: Inverter

module top_module ( input in, output out );
    // Note: ~in would do the same job
    assign out = !in;
endmodule