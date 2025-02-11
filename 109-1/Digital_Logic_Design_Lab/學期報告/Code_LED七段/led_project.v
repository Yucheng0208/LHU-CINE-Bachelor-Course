`timescale 1ns / 1ps
module led_project(clk, buttons, leds);
//=====定義變數======================================================
input clk;
input [3:0] buttons;
output reg [3:0] leds;
reg [28:0] cnt;
reg [3:0] tmp;         
initial cnt = 0;
//===========================================================
always@(posedge clk)
begin   
//=====此段紀錄哪個按鈕被按過，只紀錄最後一次按下的按鈕======               
  if(buttons[0]==0)         // LED左移按鈕被按下
     tmp <= 4'b1110;
  else if (buttons[1]==0)   // LED全關按鈕被按下
     tmp <= 4'b1101;
  else if (buttons[2]==0)   // LED全開按鈕被按下
     tmp <= 4'b1011;
  else if (buttons[3]==0)   // LED右移按鈕被按下
     tmp <= 4'b0111;
//===========================================================
  if(tmp == 4'b1011)        // 設定LED全開
     begin                  
       leds <= 4'b1111;
       cnt <= 29'd0;
     end
  else if(tmp == 4'b1101)   // 設定LED全關
     begin                 
       leds <= 4'b0000;
       cnt <= 29'd0;
     end 
//50Mhz每5千萬次CLK為1秒，所以設定led的cnt分段點為50M、100M、150M、200M次
  else if(tmp == 4'b1110)   // 設定LED左移
     begin
       
       if(cnt == 29'd0)
         leds <= 4'b0001;
       else if(cnt == 29'd50000000)
         leds <= 4'b0010;
       else if(cnt == 29'd100000000)
         leds <= 4'b0100;
       else if(cnt == 29'd150000000)
         leds <= 4'b1000;
		 
	   if(cnt == 29'd200000000)
         cnt = 29'd0;
       else 
	     cnt = cnt + 1;
     end
  else if(tmp == 4'b0111)  // 設定LED右移
     begin
	 
       if(cnt == 29'd200000000)
         leds <= 4'b1000;
       else if(cnt == 29'd150000000)
         leds <= 4'b0100;
       else if(cnt == 29'd100000000)
         leds <= 4'b0010;
       else if(cnt == 29'd50000000)
         leds <= 4'b0001;
		 
	   if(cnt == 29'd0)
         cnt = 29'd200000000;
       else 
	     cnt = cnt - 1; 

       end
end

endmodule
