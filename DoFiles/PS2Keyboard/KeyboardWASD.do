# Keyboard WASD Interpreter DO File
#    Note:
#    incomingBits: 		start, d0, d1, d2, d3, d4, d5, d6, d7, parity
#    count post falling edge:       1   2   3   4   5   6   7   8   9      10	    
restart -f
force -freeze sim:/KeyboardWASD/clock 1, 0 @ 10 -r 20

# UP: 1D (00011101)		            
force sim:/KeyboardWASD/data 0
run 25
force sim:/KeyboardWASD/data 1
run 20
force sim:/KeyboardWASD/data 0
run 20
force sim:/KeyboardWASD/data 1
run 60
force sim:/KeyboardWASD/data 0
run 75


# Key Release F0 (11110000)	 
force sim:/KeyboardWASD/data 0
run 115
force sim:/KeyboardWASD/data 1
run 90
force sim:/KeyboardWASD/data 0
run 40


# UP: 1D (00011101)		            
force sim:/KeyboardWASD/data 0
run 20
force sim:/KeyboardWASD/data 1
run 20
force sim:/KeyboardWASD/data 0
run 20
force sim:/KeyboardWASD/data 1
run 60
force sim:/KeyboardWASD/data 0
run 85


# DOWN: 1B (00011011)
force data 0
run 35
force data 1
run 20
force data 1
run 20
force data 0
run 20
force data 1
run 20
force data 1
run 20
force data 0
run 20
force data 0
run 20
force data 0
run 20
# parity bit:
force data 0
run 25


# RIGHT: 23 (00100011)
force data 0
run 35
#d0
force data 1
run 20
force data 1
run 20
force data 0
run 20
force data 0
run 20
force data 0
run 20
force data 1
run 20
force data 0
run 20
force data 0
run 20
# parity bit
force data 1
run 25


# Key Release F0 (11110000)	 
force data 0
run 25
# d0
force data 0
run 90
force data 1
run 80
# parity bit
force data 0
run 25


# DOWN: 1B (00011011)
force data 0
run 35
force data 1
run 20
force data 1
run 20
force data 0
run 20
force data 1
run 20
force data 1
run 20
force data 0
run 20
force data 0
run 20
force data 0
run 20
# parity bit:
force data 0
run 25


# Key Release F0 (11110000)	 
force data 0
run 25
# d0
force data 0
run 90
force data 1
run 80
# parity bit
force data 0
run 25


# RIGHT: 23 (00100011)
force data 0
run 35
#d0
force data 1
run 20
force data 1
run 20
force data 0
run 20
force data 0
run 20
force data 0
run 20
force data 1
run 20
force data 0
run 20
force data 0
run 20
# parity bit
force data 1
run 25

# See after effects of last run
run 20
