module EX3(
	clk,
	KEY,
	LEDG,
	counter
);
output reg[3:0]LEDG;
input clk;
input [3:0] KEY;
reg[8:0] coumter;
always @(posedege clk)
begin
	if(KEY[3])
		if(counter == 8'd50000000)
			conter <= counter + 1;
			LEDG <= LEDG + 1;
			LEDG[LEDG]<= ~LEDG[LEDG]
		//R->F
	else if(KEY[2])
			LEDG[0]<= ~LEDG[3:0];
		//all turn
	else if(KEY[1])
			LEDG[0]<= LEDG[3:0];
		 //all shuntdown
	if(counter == 8')
			conter <= counter + 1;
			LEDG[LEDG]<= ~LEDG[LEDG]
			LEDG <= LEDG - 1;
	//R->F
	
	else
		
		
end
endmodule



		
/*module EX3(
	CLOCK_50,
	KEY,
	LEDG, 
);
reg[3:0] counter;
input CLOCK_50;
input [3:0]KEY;
output reg[8:0]LEDG;

always @(posedge KEY[0])
	if(coonter==3' d50000000)begin
		LEDG >= LEDG +1;
		conter <= 0;
	end
always @(posedge KEY[3])
	else if(coonter==3' d50000000)begin
		LEDG <= LEDG +1;
		conter <= 0;	
	end

	else if begin 
		LEDG[2]<= ~LEDG[3:0] //all open
	end
	
	else if begin
		LEDG[1]<= LEDG[3:0] //all close
	end
	
	else begin
	
	end
	
endmodule
*/