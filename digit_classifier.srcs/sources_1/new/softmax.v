`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.08.2022 17:50:25
// Design Name: 
// Module Name: softmax
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


module softmax #(parameter width = 16, classes = 10)(
    input clk,
    input in_valid,
    input [width-1:0] in_val,
    output reg [3:0] digit,
    output reg out_valid
    );

reg [19:0] buffer [classes-1:0];
reg [19:0] buffer_exp [classes-1:0];
//error herereeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
reg [3:0] cls_addr = 0;
//reg [19:0] pseudo20;
reg storing_flag = 1'b0;
reg exp_flag = 1'b0;
reg [19:0] exp_input;
wire [19:0] exp_output;
wire exp_validity;
reg [7:0] counter = 0;
reg [7:0] load_counter = 0;
reg [19:0] compare = 0;
reg [3:0] temp_digit;
reg exp_input_validity = 1'b0;


always@(posedge clk && in_valid)
begin
    
    if (cls_addr == classes)
        begin
            storing_flag <= 1'b1;
            cls_addr <= 0;
        end
    else
        begin
            buffer[cls_addr] <= {in_val[15],4'b0000,in_val[14:0]};
            cls_addr <= cls_addr + 1'b1;
        end
end

//finding exponent
always@(posedge clk && storing_flag)
begin
//loading
     if (counter == load_counter)
     begin
        exp_input_validity <= 1'b1;
        exp_input <= buffer[cls_addr];
        counter <= counter + 1'b1;
        load_counter <= load_counter + 5'b10100;
        
     end
     //execution
     else if (counter == load_counter-1 && exp_validity)
     begin
        counter <= counter + 1'b1;
        buffer_exp[cls_addr] <= exp_output;
        cls_addr <= cls_addr + 1'b1;
     end
     //termination
     else if (counter == (classes*20))
     begin
        exp_flag <= 1'b1;
        cls_addr <= 0;
       
     end
     else
     begin
        counter <= counter+1'b1;
     end
end

//finding the max
always@(posedge clk && exp_flag)
begin
    if (compare < buffer[cls_addr])
    begin
        compare <= buffer[cls_addr];
        digit <= cls_addr;
        cls_addr <= cls_addr + 1'b1;    
    end
    //output the final class (termination step)
    else if (cls_addr == 4'b1001)
    begin
        digit <= temp_digit;
        out_valid <= 1'b1;
    end
    else 
    begin
        cls_addr <= cls_addr + 1'b1;
    end
end

 
 
 
exponent #( .width(20)) expo (
    .clk(clk),
    .in_val(exp_input),
    .in_valid(exp_input_validity),
    .out_val(exp_output),
    .out_valid(exp_validity)
    );
    
 
endmodule
