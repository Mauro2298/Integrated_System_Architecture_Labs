vlib work

vcom -93 -work ./work ../tb/clk_gen.vhd
vcom -93 -work ./work ../tb/data_maker_forward.vhd
vcom -93 -work ./work ../tb/data_sink.vhd

#vlog -work ./work ../netlist/myfir.v
vlog -work ./work ../innovus/myfir.v

vlog -work ./work ../tb/tb_fir.v

#vsim -L /software/dk/nangate45/verilog/msim6.2g work.tb_fir -sdftyp /tb_fir/UUT=../netlist/myfir.sdf 
vsim -L /software/dk/nangate45/verilog/msim6.2g work.tb_fir -sdftyp /tb_fir/UUT=../innovus/myfir.sdf 

#vcd file ../vcd/myfir_syn.vcd
vcd file ../vcd/design.vcd
vcd add /tb_fir/UUT/*

run 2 us

quit -sim
quit
