# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "C_CLOCKS_PER_HALF_BIT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_SLAVES" -parent ${Page_0}


}

proc update_PARAM_VALUE.C_CLOCKS_PER_HALF_BIT { PARAM_VALUE.C_CLOCKS_PER_HALF_BIT } {
	# Procedure called to update C_CLOCKS_PER_HALF_BIT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_CLOCKS_PER_HALF_BIT { PARAM_VALUE.C_CLOCKS_PER_HALF_BIT } {
	# Procedure called to validate C_CLOCKS_PER_HALF_BIT
	return true
}

proc update_PARAM_VALUE.C_SLAVES { PARAM_VALUE.C_SLAVES } {
	# Procedure called to update C_SLAVES when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_SLAVES { PARAM_VALUE.C_SLAVES } {
	# Procedure called to validate C_SLAVES
	return true
}


proc update_MODELPARAM_VALUE.C_CLOCKS_PER_HALF_BIT { MODELPARAM_VALUE.C_CLOCKS_PER_HALF_BIT PARAM_VALUE.C_CLOCKS_PER_HALF_BIT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_CLOCKS_PER_HALF_BIT}] ${MODELPARAM_VALUE.C_CLOCKS_PER_HALF_BIT}
}

proc update_MODELPARAM_VALUE.C_SLAVES { MODELPARAM_VALUE.C_SLAVES PARAM_VALUE.C_SLAVES } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_SLAVES}] ${MODELPARAM_VALUE.C_SLAVES}
}

