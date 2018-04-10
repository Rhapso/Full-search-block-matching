module compare(
	input clk,
	input enable,
	input [3:0] ctrl_wd,

	input reg [11:0] sum0,
	input reg [11:0] sum1,
	input reg [11:0] sum2,
	input reg [11:0] sum3,
	input reg [11:0] sum4,
	input reg [11:0] sum5,
	input reg [11:0] sum6,
	input reg [11:0] sum7,
	input reg [11:0] sum8,
	input reg [11:0] sum9,
	input reg [11:0] sum10,
	input reg [11:0] sum11,
	input reg [11:0] sum12,
	input reg [11:0] sum13,
	input reg [11:0] sum14,
	input reg [11:0] sum15,

	input rst_n,
	output reg [19:0] out
);

reg [11:0] mad;
reg [3:0] mvx;
reg [3:0] mvy;
reg [11:0] sum [0:15];

//initialize
always @ (negedge rst_n)
begin
	mad <= 12'b0;
	mvx <= 4'b0;
	mvy <= 4'b0;
	sum[0] <= 12'b0;
	sum[1] <= 12'b0;
	sum[2] <= 12'b0;
	sum[3] <= 12'b0;
	sum[4] <= 12'b0;
	sum[5] <= 12'b0;
	sum[6] <= 12'b0;
	sum[7] <= 12'b0;
	sum[8] <= 12'b0;
	sum[9] <= 12'b0;
	sum[10] <= 12'b0;
	sum[11] <= 12'b0;
	sum[12] <= 12'b0;
	sum[13] <= 12'b0;
	sum[14] <= 12'b0;
	sum[15] <= 12'b0;
end
	
always @ (*)
begin
	sum[0] <= sum0;
	sum[1] <= sum1;
	sum[2] <= sum2;
	sum[3] <= sum3;
	sum[4] <= sum4;
	sum[5] <= sum5;
	sum[6] <= sum6;
	sum[7] <= sum7;
	sum[8] <= sum8;
	sum[9] <= sum9;
	sum[10] <= sum10;
	sum[11] <= sum11;
	sum[12] <= sum12;
	sum[13] <= sum13;
	sum[14] <= sum14;
	sum[15] <= sum15;
end
	
integer i;
integer c;

always @ (posedge clk)
begin
	mad <= sum[0];
	c = 0;
	if(rst_n & enable)
	begin
		for(i=1;i<16;i=i+1)
		begin
			if(mad > sum[i])
				mad <= sum[i];
				c = i;
		end
		
		case(c)
		0:	mvx <= 4'h0;
		1:	mvx <= 4'h1;
		2:	mvx <= 4'h2;
		3:	mvx <= 4'h3;
		4:	mvx <= 4'h4;
		5:	mvx <= 4'h5;
		6:	mvx <= 4'h6;
		7:	mvx <= 4'h7;
		8:	mvx <= 4'h8;
		9:	mvx <= 4'h9;
		10:	mvx <= 4'ha;
		11:	mvx <= 4'hb;
		12:	mvx <= 4'hc;
		13:	mvx <= 4'hd;
		14:	mvx <= 4'he;
		15:	mvx <= 4'hf;
		
		case(ctrl_wd)
		0:	mvy <= 4'h0;
		1:	mvy <= 4'h1;
		2:	mvy <= 4'h2;
		3:	mvy <= 4'h3;
		4:	mvy <= 4'h4;
		5:	mvy <= 4'h5;
		6:	mvy <= 4'h6;
		7:	mvy <= 4'h7;
		8:	mvy <= 4'h8;
		9:	mvy <= 4'h9;
		10:	mvy <= 4'ha;
		11:	mvy <= 4'hb;
		12:	mvy <= 4'hc;
		13:	mvy <= 4'hd;
		14:	mvy <= 4'he;
		15:	mvy <= 4'hf;
		endcase
	end
	
			out <= {mad, mvx, mvy};

end
always @ (out)
begin
	$display("mad = %d, mv = %d.\n", out[19:8],out[7:0]);
end

endmodule
