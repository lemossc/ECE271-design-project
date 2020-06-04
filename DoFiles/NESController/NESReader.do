# NES Reader DO File
restart -f

force sim:/NESReader/clock -freeze 0, 1 @ 10 -r 20
force sim:/NESReader/reset_n 0, 1 @ 5
force sim:/NESReader/data 0
run 50

force sim:/NESReader/data 1
run 550


