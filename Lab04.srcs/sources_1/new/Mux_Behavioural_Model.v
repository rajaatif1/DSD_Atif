`timescale 1ns / 1ps                                            //Compiler Director 
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/15/2020 04:27:46 AM
// Design Name: 
// Module Name: Mux_Behavioural_Modelling 
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


module Mux_Behavioural_Modelling(Out, In, S);
input wire [3:0] In;
input wire [1:0] S;
output reg Out;

//Logic
//always @ (sensitivity list)       example
//always @ (In , S)          //1st Way
//always @ (In or S)        //2nd Way
//always @ (*)      use of sterik means we use or mentions all the defined inputs //3rd Way


always @ (*)          //4-to-1 Mux
begin 
        //Algorithm 
        if (S == 2'b00)
        Out = In [0];
        else if (S == 2'b01)
        Out = In[1];
        else if (S == 2'b10)
        Out = In[2];
        else if (S == 2'b11)
        Out = In[3];
        else Out = 1'bz;
        
end
    
endmodule

   
module TB;
reg [3:0] In;
reg [1:0] S;
wire Out;

//Instantiation
Mux_Behavioural_Modelling inst0(Out, In, S);

//
initial
begin 
        #00 S = 2'b00; In = 4'bxxx1;
        #10 S = 2'b01; In = 4'bxx1x;
        #10 S = 2'b10; In = 4'bx1xx;
        #10 S = 2'b11; In = 4'b1xxx;
        #10 S = 2'bxx; In = 4'b1111;        //for abnormal select switch inputs
        #10 $stop;                        //system task and this is not synthesizable
end

endmodule
