transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {lab1_g11.vho}

vcom -93 -work work {M:/pc/Desktop/fys4220/lab1_g11/vhd_src/tb_lab1_g11.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /UUT=lab1_g11_vhd.sdo -L cycloneii -L gate_work -L work -voptargs="+acc"  tb_lab1_g11

add wave *
view structure
view signals
run -all
