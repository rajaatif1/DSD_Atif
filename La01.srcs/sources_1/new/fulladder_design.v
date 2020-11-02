`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/21/2020 06:27:05 AM
// Design Name: 
// Module Name: fulladder_design
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module fulladder_design( );
reg A,B, Cin;
wire Carry, Sum;

//signals

initial
begin
        #00 Cin = 0; B = 0; A = 0;
        #10 Cin = 0; B = 0; A = 1;
        #10 Cin = 0; B = 1; A = 0;
        #10 Cin = 0; B = 1; A = 1;
        #10 Cin = 1; B = 0; A = 0;
        #10 Cin = 1; B = 0; A = 1;
        #10 Cin = 1; B = 1; A = 0;
        #10 Cin = 1; B = 1; A = 1;
        #20 $stop;
      end
      
  // Instiation
      fulladder fulladder1(Carry, Sum, A, B, Cin);    
endmodule
