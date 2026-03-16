`timescale 1ns / 1ps


module instr_mem_tb();
reg CLK, RST, ADDR;
wire DATA;

instrMem UUT(
    .clk(CLK),
    .rst(RST),
    .addr(ADDR),
    .data(DATA)
);

initial forever #5 CLK = ~CLK;

integer i;

initial begin
CLK = 0; RST = 0; ADDR = 0;
#15

for (i = 0; i < 40; i=i+4) begin
    #10 ADDR = i;
end
$finish;
end
endmodule
