
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2$
create_project: 2default:default2
00:00:042default:default2
00:00:052default:default2
381.2972default:default2
66.9842default:defaultZ17-268h px� 
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental C:/Users/Orion/Downloads/385-final/385-final.srcs/utils_1/imports/synth_1/top_level.dcp2default:defaultZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2k
WC:/Users/Orion/Downloads/385-final/385-final.srcs/utils_1/imports/synth_1/top_level.dcp2default:defaultZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
v
Command: %s
53*	vivadotcl2E
1synth_design -top audio_top -part xc7s50csga324-12default:defaultZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7s502default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7s502default:defaultZ17-349h px� 
V
Loading part %s157*device2#
xc7s50csga324-12default:defaultZ21-403h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
�
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
22default:defaultZ8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
`
#Helper process launched with PID %s4824*oasys2
300042default:defaultZ8-7075h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
REGCCE2default:default2
wire2default:default2[
EC:/Xilinx/Vivado/2022.2/data/verilog/src/unimacro/BRAM_SINGLE_MACRO.v2default:default2
21702default:default8@Z8-11241h px� 
�
%s*synth2�
yStarting RTL Elaboration : Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 1187.770 ; gain = 408.340
2default:defaulth px� 
�
synthesizing module '%s'%s4497*oasys2
	audio_top2default:default2
 2default:default2q
[C:/Users/Orion/Downloads/385-final/385-final.srcs/sources_1/imports/Downloads/lab5_audio.sv2default:default2
12default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
tonegen2default:default2
 2default:default2`
JC:/Users/Orion/Downloads/385-final/385-final.srcs/sources_1/new/tonegen.sv2default:default2
12default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2"
sine_generator2default:default2
 2default:default2g
QC:/Users/Orion/Downloads/385-final/385-final.srcs/sources_1/new/sine_generator.sv2default:default2
22default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
	wavetable2default:default2
 2default:default2b
LC:/Users/Orion/Downloads/385-final/385-final.srcs/sources_1/new/wavetable.sv2default:default2
42default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	wavetable2default:default2
 2default:default2
02default:default2
12default:default2b
LC:/Users/Orion/Downloads/385-final/385-final.srcs/sources_1/new/wavetable.sv2default:default2
42default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
sine_generator2default:default2
 2default:default2
02default:default2
12default:default2g
QC:/Users/Orion/Downloads/385-final/385-final.srcs/sources_1/new/sine_generator.sv2default:default2
22default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys22
sine_generator__parameterized02default:default2
 2default:default2g
QC:/Users/Orion/Downloads/385-final/385-final.srcs/sources_1/new/sine_generator.sv2default:default2
22default:default8@Z8-6157h px� 
f
%s
*synth2N
:	Parameter PHASE_STEP bound to: 39370534 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys22
sine_generator__parameterized02default:default2
 2default:default2
02default:default2
12default:default2g
QC:/Users/Orion/Downloads/385-final/385-final.srcs/sources_1/new/sine_generator.sv2default:default2
22default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
tonegen2default:default2
 2default:default2
02default:default2
12default:default2`
JC:/Users/Orion/Downloads/385-final/385-final.srcs/sources_1/new/tonegen.sv2default:default2
12default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
volume2default:default2
 2default:default2_
IC:/Users/Orion/Downloads/385-final/385-final.srcs/sources_1/new/volume.sv2default:default2
22default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
volume2default:default2
 2default:default2
02default:default2
12default:default2_
IC:/Users/Orion/Downloads/385-final/385-final.srcs/sources_1/new/volume.sv2default:default2
22default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
pwm2default:default2
 2default:default2\
FC:/Users/Orion/Downloads/385-final/385-final.srcs/sources_1/new/pwm.sv2default:default2
52default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
pwm2default:default2
 2default:default2
02default:default2
12default:default2\
FC:/Users/Orion/Downloads/385-final/385-final.srcs/sources_1/new/pwm.sv2default:default2
52default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	audio_top2default:default2
 2default:default2
02default:default2
12default:default2q
[C:/Users/Orion/Downloads/385-final/385-final.srcs/sources_1/imports/Downloads/lab5_audio.sv2default:default2
12default:default8@Z8-6155h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
btnc2default:default2
	audio_top2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
btnu2default:default2
	audio_top2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
btnr2default:default2
	audio_top2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
btnl2default:default2
	audio_top2default:defaultZ8-7129h px� 
�
%s*synth2�
yFinished RTL Elaboration : Time (s): cpu = 00:00:07 ; elapsed = 00:00:08 . Memory (MB): peak = 1278.113 ; gain = 498.684
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:08 ; elapsed = 00:00:08 . Memory (MB): peak = 1278.113 ; gain = 498.684
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:08 ; elapsed = 00:00:08 . Memory (MB): peak = 1278.113 ; gain = 498.684
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0022default:default2
1278.1132default:default2
0.0002default:defaultZ17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
Parsing XDC File [%s]
179*designutils2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default8Z20-179h px� 
�
No ports matched '%s'.
584*	planAhead2
BTN[1]2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
502default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
502default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
BTN[2]2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
512default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
512default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
BTN[3]2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
522default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
522default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
RGB0[0]2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
552default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
552default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
RGB0[1]2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
562default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
562default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
RGB0[2]2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
572default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
572default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
RGB1[0]2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
582default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
582default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
RGB1[1]2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
592default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
592default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
RGB1[2]2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
602default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
602default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
D0_AN[0]2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
632default:default8@Z12-584h px�
�
.Invalid option value '%s' specified for '%s'.
161*common2
#2default:default2
objects2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
632default:default8@Z17-161h px�
�
No ports matched '%s'.
584*	planAhead2
D0_AN[1]2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
642default:default8@Z12-584h px�
�
.Invalid option value '%s' specified for '%s'.
161*common2
#2default:default2
objects2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
642default:default8@Z17-161h px�
�
No ports matched '%s'.
584*	planAhead2
D0_AN[2]2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
652default:default8@Z12-584h px�
�
.Invalid option value '%s' specified for '%s'.
161*common2
#2default:default2
objects2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
652default:default8@Z17-161h px�
�
No ports matched '%s'.
584*	planAhead2
D0_AN[3]2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
662default:default8@Z12-584h px�
�
.Invalid option value '%s' specified for '%s'.
161*common2
#2default:default2
objects2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
662default:default8@Z17-161h px�
�
No ports matched '%s'.
584*	planAhead2
	D0_SEG[0]2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
672default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
672default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
	D0_SEG[1]2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
682default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
682default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
	D0_SEG[2]2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
692default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
692default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
	D0_SEG[3]2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
702default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
702default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
	D0_SEG[4]2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
712default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
712default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
	D0_SEG[5]2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
722default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
722default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
	D0_SEG[6]2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
732default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
732default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
	D0_SEG[7]2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
742default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
742default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
D1_AN[0]2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
772default:default8@Z12-584h px�
�
.Invalid option value '%s' specified for '%s'.
161*common2
#2default:default2
objects2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
772default:default8@Z17-161h px�
�
No ports matched '%s'.
584*	planAhead2
D1_AN[1]2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
782default:default8@Z12-584h px�
�
.Invalid option value '%s' specified for '%s'.
161*common2
#2default:default2
objects2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
782default:default8@Z17-161h px�
�
No ports matched '%s'.
584*	planAhead2
D1_AN[2]2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
792default:default8@Z12-584h px�
�
.Invalid option value '%s' specified for '%s'.
161*common2
#2default:default2
objects2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
792default:default8@Z17-161h px�
�
No ports matched '%s'.
584*	planAhead2
D1_AN[3]2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
802default:default8@Z12-584h px�
�
.Invalid option value '%s' specified for '%s'.
161*common2
#2default:default2
objects2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
802default:default8@Z17-161h px�
�
No ports matched '%s'.
584*	planAhead2
	D1_SEG[0]2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
812default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
812default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
	D1_SEG[1]2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
822default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
822default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
	D1_SEG[2]2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
832default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
832default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
	D1_SEG[3]2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
842default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
842default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
	D1_SEG[4]2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
852default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
852default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
	D1_SEG[5]2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
862default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
862default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
	D1_SEG[6]2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
872default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
872default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
	D1_SEG[7]2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
882default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
882default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
	HDMI_DO_P2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
912default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
912default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
	HDMI_D0_N2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
922default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
922default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
	HDMI_D1_P2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
932default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
932default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
	HDMI_D1_N2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
942default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
942default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
	HDMI_D2_P2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
952default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
952default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
	HDMI_D2_N2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
962default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
962default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2

HDMI_CLK_P2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
972default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
972default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2

HDMI_CLK_N2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
982default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
982default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
HDMI_CEC_IN2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
992default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
992default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
HDMI_HPD2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1002default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1002default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2 
HDMI_I2C_SCL2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1012default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1012default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2 
HDMI_I2C-SDA2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1022default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1022default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2 
USB_SPI_MISO2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1052default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1052default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2 
USB_SPI_MOSI2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1062default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1062default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2 
USB_SPI_CCLK2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1072default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1072default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
USB_SS_B2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1082default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1082default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
USB_RESET_B2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1092default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1092default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
USB_INT2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1102default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1102default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
SD_DQ02default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1132default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1132default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
SD_DQ12default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1142default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1142default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
SD_DQ22default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1152default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1152default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
SD_DQ32default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1162default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1162default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
SD_CMD2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1172default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1172default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
SD_CLK2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1182default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1182default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
SD_CD_N2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1192default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1192default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
MIC_CLK2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1262default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1262default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
MIC_DATA2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1272default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1272default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
AD1_P2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1302default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1302default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
AD1_N2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1312default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1312default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
AD15_P2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1322default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1322default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
AD15_N2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1332default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1332default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2 
SEL_JOYSTICK2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1342default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1342default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2 
BLE_UART_TXD2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1372default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1372default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2 
BLE_UART_RXD2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1382default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1382default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2 
BLE_UART_RTS2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1392default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1392default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2 
BLE_UART_CTS2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1402default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1402default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
UART_TXD2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1412default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1412default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
UART_RXD2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1422default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1422default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
QSPI_DQ02default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1452default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1452default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
QSPI_DQ12default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1462default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1462default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
QSPI_DQ22default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1472default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1472default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
QSPI_DQ32default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1482default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1482default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
	QSPI_CS_B2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1492default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1492default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2 
QSPI_RESET_B2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1502default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1502default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
SERVO02default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1532default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1532default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
SERVO12default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1542default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1542default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
SERVO22default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1552default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1552default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
SERVO32default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1562default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1562default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
JA1_P2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1592default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1592default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
JA1_N2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1602default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1602default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
JA2_P2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1612default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1612default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
JA2_N2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1622default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1622default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
JA3_P2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1632default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1632default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
JA3_N2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1642default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1642default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
JA4_P2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1652default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1652default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
JA4_N2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1662default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1662default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
JB1_P2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1692default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1692default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
JB1_N2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1702default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1702default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
JB2_P2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1712default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1712default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
JB2_N2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1722default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1722default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
JB3_P2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1732default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1732default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
JB3_N2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1742default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1742default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
JB4_P2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1752default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1752default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
JB4_N2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1762default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1762default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
JAB_02default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1792default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1792default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
JAB_12default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1802default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1802default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
JAB_22default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1812default:default8@Z12-584h px�
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2!
Vivado 12-5842default:default2
1002default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1812default:default8@Z17-14h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1812default:default8@Z17-55h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1822default:default8@Z17-55h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1832default:default8@Z17-55h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1842default:default8@Z17-55h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1872default:default8@Z17-55h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1882default:default8@Z17-55h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1922default:default8@Z17-55h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1932default:default8@Z17-55h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
1942default:default8@Z17-55h px�
�
FMissing value for option '%s', please type '%s -help' for usage info.
163*common2
objects2default:default2 
set_property2default:default2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2
4642default:default8@Z17-163h px�
�
Finished Parsing XDC File [%s]
178*designutils2n
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2l
XC:/Users/Orion/Downloads/385-final/385-final.srcs/constrs_1/imports/Downloads/Urbana.xdc2default:default2/
.Xil/audio_top_propImpl.xdc2default:defaultZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1368.6052default:default2
0.0002default:defaultZ17-268h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0072default:default2
1368.6052default:default2
0.0002default:defaultZ17-268h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
REGCCE2default:default2
wire2default:default2[
EC:/Xilinx/Vivado/2022.2/data/verilog/src/unimacro/BRAM_SINGLE_MACRO.v2default:default2
21702default:default8@Z8-11241h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:00:15 ; elapsed = 00:00:16 . Memory (MB): peak = 1368.605 ; gain = 589.176
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Loading part: xc7s50csga324-1
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:15 ; elapsed = 00:00:16 . Memory (MB): peak = 1368.605 ; gain = 589.176
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:15 ; elapsed = 00:00:16 . Memory (MB): peak = 1368.605 ; gain = 589.176
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:15 ; elapsed = 00:00:17 . Memory (MB): peak = 1368.605 ; gain = 589.176
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   16 Bit       Adders := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    8 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               16 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 4     
2default:defaulth p
x
� 
8
%s
*synth2 
+---ROMs : 
2default:defaulth p
x
� 
P
%s
*synth28
$	                    ROMs := 2     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    8 Bit        Muxes := 1     
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2k
WPart Resources:
DSPs: 120 (col length:60)
BRAMs: 150 (col length: RAMB18 60 RAMB36 30)
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
btnc2default:default2
	audio_top2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
btnu2default:default2
	audio_top2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
btnr2default:default2
	audio_top2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
btnl2default:default2
	audio_top2default:defaultZ8-7129h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:17 ; elapsed = 00:00:19 . Memory (MB): peak = 1368.605 ; gain = 589.176
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
M
%s*synth25
!
ROM: Preliminary Mapping Report
2default:defaulth px� 
v
%s*synth2^
J+------------+-------------------------+---------------+----------------+
2default:defaulth px� 
w
%s*synth2_
K|Module Name | RTL Object              | Depth x Width | Implemented As | 
2default:defaulth px� 
v
%s*synth2^
J+------------+-------------------------+---------------+----------------+
2default:defaulth px� 
w
%s*synth2_
K|audio_top   | tone750hz/lut_1/amp_out | 128x8         | Block RAM      | 
2default:defaulth px� 
w
%s*synth2_
K|audio_top   | tone440hz/lut_1/amp_out | 128x8         | Block RAM      | 
2default:defaulth px� 
w
%s*synth2_
K+------------+-------------------------+---------------+----------------+

2default:defaulth px� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:23 ; elapsed = 00:00:25 . Memory (MB): peak = 1368.605 ; gain = 589.176
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
}Finished Timing Optimization : Time (s): cpu = 00:00:23 ; elapsed = 00:00:25 . Memory (MB): peak = 1368.605 ; gain = 589.176
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
|Finished Technology Mapping : Time (s): cpu = 00:00:23 ; elapsed = 00:00:25 . Memory (MB): peak = 1368.605 ; gain = 589.176
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
vFinished IO Insertion : Time (s): cpu = 00:00:29 ; elapsed = 00:00:31 . Memory (MB): peak = 1368.605 ; gain = 589.176
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:29 ; elapsed = 00:00:31 . Memory (MB): peak = 1368.605 ; gain = 589.176
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:29 ; elapsed = 00:00:31 . Memory (MB): peak = 1368.605 ; gain = 589.176
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:29 ; elapsed = 00:00:31 . Memory (MB): peak = 1368.605 ; gain = 589.176
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:29 ; elapsed = 00:00:31 . Memory (MB): peak = 1368.605 ; gain = 589.176
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:29 ; elapsed = 00:00:31 . Memory (MB): peak = 1368.605 ; gain = 589.176
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px� 
F
%s*synth2.
+------+---------+------+
2default:defaulth px� 
F
%s*synth2.
|      |Cell     |Count |
2default:defaulth px� 
F
%s*synth2.
+------+---------+------+
2default:defaulth px� 
F
%s*synth2.
|1     |BUFG     |     1|
2default:defaulth px� 
F
%s*synth2.
|2     |CARRY4   |    25|
2default:defaulth px� 
F
%s*synth2.
|3     |LUT1     |    32|
2default:defaulth px� 
F
%s*synth2.
|4     |LUT2     |    15|
2default:defaulth px� 
F
%s*synth2.
|5     |LUT3     |     9|
2default:defaulth px� 
F
%s*synth2.
|6     |LUT4     |     9|
2default:defaulth px� 
F
%s*synth2.
|7     |LUT5     |     2|
2default:defaulth px� 
F
%s*synth2.
|8     |LUT6     |     4|
2default:defaulth px� 
F
%s*synth2.
|9     |RAMB18E1 |     2|
2default:defaulth px� 
F
%s*synth2.
|11    |FDRE     |    67|
2default:defaulth px� 
F
%s*synth2.
|12    |IBUF     |    18|
2default:defaulth px� 
F
%s*synth2.
|13    |OBUF     |    17|
2default:defaulth px� 
F
%s*synth2.
+------+---------+------+
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:29 ; elapsed = 00:00:31 . Memory (MB): peak = 1368.605 ; gain = 589.176
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 5 warnings.
2default:defaulth p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:20 ; elapsed = 00:00:29 . Memory (MB): peak = 1368.605 ; gain = 498.684
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:29 ; elapsed = 00:00:31 . Memory (MB): peak = 1368.605 ; gain = 589.176
2default:defaulth p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0022default:default2
1368.6052default:default2
0.0002default:defaultZ17-268h px� 
f
-Analyzing %s Unisim elements for replacement
17*netlist2
272default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1368.6052default:default2
0.0002default:defaultZ17-268h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
g
$Synth Design complete, checksum: %s
562*	vivadotcl2
84a8a6342default:defaultZ4-1430h px� 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
382default:default2
1092default:default2
1092default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:332default:default2
00:00:372default:default2
1368.6052default:default2
963.4062default:defaultZ17-268h px� 
u
%s6*runtcl2Y
ESynthesis results are not added to the cache due to CRITICAL_WARNING
2default:defaulth px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2[
GC:/Users/Orion/Downloads/385-final/385-final.runs/synth_1/audio_top.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2|
hExecuting : report_utilization -file audio_top_utilization_synth.rpt -pb audio_top_utilization_synth.pb
2default:defaulth px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Sat Dec  7 20:25:41 20242default:defaultZ17-206h px� 


End Record