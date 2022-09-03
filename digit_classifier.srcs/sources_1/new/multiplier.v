`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.08.2022 04:30:30
// Design Name: 
// Module Name: multiplier
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


module multiplier #(parameter WIDTH=16, frac_bits=13)(
    //input clk,
    //input validity_flag,
    input [WIDTH-1:0] operand1,
    input  [WIDTH-1:0] operand2,
    output reg [WIDTH-1:0] result
    );

reg [(2*WIDTH)-1:0] result_temp;

initial
begin
result =  0 ;

end
//always@ (posedge clk)
always@ (*)
begin
   // if (validity_flag)
       // begin
            result_temp <= $signed(operand1)*$signed(operand2);
            
            //has to change the index according to width as fxp has to be decided
            result <= {result_temp[(2*WIDTH)-1],result_temp[(frac_bits+WIDTH-2):frac_bits]};
            
            //result <= $signed(operand1)*$signed(operand2);
       // end
end


endmodule
