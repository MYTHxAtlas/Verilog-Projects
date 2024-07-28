module alu1(a,b,en,opcode, y,ack);
    input [31:0]a,b;
	 input en;
	 input [2:0]opcode;
    output [31:0]y;
	 output ack;
	 reg [31:0]y,ack;
	// wire [31:0]y,ack;
	 always@(en or opcode or a or b)
	 begin
	 if(en==1)
	 begin 
	 if(opcode==3'b000)y=a+b;else
	 if(opcode==3'b001)y=a-b;else
	 if(opcode==3'b010)y=a+1;else
	 if(opcode==3'b011)y=a-1;else
	 if(opcode==3'b100)y=a;else
	 if(opcode==3'b101)y=~a;else
	 if(opcode==3'b110)y=a|b;else
	 if(opcode==3'b111)y=a&b;
	end
	else y=32'dX;
	ack<=1;
	end
endmodule
