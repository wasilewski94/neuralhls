# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_CTRL_BUS {
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
inputs { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
neurons { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 24
	offset_end 31
}
w_offset { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 32
	offset_end 39
}
b_offset { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 40
	offset_end 47
}
}
dict set axilite_register_dict CTRL_BUS $port_CTRL_BUS


