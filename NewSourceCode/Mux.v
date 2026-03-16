`timescale 1ns / 1ps

//the mux has two inputs and one output - output feeds into the PC and latch
// sel from ex_mem_pc_src

module mux(
    input [31:0] a_true, b_false,
    output reg [31:0] y,
    input sel
);

// if sel = 1 --> next addr jump to what exMem has
always @(*) begin
    if (sel) y <= a_true;
    else y <= b_false; 
end

endmodule
