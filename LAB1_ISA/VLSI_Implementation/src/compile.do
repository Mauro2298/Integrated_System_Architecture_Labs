vlib work

vcom ../src/pack.vhd
vcom ../src/Adder.vhd
vcom ../src/reg.vhd
vcom ../src/Mult.vhd
vcom ../src/filter.vhd
vcom ../tb/clk_gen.vhd
vcom ../tb/data_maker_new.vhd
vcom ../tb/data_sink.vhd
vcom ../tb/tb.vhd
#vlog ../tb/tb_fir.v
vsim work.tb
add wave *
run 10us


