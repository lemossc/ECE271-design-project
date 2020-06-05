# Box Unit DO File
restart -f
force sim:/BoxUnit/vSync 1, 0 @ 5 -r 10

# Movement Commands: 0 = up/left, 1 = down/right, 2 = stop
force sim:/BoxUnit/moveX 00, 01 @ 35, 10 @ 70, 11 @ 115
force sim:/BoxUnit/moveY 00
force sim:/BoxUnit/moveY 00 @ 5, 01 @ 15, 11 @ 25 -r 35 -cancel 149

force sim:/BoxUnit/moveY 01 @ 150
force sim:/BoxUnit/moveX 01 @ 150

run 6500


