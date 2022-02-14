create_library_set -name MY_LIBSET	-timing "$MyTimingLib"

create_rc_corner -name my_rc \
        -cap_table $MycapTable \
	-preRoute_res 1 \
	-postRoute_res 1 \
	-preRoute_cap 1 \
	-postRoute_cap 1 \
	-postRoute_xcap 1 \
	-postRoute_clkres 0 \
	-postRoute_clkcap 0 \

create_delay_corner -name my_delay -library_set MY_LIBSET  -opcond_library "NangateOpenCellLibrary"  -rc_corner my_rc

create_constraint_mode -name SDC_layout -sdc_file $in_sdc_filename

create_analysis_view -name MyAnView -constraint_mode SDC_layout -delay_corner my_delay

set_analysis_view -setup "MyAnView" -hold "MyAnView"

