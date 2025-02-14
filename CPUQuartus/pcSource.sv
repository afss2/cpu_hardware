module pcSource(input logic [1:0] muxpcsource,
input logic [31:0] aluResult,
input logic [31:0] S,
input logic [31:0] shiftLeft2Out,
input logic [31:0] epcOut,
output logic [31:0] pcSourceOut // saida do mux do pcSource
);


always 
	case (muxpcsource)
		2'd0: begin
			  pcSourceOut = aluResult;
		end
		2'd1: begin
			pcSourceOut = S;
		end
		2'd2: begin
			pcSourceOut = shiftLeft2Out;
		end
		2'd3: begin
			pcSourceOut = epcOut;
		end
	endcase
	
endmodule