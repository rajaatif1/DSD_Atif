`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/02/2020 12:07:44 AM
// Design Name: 
// Module Name: Priority_Encoder
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


module Priority_Encoder(In, Out);

input [3:0] In;
output reg [1:0] Out;

always @(In)
begin

casex(In)

4'b0001 : Out = 2'b00;
4'b001x : Out = 2'b01;
4'b01xx : Out = 2'b10;
4'b1xxx : Out = 2'b11;

default:$display("Error!");

  endcase 
         end
            endmodule
