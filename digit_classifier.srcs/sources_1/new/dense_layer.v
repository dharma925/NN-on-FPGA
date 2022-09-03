`timescale 1ns / 1ps


module dense0 #(parameter prev_nodes = 256, width = 16, units = 128)(
    input [width-1:0] in_val,
    input clk, in_valid,
    output reg [width-1:0] out_val,
    output out_valid
);

wire [width-1:0] dense_mem [units-1:0]; 
reg [$clog2(units)-1:0] out_counter;

initial
begin
out_counter = 0;
out_val = 0;
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



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n0.mif")) d0n0(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[0]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n1.mif")) d0n1(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[1]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n2.mif")) d0n2(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[2]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n3.mif")) d0n3(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[3]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n4.mif")) d0n4(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[4]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n5.mif")) d0n5(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[5]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n6.mif")) d0n6(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[6]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n7.mif")) d0n7(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[7]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n8.mif")) d0n8(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[8]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n9.mif")) d0n9(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[9]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n10.mif")) d0n10(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[10]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n11.mif")) d0n11(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[11]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n12.mif")) d0n12(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[12]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n13.mif")) d0n13(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[13]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n14.mif")) d0n14(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[14]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n15.mif")) d0n15(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[15]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n16.mif")) d0n16(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[16]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n17.mif")) d0n17(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[17]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n18.mif")) d0n18(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[18]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n19.mif")) d0n19(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[19]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n20.mif")) d0n20(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[20]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n21.mif")) d0n21(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[21]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n22.mif")) d0n22(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[22]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n23.mif")) d0n23(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[23]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n24.mif")) d0n24(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[24]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n25.mif")) d0n25(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[25]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n26.mif")) d0n26(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[26]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n27.mif")) d0n27(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[27]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n28.mif")) d0n28(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[28]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n29.mif")) d0n29(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[29]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n30.mif")) d0n30(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[30]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n31.mif")) d0n31(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[31]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n32.mif")) d0n32(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[32]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n33.mif")) d0n33(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[33]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n34.mif")) d0n34(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[34]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n35.mif")) d0n35(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[35]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n36.mif")) d0n36(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[36]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n37.mif")) d0n37(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[37]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n38.mif")) d0n38(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[38]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n39.mif")) d0n39(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[39]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n40.mif")) d0n40(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[40]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n41.mif")) d0n41(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[41]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n42.mif")) d0n42(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[42]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n43.mif")) d0n43(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[43]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n44.mif")) d0n44(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[44]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n45.mif")) d0n45(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[45]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n46.mif")) d0n46(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[46]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n47.mif")) d0n47(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[47]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n48.mif")) d0n48(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[48]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n49.mif")) d0n49(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[49]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n50.mif")) d0n50(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[50]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n51.mif")) d0n51(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[51]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n52.mif")) d0n52(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[52]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n53.mif")) d0n53(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[53]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n54.mif")) d0n54(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[54]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n55.mif")) d0n55(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[55]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n56.mif")) d0n56(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[56]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n57.mif")) d0n57(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[57]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n58.mif")) d0n58(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[58]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n59.mif")) d0n59(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[59]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n60.mif")) d0n60(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[60]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n61.mif")) d0n61(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[61]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n62.mif")) d0n62(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[62]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n63.mif")) d0n63(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[63]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n64.mif")) d0n64(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[64]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n65.mif")) d0n65(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[65]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n66.mif")) d0n66(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[66]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n67.mif")) d0n67(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[67]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n68.mif")) d0n68(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[68]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n69.mif")) d0n69(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[69]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n70.mif")) d0n70(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[70]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n71.mif")) d0n71(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[71]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n72.mif")) d0n72(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[72]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n73.mif")) d0n73(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[73]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n74.mif")) d0n74(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[74]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n75.mif")) d0n75(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[75]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n76.mif")) d0n76(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[76]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n77.mif")) d0n77(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[77]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n78.mif")) d0n78(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[78]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n79.mif")) d0n79(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[79]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n80.mif")) d0n80(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[80]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n81.mif")) d0n81(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[81]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n82.mif")) d0n82(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[82]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n83.mif")) d0n83(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[83]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n84.mif")) d0n84(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[84]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n85.mif")) d0n85(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[85]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n86.mif")) d0n86(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[86]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n87.mif")) d0n87(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[87]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n88.mif")) d0n88(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[88]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n89.mif")) d0n89(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[89]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n90.mif")) d0n90(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[90]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n91.mif")) d0n91(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[91]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n92.mif")) d0n92(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[92]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n93.mif")) d0n93(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[93]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n94.mif")) d0n94(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[94]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n95.mif")) d0n95(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[95]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n96.mif")) d0n96(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[96]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n97.mif")) d0n97(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[97]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n98.mif")) d0n98(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[98]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n99.mif")) d0n99(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[99]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n100.mif")) d0n100(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[100]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n101.mif")) d0n101(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[101]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n102.mif")) d0n102(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[102]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n103.mif")) d0n103(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[103]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n104.mif")) d0n104(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[104]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n105.mif")) d0n105(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[105]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n106.mif")) d0n106(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[106]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n107.mif")) d0n107(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[107]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n108.mif")) d0n108(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[108]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n109.mif")) d0n109(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[109]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n110.mif")) d0n110(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[110]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n111.mif")) d0n111(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[111]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n112.mif")) d0n112(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[112]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n113.mif")) d0n113(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[113]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n114.mif")) d0n114(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[114]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n115.mif")) d0n115(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[115]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n116.mif")) d0n116(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[116]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n117.mif")) d0n117(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[117]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n118.mif")) d0n118(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[118]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n119.mif")) d0n119(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[119]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n120.mif")) d0n120(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[120]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n121.mif")) d0n121(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[121]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n122.mif")) d0n122(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[122]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n123.mif")) d0n123(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[123]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n124.mif")) d0n124(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[124]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n125.mif")) d0n125(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[125]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n126.mif")) d0n126(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[126]),
    .out_valid(out_valid)
);



neuron #( .prev_nodes(prev_nodes), .width(width), .weights_file("weights_d0/n127.mif")) d0n127(
    .in_val(in_val),
    .in_valid(in_valid),
    .clk(clk),
    .out_val(dense_mem[127]),
    .out_valid(out_valid)
);




endmodule
