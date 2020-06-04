onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group {Input From NES Reader} /ClockSelect/up
add wave -noupdate -expand -group {Input From NES Reader} /ClockSelect/down
add wave -noupdate -expand -group {Input From NES Reader} /ClockSelect/left
add wave -noupdate -expand -group {Input From NES Reader} /ClockSelect/right
add wave -noupdate -expand -group {Clock Inputs} /ClockSelect/clock0
add wave -noupdate -expand -group {Clock Inputs} /ClockSelect/clock1
add wave -noupdate -expand -group {Clock Inputs} /ClockSelect/clock2
add wave -noupdate -expand -group {Clock Inputs} /ClockSelect/clock3
add wave -noupdate -expand -group {Selected Clock} /ClockSelect/selectedClock
add wave -noupdate -expand -group {Selected Clock Number} -radix unsigned /ClockSelect/clockSelect
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {849 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 195
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
WaveRestoreZoom {0 ps} {5250 ps}
