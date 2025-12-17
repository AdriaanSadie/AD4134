create_hw_axi_txn wr_zeros [get_hw_axis hw_axi_1] -address a0010000 -data 00000000 -type write
run_hw_axi wr_zeros
after 100

create_hw_axi_txn wr_start_bram [get_hw_axis hw_axi_1] -address a0010000 -data ffffffff -type write
run_hw_axi wr_start_bram
after 100

create_hw_axi_txn rd_adc_bram [get_hw_axis hw_axi_1] -address a0000000 -type read -len 128
run_hw_axi rd_adc_bram