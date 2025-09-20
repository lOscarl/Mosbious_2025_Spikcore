v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 -60 -650 740 -250 {flags=graph
y1=-1.5e-05
y2=1.7
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=5e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=spk
color=4
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 -60 -250 740 150 {flags=graph
y1=0.58
y2=0.83
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=5e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=x1.inv1
color=4
dataset=-1
unitx=1
logx=0
logy=0
}
N -480 -340 -480 -310 {lab=GND}
N -480 -530 -480 -520 {lab=vdd}
N -560 -420 -560 -400 {lab=pad_in}
N -560 -340 -560 -310 {lab=GND}
N -830 -750 -830 -710 {lab=GND}
N -630 -750 -630 -710 {lab=GND}
N -530 -750 -530 -710 {lab=GND}
N -830 -850 -830 -810 {lab=DVDD}
N -630 -850 -630 -810 {lab=DVSS}
N -530 -850 -530 -810 {lab=VSS}
N -830 -710 -530 -710 {lab=GND}
N -680 -710 -680 -690 {lab=GND}
C {vsource.sym} -480 -370 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/code_shown.sym} -910 -530 0 0 {name=s1 only_toplevel=false value="
.option method=gear seed=12
.tran 0.01n 5u
.save allcurrents
.options save currents
.control
	reset
	save all
        run
        write LIF_ring_pad.raw
.endc
"
spice_ignore=False}
C {lab_pin.sym} -480 -530 0 0 {name=p1 sig_type=std_logic lab=vdd}
C {ammeter.sym} -480 -490 2 0 {name=Vdd_c savecurrent=true spice_ignore=0}
C {devices/code_shown.sym} -1330 -20 0 0 {name=MODELS1 only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.include /foss/designs/Mosbious_2025_Spikcore/designs/pex/LIF_ring/LIF_ring_pex.spice
.include "/foss/designs/sscs-chipathon-2025/resources/Integration/Chipathon2025_pads/xschem/gf180mcu_fd_io__asig_5p0_extracted.spice"
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_typical
.lib $::180MCU_MODELS/sm141064.ngspice diode_typical
"}
C {res.sym} -480 -430 0 0 {name=R1
value=10
footprint=1206
device=resistor
m=1}
C {gnd.sym} -480 -310 0 0 {name=l2 lab=GND}
C {lab_pin.sym} -360 -450 0 0 {name=p2 sig_type=std_logic lab=vdd}
C {gnd.sym} -360 -410 0 0 {name=l1 lab=GND}
C {vsource.sym} -560 -370 0 0 {name=V2 value=0.2 savecurrent=false}
C {gnd.sym} -560 -310 0 0 {name=l3 lab=GND}
C {launcher.sym} -230 -140 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/LIF_ring_pad.raw tran"
}
C {lab_pin.sym} -240 -440 2 0 {name=p3 sig_type=std_logic lab=ASIG_spk}
C {designs/libs/core_LIF_ring/LIF_ring.sym} -270 -530 0 0 {name=x1}
C {title.sym} -810 290 0 0 {name=l4 author="Royce Richmond"}
C {vsource.sym} -830 -780 0 0 {name=V3 value=5 savecurrent=false}
C {vsource.sym} -630 -780 0 0 {name=V4 value=0 savecurrent=false}
C {vsource.sym} -530 -780 0 0 {name=V5 value=0 savecurrent=false}
C {lab_wire.sym} -830 -850 0 0 {name=p5 sig_type=std_logic lab=DVDD}
C {gnd.sym} -680 -690 0 0 {name=l5 lab=GND}
C {lab_wire.sym} -630 -850 0 0 {name=p8 sig_type=std_logic lab=DVSS}
C {lab_wire.sym} -530 -850 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {/foss/designs/sscs-chipathon-2025/resources/Integration/Chipathon2025_pads/xschem/symbols/io_asig_5p0.sym} -200 -680 0 1 {name=IO1
model=gf180mcu_fd_io__asig_5p0_extracted
spiceprefix=X
}
C {lab_pin.sym} -400 -760 2 1 {name=p12 sig_type=std_logic lab=ASIG_in}
C {lab_wire.sym} -280 -840 0 1 {name=p13 sig_type=std_logic lab=DVDD}
C {lab_wire.sym} -280 -680 0 1 {name=p14 sig_type=std_logic lab=DVSS}
C {lab_wire.sym} -320 -680 0 1 {name=p15 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -320 -840 0 1 {name=p16 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -200 -760 0 1 {name=p17 sig_type=std_logic lab=pad_in}
C {/foss/designs/sscs-chipathon-2025/resources/Integration/Chipathon2025_pads/xschem/symbols/io_asig_5p0.sym} 170 -680 0 1 {name=IO2
model=gf180mcu_fd_io__asig_5p0_extracted
spiceprefix=X
}
C {lab_pin.sym} -30 -760 2 1 {name=p4 sig_type=std_logic lab=ASIG_spk}
C {lab_wire.sym} 90 -840 0 1 {name=p6 sig_type=std_logic lab=DVDD}
C {lab_wire.sym} 90 -680 0 1 {name=p7 sig_type=std_logic lab=DVSS}
C {lab_wire.sym} 50 -680 0 1 {name=p10 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 50 -840 0 1 {name=p11 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 170 -760 0 1 {name=p18 sig_type=std_logic lab=pad_spk}
C {lab_pin.sym} -560 -420 0 0 {name=p19 sig_type=std_logic lab=pad_in}
C {lab_pin.sym} -360 -430 0 0 {name=p20 sig_type=std_logic lab=ASIG_in}
