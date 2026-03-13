module incrementer(
    input [31:0] PC_in,
    output [31:0] PC_out
    );

assign PC_out = PC_in + 2'b10;
    
endmodule
