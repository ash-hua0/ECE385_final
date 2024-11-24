# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\Orion\Documents\ece385-master\lab6\workspace_61\mb_6_1_top\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Users\Orion\Documents\ece385-master\lab6\workspace_61\mb_6_1_top\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {mb_6_1_top}\
-hw {C:\Users\Orion\Documents\ece385-master\lab6\mb_6_1_top.xsa}\
-out {C:/Users/Orion/Documents/ece385-master/lab6/workspace_61}

platform write
domain create -name {standalone_microblaze_0} -display-name {standalone_microblaze_0} -os {standalone} -proc {microblaze_0} -runtime {cpp} -arch {32-bit} -support-app {hello_world}
platform generate -domains 
platform active {mb_6_1_top}
platform generate -quick
platform config -updatehw {C:/Users/Orion/Documents/ece385-master/lab6/mb_6_1_top.xsa}
platform generate
platform active {mb_6_1_top}
platform config -updatehw {C:/Users/Orion/Documents/ece385-master/lab6/mb_6_1_top.xsa}
platform generate -domains 
platform generate -domains 
platform active {mb_6_1_top}
platform config -updatehw {C:/Users/Orion/Documents/ece385-master/lab6/mb_6_1_top.xsa}
platform generate -domains 
platform generate -domains standalone_microblaze_0 
