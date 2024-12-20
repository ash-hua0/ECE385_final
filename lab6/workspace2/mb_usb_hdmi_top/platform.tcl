# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\Orion\Documents\GitHub\ece385\lab6\workspace2\mb_usb_hdmi_top\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Users\Orion\Documents\GitHub\ece385\lab6\workspace2\mb_usb_hdmi_top\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {mb_usb_hdmi_top}\
-hw {C:\Users\Orion\Documents\GitHub\ece385\lab6\mb_usb_hdmi_top.xsa}\
-out {C:/Users/Orion/Documents/GitHub/ece385/lab6/workspace2}

platform write
domain create -name {standalone_microblaze_0} -display-name {standalone_microblaze_0} -os {standalone} -proc {microblaze_0} -runtime {cpp} -arch {32-bit} -support-app {hello_world}
platform generate -domains 
platform active {mb_usb_hdmi_top}
platform generate -quick
platform generate
platform clean
platform generate
platform generate
platform generate
platform generate
platform generate
platform generate -domains standalone_microblaze_0 
platform clean
platform generate
platform clean
platform active {mb_usb_hdmi_top}
platform config -updatehw {C:/Users/Orion/Documents/GitHub/ece385/lab6/mb_usb_hdmi_top.xsa}
platform clean
platform generate
platform config -updatehw {C:/Users/Orion/Documents/GitHub/ece385/lab6/mb_usb_hdmi_top.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/Orion/Documents/GitHub/ece385/lab6/mb_usb_hdmi_top.xsa}
platform generate -domains 
platform generate
platform active {mb_usb_hdmi_top}
platform config -updatehw {C:/Users/Orion/Documents/GitHub/ECE385_final/lab6/mb_usb_hdmi_top.xsa}
platform generate -domains 
platform generate -domains 
platform active {mb_usb_hdmi_top}
platform active {mb_usb_hdmi_top}
platform config -updatehw {C:/Users/Orion/Documents/GitHub/ECE385_final/lab6/mb_usb_hdmi_top.xsa}
platform generate -domains 
platform active {mb_usb_hdmi_top}
platform config -updatehw {C:/Users/Orion/Documents/GitHub/ECE385_final/lab6/mb_usb_hdmi_top.xsa}
platform generate -domains 
platform clean
platform generate -domains standalone_microblaze_0 
platform active {mb_usb_hdmi_top}
platform config -updatehw {C:/Users/Orion/Documents/GitHub/ECE385_final/lab6/mb_usb_hdmi_top.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/Orion/Documents/GitHub/ECE385_final/lab6/mb_usb_hdmi_top.xsa}
platform clean
platform generate
platform active {mb_usb_hdmi_top}
platform config -updatehw {C:/Users/Orion/Documents/GitHub/ECE385_final/lab6/mb_usb_hdmi_top.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/Orion/Documents/GitHub/ECE385_final/lab6/mb_usb_hdmi_top.xsa}
platform generate -domains 
platform active {mb_usb_hdmi_top}
platform config -updatehw {C:/Users/Orion/Documents/GitHub/ECE385_final/lab6/mb_usb_hdmi_top.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/Orion/Documents/GitHub/ECE385_final/lab6/mb_usb_hdmi_top.xsa}
platform clean
platform generate
platform active {mb_usb_hdmi_top}
platform config -updatehw {C:/Users/Orion/Documents/GitHub/ECE385_final/lab6/mb_usb_hdmi_top.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/Orion/Documents/GitHub/ECE385_final/lab6/mb_usb_hdmi_top.xsa}
platform generate -domains 
platform active {mb_usb_hdmi_top}
platform config -updatehw {C:/Users/Orion/Documents/GitHub/ECE385_final/lab6/mb_usb_hdmi_top.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/Orion/Documents/GitHub/ECE385_final/lab6/mb_usb_hdmi_top.xsa}
platform generate -domains 
bsp reload
platform config -updatehw {C:/Users/Orion/Documents/GitHub/ECE385_final/lab6/mb_usb_hdmi_top.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/Orion/Documents/GitHub/ECE385_final/lab6/mb_usb_hdmi_top.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/Orion/Documents/GitHub/ECE385_final/lab6/mb_usb_hdmi_top.xsa}
platform clean
platform generate
platform active {mb_usb_hdmi_top}
platform config -updatehw {C:/Users/Orion/Documents/GitHub/ECE385_final/lab6/mb_usb_hdmi_top.xsa}
platform generate -domains 
platform active {mb_usb_hdmi_top}
platform config -updatehw {C:/Users/Orion/Documents/GitHub/ECE385_final/lab6/mb_usb_hdmi_top.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/Orion/Documents/GitHub/ECE385_final/lab6/mb_usb_hdmi_top.xsa}
platform generate -domains 
platform config -updatehw {C:/Users/Orion/Documents/GitHub/ECE385_final/lab6/mb_usb_hdmi_top.xsa}
platform generate -domains 
platform active {mb_usb_hdmi_top}
platform config -updatehw {C:/Users/Orion/Documents/GitHub/ECE385_final/lab6/mb_usb_hdmi_top.xsa}
platform generate -domains 
platform active {mb_usb_hdmi_top}
platform generate -domains 
platform clean
platform generate
