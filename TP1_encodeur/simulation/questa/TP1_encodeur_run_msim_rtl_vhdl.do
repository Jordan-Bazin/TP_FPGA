transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/jorda/OneDrive/Bureau/FPGA/TP1_encodeur/priority_encoder4.vhd}

vcom -93 -work work {C:/Users/jorda/OneDrive/Bureau/FPGA/TP1_encodeur/tb_priority_encoder4.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L cyclonev_hssi -L rtl_work -L work -voptargs="+acc"  tb_priority_encoder4

add wave *
view structure
view signals
run -all
