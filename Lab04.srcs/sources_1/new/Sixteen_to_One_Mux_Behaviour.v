`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2020 06:22:10 AM
// Design Name: 
// Module Name: Sixteen_to_One_Mux_Behaviour
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


module Sixteen_to_One_Mux_Behaviour(Out, S, In);
inout [15:0] In;
input [3:0] S;
output reg Out;

always @(*)
begin
        case (S)
        0 : Out = In[0];
        1 : Out = In[1];                
        2 : Out = In[2];
        3 : Out = In[3];
        4 : Out = In[4];
        5 : Out = In[5];
        6 : Out = In[6];
        7 : Out = In[7];                
        8 : Out = In[8];
        9 : Out = In[9];
        10 : Out = In[10];
        11 : Out = In[11];
        12 : Out = In[12];
        13 : Out = In[13];
        14 : Out = In[14];
        15 : Out = In[15];
        default :  Out = 1'bz;  
        
        endcase
end

endmodule
