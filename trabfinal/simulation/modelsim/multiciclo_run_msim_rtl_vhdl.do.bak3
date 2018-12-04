transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Gabriel Vasconcelos/Documents/OAC/MULTICICLO/regbuf.vhd}
vcom -93 -work work {C:/Users/Gabriel Vasconcelos/Documents/OAC/MULTICICLO/reg.vhd}
vcom -93 -work work {C:/Users/Gabriel Vasconcelos/Documents/OAC/MULTICICLO/mips_pkg.vhd}
vcom -93 -work work {C:/Users/Gabriel Vasconcelos/Documents/OAC/MULTICICLO/ulamips.vhd}
vcom -93 -work work {C:/Users/Gabriel Vasconcelos/Documents/OAC/MULTICICLO/mux_4.vhd}
vcom -93 -work work {C:/Users/Gabriel Vasconcelos/Documents/OAC/MULTICICLO/mux_3.vhd}
vcom -93 -work work {C:/Users/Gabriel Vasconcelos/Documents/OAC/MULTICICLO/mux_2.vhd}
vcom -93 -work work {C:/Users/Gabriel Vasconcelos/Documents/OAC/MULTICICLO/mips_multi.vhd}
vcom -93 -work work {C:/Users/Gabriel Vasconcelos/Documents/OAC/MULTICICLO/mips_mem.vhd}
vcom -93 -work work {C:/Users/Gabriel Vasconcelos/Documents/OAC/MULTICICLO/mips_control.vhd}
vcom -93 -work work {C:/Users/Gabriel Vasconcelos/Documents/OAC/MULTICICLO/extsgn.vhd}
vcom -93 -work work {C:/Users/Gabriel Vasconcelos/Documents/OAC/MULTICICLO/breg.vhd}
vcom -93 -work work {C:/Users/Gabriel Vasconcelos/Documents/OAC/MULTICICLO/alu_ctr.vhd}

vcom -93 -work work {C:/Users/Gabriel Vasconcelos/Documents/OAC/MULTICICLO/mips_multi_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  mips_multi_tb

add wave *
view structure
view signals
run -all
