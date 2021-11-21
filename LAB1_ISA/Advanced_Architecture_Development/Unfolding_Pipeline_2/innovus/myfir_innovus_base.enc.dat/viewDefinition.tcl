if {![namespace exists ::IMEX]} { namespace eval ::IMEX {} }
set ::IMEX::dataVar [file dirname [file normalize [info script]]]
set ::IMEX::libVar ${::IMEX::dataVar}/libs

create_library_set -name MY_LIBSET\
   -timing\
    [list ${::IMEX::libVar}/mmmc/NangateOpenCellLibrary_typical_ecsm_nowlm.lib]
create_rc_corner -name my_rc\
   -cap_table ${::IMEX::libVar}/mmmc/NCSU_FreePDK_45nm.capTbl\
   -preRoute_res 1\
   -postRoute_res 1\
   -preRoute_cap 1\
   -postRoute_cap 1\
   -postRoute_xcap 1\
   -preRoute_clkres 0\
   -preRoute_clkcap 0
create_delay_corner -name my_delay\
   -library_set MY_LIBSET\
   -opcond_library NangateOpenCellLibrary\
   -rc_corner my_rc
create_constraint_mode -name SDC_layout\
   -sdc_files\
    [list ${::IMEX::libVar}/mmmc/myfir.sdc]
create_analysis_view -name MyAnView -constraint_mode SDC_layout -delay_corner my_delay
set_analysis_view -setup [list MyAnView] -hold [list MyAnView]
