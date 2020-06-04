onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group Input /ArrowLogicCounter/reset_n
add wave -noupdate -expand -group Input /ArrowLogicCounter/clock
add wave -noupdate -expand -group Input /ArrowLogicCounter/a
add wave -noupdate -expand -group Input /ArrowLogicCounter/b
add wave -noupdate -expand -group {Count Clock Enabled} /ArrowLogicCounter/countClockEnabled
add wave -noupdate -expand -group {Up/Down (Enable)} /ArrowLogicCounter/upDown
add wave -noupdate -expand -group Count -radix unsigned /ArrowLogicCounter/count
add wave -noupdate -group Ignore /ArrowLogicCounter/a_not
add wave -noupdate -group Ignore /ArrowLogicCounter/b_not
add wave -noupdate -group Ignore /ArrowLogicCounter/SYNTHESIZED_WIRE_0
TreeUpdate [SetDefaultTree]
WaveRestoreCursors
quietly wave cursor active 0
configure wave -namecolwidth 261
configure wave -valuecolwidth 39
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
WaveRestoreZoom {0 ps} {124 ps}
