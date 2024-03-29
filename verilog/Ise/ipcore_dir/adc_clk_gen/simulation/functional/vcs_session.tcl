gui_open_window Wave
gui_sg_create adc_clk_gen_group
gui_list_add_group -id Wave.1 {adc_clk_gen_group}
gui_sg_addsignal -group adc_clk_gen_group {adc_clk_gen_tb.test_phase}
gui_set_radix -radix {ascii} -signals {adc_clk_gen_tb.test_phase}
gui_sg_addsignal -group adc_clk_gen_group {{Input_clocks}} -divider
gui_sg_addsignal -group adc_clk_gen_group {adc_clk_gen_tb.CLK_IN1}
gui_sg_addsignal -group adc_clk_gen_group {{Output_clocks}} -divider
gui_sg_addsignal -group adc_clk_gen_group {adc_clk_gen_tb.dut.clk}
gui_list_expand -id Wave.1 adc_clk_gen_tb.dut.clk
gui_sg_addsignal -group adc_clk_gen_group {{Counters}} -divider
gui_sg_addsignal -group adc_clk_gen_group {adc_clk_gen_tb.COUNT}
gui_sg_addsignal -group adc_clk_gen_group {adc_clk_gen_tb.dut.counter}
gui_list_expand -id Wave.1 adc_clk_gen_tb.dut.counter
gui_zoom -window Wave.1 -full
