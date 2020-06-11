/***************************************************
Student Name: 
Student ID: 
***************************************************/

`timescale 1ns/1ps

module MEM_WB_reg(
	input          clk_i,
    	input          rst_i,


	input          MemtoReg_i,
	input          RegWrite_i,
	
	
        input		[31:0]   data_i,
        input 		[32-1:0] alu_result_i,
	input  		[5-1:0]  RDaddr_i,

	
	output reg          MemtoReg_o,
	output reg          RegWrite_o,
	
	
	output reg [32-1:0] data_o,
	output reg [32-1:0] alu_result_o,
	output reg [5-1:0]  RDaddr_o
);

always@(posedge clk_i) begin
	if(~rst_i) 
		begin
			/* WB */
			MemtoReg_o <= 1'd0;
	        	RegWrite_o <= 1'd0;
			/* Data */
			data_o <= 32'd0;
			alu_result_o  <= 32'd0;
			RDaddr_o   <= 5'd0;
	
		end
    	else 
		begin
			/* WB */
			MemtoReg_o <= MemtoReg_i;
	        	RegWrite_o <= RegWrite_i;
			/* Data */
			data_o  <= data_i;
			alu_result_o  <= alu_result_i;
			RDaddr_o   <= RDaddr_i;
		end
end

endmodule 
