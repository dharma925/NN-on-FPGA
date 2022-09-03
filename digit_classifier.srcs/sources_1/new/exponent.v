`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.08.2022 18:02:36
// Design Name: 
// Module Name: exponent
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


module exponent #(parameter width = 20)(
    input clk,
    input [19:0] in_val,
    input in_valid,
    output reg [19:0] out_val,
    output reg out_valid
    );
    
wire [width-1:0] product ; //one
reg [width-1:0] op1;
reg [width-1:0] op2;
reg [width-1:0] accumulator;
wire [width-1:0] sum;

reg [5:0] counter ;

initial
begin
//assign product = 20'b00000010000000000000;

//assign sum = 20'b00000010000000000000;
op1 = 20'b00000010000000000000;
op2 = 20'b00000010000000000000;
counter = 0;
accumulator = 0;    

end

always@(posedge clk && in_valid )
begin
    //starting
    if (counter == 0)
    begin
        counter <= counter + 1'b1;
        out_valid <= 1'b0;
        op1 <= 20'b00000010000000000000;
        op2 <= 20'b00000010000000000000;
        
        
    end
    else if (counter == 1)
    begin
        counter <= counter + 1'b1;
        op1 <= product;
        op2 <= in_val/({16'b0000000000000000,counter});
        accumulator <= sum;
    end
    else if (counter == 6'b010010) //18
    begin
    //completed
    //validity flag raising
        out_valid <= 1'b1;
        out_val <= sum;
        counter <= counter + 1'b1;
    end
    //termination
    else if (counter == 6'b010011) //19
    begin
        //in_valid <= 1'b0;
        counter <= 0;
        accumulator <= 0;
        
    end
    else
    begin
        op1 <= product;
        op2 <= in_val/({16'b0000000000000000,counter});
        accumulator <= sum;
        counter <= counter + 1'b1;
    end

end



multiplier #(.WIDTH(20), .frac_bits(13)) multiplier20(
    .operand1(op1),
    .operand2(op2),
    .result(product)
    );
    
adder #(.WIDTH(20)) adder20(
    .operand1(product),
    .operand2(accumulator),
    .result(sum)
    );
    
endmodule
