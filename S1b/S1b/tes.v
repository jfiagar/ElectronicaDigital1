`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:00:52 10/21/2019
// Design Name:   S1b
// Module Name:   /home/juan/Documentos/Electronica DIgital/S1b/S1b/tes.v
// Project Name:  S1b
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: S1b
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
	reg A;
	reg B;
	reg Ci;

	// Outputs
	wire Cout;
	wire S;

	// Instantiate the Unit Under Test (UUT)
	S1b uut (
		.A(A), 
		.B(B), 
		.Ci(Ci), 
		.Cout(Cout), 
		.S(S)
	);

	initial begin
		// Initialize Inputs
		A = 1;
		B = 0;
		Ci = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

