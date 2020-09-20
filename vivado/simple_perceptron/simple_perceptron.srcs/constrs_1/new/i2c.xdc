
## for OV2659 camera module connected with digital video port (DVP) parallel output interface

## I2C
#set_property PACKAGE_PIN A20 [get_ports SDA_0]
#set_property PACKAGE_PIN B19 [get_ports SCL_0]

#set_property IOSTANDARD LVCMOS33 [get_ports SDA_0]
#set_property IOSTANDARD LVCMOS33 [get_ports SCL_0]
#set_property PULLUP true [get_ports SDA_0]
#set_property PULLUP true [get_ports SCL_0]

## data pins
#set_property PACKAGE_PIN K19 [get_ports {CAM_DATA[0]}]
#set_property PACKAGE_PIN L16 [get_ports {CAM_DATA[1]}]
#set_property PACKAGE_PIN K18 [get_ports {CAM_DATA[2]}]
#set_property PACKAGE_PIN L17 [get_ports {CAM_DATA[3]}]
#set_property PACKAGE_PIN J19 [get_ports {CAM_DATA[4]}]
#set_property PACKAGE_PIN M18 [get_ports {CAM_DATA[5]}]
#set_property PACKAGE_PIN M19 [get_ports {CAM_DATA[6]}]
#set_property PACKAGE_PIN E18 [get_ports {CAM_DATA[7]}]

#set_property IOSTANDARD LVCMOS33 [get_ports {CAM_DATA[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {CAM_DATA[1]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {CAM_DATA[2]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {CAM_DATA[3]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {CAM_DATA[4]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {CAM_DATA[5]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {CAM_DATA[6]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {CAM_DATA[7]}]

##the rest of pins
#set_property PACKAGE_PIN E19 [get_ports CAM_HSYNC]
#set_property PACKAGE_PIN D19 [get_ports CAM_VSYNC]
#set_property PACKAGE_PIN L20 [get_ports CAM_PCLK]
#set_property PACKAGE_PIN F16 [get_ports CAM_XCLK]
##set_property PACKAGE_PIN B9 [get_ports USB_RST]
##set_property PACKAGE_PIN R19 [get_ports SW0]
##set_property PACKAGE_PIN Y16 [get_ports LED0]

#set_property IOSTANDARD LVCMOS33 [get_ports CAM_HSYNC]
#set_property IOSTANDARD LVCMOS33 [get_ports CAM_VSYNC]
#set_property IOSTANDARD LVCMOS33 [get_ports CAM_PCLK]
#set_property IOSTANDARD LVCMOS33 [get_ports CAM_XCLK]
##set_property IOSTANDARD LVCMOS33 [get_ports USB_RST]
##set_property IOSTANDARD LVCMOS33 [get_ports SW0]
##set_property IOSTANDARD LVCMOS33 [get_ports LED0]