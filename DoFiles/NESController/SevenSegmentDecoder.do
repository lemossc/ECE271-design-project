# Seven Segment Decoder DO File
restart -f

# 0-9:
force sim:/SevenSegmentDecoder/data 0000 @ 0  , 0001 @ 10,  0010 @ 20,  0011 @ 30, 0100 @ 40 , 0101 @ 50,  0110 @ 60,  0111 @ 70, 1000 @ 80 , 1001 @ 90
run 100


# a-f:
#1010 @ 100, 1011 @ 110, 1100 @ 120, 1101 @ 130, 1110 @ 140, 1111 @ 150

