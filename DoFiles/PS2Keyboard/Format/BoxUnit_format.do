onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group {Vertical Sync} /BoxUnit/vSync
add wave -noupdate -expand -group {Movement Command [0 up/left, 1 down/right, 2 stop]} -color Gold -radix unsigned /BoxUnit/moveX
add wave -noupdate -expand -group {Movement Command [0 up/left, 1 down/right, 2 stop]} -color Gold -radix unsigned /BoxUnit/moveY
add wave -noupdate -expand -group Coordinates -radix unsigned /BoxUnit/xPos
add wave -noupdate -expand -group Coordinates -radix unsigned /BoxUnit/yPos
add wave -noupdate -expand -group Color -color Red /BoxUnit/r
add wave -noupdate -expand -group Color -color Green /BoxUnit/g
add wave -noupdate -expand -group Color -color Blue /BoxUnit/b
add wave -noupdate -group Ignore -expand -group {Output Coordinates} -radix unsigned /BoxUnit/boxX
add wave -noupdate -group Ignore -expand -group {Output Coordinates} -radix unsigned /BoxUnit/boxY
add wave -noupdate -group Ignore -expand -group {Output Colors} -color Red /BoxUnit/red
add wave -noupdate -group Ignore -expand -group {Output Colors} -color Green /BoxUnit/green
add wave -noupdate -group Ignore -expand -group {Output Colors} -color Blue /BoxUnit/blue
TreeUpdate [SetDefaultTree]
WaveRestoreCursors
quietly wave cursor active 0
configure wave -namecolwidth 155
configure wave -valuecolwidth 47
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
WaveRestoreZoom {5982 ps} {6311 ps}
