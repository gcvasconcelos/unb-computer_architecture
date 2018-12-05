transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Gabriel Vasconcelos/Documents/OAC/trabfinal/regbuf.vhd}
vcom -93 -work work {C:/Users/Gabriel Vasconcelos/Documents/OAC/trabfinal/reg.vhd}
vcom -93 -work work {C:/Users/Gabriel Vasconcelos/Documents/OAC/trabfinal/mips_pkg.vhd}
vcom -93 -work work {C:/Users/Gabriel Vasconcelos/Documents/OAC/trabfinal/ulamips.vhd}
vcom -93 -work work {C:/Users/Gabriel Vasconcelos/Documents/OAC/trabfinal/mux_4.vhd}
vcom -93 -work work {C:/Users/Gabriel Vasconcelos/Documents/OAC/trabfinal/mux_3.vhd}
vcom -93 -work work {C:/Users/Gabriel Vasconcelos/Documents/OAC/trabfinal/mux_2.vhd}
vcom -93 -work work {C:/Users/Gabriel Vasconcelos/Documents/OAC/trabfinal/mips_multi.vhd}
vcom -93 -work work {C:/Users/Gabriel Vasconcelos/Documents/OAC/trabfinal/mips_mem.vhd}
vcom -93 -work work {C:/Users/Gabriel Vasconcelos/Documents/OAC/trabfinal/mips_control.vhd}
vcom -93 -work work {C:/Users/Gabriel Vasconcelos/Documents/OAC/trabfinal/extsgn.vhd}
vcom -93 -work work {C:/Users/Gabriel Vasconcelos/Documents/OAC/trabfinal/breg.vhd}
vcom -93 -work work {C:/Users/Gabriel Vasconcelos/Documents/OAC/trabfinal/alu_ctr.vhd}
vcom -93 -work work {C:/Users/Gabriel Vasconcelos/Documents/OAC/trabfinal/extbits.vhd}
vcom -93 -work work {C:/Users/Gabriel Vasconcelos/Documents/OAC/trabfinal/mux8_4.vhd}
vcom -93 -work work {C:/Users/Gabriel Vasconcelos/Documents/OAC/trabfinal/mux16_2.vhd}
vcom -93 -work work {C:/Users/Gabriel Vasconcelos/Documents/OAC/trabfinal/extsgn8.vhd}

vcom -93 -work work {C:/Users/Gabriel Vasconcelos/Documents/OAC/trabfinal/mips_multi_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  mips_multi_tb

add wave *
view structure
view signals
run -all
