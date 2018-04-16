#analyze -format verilog ../rtl/idct/even_odd.v
#elaborate even_odd
#analyze -format verilog ../rtl/idct/idct4.v
#elaborate idct4
#analyze -format verilog ../rtl/idct/idct8.v
#elaborate idct8
#analyze -format verilog ../rtl/idct/idct_cal.v
#elaborate idct_cal
#analyze -format verilog ../rtl/idct/mem4x4.v
#elaborate mem4x4
#analyze -format verilog ../rtl/idct/mem8x8.v
#elaborate mem8x8
#analyze -format verilog ../rtl/idct/mem_ctrl_tran.v
#elaborate mem_ctrl_tran
#analyze -format verilog ../rtl/idct/p2s.v
#elaborate p2s
#analyze -format verilog ../rtl/idct/s2p.v
#elaborate s2p
#analyze -format verilog ../rtl/idct/idct.v
#elaborate idct
#analyze -format verilog ../rtl/idct/idct_chip.v
#elaborate idct_chip

analyze -format verilog ../rtl/PE.v
elaborate PE

analyze -format verilog ../rtl/compare.v
elaborate compare

analyze -format verilog ../rtl/calculate.v
elaborate calculate

analyze -format verilog ../rtl/ctr.v
elaborate ctr

analyze -format verilog ../rtl/mem20.v
elaborate mem20

analyze -format verilog ../rtl/mem448.v
elaborate mem448

analyze -format verilog ../rtl/mem19198.v
elaborate mem19198

analyze -format verilog ../rtl/me_top.v
elaborate me_top

analyze -format verilog ../rtl/me_on_chip.v
elaborate me_on_chip

#read_verilog ../rtl/PE.v

#read_verilog ../rtl/compare.v
#read_verilog ../rtl/calculate.v
#read_verilog ../rtl/ctr.v
#read_verilog ../rtl/mem20.v
#read_verilog ../rtl/mem448.v
#read_verilog ../rtl/mem19198.v
#read_verilog ../rtl/me_top.v

#read_verilog ../rtl/me_on_chip.v
