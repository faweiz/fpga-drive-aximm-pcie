onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib vc709_pcie_ep_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {vc709_pcie_ep.udo}

run -all

quit -force
