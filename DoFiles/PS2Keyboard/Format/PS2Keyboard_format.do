onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group Clocks /PS2Keyboard/clock
add wave -noupdate -expand -group Clocks /PS2Keyboard/clockHalf
add wave -noupdate -expand -group Clocks /PS2Keyboard/pulseClock
add wave -noupdate -expand -group Data /PS2Keyboard/data
add wave -noupdate -expand -group Syncs /PS2Keyboard/vSync
add wave -noupdate -expand -group Syncs /PS2Keyboard/hSync
add wave -noupdate -expand -group Syncs /PS2Keyboard/horizontalSync
add wave -noupdate -expand -group Syncs /PS2Keyboard/verticalSync
add wave -noupdate -expand -group {VGA Pixel Coordinates} -radix unsigned /PS2Keyboard/xPos
add wave -noupdate -expand -group {VGA Pixel Coordinates} -radix unsigned /PS2Keyboard/yPos
add wave -noupdate -expand -group {Pixel Color} -color Blue /PS2Keyboard/blue
add wave -noupdate -expand -group {Pixel Color} -color Green /PS2Keyboard/green
add wave -noupdate -expand -group {Pixel Color} -color Red /PS2Keyboard/red
add wave -noupdate -expand -group {Move Command} -radix unsigned /PS2Keyboard/moveX
add wave -noupdate -expand -group {Move Command} -radix unsigned /PS2Keyboard/moveY
add wave -noupdate -expand -group {Box Position} -radix unsigned /PS2Keyboard/boxX
add wave -noupdate -expand -group {Box Position} -radix unsigned /PS2Keyboard/boxY
add wave -noupdate -expand -group {Box Color} /PS2Keyboard/blueBoxUnit
add wave -noupdate -expand -group {Box Color} /PS2Keyboard/greenBoxUnit
add wave -noupdate -expand -group {Box Color} /PS2Keyboard/redBoxUnit
add wave -noupdate -group Ignore /PS2Keyboard/switchesX
add wave -noupdate -group Ignore /PS2Keyboard/switchesY
add wave -noupdate -group Ignore -radix unsigned /PS2Keyboard/BOX_SIZE
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 2} {698 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 181
configure wave -valuecolwidth 40
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
WaveRestoreZoom {162 ps} {892 ps}
