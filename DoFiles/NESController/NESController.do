# NES Controller DO File
restart -f

force sim:/NESController/reset_n 0, 1 @ 5
force data 0, 1 @ 2 -r 4
force -freeze clock_10MHz 0, 1 @ 1 -r 2
run 10000000