module Comparator#(parameter N = 10, M = 100)
						(input  logic [N-1:0] a,
						 output logic lt);

	assign lt = a < M;

endmodule
