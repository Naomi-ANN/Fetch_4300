//ok so we have clk, and another 32 bit input and 32 bit output according to Fetchtb & image
// if there is a clk I always need a rst? - idky just do

modeule pc(
    input  clk,
    inpust rst, //is this actaully here bc its not on the pic but good practice???
    input [31:0] pc_in,
    output [31:0] pc_out,

)