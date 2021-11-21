vlib work

vcom ../src/pack.vhd
vcom ../src/Adder.vhd
vcom ../src/reg.vhd
vcom ../src/Mult.vhd
vcom ../src/fir_base_pipe.vhd
vcom ../src/filter.vhd
vcom ../tb/clk_gen.vhd
vcom ../tb/data_maker_new.vhd
vcom ../tb/tb.vhd

vsim work.tb
add wave *
run 10us


