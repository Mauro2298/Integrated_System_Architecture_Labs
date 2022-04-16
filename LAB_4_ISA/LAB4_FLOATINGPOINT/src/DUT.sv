module DUT(dut_if.port_in in_inter, dut_if.port_out out_inter, output enum logic [1:0] {INITIAL,WAIT,SEND} state);
    
    //adder adder_under_test(.A(in_inter.A),.B(in_inter.B),.OUT(out_inter.data));
	 FPmul MBE_under_test(.FP_A(in_inter.A),.FP_B(in_inter.B),.clk(in_inter.clk) ,.FP_Z(out_inter.data));

	bit[31:0] tr_pipe1A;
	bit[31:0] tr_pipe1B;
	bit[31:0] tr_pipe2A;
	bit[31:0] tr_pipe2B;
	
	shortreal A1;
	shortreal B1;
	shortreal res;

    always_ff @(posedge in_inter.clk)
    begin
        if(in_inter.rst) begin
            in_inter.ready <= 0;
            out_inter.data <= 'x;
            out_inter.valid <= 0;
            state <= INITIAL;
        end
        else case(state)
                INITIAL: begin
                    in_inter.ready <= 1;
                    state <= WAIT;
                end
                
                WAIT: begin
                    if(in_inter.valid) begin
                        in_inter.ready <= 0;
                        //out_inter.data <= in_inter.A + in_inter.B;
						tr_pipe1A <= in_inter.A;
						tr_pipe1B <= in_inter.B;
						tr_pipe2A <= tr_pipe1A;
						tr_pipe2B <= tr_pipe1B;
						
						
			
						A1 = $bitstoshortreal(tr_pipe2A);
						B1 = $bitstoshortreal(tr_pipe2B);
						res = $bitstoshortreal(out_inter.data);
                        $display("mult: input A = %f, input B = %f, output OUT = %f", A1, B1,res);
                        $display("mult: input A = %b, input B = %b, output OUT = %b", tr_pipe2A, tr_pipe2B ,out_inter.data);
                        out_inter.valid <= 1;
                        state <= SEND;
                    end
                end
                
                SEND: begin
                    if(out_inter.ready) begin
                        out_inter.valid <= 0;
                        in_inter.ready <= 1;
                        state <= WAIT;
                    end
                end
        endcase
    end
endmodule: DUT
