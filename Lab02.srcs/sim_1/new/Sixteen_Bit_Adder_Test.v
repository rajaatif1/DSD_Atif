`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/28/2020 02:51:41 AM
// Design Name: 
// Module Name: Sixteen_Bit_Adder_Test
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


module Sixteen_Bit_Adder_Test(   );

reg  [15:0] A, B;
reg  Cin;
wire [15:0] Sum;
wire Carry;

initial
begin
    #00 A = 1000; B = 1500; Cin = 0;
    #10 A = 2000; B = 1500; Cin = 0;
    #10 A = 3000; B = 1500; Cin = 0;
    #10 A = 4000; B = 1500; Cin = 0;
    #10 $stop;
    
 end
 //Instantiate
 Sixteen_Bit_Adder SB1(Sum, Carry, A, B, Cin );
endmodule
