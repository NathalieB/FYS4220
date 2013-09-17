transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {E:/Semester 9/FYS4220/fys4220/lab1_g11/vhdl_src/lab1_g11.vhd}

vcom -93 -work work {E:/Semester 9/FYS4220/fys4220/lab1_g11/vhdl_src/tb_lab1_g11.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  tb_lab1_g11

add wave *
view structure
view signals
run -all