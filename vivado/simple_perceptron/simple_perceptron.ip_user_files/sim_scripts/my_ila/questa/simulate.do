onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib my_ila_opt

do {wave.do}

view wave
view structure
view signals

do {my_ila.udo}

run -all

quit -force
