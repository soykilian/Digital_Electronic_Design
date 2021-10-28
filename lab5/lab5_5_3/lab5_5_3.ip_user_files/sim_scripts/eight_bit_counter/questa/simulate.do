onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib eight_bit_counter_opt

do {wave.do}

view wave
view structure
view signals

do {eight_bit_counter.udo}

run -all

quit -force
