`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/21/2020 05:44:22 AM
// Design Name: 
// Module Name: halfadder_test
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


module halfadder_test(  );

reg A, B;
wire Carry, Sum;

//signal

initial
begin
        #00 B = 0; A = 0;
        #10 B = 0; A = 1;
        #10 B = 1; A = 0;
        #10 B = 1; A = 1;
        #100 $stop;
     end
     
halfadder halfadder1(Carry, Sum, A, B);

endmodule
