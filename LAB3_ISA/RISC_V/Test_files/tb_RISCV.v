//timescale 1ns

module tb_RISCV ();

	wire CLK_i;
	wire RST_i;
	
	wire [31:0] INST_i;
	wire [31:0] ADD_IM_i;
	wire [31:0] ADD_DM_i; 
	wire [31:0] DT_TO_PR_i; 
	wire [31:0] DT_FROM_PR_i;
	
	wire READ_DT_i;
	wire WRITE_DT_i;
	
	
   clk_gen CG(
  	      .CLK(CLK_i),
	      .RST_n(RST_i));
		  
	InstrMemory IM(
			.address(ADD_IM_i[6:2]),
			.DATA(INST_i));
			
	DataMem DM(
			.Address(ADD_DM_i[6:2]),
			.RST(RST_i),
			.Data(DT_FROM_PR_i),
			.WE(WRITE_DT_i),
			.RE(READ_DT_i),
			.Qout(DT_TO_PR_i));
			
	RISCV UUT(
			.RISCV_IN_CLK(CLK_i),
			.RISCV_IN_RST(RST_i),
					
			.RISCV_IN_INST(INST_i),
			.RISCV_IN_DT(DT_TO_PR_i),
					
			.RISCV_OUT_ADD_IM(ADD_IM_i),
			.RISCV_OUT_ADD_DM(ADD_DM_i),
					
			.RISCV_OUT_DM_DT(DT_FROM_PR_i),
					
			.RISCV_OUT_DM_RD(READ_DT_i),
			.RISCV_OUT_DM_WR(WRITE_DT_i)
			);
			
endmodule
