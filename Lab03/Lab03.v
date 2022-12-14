module Lab03(w1, w2, z, clk, reset);
input w1, w2, clk, reset;
output z;

reg[4:0] y;
parameter[4:0] s0 = 0, s1 = 1, s2 = 2, s3 = 3, s4 = 4;

assign x = w1 ^ w2;

always @(posedge clk , negedge reset)
	begin
		if (reset == 0) y <= s0;
					
		else
		begin
			case(y)
			s0 : if (x) y <= s0;
				else y <= s1;

			s1 : if (x) y <= s0;
				else y <= s2;

			s2 : if (x) y<=s0;
				else y <= s3;

			s3 : if (x) y<=s0;
				else y <= s4;

			default : y <= s0;
			endcase				
		end
	end
assign z = (y == s4);
endmodule		
