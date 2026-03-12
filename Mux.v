
//the mux has two inputs and one output - output feeds into the PC
//I dont see the sel line in the image so tad confused there but whatever
//32 bits bc the image says so/32s
module mux(
    input a_true,
    input b_false,
    output reg y,
    input sel
);
//ok basic mux format
always @(*) begin
    if (sel)
    y = a_true

    else
    y = b_false
end


endmodule