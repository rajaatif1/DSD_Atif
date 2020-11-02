`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2020 06:55:36 AM
// Design Name: 
// Module Name: Carry_Look_Ahead_Adder_DF
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


module Carry_Look_Ahead_Adder_DF(Sum, Carry, a, b, Cin);
input [3:0] a, b;
input Cin;
output [3:0] Sum;
output Carry;

wire p0, g0, p1, g1, p2, g2, p3, g3;
wire c4, c3, c2, c1;

assign p0 = a[0] ^ b[0],
       p1 = a[1] ^ b[1],
       p2 = a[2] ^ b[2],
       p3 = a[3] ^ b[3];
       
assign g0 = a[0] & b[0],
       g1 = a[1] & b[1],
       g2 = a[2] & b[2],
       g3 = a[3] & b[3];
       
assign c1 = g0 | (p0 & Cin),
       c2 = g1 | (p1 & g0) | (p1 & p0 & Cin),
       c3 = g2 | (p2 & g1) | (p2 & p1 & g0) | (p2 & p1 & p0 & Cin),
       c4 = g3 | (p3 & g2) | (p3 & p2 & g1) | (p3 & p2 & p1 & g0) | (p3 & p2 & p1 & p0 & Cin);
       
assign Sum[0] = p0 ^ Cin,
       Sum[1] = p1 ^ c1,
       Sum[2] = p2 ^ c2,
       Sum[3] = p3 ^ c3;
       
assign Carry = c4;

endmodule
