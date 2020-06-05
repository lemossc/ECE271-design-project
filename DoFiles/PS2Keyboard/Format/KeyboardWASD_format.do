onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group Clock /KeyboardWASD/clock
add wave -noupdate -expand -group {Count After Falling Edge} -radix unsigned -childformat {{{/KeyboardWASD/count[3]} -radix unsigned} {{/KeyboardWASD/count[2]} -radix unsigned} {{/KeyboardWASD/count[1]} -radix unsigned} {{/KeyboardWASD/count[0]} -radix unsigned}} -subitemconfig {{/KeyboardWASD/count[3]} {-height 15 -radix unsigned} {/KeyboardWASD/count[2]} {-height 15 -radix unsigned} {/KeyboardWASD/count[1]} {-height 15 -radix unsigned} {/KeyboardWASD/count[0]} {-height 15 -radix unsigned}} /KeyboardWASD/count
add wave -noupdate -expand -group Data /KeyboardWASD/data
add wave -noupdate -expand -group {Bit Bus} /KeyboardWASD/incomingBits
add wave -noupdate -expand -group {Bit Bus} -radix hexadecimal /KeyboardWASD/incomingBits
add wave -noupdate -expand -group {Number of Ones} -radix unsigned /KeyboardWASD/numberOfOnes
add wave -noupdate -expand -group {Valid Input} /KeyboardWASD/isValidInput
add wave -noupdate -expand -group {Key Release} /KeyboardWASD/keyRelease
add wave -noupdate -expand -group {Movement [0 = up/left, 1 = down/right, 2 = stop]} -radix unsigned /KeyboardWASD/upDown
add wave -noupdate -expand -group {Movement [0 = up/left, 1 = down/right, 2 = stop]} -radix unsigned /KeyboardWASD/upDownOutput
add wave -noupdate -expand -group {Movement [0 = up/left, 1 = down/right, 2 = stop]} -radix unsigned /KeyboardWASD/leftRight
add wave -noupdate -expand -group {Movement [0 = up/left, 1 = down/right, 2 = stop]} -radix unsigned /KeyboardWASD/leftRightOutput
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 2} {1836 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 201
configure wave -valuecolwidth 56
configure wave -justifyvalue left
configure wave -signalnamewidth 1
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
WaveRestoreZoom {1682 ps} {2006 ps}
