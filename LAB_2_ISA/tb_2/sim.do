vlib work



vcom -reportprogress 300 -work work /home/isa05_2021_2022/Desktop/LAB_2/fpuvhdl_2/common/fpnormalize_fpnormalize.vhd

vcom -reportprogress 300 -work work /home/isa05_2021_2022/Desktop/LAB_2/fpuvhdl_2/common/fpround_fpround.vhd

vcom -reportprogress 300 -work work /home/isa05_2021_2022/Desktop/LAB_2/fpuvhdl_2/common/packfp_packfp.vhd

vcom -reportprogress 300 -work work /home/isa05_2021_2022/Desktop/LAB_2/fpuvhdl_2/common/unpackfp_unpackfp.vhd



vcom -reportprogress 300 -work work /home/isa05_2021_2022/Desktop/LAB_2/fpuvhdl_2/multiplier/fpmul_stage1_struct.vhd

vcom -reportprogress 300 -work work /home/isa05_2021_2022/Desktop/LAB_2/fpuvhdl_2/multiplier/fpmul_stage2_struct.vhd

vcom -reportprogress 300 -work work /home/isa05_2021_2022/Desktop/LAB_2/fpuvhdl_2/multiplier/fpmul_stage3_struct.vhd

vcom -reportprogress 300 -work work /home/isa05_2021_2022/Desktop/LAB_2/fpuvhdl_2/multiplier/fpmul_stage4_struct.vhd

#vcom -reportprogress 300 -work work /home/isa05_2021_2022/Desktop/LAB_2/fpuvhdl_2/multiplier/fpmul_single_cycle.vhd

vcom -reportprogress 300 -work work /home/isa05_2021_2022/Desktop/LAB_2/fpuvhdl_2/multiplier/fpmul_pipeline.vhd

vcom -reportprogress 300 -work work /home/isa05_2021_2022/Desktop/LAB_2/tb_2/clk_gen.vhd

vcom -reportprogress 300 -work work {/home/isa05_2021_2022/Desktop/LAB_2/tb_2/data_maker example.vhd}
vcom -reportprogress 300 -work work /home/isa05_2021_2022/Desktop/LAB_2/tb_2/tb.vhd

vsim work.tb
add wave -r /*
run 10 us
