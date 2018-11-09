`timescale 1 ns / 1 ps
// Lucas Alva-Ganoza, Adam Cordingley, Zijian Xu
// EECS-301 Fall 2018



module TF_EECS301_Lab1_TopLevel();

	reg clk, en, x, y, cin, cout, sum, complete;
	reg [4:0] i;
	
	
	always// no sensitivity list, always executes 
		begin
			clk = 0; #5;  
			clk = 1; #5;  // 10ns clk period
		end
	
	
	initial begin
		i 		= 0;
		en 	= 0;
		x 		= 0;
		y 		= 0;
		cin 	= 0;
		cout 	= 0;
		sum 	= 0;
		complete = 0;
	end
	
	EECS301_Lab1_TopLevel dut(
		.EN(en),
		.X(x),
		.Y(y),
		.Kin(cin),
		.Kout(cout),
		.U(sum)
	);
	
	
	always @(posedge clk) begin
		if(complete == 0) begin
			i = i+1;
			
			if(i >= 16) begin
				complete = 1;
			end
		
		end
	end
		
	
	

endmodule
