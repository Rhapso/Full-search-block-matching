# Create corners and P/G pads
create_cell {CornerLL CornerLR CornerTR CornerTL} PCORNERW
create_cell {vss1_l vss1_r vss1_t vss1_b} PVSS1W
create_cell {vdd1_l vdd1_r vdd1_t vdd1_b} PVDD1W
create_cell {vss2_l vss2_r vss2_t vss2_b} PVSS2W
create_cell {vdd2_l vdd2_r vdd2_t vdd2_b} PVDD2W

# Define corner pad locations
set_pad_physical_constraints -pad_name "CornerTL" -side 1
set_pad_physical_constraints -pad_name "CornerTR" -side 2
set_pad_physical_constraints -pad_name "CornerLR" -side 3
set_pad_physical_constraints -pad_name "CornerLL" -side 4

# Define signal and PG pad locations

# Left side
set_pad_physical_constraints -pad_name "PIW_init" -side 1 -order 1
set_pad_physical_constraints -pad_name "PIW_clk" -side 1 -order 2
set_pad_physical_constraints -pad_name "PIW_input_raw31" -side 1 -order 3
set_pad_physical_constraints -pad_name "PIW_input_raw30" -side 1 -order 4
set_pad_physical_constraints -pad_name "PIW_input_raw29" -side 1 -order 5
set_pad_physical_constraints -pad_name "vdd2_l" -side 1 -order 6
set_pad_physical_constraints -pad_name "vdd1_l" -side 1 -order 7
set_pad_physical_constraints -pad_name "vss1_l" -side 1 -order 8
set_pad_physical_constraints -pad_name "vss2_l" -side 1 -order 9
set_pad_physical_constraints -pad_name "PIW_input_raw28" -side 1 -order 10
set_pad_physical_constraints -pad_name "PIW_input_raw27" -side 1 -order 11
set_pad_physical_constraints -pad_name "PIW_input_raw26" -side 1 -order 12
set_pad_physical_constraints -pad_name "PIW_input_raw25" -side 1 -order 13

# Top side
set_pad_physical_constraints -pad_name "PIW_input_raw0" -side 2 -order 1
set_pad_physical_constraints -pad_name "PIW_input_raw1" -side 2 -order 2
set_pad_physical_constraints -pad_name "PIW_input_raw2" -side 2 -order 3
set_pad_physical_constraints -pad_name "PIW_input_raw3" -side 2 -order 4
set_pad_physical_constraints -pad_name "PIW_input_raw4" -side 2 -order 5
set_pad_physical_constraints -pad_name "vdd2_t" -side 2 -order 6
set_pad_physical_constraints -pad_name "vdd1_t" -side 2 -order 7
set_pad_physical_constraints -pad_name "vss1_t" -side 2 -order 8
set_pad_physical_constraints -pad_name "vss2_t" -side 2 -order 9
set_pad_physical_constraints -pad_name "PIW_input_raw5" -side 2 -order 10
set_pad_physical_constraints -pad_name "PIW_input_raw6" -side 2 -order 11
set_pad_physical_constraints -pad_name "PIW_input_raw7" -side 2 -order 12
set_pad_physical_constraints -pad_name "PIW_input_raw8" -side 2 -order 13

# Right side
set_pad_physical_constraints -pad_name "PIW_input_raw9" -side 3 -order 1
set_pad_physical_constraints -pad_name "PIW_input_raw10" -side 3 -order 2
set_pad_physical_constraints -pad_name "PIW_input_raw11" -side 3 -order 3
set_pad_physical_constraints -pad_name "PIW_input_raw12" -side 3 -order 4
set_pad_physical_constraints -pad_name "PIW_input_raw13" -side 3 -order 5
set_pad_physical_constraints -pad_name "vdd2_r" -side 3 -order 6
set_pad_physical_constraints -pad_name "vdd1_r" -side 3 -order 7
set_pad_physical_constraints -pad_name "vss1_r" -side 3 -order 8
set_pad_physical_constraints -pad_name "vss2_r" -side 3 -order 9
set_pad_physical_constraints -pad_name "PIW_input_raw14" -side 3 -order 10
set_pad_physical_constraints -pad_name "PIW_input_raw15" -side 3 -order 11
set_pad_physical_constraints -pad_name "PIW_rst_n" -side 3 -order 12
set_pad_physical_constraints -pad_name "PO8W_serial20" -side 3 -order 13

# Bottom side
set_pad_physical_constraints -pad_name "PIW_input_raw16" -side 4 -order 1
set_pad_physical_constraints -pad_name "PIW_input_raw17" -side 4 -order 2
set_pad_physical_constraints -pad_name "PIW_input_raw18" -side 4 -order 3
set_pad_physical_constraints -pad_name "PIW_input_raw19" -side 4 -order 4
set_pad_physical_constraints -pad_name "PIW_input_ra20" -side 4 -order 5
set_pad_physical_constraints -pad_name "vdd2_b" -side 4 -order 6
set_pad_physical_constraints -pad_name "vdd1_b" -side 4 -order 7
set_pad_physical_constraints -pad_name "vss1_b" -side 4 -order 8
set_pad_physical_constraints -pad_name "vss2_b" -side 4 -order 9
set_pad_physical_constraints -pad_name "PIW_input_raw21" -side 4 -order 10
set_pad_physical_constraints -pad_name "PIW_input_raw22" -side 4 -order 11
set_pad_physical_constraints -pad_name "PIW_input_raw23" -side 4 -order 12
set_pad_physical_constraints -pad_name "PIW_input_raw24" -side 4 -order 13
