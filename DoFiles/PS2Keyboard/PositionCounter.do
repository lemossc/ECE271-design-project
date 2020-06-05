# Position Counter DO File
restart -f

force -freeze sim:/PositionCounter/clock 0, 1 @ 10 -r 20
#force sim:/PositionCounter/x 0
force sim:/PositionCounter/y 0
force sim:/PositionCounter/x 1 @ 5 -r 10
run 5000