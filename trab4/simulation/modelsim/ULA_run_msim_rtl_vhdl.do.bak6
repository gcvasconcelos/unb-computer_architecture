transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Gabriel Vasconcelos/Documents/OAC/ULA.vhd}

vcom -93 -work work {C:/Users/Gabriel Vasconcelos/Documents/OAC/simulation/modelsim/ULA.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  ULA_tb

add wave *
view structure
view signals
run -all
