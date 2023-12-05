onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+vc707_pcie_ep -L xpm -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.vc707_pcie_ep xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {vc707_pcie_ep.udo}

run -all

endsim

quit -force
