module ifIdLatch(
    input [31:0] addr, data,
    input clk, rst,
    output addr_out, data_out
);

    always @(posedge clk or negedge rst) begin
        if (rst) begin
            assign addr_out = 0;
            assign data_out = 0;
        end 
        else begin
            assign addr_out = addr;
            assign data_out = data;
        end
    end

endmodule
