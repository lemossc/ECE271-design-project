onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group Input /NESReader/data
add wave -noupdate -expand -group Input /NESReader/clock
add wave -noupdate -expand -group Input /NESReader/reset_n
add wave -noupdate -expand -group Output /NESReader/clockRed
add wave -noupdate -expand -group Output /NESReader/latchOrange
add wave -noupdate -expand -group Output /NESReader/start
add wave -noupdate -expand -group Output /NESReader/select
add wave -noupdate -expand -group Output /NESReader/up
add wave -noupdate -expand -group Output /NESReader/down
add wave -noupdate -expand -group Output /NESReader/left
add wave -noupdate -expand -group Output /NESReader/right
add wave -noupdate -expand -group Output /NESReader/a
add wave -noupdate -expand -group Output /NESReader/b
add wave -noupdate -expand -group {Internal Wires} /NESReader/buttons
add wave -noupdate -expand -group {Internal Wires} -radix unsigned /NESReader/count
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 4} {97 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 184
configure wave -valuecolwidth 60
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
WaveRestoreZoom {0 ps} {717 ps}
