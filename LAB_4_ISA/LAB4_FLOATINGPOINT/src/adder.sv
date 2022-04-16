module adder(   input logic [31:0] A, B, 
                output logic [31:0] OUT );

    assign OUT = A + B;

endmodule: adder
