# NES Clock State Decoder DO File
restart -f

force sim:/NESClockStateDecoder/controllerState 0000 @ 0,   0001 @ 10,  0010 @ 20,  0011 @ 30
force sim:/NESClockStateDecoder/controllerState	0100 @ 40,  0101 @ 50,  0110 @ 60,  0111 @ 70
force sim:/NESClockStateDecoder/controllerState	1000 @ 80,  1001 @ 90,  1010 @ 100, 1011 @ 110 
force sim:/NESClockStateDecoder/controllerState	1100 @ 120, 1101 @ 130, 1110 @ 140, 1111 @ 150

run 160

