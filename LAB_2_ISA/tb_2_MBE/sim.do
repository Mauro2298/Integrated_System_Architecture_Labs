vlib work



vcom -reportprogress 300 -work work /home/isa05_2021_2022/Desktop/LAB_2/fpuvhdl_2_MBE/common/fpnormalize_fpnormalize.vhd

vcom -reportprogress 300 -work work /home/isa05_2021_2022/Desktop/LAB_2/fpuvhdl_2_MBE/common/fpround_fpround.vhd

vcom -reportprogress 300 -work work /home/isa05_2021_2022/Desktop/LAB_2/fpuvhdl_2_MBE/common/packfp_packfp.vhd

vcom -reportprogress 300 -work work /home/isa05_2021_2022/Desktop/LAB_2/fpuvhdl_2_MBE/common/unpackfp_unpackfp.vhd


vcom -reportprogress 300 -work work /home/isa05_2021_2022/Desktop/LAB_2/fpuvhdl_2_MBE/multiplier/FA.vhd
vcom -reportprogress 300 -work work /home/isa05_2021_2022/Desktop/LAB_2/fpuvhdl_2_MBE/multiplier/HA.vhd
vcom -reportprogress 300 -work work /home/isa05_2021_2022/Desktop/LAB_2/fpuvhdl_2_MBE/multiplier/A_coeff.vhd
vcom -reportprogress 300 -work work /home/isa05_2021_2022/Desktop/LAB_2/fpuvhdl_2_MBE/multiplier/sign_extension.vhd
vcom -reportprogress 300 -work work /home/isa05_2021_2022/Desktop/LAB_2/fpuvhdl_2_MBE/multiplier/matrix_package.vhd
vcom -reportprogress 300 -work work /home/isa05_2021_2022/Desktop/LAB_2/fpuvhdl_2_MBE/multiplier/booth_encoder.vhd
vcom -reportprogress 300 -work work /home/isa05_2021_2022/Desktop/LAB_2/fpuvhdl_2_MBE/multiplier/MBE_Multiplier.vhd

vcom -reportprogress 300 -work work /home/isa05_2021_2022/Desktop/LAB_2/fpuvhdl_2_MBE/multiplier/fpmul_stage1_struct.vhd

vcom -reportprogress 300 -work work /home/isa05_2021_2022/Desktop/LAB_2/fpuvhdl_2_MBE/multiplier/fpmul_stage2_struct.vhd

vcom -reportprogress 300 -work work /home/isa05_2021_2022/Desktop/LAB_2/fpuvhdl_2_MBE/multiplier/fpmul_stage3_struct.vhd

vcom -reportprogress 300 -work work /home/isa05_2021_2022/Desktop/LAB_2/fpuvhdl_2_MBE/multiplier/fpmul_stage4_struct.vhd

#vcom -reportprogress 300 -work work /home/isa05_2021_2022/Desktop/LAB_2/fpuvhdl_2_MBE/multiplier/fpmul_single_cycle.vhd

vcom -reportprogress 300 -work work /home/isa05_2021_2022/Desktop/LAB_2/fpuvhdl_2_MBE/multiplier/fpmul_pipeline.vhd

vcom -reportprogress 300 -work work /home/isa05_2021_2022/Desktop/LAB_2/tb_2_MBE/clk_gen.vhd

vcom -reportprogress 300 -work work {/home/isa05_2021_2022/Desktop/LAB_2/tb_2_MBE/data_maker example.vhd}
vcom -reportprogress 300 -work work /home/isa05_2021_2022/Desktop/LAB_2/tb_2_MBE/tb.vhd

vsim work.tb
add wave -r /*
run 10 us
