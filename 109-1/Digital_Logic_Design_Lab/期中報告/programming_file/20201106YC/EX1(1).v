module EX1 (sw,led_red);
input[1:0]sw;
output[3:0]led_red;
reg led;

assign led_red[0] = sw[0]?1'b0:1'b1;
assign led_red[1] = sw[1]?1'b0:1'b1;
assign led_red[2] = (sw[0]==sw[1])?1'b0:1'b1;
assign led_red[3] = led;
always@(sw)
begin
	if(sw[0])
		if(sw[1])
			led=1'b1;
		else
			led=1'b0;
	else
		led=1'b0;
end

endmodule