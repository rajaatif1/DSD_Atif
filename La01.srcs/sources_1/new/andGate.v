`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/21/2020 04:39:21 AM
// Design Name: 
// Module Name: andGate
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

//start of module

module andGate(Out, In1, In2);

//Parts dimension

input In1, In2;
output Out;

//Logic
and andl(Out, In1, In2);

//end of module
endmodule
