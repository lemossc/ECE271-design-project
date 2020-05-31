module Counter#(parameter N = 10)
            (input  logic clk, reset_n, en,
             input  logic [N-1:0] d,
             output logic [N-1:0] q);
    
    always_ff @(posedge clk, negedge reset_n)
        if(!reset_n)  q <= 0;
        else if (en) q <= d + 1;

endmodule
