`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.08.2022 04:29:34
// Design Name: 
// Module Name: adder
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


module adder #(parameter WIDTH = 16)(
    //input clk,
    //input validity_flag,
    input [WIDTH-1:0] operand1,
    input [WIDTH-1:0] operand2,
    output reg [WIDTH-1:0] result
    );
initial
begin
result =  0 ;
end
//always@ (posedge clk)
always@ (*)
begin
    //if (validity_flag)
     //   begin
            result <= $signed(operand1)+$signed(operand2);  
     //   end
end
endmodule
