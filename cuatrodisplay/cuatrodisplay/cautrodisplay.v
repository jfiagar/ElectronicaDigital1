`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:22:11 10/01/2019 
// Design Name: 
// Module Name:    cautrodisplay 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////

module cautrodisplay(
    input [7:0] num,
    input clk,
	 output reg clk5,
    output [0:6] sseg,
    output reg [3:0] an,
	 input rst,
	 output led
    );



reg [3:0] bcd;
//wire [15:0] num=16'h4321;
 
BCDtoSseg bcdtosseg(.BCD(bcd), .SSeg(sseg));



// Divisor de frecuecia

reg [23:0] count =0;
reg [1:0] count1 =0;
always @(posedge clk)
if(count<5000000) begin 
count=count+1;
end
else begin
count=0;
clk5=~clk5;
end

//assign enable = clk5;
assign led =clk5;

always @(posedge clk5) begin
		if(rst==1) begin
			count1<= 0;
			an<=4'b1111; 
		end 
		else begin 
			count1<= count1+1;
			an<=4'b1101; 
			case (count1) 
				2'h0: begin bcd <= num[1:0];   an<=4'b1110; end 
				2'h1: begin bcd <= num[3:2];   an<=4'b1101; end 
				2'h2: begin bcd <= num[5:4];   an<=4'b1011; end 
				2'h3: begin bcd <= num[7:6];   an<=4'b0111; end 
			endcase
		end
end

endmodule
