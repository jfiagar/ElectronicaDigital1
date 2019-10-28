`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:43:42 10/18/2019 
// Design Name: 
// Module Name:    flipflopD 
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
module flipflopD( Q,Qbar,D,CLK,Reset);

output  reg  Q; 

output   Qbar; 

input   D, CLK, Reset; 

assign Qbar = ~Q; 

always @(posedge CLK) 

begin 

 if (Reset == 1'b1) //If not at reset 

  Q = 1'b0;

 else 

  Q = D;

end 


endmodule
