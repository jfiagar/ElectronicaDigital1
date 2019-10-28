`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:56:48 10/18/2019 
// Design Name: 
// Module Name:    sseq 
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
module sseq(X,Y,clk,Z);
input X;
input Y;
input clk;
output Z;

wire wq,wd;
sum1bcc m1 (.A(X), .B(Y), .Ci(wq),  .Cout(wd) ,.S(Z));

flipflopD m2 (.D(wd) , .Q(wq) , .CLK(clk));


endmodule
