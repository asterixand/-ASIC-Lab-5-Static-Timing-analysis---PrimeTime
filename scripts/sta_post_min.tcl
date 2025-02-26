
set link_path  [list ../ref/db_nldm/saed14rvt_tt0p8v25c.db ] 

read_verilog [list ../source/johnson_icc.v]

current_design johnson
link

read_sdc ../source/johnson_icc.sdc
read_parasitics ../source/johnson.spef.max

set_case_analysis 0 [get_port r]
set_case_analysis 0 [get_port SE]


report_constraint -all_violators -significant_digits 4 > ../results/johnson.min_constr.rpt
report_timing -delay_type max -nworst 40 -significant_digits 4 > ../results/johnson.min_timing.rpt

write_sdf ../results/johnson.min.sdf

exit



