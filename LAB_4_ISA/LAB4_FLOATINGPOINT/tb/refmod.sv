class refmod extends uvm_component;
    `uvm_component_utils(refmod)
    
    packet_in tr_in;
    packet_out tr_out;
	bit[31:0] tr_pipe1A;
	bit[31:0] tr_pipe1B;
	bit[31:0] tr_pipe2A;
	bit[31:0] tr_pipe2B;
	
	
	shortreal A1;
	shortreal B1;
	shortreal res;
    uvm_get_port #(packet_in) in;
    uvm_put_port #(packet_out) out;
    
    function new(string name = "refmod", uvm_component parent);
        super.new(name, parent);
        in = new("in", this);
        out = new("out", this);
    endfunction
    
    virtual function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        tr_out = packet_out::type_id::create("tr_out", this);
    endfunction: build_phase
    
    virtual task run_phase(uvm_phase phase);
        super.run_phase(phase);
        
        forever begin
            in.get(tr_in);
			tr_pipe1A <= tr_in.A;
			tr_pipe1B <= tr_in.B;
			tr_pipe2A <= tr_pipe1A;
			tr_pipe2B <= tr_pipe1B;
			
			
			
			A1 = $bitstoshortreal(tr_pipe2A);
			B1 = $bitstoshortreal(tr_pipe2B);
			res = A1 * B1;
            tr_out.data = $shortrealtobits(res);
		

			
            $display("refmod: input A = %f, input B = %f, output OUT = %f",A1, B1, res);
			$display("refmod: input A = %b, input B = %b, output OUT = %b",tr_pipe2A, tr_pipe2B, tr_out.data);
            out.put(tr_out);
        end
    endtask: run_phase
endclass: refmod
