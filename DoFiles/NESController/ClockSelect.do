# Clock Select DO File
restart -f 

force down  1, 1 @ 300, 1 @ 600, 1 @ 900, 1 @ 1200, 0 @ 1500, 0 @ 1800, 1 @ 2100
force left  1, 0 @ 300, 1 @ 600, 1 @ 900, 0 @ 1200, 1 @ 1500, 0 @ 1800, 1 @ 2100
force right 1, 1 @ 300, 0 @ 600, 0 @ 900, 1 @ 1200, 1 @ 1500, 0 @ 1800, 1 @ 2100
force up    0, 1 @ 300, 0 @ 600, 1 @ 900, 1 @ 1200, 1 @ 1500, 0 @ 1800, 1 @ 2100

force -freeze clock0 0, 1 @ 5 -r 10
force -freeze clock1 0, 1 @ 10 -r 20
force -freeze clock2 0, 1 @ 20 -r 40
force -freeze clock3 0, 1 @ 80 -r 160

run 2400