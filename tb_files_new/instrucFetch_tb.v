`timescale 1ns / 1ps
module instrucFetch_tb();

reg CLK, RST, EX_MEM_PC_SRC;
reg [31:0] EX_MEM_NPC;
wire [31:0] IF_ID_INSTR, IF_ID_NPC;


instrFetch UUT (
    .clk(CLK), .rst(RST), .ex_mem_pc_src(EX_MEM_PC_SRC),
    .ex_mem_npc(EX_MEM_NPC), 
    .if_id_instr(IF_ID_INSTR), 
    .if_id_npc(IF_ID_NPC)
);


initial forever #5 CLK = ~CLK;

initial begin
// values clear
CLK = 0; RST = 0; EX_MEM_PC_SRC = 0;
EX_MEM_NPC = 32'h00000000;

//start simulation after one cycle of initial values
#5 RST = 1;

// let sim run for like 10 cycles
#50
// simulate a jump occuring
EX_MEM_NPC = 32'h00000000;
EX_MEM_PC_SRC = 1;

#10 
EX_MEM_PC_SRC = 0; // reset ex_mem_pc_src
EX_MEM_NPC = 32'h00000000;

//let sim run for another 10 cycles
#50 

$finish;
end

endmodule