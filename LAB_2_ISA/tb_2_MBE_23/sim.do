vlib work



vcom -reportprogress 300 -work work /home/isa05_2021_2022/Desktop/LAB_2/fpuvhdl_2_MBE_23/common/fpnormalize_fpnormalize.vhd

vcom -reportprogress 300 -work work /home/isa05_2021_2022/Desktop/LAB_2/fpuvhdl_2_MBE_23/common/fpround_fpround.vhd

vcom -reportprogress 300 -work work /home/isa05_2021_2022/Desktop/LAB_2/fpuvhdl_2_MBE_23/common/packfp_packfp.vhd

vcom -reportprogress 300 -work work /home/isa05_2021_2022/Desktop/LAB_2/fpuvhdl_2_MBE_23/common/unpackfp_unpackfp.vhd


vcom -reportprogress 300 -work work /home/isa05_2021_2022/Desktop/LAB_2/fpuvhdl_2_MBE_23/multiplier/FA.vhd
vcom -reportprogress 300 -work work /home/isa05_2021_2022/Desktop/LAB_2/fpuvhdl_2_MBE_23/multiplier/HA.vhd
vcom -reportprogress 300 -work work /home/isa05_2021_2022/Desktop/LAB_2/fpuvhdl_2_MBE_23/multiplier/A_coeff.vhd
vcom -reportprogress 300 -work work /home/isa05_2021_2022/Desktop/LAB_2/fpuvhdl_2_MBE_23/multiplier/sign_extension.vhd
vcom -reportprogress 300 -work work /home/isa05_2021_2022/Desktop/LAB_2/fpuvhdl_2_MBE_23/multiplier/matrix_package.vhd
vcom -reportprogress 300 -work work /home/isa05_2021_2022/Desktop/LAB_2/fpuvhdl_2_MBE_23/multiplier/booth_encoder.vhd
vcom -reportprogress 300 -work work /home/isa05_2021_2022/Desktop/LAB_2/fpuvhdl_2_MBE_23/multiplier/MBE_Multiplier.vhd

vcom -reportprogress 300 -work work /home/isa05_2021_2022/Desktop/LAB_2/fpuvhdl_2_MBE_23/multiplier/fpmul_stage1_struct.vhd

vcom -reportprogress 300 -work work /home/isa05_2021_2022/Desktop/LAB_2/fpuvhdl_2_MBE_23/multiplier/fpmul_stage2_struct.vhd

vcom -reportprogress 300 -work work /home/isa05_2021_2022/Desktop/LAB_2/fpuvhdl_2_MBE_23/multiplier/fpmul_stage3_struct.vhd

vcom -reportprogress 300 -work work /home/isa05_2021_2022/Desktop/LAB_2/fpuvhdl_2_MBE_23/multiplier/fpmul_stage4_struct.vhd

#vcom -reportprogress 300 -work work /home/isa05_2021_2022/Desktop/LAB_2/fpuvhdl_2_MBE_23/multiplier/fpmul_single_cycle.vhd

vcom -reportprogress 300 -work work /home/isa05_2021_2022/Desktop/LAB_2/fpuvhdl_2_MBE_23/multiplier/fpmul_pipeline.vhd

vcom -reportprogress 300 -work work /home/isa05_2021_2022/Desktop/LAB_2/tb_2_MBE_23/clk_gen.vhd

vcom -reportprogress 300 -work work {/home/isa05_2021_2022/Desktop/LAB_2/tb_2_MBE_23/data_maker example.vhd}
vcom -reportprogress 300 -work work /home/isa05_2021_2022/Desktop/LAB_2/tb_2_MBE_23/tb.vhd

vsim work.tb
add wave -r /*
run 10 us
