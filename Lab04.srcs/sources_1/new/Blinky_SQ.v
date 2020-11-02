`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2020 06:43:17 AM
// Design Name: 
// Module Name: Blinky_SQ
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


module Blinky_SQ(ClkIn, ClkOut);
input ClkIn;
output reg ClkOut;

reg [31:0] counter;

initial 
begin 
counter = 0;
ClkOut = 0;
end

always @ (posedge ClkIn)
begin
       counter  = counter +1;
       if (counter == 100000000)
       begin
        counter = 0;
        ClkOut = ~ ClkOut;
    end 
end 


endmodule

module TB;

reg ClkIn;
wire ClkOut;

initial        // Once time activity
ClkIn = 0; 

always          //Continuous time activity 
#5 ClkIn = ~ ClkIn;

//Instantiate 

Blinky_SQ inst0(ClkIn, ClkOut);


endmodule