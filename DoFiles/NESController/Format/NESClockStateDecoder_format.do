onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group {Controller State} -radix hexadecimal /NESClockStateDecoder/controllerState
add wave -noupdate -expand -group Clock /NESClockStateDecoder/NESClock
TreeUpdate [SetDefaultTree]
WaveRestoreCursors
quietly wave cursor active 0
configure wave -namecolwidth 259
configure wave -valuecolwidth 52
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
WaveRestoreZoom {0 ps} {170 ps}
