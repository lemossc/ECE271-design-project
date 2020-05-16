vsim work.DigitSeparator

add wave displayValue
add wave thousands
add wave hundreds
add wave tens
add wave ones

force displayValue 10#1234 0
force displayValue 10#5678 10

run 100 ps