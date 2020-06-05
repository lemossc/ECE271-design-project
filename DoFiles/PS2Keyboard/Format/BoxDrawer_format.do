onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group Inputs /BoxDrawer/clock
add wave -noupdate -expand -group Inputs -radix unsigned /BoxDrawer/BOX_SIZE
add wave -noupdate -expand -group Inputs /BoxDrawer/red
add wave -noupdate -expand -group Inputs /BoxDrawer/green
add wave -noupdate -expand -group Inputs /BoxDrawer/blue
add wave -noupdate -expand -group Inputs -expand -group {Current Positon} -radix unsigned /BoxDrawer/boxX
add wave -noupdate -expand -group Inputs -expand -group {Current Positon} -radix unsigned /BoxDrawer/boxY
add wave -noupdate -expand -group Inputs -expand -group {Move Left/Right/Up/Down} -radix unsigned /BoxDrawer/x
add wave -noupdate -expand -group Inputs -expand -group {Move Left/Right/Up/Down} -radix unsigned /BoxDrawer/y
add wave -noupdate -expand -group Outputs /BoxDrawer/r
add wave -noupdate -expand -group Outputs /BoxDrawer/g
add wave -noupdate -expand -group Outputs /BoxDrawer/b
TreeUpdate [SetDefaultTree]
WaveRestoreCursors
quietly wave cursor active 0
configure wave -namecolwidth 173
configure wave -valuecolwidth 71
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
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {62 ps}
