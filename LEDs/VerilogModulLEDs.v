`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:21:55 09/10/2019 
// Design Name: 
// Module Name:    VerilogModulLEDs 
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
module VerilogModulLEDs(a,b);

input a;
output reg b;

always @ (*) begin 

if (a==1)
b=1;
else 
b=0;
end





endmodule
