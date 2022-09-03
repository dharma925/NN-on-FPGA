`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.08.2022 15:21:38
// Design Name: 
// Module Name: adder_test
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


module test(
    input clk
    );


reg valid;
reg [15:0] op1, op2;
reg [64:0] res;
reg [31:0] res32;

initial
begin
valid = 1'b1;
#1000
op1 = 16'b1101011110101111;
op2 = 16'b1111101111111000; 
end

always@(posedge clk)
begin
res <= op1/op2;
res32 <= res[31:0];
$display(op1/op2);

end


endmodule
