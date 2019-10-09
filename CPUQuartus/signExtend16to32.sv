module signExtend16to32(
input logic [15:0] inst15_0,
output logic [31:0] signExtend16to32Out
);

always 
	case (muxalusrca)
		2'd0: begin
			  aluSrcAOut = pcOut;
		end
		2'd1: begin
			aluSrcAOut = registerAOut;
		end
		2'd2: begin
			aluSrcAOut = mdrOut;
		end
	endcase
	
endmodule
