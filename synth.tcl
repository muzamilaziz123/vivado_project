# Set up the project
open_project AXI_DMA.xpr

# Add source files
add_files [list [glob -nocomplain *.v]]

# Add constraints file
add_files your_constraints.xdc

# Run synthesis
launch_runs synth_1 -jobs 4

# Wait for synthesis to finish
wait_on_run synth_1

# Report the synthesis results
report_timing_summary -file timing_summary.rpt
report_utilization -file utilization.rpt

# Close the project
close_project
