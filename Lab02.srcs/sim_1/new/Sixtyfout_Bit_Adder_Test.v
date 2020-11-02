`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/28/2020 04:51:49 AM
// Design Name: 
// Module Name: Sixtyfout_Bit_Adder_Test
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

module Sixtyfout_Bit_Adder_Test();
reg  [63:0] A, B;
reg  Cin;
wire [63:0] Sum;
wire Carry;

initial
begin
    #00 A = 1000; B = 1500; Cin = 0;
    #10 A = 2600; B = 1400; Cin = 0;
    #10 A = 3800; B = 2200; Cin = 0;
    #10 A = 4500; B = 1750; Cin = 0;
    #10 $stop;
    
 end
 //Instantiate
 Sixtyfour_Bit_Adder sixtyfour1(Sum, Carry, A, B, Cin);
 
endmodule

