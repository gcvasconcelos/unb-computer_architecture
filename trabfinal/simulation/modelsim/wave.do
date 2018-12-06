onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /mips_multi_tb/i1/ctr_mips/pstate
add wave -noupdate /mips_multi_tb/clk
add wave -noupdate /mips_multi_tb/clk_rom
add wave -noupdate -radix hexadecimal /mips_multi_tb/data
add wave -noupdate /mips_multi_tb/debug
add wave -noupdate /mips_multi_tb/rst
add wave -noupdate -radix hexadecimal -childformat {{/mips_multi_tb/i1/bcoreg/breg32(31) -radix hexadecimal} {/mips_multi_tb/i1/bcoreg/breg32(30) -radix hexadecimal} {/mips_multi_tb/i1/bcoreg/breg32(29) -radix hexadecimal} {/mips_multi_tb/i1/bcoreg/breg32(28) -radix hexadecimal} {/mips_multi_tb/i1/bcoreg/breg32(27) -radix hexadecimal} {/mips_multi_tb/i1/bcoreg/breg32(26) -radix hexadecimal} {/mips_multi_tb/i1/bcoreg/breg32(25) -radix hexadecimal} {/mips_multi_tb/i1/bcoreg/breg32(24) -radix hexadecimal} {/mips_multi_tb/i1/bcoreg/breg32(23) -radix hexadecimal} {/mips_multi_tb/i1/bcoreg/breg32(22) -radix hexadecimal} {/mips_multi_tb/i1/bcoreg/breg32(21) -radix hexadecimal} {/mips_multi_tb/i1/bcoreg/breg32(20) -radix hexadecimal} {/mips_multi_tb/i1/bcoreg/breg32(19) -radix hexadecimal} {/mips_multi_tb/i1/bcoreg/breg32(18) -radix hexadecimal} {/mips_multi_tb/i1/bcoreg/breg32(17) -radix hexadecimal} {/mips_multi_tb/i1/bcoreg/breg32(16) -radix hexadecimal} {/mips_multi_tb/i1/bcoreg/breg32(15) -radix hexadecimal} {/mips_multi_tb/i1/bcoreg/breg32(14) -radix hexadecimal} {/mips_multi_tb/i1/bcoreg/breg32(13) -radix hexadecimal} {/mips_multi_tb/i1/bcoreg/breg32(12) -radix hexadecimal} {/mips_multi_tb/i1/bcoreg/breg32(11) -radix hexadecimal} {/mips_multi_tb/i1/bcoreg/breg32(10) -radix hexadecimal} {/mips_multi_tb/i1/bcoreg/breg32(9) -radix hexadecimal} {/mips_multi_tb/i1/bcoreg/breg32(8) -radix hexadecimal} {/mips_multi_tb/i1/bcoreg/breg32(7) -radix hexadecimal} {/mips_multi_tb/i1/bcoreg/breg32(6) -radix hexadecimal} {/mips_multi_tb/i1/bcoreg/breg32(5) -radix hexadecimal} {/mips_multi_tb/i1/bcoreg/breg32(4) -radix hexadecimal} {/mips_multi_tb/i1/bcoreg/breg32(3) -radix hexadecimal} {/mips_multi_tb/i1/bcoreg/breg32(2) -radix hexadecimal} {/mips_multi_tb/i1/bcoreg/breg32(1) -radix hexadecimal} {/mips_multi_tb/i1/bcoreg/breg32(0) -radix hexadecimal}} -subitemconfig {/mips_multi_tb/i1/bcoreg/breg32(31) {-height 15 -radix hexadecimal} /mips_multi_tb/i1/bcoreg/breg32(30) {-height 15 -radix hexadecimal} /mips_multi_tb/i1/bcoreg/breg32(29) {-height 15 -radix hexadecimal} /mips_multi_tb/i1/bcoreg/breg32(28) {-height 15 -radix hexadecimal} /mips_multi_tb/i1/bcoreg/breg32(27) {-height 15 -radix hexadecimal} /mips_multi_tb/i1/bcoreg/breg32(26) {-height 15 -radix hexadecimal} /mips_multi_tb/i1/bcoreg/breg32(25) {-height 15 -radix hexadecimal} /mips_multi_tb/i1/bcoreg/breg32(24) {-height 15 -radix hexadecimal} /mips_multi_tb/i1/bcoreg/breg32(23) {-height 15 -radix hexadecimal} /mips_multi_tb/i1/bcoreg/breg32(22) {-height 15 -radix hexadecimal} /mips_multi_tb/i1/bcoreg/breg32(21) {-height 15 -radix hexadecimal} /mips_multi_tb/i1/bcoreg/breg32(20) {-height 15 -radix hexadecimal} /mips_multi_tb/i1/bcoreg/breg32(19) {-height 15 -radix hexadecimal} /mips_multi_tb/i1/bcoreg/breg32(18) {-height 15 -radix hexadecimal} /mips_multi_tb/i1/bcoreg/breg32(17) {-height 15 -radix hexadecimal} /mips_multi_tb/i1/bcoreg/breg32(16) {-height 15 -radix hexadecimal} /mips_multi_tb/i1/bcoreg/breg32(15) {-height 15 -radix hexadecimal} /mips_multi_tb/i1/bcoreg/breg32(14) {-height 15 -radix hexadecimal} /mips_multi_tb/i1/bcoreg/breg32(13) {-height 15 -radix hexadecimal} /mips_multi_tb/i1/bcoreg/breg32(12) {-height 15 -radix hexadecimal} /mips_multi_tb/i1/bcoreg/breg32(11) {-height 15 -radix hexadecimal} /mips_multi_tb/i1/bcoreg/breg32(10) {-height 15 -radix hexadecimal} /mips_multi_tb/i1/bcoreg/breg32(9) {-height 15 -radix hexadecimal} /mips_multi_tb/i1/bcoreg/breg32(8) {-height 15 -radix hexadecimal} /mips_multi_tb/i1/bcoreg/breg32(7) {-height 15 -radix hexadecimal} /mips_multi_tb/i1/bcoreg/breg32(6) {-height 15 -radix hexadecimal} /mips_multi_tb/i1/bcoreg/breg32(5) {-height 15 -radix hexadecimal} /mips_multi_tb/i1/bcoreg/breg32(4) {-height 15 -radix hexadecimal} /mips_multi_tb/i1/bcoreg/breg32(3) {-height 15 -radix hexadecimal} /mips_multi_tb/i1/bcoreg/breg32(2) {-height 15 -radix hexadecimal} /mips_multi_tb/i1/bcoreg/breg32(1) {-height 15 -radix hexadecimal} /mips_multi_tb/i1/bcoreg/breg32(0) {-height 15 -radix hexadecimal}} /mips_multi_tb/i1/bcoreg/breg32
add wave -noupdate /mips_multi_tb/i1/memory/address
add wave -noupdate /mips_multi_tb/i1/memory/byteena
add wave -noupdate -radix hexadecimal /mips_multi_tb/i1/memory/data
add wave -noupdate -radix hexadecimal /mips_multi_tb/i1/demux_sh/in0
add wave -noupdate /mips_multi_tb/i1/demux_sh/sel
add wave -noupdate -radix hexadecimal /mips_multi_tb/i1/demux_sh/out0
add wave -noupdate -radix hexadecimal /mips_multi_tb/i1/demux_sh/out1
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {240 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 212
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {145 ps} {309 ps}
