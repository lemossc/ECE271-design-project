# VGA Timing Logic DO File
# hSync LOW: 656 <= hCount < 752
# vSync LOW: 490 <= vCount < 492
restart -f

force sim:/VGATimingLogic/clock 0, 1 @ 10 -r 20

force sim:/VGATimingLogic/hCount 0
force sim:/VGATimingLogic/vCount 0
run 29

# hCount = 656, vCount = 491
force sim:/VGATimingLogic/hCount 1010010000
force sim:/VGATimingLogic/vCount 0111101011
run 20

# hCount = 752, vCount = 492
force sim:/VGATimingLogic/hCount 1011110000
force sim:/VGATimingLogic/vCount 0111101100
run 31

