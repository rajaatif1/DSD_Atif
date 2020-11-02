`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/28/2020 12:38:13 AM
// Design Name: 
// Module Name: FA_Using_HA
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


module FA_Using_HA(Sum, Carry, A, B, Cin); 
input A, B, Cin;
output Sum, Carry;

//Wires are initialize by deafult
wire s1, c1, c2;

//logic
//HA instantiation by order

halfadder HA1(c1, s1, A, B);
halfadder HA2(c2, Sum, s1, Cin);
//HA Instantiation by name

//halfadder HA2(.Carry(c2), .Sum(Sum), .A(s1), .B(Cin));

or or1(Carry, c1, c2);


endmodule

//module instantiation

//DUT_Name_Inst_name(ports with same order of design)
//DUT_Name_Inst_name(ports_names should be same as current design)