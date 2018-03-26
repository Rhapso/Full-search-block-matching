module PE(
	input clk,
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

	input reset,
	output reg [11:0] sum
);

reg [7:0] a [0:15];
reg [7:0] b [0:15];
reg [7:0] quotient [0:15];
reg [7:0] abs_value [0:15];
reg [8:0] sum1 [0:7];
reg [9:0] sum2 [0:3];
reg [10:0] sum3 [0:1];

integer i;

always @ (*)
begin
	a[0]=a00;
	a[1]=a01;
	a[2]=a02;
	a[3]=a03;
	a[4]=a10;
	a[5]=a11;
	a[6]=a12;
	a[7]=a13;
	a[8]=a20;
	a[9]=a21;
	a[10]=a22;
	a[11]=a23;
	a[12]=a30;
	a[13]=a31;
	a[14]=a32;
	a[15]=a33;
	
	b[0]=b00;
	b[1]=b01;
	b[2]=b02;
	b[3]=b03;
	b[4]=b10;
	b[5]=b11;
	b[6]=b12;
	b[7]=b13;
	b[8]=b20;
	b[9]=b21;
	b[10]=b22;
	b[11]=b23;
	b[12]=b30;
	b[13]=b31;
	b[14]=b32;
	b[15]=b33;
end

always @ (posedge clk)
begin
	if(!reset)
	begin
		for(i=0;i<16;i=i+1)
		begin
			quotient[i] = a[i] - b[i];
			abs_value[i] = abs(quotient[i]);
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
