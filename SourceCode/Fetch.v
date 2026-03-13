/* Planning of what Instruction Fetch looks like */

/*
PC:
- clk and whatever next instruction comes from mux

mux obtains:
- adder_out
- external input (i assume this is offset)

adder obtains:
- pc_out
- 2'b0000 technically but thats already in built to the module

instr mem obtains:
- pc_out
- clk

latch obtains:
- adder output
- instr mem output
- clk

output of latch is output of the Fetch.v

*/
