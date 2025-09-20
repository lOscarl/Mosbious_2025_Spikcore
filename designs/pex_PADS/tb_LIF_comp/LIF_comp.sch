v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 750 -1270 1550 -870 {flags=graph
y1=-1.3719
y2=2.0366
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-5e-06
x2=9.5e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="x8.x14.phi_2
x8.x14.phi_1
x8.vspike"
color="4 9 10"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 750 -1670 1550 -1270 {flags=graph
y1=-1.5
y2=1.5
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-5e-06
x2=9.5e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="\\"Vthr; x8.v_th\\"
\\"Vmem; x8.vmem\\""
color="4 9"
dataset=-1
unitx=1
logx=0
logy=0
}
N 130 -1570 130 -1530 {lab=GND}
N 330 -1570 330 -1530 {lab=GND}
N 430 -1570 430 -1530 {lab=GND}
N 130 -1670 130 -1630 {lab=DVDD}
N 330 -1670 330 -1630 {lab=DVSS}
N 430 -1670 430 -1630 {lab=VSS}
N 130 -1530 430 -1530 {lab=GND}
N 280 -1530 280 -1510 {lab=GND}
C {title.sym} 70 -580 0 0 {name=l1 author="Oscar Islas"}
C {vsource.sym} 120 -1230 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 120 -1200 0 0 {name=l2 lab=GND}
C {lab_pin.sym} 120 -1320 0 1 {name=p17 sig_type=std_logic lab=vdd}
C {vsource.sym} 450 -1230 0 0 {name=V4 value="pulse(0 3.3 20u 1n 1n 20u 40u)" savecurrent=false}
C {gnd.sym} 450 -1200 0 0 {name=l5 lab=GND}
C {lab_pin.sym} 450 -1320 0 1 {name=p33 sig_type=std_logic lab=pad_rew}
C {devices/code_shown.sym} -85 -1000 0 0 {name=s1 only_toplevel=false value="
.option method=gear seed=12
.control
    tran 10n 100u
    write LIF_comp_pad.raw
.endc
.save all
"
spice_ignore=False}
C {devices/code_shown.sym} -70 -790 0 0 {name=MODELS1 only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.include /foss/designs/Mosbious_2025_Spikcore/designs/pex/LIF_comp/LIF_comp_pex.spice
.include /foss/designs/sscs-chipathon-2025/resources/Integration/Chipathon2025_pads/xschem/gf180mcu_fd_io__asig_5p0_extracted.spice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_typical
.lib $::180MCU_MODELS/sm141064.ngspice diode_typical
"}
C {launcher.sym} 600 -1090 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/LIF_comp_pad.raw tran"
}
C {designs/pex/LIF_comp/LIF_comp_pex.sym} 350 -1050 0 0 {name=x8}
C {lab_pin.sym} 280 -1060 0 0 {name=p45 sig_type=std_logic lab=ASIG_vin}
C {lab_pin.sym} 280 -1040 0 0 {name=p46 sig_type=std_logic lab=ASIG_rew}
C {lab_pin.sym} 350 -1120 0 0 {name=p47 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 350 -980 0 0 {name=p48 sig_type=std_logic lab=vss}
C {lab_pin.sym} 420 -1050 0 1 {name=p49 sig_type=std_logic lab=ASIG_vout2}
C {gnd.sym} 270 -1200 0 0 {name=l8 lab=GND}
C {lab_pin.sym} 270 -1320 0 1 {name=p50 sig_type=std_logic lab=pad_vin}
C {isource.sym} 270 -1230 2 1 {name=I1 value="pulse(0 10n 2u 1n 1n 1 2)"}
C {res.sym} 120 -1290 0 0 {name=R7
value=10
footprint=1206
device=resistor
m=1}
C {res.sym} 270 -1290 0 0 {name=R8
value=10
footprint=1206
device=resistor
m=1}
C {res.sym} 450 -1290 0 0 {name=R9
value=10
footprint=1206
device=resistor
m=1}
C {vsource.sym} 130 -1600 0 0 {name=V3 value=5 savecurrent=false}
C {vsource.sym} 330 -1600 0 0 {name=V5 value=0 savecurrent=false}
C {vsource.sym} 430 -1600 0 0 {name=V6 value=0 savecurrent=false}
C {lab_wire.sym} 130 -1670 0 0 {name=p5 sig_type=std_logic lab=DVDD}
C {gnd.sym} 280 -1510 0 0 {name=l4 lab=GND}
C {lab_wire.sym} 330 -1670 0 0 {name=p8 sig_type=std_logic lab=DVSS}
C {lab_wire.sym} 430 -1670 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {/foss/designs/sscs-chipathon-2025/resources/Integration/Chipathon2025_pads/xschem/symbols/io_asig_5p0.sym} 500 -1770 0 1 {name=IO1
model=gf180mcu_fd_io__asig_5p0_extracted
spiceprefix=X
}
C {lab_pin.sym} 300 -1850 2 1 {name=p12 sig_type=std_logic lab=ASIG_vin}
C {lab_wire.sym} 420 -1930 0 1 {name=p13 sig_type=std_logic lab=DVDD}
C {lab_wire.sym} 420 -1770 0 1 {name=p14 sig_type=std_logic lab=DVSS}
C {lab_wire.sym} 380 -1770 0 1 {name=p15 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 380 -1930 0 1 {name=p16 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 500 -1850 0 1 {name=p1 sig_type=std_logic lab=pad_vin}
C {/foss/designs/sscs-chipathon-2025/resources/Integration/Chipathon2025_pads/xschem/symbols/io_asig_5p0.sym} 900 -1770 0 1 {name=IO2
model=gf180mcu_fd_io__asig_5p0_extracted
spiceprefix=X
}
C {lab_pin.sym} 700 -1850 2 1 {name=p2 sig_type=std_logic lab=ASIG_vout}
C {lab_wire.sym} 820 -1930 0 1 {name=p3 sig_type=std_logic lab=DVDD}
C {lab_wire.sym} 820 -1770 0 1 {name=p4 sig_type=std_logic lab=DVSS}
C {lab_wire.sym} 780 -1770 0 1 {name=p6 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 780 -1930 0 1 {name=p7 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 900 -1850 0 1 {name=p10 sig_type=std_logic lab=pad_vout}
C {/foss/designs/sscs-chipathon-2025/resources/Integration/Chipathon2025_pads/xschem/symbols/io_asig_5p0.sym} 120 -1770 0 1 {name=IO3
model=gf180mcu_fd_io__asig_5p0_extracted
spiceprefix=X
}
C {lab_pin.sym} -80 -1850 2 1 {name=p11 sig_type=std_logic lab=ASIG_rew}
C {lab_wire.sym} 40 -1930 0 1 {name=p18 sig_type=std_logic lab=DVDD}
C {lab_wire.sym} 40 -1770 0 1 {name=p19 sig_type=std_logic lab=DVSS}
C {lab_wire.sym} 0 -1770 0 1 {name=p20 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 0 -1930 0 1 {name=p21 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 120 -1850 0 1 {name=p22 sig_type=std_logic lab=pad_rew}
