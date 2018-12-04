onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /mips_multi_tb/clk
add wave -noupdate /mips_multi_tb/clk_rom
add wave -noupdate -radix decimal /mips_multi_tb/data
add wave -noupdate /mips_multi_tb/debug
add wave -noupdate /mips_multi_tb/rst
add wave -noupdate /mips_multi_tb/i1/ctr_mips/pstate
add wave -noupdate -radix decimal -childformat {{/mips_multi_tb/i1/bcoreg/breg32(31) -radix decimal} {/mips_multi_tb/i1/bcoreg/breg32(30) -radix decimal} {/mips_multi_tb/i1/bcoreg/breg32(29) -radix decimal} {/mips_multi_tb/i1/bcoreg/breg32(28) -radix decimal} {/mips_multi_tb/i1/bcoreg/breg32(27) -radix decimal} {/mips_multi_tb/i1/bcoreg/breg32(26) -radix decimal} {/mips_multi_tb/i1/bcoreg/breg32(25) -radix decimal} {/mips_multi_tb/i1/bcoreg/breg32(24) -radix decimal} {/mips_multi_tb/i1/bcoreg/breg32(23) -radix decimal} {/mips_multi_tb/i1/bcoreg/breg32(22) -radix decimal} {/mips_multi_tb/i1/bcoreg/breg32(21) -radix decimal} {/mips_multi_tb/i1/bcoreg/breg32(20) -radix decimal} {/mips_multi_tb/i1/bcoreg/breg32(19) -radix decimal} {/mips_multi_tb/i1/bcoreg/breg32(18) -radix decimal} {/mips_multi_tb/i1/bcoreg/breg32(17) -radix decimal} {/mips_multi_tb/i1/bcoreg/breg32(16) -radix decimal} {/mips_multi_tb/i1/bcoreg/breg32(15) -radix decimal} {/mips_multi_tb/i1/bcoreg/breg32(14) -radix decimal} {/mips_multi_tb/i1/bcoreg/breg32(13) -radix decimal} {/mips_multi_tb/i1/bcoreg/breg32(12) -radix decimal} {/mips_multi_tb/i1/bcoreg/breg32(11) -radix decimal} {/mips_multi_tb/i1/bcoreg/breg32(10) -radix decimal} {/mips_multi_tb/i1/bcoreg/breg32(9) -radix decimal} {/mips_multi_tb/i1/bcoreg/breg32(8) -radix decimal} {/mips_multi_tb/i1/bcoreg/breg32(7) -radix decimal} {/mips_multi_tb/i1/bcoreg/breg32(6) -radix decimal} {/mips_multi_tb/i1/bcoreg/breg32(5) -radix decimal} {/mips_multi_tb/i1/bcoreg/breg32(4) -radix decimal} {/mips_multi_tb/i1/bcoreg/breg32(3) -radix decimal} {/mips_multi_tb/i1/bcoreg/breg32(2) -radix decimal} {/mips_multi_tb/i1/bcoreg/breg32(1) -radix decimal} {/mips_multi_tb/i1/bcoreg/breg32(0) -radix decimal}} -subitemconfig {/mips_multi_tb/i1/bcoreg/breg32(31) {-radix decimal} /mips_multi_tb/i1/bcoreg/breg32(30) {-radix decimal} /mips_multi_tb/i1/bcoreg/breg32(29) {-radix decimal} /mips_multi_tb/i1/bcoreg/breg32(28) {-radix decimal} /mips_multi_tb/i1/bcoreg/breg32(27) {-radix decimal} /mips_multi_tb/i1/bcoreg/breg32(26) {-radix decimal} /mips_multi_tb/i1/bcoreg/breg32(25) {-radix decimal} /mips_multi_tb/i1/bcoreg/breg32(24) {-radix decimal} /mips_multi_tb/i1/bcoreg/breg32(23) {-radix decimal} /mips_multi_tb/i1/bcoreg/breg32(22) {-radix decimal} /mips_multi_tb/i1/bcoreg/breg32(21) {-radix decimal} /mips_multi_tb/i1/bcoreg/breg32(20) {-radix decimal} /mips_multi_tb/i1/bcoreg/breg32(19) {-radix decimal} /mips_multi_tb/i1/bcoreg/breg32(18) {-radix decimal} /mips_multi_tb/i1/bcoreg/breg32(17) {-radix decimal} /mips_multi_tb/i1/bcoreg/breg32(16) {-radix decimal} /mips_multi_tb/i1/bcoreg/breg32(15) {-radix decimal} /mips_multi_tb/i1/bcoreg/breg32(14) {-radix decimal} /mips_multi_tb/i1/bcoreg/breg32(13) {-radix decimal} /mips_multi_tb/i1/bcoreg/breg32(12) {-radix decimal} /mips_multi_tb/i1/bcoreg/breg32(11) {-radix decimal} /mips_multi_tb/i1/bcoreg/breg32(10) {-radix decimal} /mips_multi_tb/i1/bcoreg/breg32(9) {-radix decimal} /mips_multi_tb/i1/bcoreg/breg32(8) {-radix decimal} /mips_multi_tb/i1/bcoreg/breg32(7) {-radix decimal} /mips_multi_tb/i1/bcoreg/breg32(6) {-radix decimal} /mips_multi_tb/i1/bcoreg/breg32(5) {-radix decimal} /mips_multi_tb/i1/bcoreg/breg32(4) {-radix decimal} /mips_multi_tb/i1/bcoreg/breg32(3) {-radix decimal} /mips_multi_tb/i1/bcoreg/breg32(2) {-radix decimal} /mips_multi_tb/i1/bcoreg/breg32(1) {-radix decimal} /mips_multi_tb/i1/bcoreg/breg32(0) {-radix decimal}} /mips_multi_tb/i1/bcoreg/breg32
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {140 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
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
WaveRestoreZoom {79 ps} {207 ps}
