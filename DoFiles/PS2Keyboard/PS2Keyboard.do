# PS/2 Keyboard DO File
# UP = 1D, DOWN = 1B, LEFT = 1C, RIGHT = 23
restart -f

force pulseClock 1, 0 @ 10 -r 20
force clock 1, 0 @ 1 -r 2
# UP: 1D (00011101)		            
force data 0
run 25
force data 1
run 20
force data 0
run 20
force data 1
run 60
force data 0
run 75


# Key Release F0 (11110000)	 
force data 0
run 115
force data 1
run 90
force data 0
run 40


# UP: 1D (00011101)		            
force data 0
run 20
force data 1
run 20
force data 0
run 20
force data 1
run 60
force data 0
run 130


# DOWN: 1B (00011011)
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


run 10000000



#force pulseClock 1, 0 @ 10 -r 20
#force data 0, 1 @ 40

#run 1000000