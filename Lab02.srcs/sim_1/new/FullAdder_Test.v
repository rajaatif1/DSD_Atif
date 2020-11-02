`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/28/2020 01:01:42 AM
// Design Name: 
// Module Name: FullAdder_Test
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

module FullAdder_test();
reg A, B, Cin;
wire Carry, Sum;

// signals
initial
begin
    #00 Cin = 0; B = 0; A = 0;
    #10 Cin = 0; B = 0; A = 1;
    #10 Cin = 0; B = 1; A = 0;
    #10 Cin = 0; B = 1; A = 1;
    #10 Cin = 1; B = 0; A = 0;
    #10 Cin = 1; B = 0; A = 1;
    #10 Cin = 1; B = 1; A = 0;
    #10 Cin = 1; B = 1; A = 1;
    #20 $stop;

end

// Instaniation
FA_Using_HA FA1(Sum, Carry, A, B, Cin);
endmodule
