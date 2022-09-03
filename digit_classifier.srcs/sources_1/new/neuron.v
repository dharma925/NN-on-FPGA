`timescale 1ns / 1ps

module neuron #(parameter prev_nodes=256, width = 16, weights_file="weights/wt1.mif")(
    input [width-1:0] in_val,
    input in_valid,
    input clk,
    output reg [width-1:0] out_val, 
    output reg [$clog2(2*prev_nodes):0] request_addr,
    output reg out_valid
);

reg [width-1:0] accumulator = 16'b0000000000000000 ;
wire [width-1:0] temp;
reg status = 1'b1;
reg [$clog2(2*prev_nodes):0] count = 0;
reg [$clog2(2*prev_nodes):0] reference_load = 0;
wire [width-1:0] product;
reg select = 1'b0;
wire [width-1:0] add_in1;
reg [width-1:0] weights_mem [prev_nodes:0];
//reg mult_valid, addn_valid;
reg [width-1:0] bias;

initial
begin
request_addr = 0;
out_valid = 0;
//addn_valid = 1'b0;
//mult_valid = 1'b0;
$readmemb(weights_file, weights_mem);
end

always@(posedge clk && in_valid)
begin
    if (count == reference_load)
    //load detection
        begin
        //bias detection
            if (count == prev_nodes*2)
                begin
                    bias <= weights_mem[prev_nodes];
                    
                    select <= 1'b1;
                    count <= count + 1'b1;
                    //
                    
                    //mult_valid <= 1'b0;
                    //addn_valid <= 1'b0;  
                end
        //normal weight loading
            else
                begin
                    reference_load <= reference_load + 2'b10;
                    count <= count + 1'b1;
                    //
                        //mult_valid <= 1'b1;
                        //addn_valid <= 1'b1;  
                    //request address updation
                    request_addr <= request_addr + 1'b1;
                end
        end
    //excecution steps
    else
        begin
            //addition step
            
            //activation step detection
            if (count == ((prev_nodes*2)+1) )
                begin
                    if ($signed(temp) > 0 )
                        out_val <= temp;
                    else
                        out_val <= 16'b0000000000000000;    
                    out_valid <= 1'b1;
                end
            else
                begin
                    count <= count + 1;
                    accumulator <= temp;
                end
        end
end



mux #(.width(16), .inports(2)) multiplexer (
    .data({bias,product}),
    .sel(select),
    .out_data(add_in1)
    );
multiplier #(.WIDTH(16)) mult(
    //.validity_flag(mult_valid),
    //.clk(clk),
    .operand1(in_val), //layer mux take cares of this
    .operand2(weights_mem[request_addr]),
    .result(product)
    );
adder #(.WIDTH(16)) addition (
    //.validity_flag(addn_valid),
    //.clk(clk),
    .operand1(add_in1),
    .operand2(accumulator),
    .result(temp)
    );


endmodule

