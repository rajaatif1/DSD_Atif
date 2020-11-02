`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/02/2020 12:53:29 AM
// Design Name: 
// Module Name: Pr_Encoder_TB
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


module Pr_Encoder_TB();

reg [3:0] In;
wire [1:0]Out;

Priority_Encoder inst0(In, Out); 
initial
begin

In = 0;

 #00 In = 4'b0000;
 #10 In = 4'b1000;
 #10 In = 4'b0100;
 #10 In = 4'b0010;
 #10 In = 4'b0001;
 #10 In = 4'b1010;
 #10 In = 4'b1111;
 #10 $stop;
 
 end 
 
endmodule
