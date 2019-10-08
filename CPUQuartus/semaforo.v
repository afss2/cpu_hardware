module semaforo(
	input wire clk,
	input wire btn,
	output reg green,
	output reg yellow,
	output reg red);
	
	reg [1:0] state; // registrador do estado
	reg [4:0] count; // contagem dos ciclos 
	
	parameter verde = 2'b00;
	parameter verdbtn = 2'b01; // estados da maquina
	parameter amarelo = 2'b10;
	parameter vermelho = 2'b11;
	
	initial begin // setando inicialmente
		state = 2'b00;
		green = 1'b0;
		yellow = 1'b0;
		red = 1'b0;
		count = 5'b00000;
	end
	
	always @(posedge clk) begin
		
		case (state)
			verde: begin
				red = 1'b0;
				green = 1'b1;
				if (btn == 1'b1) begin
					count = count/2;
					state = verdbtn;
				end else begin
					if (count == 5'b10011) begin
						state = amarelo;
						count = 5'b00000;
					end else begin
						state = verde;
						count = count - 1;
					end
				end
			end
			verdbtn: begin
				red = 1'b0;
				green = 1'b1;
				if (count == 5'b10011) begin
					count = 5'b00000;
					state = amarelo;
				end else begin
					count = count + 1;
					state = verdbtn;
				end
			end
			amarelo: begin
				yellow = 1'b1;
				green = 1'b0;
				if (count == 5'b01010) begin
					count = 5'b00000;
					state = vermelho;
				end else begin
					count = count + 1;
					state = amarelo;
				end
			end
			vermelho: begin
				yellow = 1'b0;
				red = 1'b1;
				if (count == 5'b11110) begin
					count = 5'b00000;
					state = verde;
				end else begin
					count = count + 1;
					state = vermelho;
				end
			end
		endcase
	end
endmodule