`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:57:30 10/21/2019
// Design Name:   cautrodisplay
// Module Name:   /home/juan/Documentos/Electronica DIgital/cuatrodisplay/cuatrodisplay/tes.v
// Project Name:  cuatrodisplay
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: cautrodisplay
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tes;

	// Inputs
	reg [7:0] num;
	reg clk;
	reg rst;

	// Outputs
	wire clk5;
	wire [0:6] sseg;
	wire [3:0] an;
	wire led;

	// Instantiate the Unit Under Test (UUT)
	cautrodisplay uut (
		.num(num), 
		.clk(clk), 
		.clk5(clk5), 
		.sseg(sseg), 
		.an(an), 
		.rst(rst), 
		.led(led)
	);

	initial begin
		// Initialize Inputs
		num = 1;
		clk = 0;
		rst = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

