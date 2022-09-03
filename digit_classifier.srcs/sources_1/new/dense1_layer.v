`timescale 1ns / 1ps


module dense1 #(parameter prev_nodes = 128, width = 16, units = 10)(
    input [width-1:0] in_val,
    input clk, in_valid,
    output reg [width-1:0] out_val,
    output out_valid
);

wire [width-1:0] dense_mem [units-1:0]; 
reg [$clog2(units):0] out_counter;

initial
begin
out_counter = 0;
end

always@(posedge clk)
begin

if (out_valid)
begin
    if (out_counter == units-1)
    begin
        out_val <= dense_mem[out_counter];
        
    end
    else
    begin
        out_counter <= out_counter + 1'b1;
        out_val <= dense_mem[out_counter];
    end
end

end



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d1/n0.mif")) d1n0(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[0]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d1/n1.mif")) d1n1(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[1]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d1/n2.mif")) d1n2(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[2]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d1/n3.mif")) d1n3(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[3]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d1/n4.mif")) d1n4(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[4]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d1/n5.mif")) d1n5(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[5]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d1/n6.mif")) d1n6(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[6]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d1/n7.mif")) d1n7(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[7]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d1/n8.mif")) d1n8(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[8]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d1/n9.mif")) d1n9(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[9]),
    .out_valid(out_valid)
);




endmodule
