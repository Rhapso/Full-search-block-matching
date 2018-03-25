module compare(
	input clk,
	input [11:0] sum [0:15],
	input reset,
	output [11:0] mad
)

integer i;

assign mad = 0;

always @ (posedge clk)
begin
	if(!reset)
	begin
		for(i=0;i<16;i=i+1)
		begin
			if(mad > sum[i+1])
				mad = sum[i+1];
			else
				mad = sum[i];
		end
	end
end

endmodule