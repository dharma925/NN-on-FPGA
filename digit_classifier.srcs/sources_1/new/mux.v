`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.08.2022 04:32:43
// Design Name: 
// Module Name: mux
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


module mux #(parameter width=16, parameter inports=256)(
    input [(inports*width)-1:0] data,[($clog2(inports)-1):0] sel,
    output reg [width-1:0] out_data
    );
    integer t;
    always@(*)
    begin
    t = ((sel+1)*width)-1;
    out_data = data[t -: width]; 
    end
endmodule
