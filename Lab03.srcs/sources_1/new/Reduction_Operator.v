`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2020 04:42:39 AM
// Design Name: 
// Module Name: Reduction_Operator
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


module Reduction_Operator(OutAnd, OutOr, OutXor, In);
input [7:0] In;
output OutAnd, OutOr, OutXor;

//Logic
assign OutAnd = & 8'b1111_1110;     //Reduction And = Zero
assign OutOr  = | 8'b1010_1010;     //Reduction OR = One
assign OutXor = ^ 8'b1010_1010;     //Reduction XOR = One


endmodule
