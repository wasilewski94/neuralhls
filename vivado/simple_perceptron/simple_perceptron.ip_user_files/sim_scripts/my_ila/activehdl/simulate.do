onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+my_ila -L xilinx_vip -L xpm -L xil_defaultlib -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.my_ila xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {my_ila.udo}

run -all

endsim

quit -force
