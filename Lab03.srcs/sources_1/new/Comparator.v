`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2020 02:31:15 AM
// Design Name: 
// Module Name: Comparator
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

//This design demonstrates relational and equality opertators 

module Comparator_DataFlow(A_lt_B, A_gt_B, A_eq_B, A, B);
input [63:0] A,B;
output A_lt_B, A_gt_B, A_eq_B;

//Logic
assign A_lt_B = A < B;      //Less than operators
assign A_gt_B = A > B;      //Greater than operators
assign A_eq_B = A == B;     //Equal operators

endmodule
