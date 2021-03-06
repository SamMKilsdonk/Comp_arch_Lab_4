transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/kilsd/Desktop/Computer\ Architecture/Lab\ 4\ new {C:/Users/kilsd/Desktop/Computer Architecture/Lab 4 new/L4adder1bit.v}
vlog -vlog01compat -work work +incdir+C:/Users/kilsd/Desktop/Computer\ Architecture/Lab\ 4\ new {C:/Users/kilsd/Desktop/Computer Architecture/Lab 4 new/L4adder32bit.v}
vlog -vlog01compat -work work +incdir+C:/Users/kilsd/Desktop/Computer\ Architecture/Lab\ 4\ new {C:/Users/kilsd/Desktop/Computer Architecture/Lab 4 new/L4ALU.v}
vlog -vlog01compat -work work +incdir+C:/Users/kilsd/Desktop/Computer\ Architecture/Lab\ 4\ new {C:/Users/kilsd/Desktop/Computer Architecture/Lab 4 new/Mux_8x32to1x32.v}

vlog -vlog01compat -work work +incdir+C:/Users/kilsd/Desktop/Computer\ Architecture/Lab\ 4\ new {C:/Users/kilsd/Desktop/Computer Architecture/Lab 4 new/L4TB.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L rtl_work -L work -voptargs="+acc"  L4TB

add wave *
view structure
view signals
run -all
