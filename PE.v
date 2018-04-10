module PE(
	input clk,
	input enable,

	input [7:0] a00,
	input [7:0] a01,
	input [7:0] a02,
	input [7:0] a03,
	input [7:0] a10,
	input [7:0] a11,
	input [7:0] a12,
	input [7:0] a13,
	input [7:0] a20,
	input [7:0] a21,
	input [7:0] a22,
	input [7:0] a23,
	input [7:0] a30,
	input [7:0] a31,
	input [7:0] a32,
	input [7:0] a33,

	input [7:0] b00,
	input [7:0] b01,
	input [7:0] b02,
	input [7:0] b03,
	input [7:0] b10,
	input [7:0] b11,
	input [7:0] b12,
	input [7:0] b13,
	input [7:0] b20,
	input [7:0] b21,
	input [7:0] b22,
	input [7:0] b23,
	input [7:0] b30,
	input [7:0] b31,
	input [7:0] b32,
	input [7:0] b33,

	input rst_n,
	output reg [11:0] sum
);

reg [7:0] abs_value [0:15];
reg [8:0] sum1 [0:7];
reg [9:0] sum2 [0:3];
reg [10:0] sum3 [0:1];

always @ (posedge clk)
begin
	if(rst_n & enable)
	begin

		if(a00>b00)
			abs_value[0] <= a00 - b00;
		else
			abs_value[0] <= b00 - a00;
		if(a01>b01)
			abs_value[1] <= a01 - b01;
		else
			abs_value[1] <= b01 - a01;
		if(a02>b02)
			abs_value[2] <= a02 - b02;
		else
			abs_value[2] <= b02 - a02;
		if(a03>b03)
			abs_value[3] <= a03 - b03;
		else
			abs_value[3] <= b03 - a03;
		
		if(a10>b10)
			abs_value[4] <= a10 - b10;
		else
			abs_value[4] <= b10 - a10;
		if(a11>b11)
			abs_value[5] <= a11 - b11;
		else
			abs_value[5] <= b11 - a11;
		if(a12>b12)
			abs_value[6] <= a12 - b12;
		else
			abs_value[6] <= b12 - a12;
		if(a13>b13)
			abs_value[7] <= a13 - b13;
		else
			abs_value[7] <= b13 - a13;

		if(a20>b20)
			abs_value[8] <= a20 - b20;
		else
			abs_value[8] <= b20 - a20;
		if(a21>b21)
			abs_value[9] <= a21 - b21;
		else
			abs_value[9] <= b21 - a21;
		if(a22>b22)
			abs_value[10] <= a22 - b22;
		else
			abs_value[10] <= b22 - a22;
		if(a23>b23)
			abs_value[11] <= a23 - b23;
		else
			abs_value[11] <= b23 - a23;

		if(a30>b30)
			abs_value[12] <= a30 - b30;
		else
			abs_value[12] <= b30 - a30;
		if(a31>b31)
			abs_value[13] <= a31 - b31;
		else
			abs_value[13] <= b31 - a31;
		if(a32>b32)
			abs_value[14] <= a32 - b32;
		else
			abs_value[14] <= b32 - a32;
		if(a33>b33)
			abs_value[15] <= a33 - b33;
		else
			abs_value[15] <= b33 - a33;

		sum1[0] <= abs_value[0] + abs_value[15];
		sum1[1] <= abs_value[1] + abs_value[14];
		sum1[2] <= abs_value[2] + abs_value[13];
		sum1[3] <= abs_value[3] + abs_value[12];
		sum1[4] <= abs_value[4] + abs_value[11];
		sum1[5] <= abs_value[5] + abs_value[10];
		sum1[6] <= abs_value[6] + abs_value[9];
		sum1[7] <= abs_value[7] + abs_value[8];
		sum1[8] <= abs_value[8] + abs_value[7];

		sum2[0] <= sum1[0] + sum1[7];
		sum2[1] <= sum1[1] + sum1[6];
		sum2[2] <= sum1[2] + sum1[5];
		sum2[3] <= sum1[3] + sum1[4];

		sum3[0] <= sum2[0] + sum2[3];
		sum3[1] <= sum2[1] + sum2[2];

		sum <= sum3[0] + sum3[1];
	end
end

endmodule
