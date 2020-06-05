# Box Drawer DO File
restart -f
force -freeze clock 0, 1 @ 5 -r 10
force BOX_SIZE 101000
force red 1111
force green 0000
force blue 0000

# Normal Case
force boxX 0
force boxY 0
force x 1
force y 1
run 20

# Horizontal Edge Case (x = 640-40-1 = 599, y = 200) 
force boxX 1001010111
force boxY 11001000
force x 1
force y 0
run 20

# Vertical Edge Case (x = 300, y = 480-40-1= 439)
force boxX 0100101100
force boxY 0110110111
force x 0
force y 1
run 20

