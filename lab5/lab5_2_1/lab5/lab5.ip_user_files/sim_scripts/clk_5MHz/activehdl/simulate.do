onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+clk_5MHz -L xil_defaultlib -L xpm -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.clk_5MHz xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {clk_5MHz.udo}

run -all

endsim

quit -force
