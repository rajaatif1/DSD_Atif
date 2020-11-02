`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/28/2020 02:07:46 AM
// Design Name: 
// Module Name: Four_bit_Adder
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

/////////*********4-Bit Adder********///////////

module Four_bit_Adder(Sum, Carry, A, B, Cin);

input [3:0] A, B;
input Cin;
output [3:0] Sum;
output Carry;

//By Name Instantiation

FA_Using_HA FA1(.Sum(Sum[0]), .Carry(c1), .A(A[0]), .B(B[0]), .Cin(Cin));
FA_Using_HA FA2(.Sum(Sum[1]), .Carry(c2), .A(A[1]), .B(B[1]), .Cin(c1));
FA_Using_HA FA3(.Sum(Sum[2]), .Carry(c3), .A(A[2]), .B(B[2]), .Cin(c2));
FA_Using_HA FA4(.Sum(Sum[3]), .Carry(Carry), .A(A[3]), .B(B[3]), .Cin(c3));

//By order Instantiation

//FA_Using_HA FA1(Sum, Carry, A[0], B[0], Cin);
//FA_Using_HA FA2(Sum, Carry, A, B, Cin);
//FA_Using_HA FA3(Sum, Carry, A, B, Cin);
//FA_Using_HA FA4(Sum, Carry, A, B, Cin);


endmodule
