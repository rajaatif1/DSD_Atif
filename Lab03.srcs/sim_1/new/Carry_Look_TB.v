`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2020 07:31:49 AM
// Design Name: 
// Module Name: Carry_Look_TB
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


module Carry_Look_TB();
reg [3:0] a, b; 
reg  Cin;
wire [3:0] Sum; 
wire Carry;

// signal generation 
initial
begin
   #00 a = 7;  b  = 10; Cin = 0; 
   #10 a = 7;  b  = 15; Cin = 0; 
   #10 a = 8;  b  = 6;  Cin = 0; 
   #10 a = 9;  b  = 12; Cin = 0; 
   #10 a = 10; b  = 13; Cin = 0; 
   #10 a = 15; b  = 10; Cin = 0; 
   #10 $stop; 
end 

// instatiate 
Carry_Look_Ahead_Adder_DF inst0(Sum, Carry, a, b, Cin);
endmodule
