# Arrow Logic with Counter DO File
restart -f
force reset_n 0, 1 @ 15
force -freeze clock 0, 1 @ 5 -r 10
force a 0, 	   1 @ 60
force b 0, 1 @ 30, 0 @ 60, 1 @ 90
run 120

