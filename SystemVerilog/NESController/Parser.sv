module Parser#(parameter N = 14)
				  (input  logic [N-1:0] value,
					output logic [3:0] ones, tens, hundreds, thousands, tenThousands);
    
    // ( (value % place*10) - (value % place) ) / place
    
    assign ones 			=   value % (1     * 10) - (value % 1);
    assign tens 			= ( value % (10    * 10) - (value % 10)    ) / 10;
	 assign hundreds 		= ( value % (100   * 10) - (value % 100)   ) / 100;
    assign thousands   	= ( value % (1000  * 10) - (value % 1000)  ) / 1000;
	 assign tenThousands = ( value % (10000 * 10) - (value % 10000) ) / 10000;

endmodule
