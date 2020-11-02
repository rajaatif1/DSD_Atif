`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2020 12:43:07 AM
// Design Name: 
// Module Name: Sixty_Four_bit_Adder
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


module Sixty_Four_bit_Adder(Sum, Carry, A, B, Cin);

input [63:0] A, B;
input Cin;
output [63:0] Sum;
output Carry;

//logic design
assign {Carry, Sum} = A + B;


endmodule
