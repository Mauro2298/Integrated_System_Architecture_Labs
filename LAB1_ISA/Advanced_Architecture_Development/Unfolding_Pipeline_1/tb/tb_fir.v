//`timescale 1ns

module tb_fir ();

   wire CLK_i;
   wire RST_n_i;
   wire [12:0] DIN_i0;
   wire [12:0] DIN_i1;
   wire [12:0] DIN_i2;
   wire VIN_i;
   wire [12:0] H0_i;
   wire [12:0] H1_i;
   wire [12:0] H2_i;
   wire [12:0] H3_i;
   wire [12:0] H4_i;
   wire [12:0] H5_i;
   wire [12:0] H6_i;
   wire [12:0] H7_i;
   wire [12:0] H8_i;
   wire [12:0] H9_i;
   wire [12:0] H10_i;
   
   wire [12:0] DOUT_i0;
   wire [12:0] DOUT_i1;
   wire [12:0] DOUT_i2;
   wire VOUT_i;
   wire END_SIM_i;

   clk_gen CG(.END_SIM(END_SIM_i),
  	      .CLK(CLK_i),
	      .RST_n(RST_n_i));

   data_maker SM(.CLK(CLK_i),
	         .RST_n(RST_n_i),
		 .VOUT(VIN_i),
		 .DOUT0(DIN_i0),
		 .DOUT1(DIN_i1),
		 .DOUT2(DIN_i2),
		 .H0(H0_i),
		 .H1(H1_i),
		 .H2(H2_i),
		 .H3(H3_i),
		 .H4(H4_i),
		 .H5(H5_i),
		 .H6(H6_i),
		 .H7(H7_i),
		 .H8(H8_i),
		 .H9(H9_i),
		 .H10(H10_i),
		 .END_SIM(END_SIM_i));

   myfir UUT(.CLK(CLK_i),
	     .RST_N(RST_n_i),
	     .DIN0(DIN_i0),
		 .DIN1(DIN_i1),
		 .DIN2(DIN_i2),
         .VIN(VIN_i),
		 .H0(H0_i),
		 .H1(H1_i),
		 .H2(H2_i),
		 .H3(H3_i),
		 .H4(H4_i),
		 .H5(H5_i),
		 .H6(H6_i),
		 .H7(H7_i),
		 .H8(H8_i),
		 .H9(H9_i),
		 .H10(H10_i),
             .DOUT0(DOUT_i0),
			 .DOUT1(DOUT_i1),
			 .DOUT2(DOUT_i2),
             .VOUT(VOUT_i));

   data_sink DS(.CLK(CLK_i),
		.RST_n(RST_n_i),
		.VIN(VOUT_i),
		.DIN0(DOUT_i0),
		.DIN1(DOUT_i1),
		.DIN2(DOUT_i2));   

endmodule

		   
