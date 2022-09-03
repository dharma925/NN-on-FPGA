`timescale 1ns / 1ps

module cnn_digit (
    input clk,
    input [15:0] in_d0,
    input in_valid_d0,
    output [3:0] out_val,
    output out_valid
);

//Dense0 layer
wire [15:0] out_d0;
wire out_valid_d0;

//dense1 layer
wire [15:0] out_d1;
wire out_valid_d1;

dense0 #(.prev_nodes(256), .width(16), .units(128)) denselayer_0(
    .in_val(in_d0),
    .clk(clk), 
    .in_valid(in_valid_d0),
    .out_val(out_d0),
    .out_valid(out_valid_d0)
);

dense1 #( .prev_nodes(128), .width(16), .units(10)) denselayer_1(
    .in_val(out_d0),
    .clk(clk), 
    .in_valid(out_valid_d0),
    .out_val(out_d1),
    .out_valid(out_valid_d1)
);

softmax #(.width(16), .classes(10)) ouput(
    .clk(clk),
    .in_valid(out_valid_d1),
    .in_val(out_d1),
    .digit(out_val),
    .out_valid(out_valid)
    );


endmodule