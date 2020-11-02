`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/28/2020 04:42:34 AM
// Design Name: 
// Module Name: Sixtyfour_Bit_Adder
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


module Sixtyfour_Bit_Adder(Sum, Carry, A, B, Cin);
input [63:0] A, B;
input Cin;
output [63:0] Sum;
output Carry;

//Logic

Sixteen_Bit_Adder sixteenBit1(.Sum(Sum[15:0]), .Carry(c1), .A(A[15:0]), .B(B[15:0]), .Cin(Cin) );
Sixteen_Bit_Adder sixteenBit2(.Sum(Sum[31:16]), .Carry(c2), .A(A[31:16]), .B(B[31:16]), .Cin(c1) );
Sixteen_Bit_Adder sixteenBit3(.Sum(Sum[47:32]), .Carry(c3), .A(A[47:32]), .B(B[47:32]), .Cin(c2) );
Sixteen_Bit_Adder sixteenBit4(.Sum(Sum[63:48]), .Carry(Carry), .A(A[63:48]), .B(B[63:48]), .Cin(c3) );

endmodule
