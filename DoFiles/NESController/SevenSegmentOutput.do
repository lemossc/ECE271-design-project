# Seven Segment Output DO File
restart -f

# 16383 (14 bits = max value)
force sim:/SevenSegmentOutput/count 11111111111111
run 20

# 5461 (alternating 1's) 
force sim:/SevenSegmentOutput/count 01010101010101	
run 20

# 1023
force sim:/SevenSegmentOutput/count 00001111111111
run 20

