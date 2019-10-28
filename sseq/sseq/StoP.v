`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:38:34 10/18/2019 
// Design Name: 
// Module Name:    StoP 
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
module StoP( ES,clk, P4);

  input [3 :0] ES;
  input clk;
  output [3 :0] P4;


  wire qd1,qd2,qd3;
  flipflopD ff1 (.D(ES) , .Q(qd1) , .CLK(clk));
  flipflopD ff2 (.D(qd1) , .Q(qd2) , .CLK(clk));
  flipflopD ff3 (.D(qd2) , .Q(qd3) , .CLK(clk));
  flipflopD ff4 (.D(qd3) , .Q(P4[3]) , .CLK(clk));

endmodule
