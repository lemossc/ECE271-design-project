# Parser DO File
restart -f

# 16383 (14 bits = max value)
force sim:/Parser/value 11111111111111	
run 20

# 5461 (alternating 1's) 
force sim:/Parser/value 01010101010101	
run 20

# 1023
force sim:/Parser/value 00001111111111
run 20

