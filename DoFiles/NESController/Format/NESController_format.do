onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group Input /NESController/reset_n
add wave -noupdate -expand -group Input /NESController/data
add wave -noupdate -expand -group Input /NESController/clock_10MHz
add wave -noupdate -expand -group {Segment Displays} /NESController/Seg0
add wave -noupdate -expand -group {Segment Displays} /NESController/Seg1
add wave -noupdate -expand -group {Segment Displays} /NESController/Seg2
add wave -noupdate -expand -group {Segment Displays} /NESController/Seg3
add wave -noupdate -expand -group {Segment Displays} /NESController/Seg4
add wave -noupdate -expand -group {Divided Clocks} /NESController/clock_1280Hz
add wave -noupdate -expand -group {Divided Clocks} /NESController/clock_160Hz
add wave -noupdate -expand -group {Divided Clocks} /NESController/clock_20Hz
add wave -noupdate -expand -group {Divided Clocks} /NESController/clock_2560Hz
add wave -noupdate -expand -group {Divided Clocks} /NESController/clock_40Hz
add wave -noupdate -expand -group {NES Reader Output} /NESController/clockRed
add wave -noupdate -expand -group {NES Reader Output} /NESController/latchData
add wave -noupdate -expand -group {NES Reader Output} /NESController/up
add wave -noupdate -expand -group {NES Reader Output} /NESController/down
add wave -noupdate -expand -group {NES Reader Output} /NESController/left
add wave -noupdate -expand -group {NES Reader Output} /NESController/right
add wave -noupdate -expand -group {NES Reader Output} /NESController/start
add wave -noupdate -expand -group {NES Reader Output} /NESController/select
add wave -noupdate -expand -group {NES Reader Output} /NESController/a
add wave -noupdate -expand -group {NES Reader Output} /NESController/b
add wave -noupdate -expand -group {Count Clock} /NESController/countClock
add wave -noupdate -expand -group {Arrow Logic Count} /NESController/count
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1031348 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 197
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
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {10500 ns}
