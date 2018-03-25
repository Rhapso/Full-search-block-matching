module PE(
	input clk,
	input [7:0] a[0:15],
	input [7:0] b[0:16],
	input reset,
	output reg [11:0] sum
)
reg [7:0] quotient [0:15];
reg [7:0] abs_value [0:15];
reg [8:0] sum1 [0:7];
reg [9:0] sum2 [0:3];
reg [10:0] sum3 [0:1];
integer i;
always @ (posedge clk)
begin
	if(!reset)
	begin
		for(i=0;i<16;i=i+1)
		begin
			quotient[i] = a[i] - b[i];
			abs_value[i] = abs(quotient);
		end
		for(i=0;i<8;i=i+1)
		begin
			sum1[i] = abs_value[i] + abs_value[15-i];
		end
		for(i=0;i<4;i=i+1)
		begin
			sum2[i] = sum1[i] + sum1[7-i];
		end
		for(i=0;i<2;i=i+1)
		begin
			sum3[i] = sum2[i] + sum2[3-i];
		end
		sum = sum3[0] + sum3[1];
	end
end

function [7:0]abs;
	input [7:0]a;
	if(a[7]==0)
		abs = a;
	else
		abs = ~a + 1;
endfunction
endmodule