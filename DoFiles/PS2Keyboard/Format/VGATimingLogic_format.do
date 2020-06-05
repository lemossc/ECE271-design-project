onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group Clock /VGATimingLogic/clock
add wave -noupdate -expand -group hCount -radix unsigned /VGATimingLogic/hCount
add wave -noupdate -expand -group hSync /VGATimingLogic/hSync
add wave -noupdate -expand -group vCount -radix unsigned /VGATimingLogic/vCount
add wave -noupdate -expand -group vSync /VGATimingLogic/vSync
TreeUpdate [SetDefaultTree]
WaveRestoreCursors
quietly wave cursor active 0
configure wave -namecolwidth 181
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
WaveRestoreZoom {0 ps} {83 ps}
