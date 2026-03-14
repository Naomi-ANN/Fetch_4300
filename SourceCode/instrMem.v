module instrMem(
input clk,
input rst,
input [31:0] addr,
output [31:0] data
);
//gives instr at that address??
//anwyay 10 words 

initial begin
    mem[0] = A00000AA;
    mem[1] = 10000011;
    mem[2] = 20000022;
    mem[3] = 30000033;
    mem[4] = 40000044;
    mem[5] = 50000055;
    mem[6] = 60000066;
    mem[7] = 70000077;
    mem[8] = 80000088;
    mem[9] = 90000099;
    
end

endmodule
