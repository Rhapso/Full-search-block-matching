module compare(
	input clk,
	input enable,

	input [11:0] sum0,
	input [11:0] sum1,
	input [11:0] sum2,
	input [11:0] sum3,
	input [11:0] sum4,
	input [11:0] sum5,
	input [11:0] sum6,
	input [11:0] sum7,
	input [11:0] sum8,
	input [11:0] sum9,
	input [11:0] sum10,
	input [11:0] sum11,
	input [11:0] sum12,
	input [11:0] sum13,
	input [11:0] sum14,
	input [11:0] sum15,

	input rst,
	output reg [19:1] out
);

reg [11:0] mad;
reg [7:0] mv;
reg [11:0] sum [0:15];

always @ (*)
begin
sum[0]=sum0;
sum[1]=sum1;
sum[2]=sum2;
sum[3]=sum3;
sum[4]=sum4;
sum[5]=sum5;
sum[6]=sum6;
sum[7]=sum7;
sum[8]=sum8;
sum[9]=sum9;
sum[10]=sum10;
sum[11]=sum11;
sum[12]=sum12;
sum[13]=sum13;
sum[14]=sum14;
sum[15]=sum15;
end

integer i;
integer c;

always @ (posedge clk)
begin
	mad = sum[0];
	c = 0;
	if(!rst)
	begin
		for(i=1;i<16;i=i+1)
		begin
			if(mad > sum[i])
				mad = sum[i];
				c = i;
		end
		case(c)
		0:	mv = 8'h00;
		1:	mv = 8'h01;
		2:	mv = 8'h02;
		3:	mv = 8'h03;
		4:	mv = 8'h10;
		5:	mv = 8'h11;
		6:	mv = 8'h12;
		7:	mv = 8'h13;
		8:	mv = 8'h20;
		9:	mv = 8'h21;
		10:	mv = 8'h22;
		11:	mv = 8'h23;
		12:	mv = 8'h30;
		13:	mv = 8'h31;
		14:	mv = 8'h32;
		15:	mv = 8'h33;
		endcase
	end	
end

endmodule
