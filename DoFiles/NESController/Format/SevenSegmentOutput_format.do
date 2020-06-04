onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group Count -radix unsigned /SevenSegmentOutput/count
add wave -noupdate -expand -group {Parser Output} -radix unsigned /SevenSegmentOutput/hundreds
add wave -noupdate -expand -group {Parser Output} -radix unsigned /SevenSegmentOutput/ones
add wave -noupdate -expand -group {Parser Output} -radix unsigned /SevenSegmentOutput/tens
add wave -noupdate -expand -group {Parser Output} -radix unsigned /SevenSegmentOutput/tenThousands
add wave -noupdate -expand -group {Parser Output} -radix unsigned /SevenSegmentOutput/thousands
add wave -noupdate -expand -group {Seven Segment Decoder Output} /SevenSegmentOutput/hundredsSeg
add wave -noupdate -expand -group {Seven Segment Decoder Output} /SevenSegmentOutput/onesSeg
add wave -noupdate -expand -group {Seven Segment Decoder Output} /SevenSegmentOutput/tensSeg
add wave -noupdate -expand -group {Seven Segment Decoder Output} /SevenSegmentOutput/tenThousandsSeg
add wave -noupdate -expand -group {Seven Segment Decoder Output} /SevenSegmentOutput/thousandsSeg
TreeUpdate [SetDefaultTree]
WaveRestoreCursors
quietly wave cursor active 0
configure wave -namecolwidth 248
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
WaveRestoreZoom {0 ps} {63 ps}
