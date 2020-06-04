onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group Data -radix hexadecimal -childformat {{{/SevenSegmentDecoder/data[3]} -radix hexadecimal} {{/SevenSegmentDecoder/data[2]} -radix hexadecimal} {{/SevenSegmentDecoder/data[1]} -radix hexadecimal} {{/SevenSegmentDecoder/data[0]} -radix hexadecimal}} -subitemconfig {{/SevenSegmentDecoder/data[3]} {-height 15 -radix hexadecimal} {/SevenSegmentDecoder/data[2]} {-height 15 -radix hexadecimal} {/SevenSegmentDecoder/data[1]} {-height 15 -radix hexadecimal} {/SevenSegmentDecoder/data[0]} {-height 15 -radix hexadecimal}} /SevenSegmentDecoder/data
add wave -noupdate -expand -group {Segment Display} -radix binary -childformat {{{/SevenSegmentDecoder/segments[6]} -radix hexadecimal} {{/SevenSegmentDecoder/segments[5]} -radix hexadecimal} {{/SevenSegmentDecoder/segments[4]} -radix hexadecimal} {{/SevenSegmentDecoder/segments[3]} -radix hexadecimal} {{/SevenSegmentDecoder/segments[2]} -radix hexadecimal} {{/SevenSegmentDecoder/segments[1]} -radix hexadecimal} {{/SevenSegmentDecoder/segments[0]} -radix hexadecimal}} -expand -subitemconfig {{/SevenSegmentDecoder/segments[6]} {-height 15 -radix hexadecimal} {/SevenSegmentDecoder/segments[5]} {-height 15 -radix hexadecimal} {/SevenSegmentDecoder/segments[4]} {-height 15 -radix hexadecimal} {/SevenSegmentDecoder/segments[3]} {-height 15 -radix hexadecimal} {/SevenSegmentDecoder/segments[2]} {-height 15 -radix hexadecimal} {/SevenSegmentDecoder/segments[1]} {-height 15 -radix hexadecimal} {/SevenSegmentDecoder/segments[0]} {-height 15 -radix hexadecimal}} /SevenSegmentDecoder/segments
TreeUpdate [SetDefaultTree]
WaveRestoreCursors
quietly wave cursor active 0
configure wave -namecolwidth 214
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
WaveRestoreZoom {0 ps} {99 ps}
