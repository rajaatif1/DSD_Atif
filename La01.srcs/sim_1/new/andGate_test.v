`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/21/2020 05:07:08 AM
// Design Name: 
// Module Name: andGate_test
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


//module andGate_test(There are no ports);

module andGate_test(    );

//input >> reg
reg In1, In2;
//output >> wire
wire Out;


//Signals Generation
initial
begin
    #00 In2 = 0; In1 = 0;   //unit = ns
    #10 In2 = 0; In1 = 1;
    #10 In2 = 1; In1 = 0;
    #10 In2 = 1; In1 = 1; 
    #100 $stop; //finish the simulation at 100 ns
end

//module instantiation

andGate andGate1(Out, In1, In2);

endmodule
