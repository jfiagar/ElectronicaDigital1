`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:05:30 09/24/2019 
// Design Name: 
// Module Name:    entrada 
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
module entrada(aswu,aswd,carryo,seg,ans);

  input [3:0] aswu;
  input [3:0] aswd;
  
  output carryo;
  output [0:6] seg;
  output [3:0] ans;
  wire [3:0] sumaenB;
  
  sum4bcc ss0 (.xi(aswu), .yi(aswd), .co(carryo),  .zi(sumaenB) );
  sietesegmentosBCD ss1 (.BCD(sumaenB),  .SSeg(seg) ,  .an(ans));
  
endmodule
