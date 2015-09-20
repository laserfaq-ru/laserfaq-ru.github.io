* Schematic file for SSY1 Nd:YAG laser flashlamp circuit simulation.
* Copyright (c) 2000 by Shawn West (west007@libcom.com), all rights reserved.
* lasflsh.cir is the main program.

* Version 7.1 3138810669

u 383
C? 5
R? 18
L? 5
G? 5
D? 13
PWR? 5
GAIN? 5
MULT? 9
ABM2? 5
ABS? 5
INTEG? 5
? 3
PM? 6
@libraries
@analysis
.TRAN 1 0 1 0
+0 2u
+1 5m
+3 2u
.OPT 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
ABSTOL 1000pA
CHGTOL 10pC
ITL4 80
RELTOL 0.001
VNTOL 100uV
.STEP 0 0 4
+ 0 Lind
+ 4 20u
+ 5 200u
+ 6 20u
.OP 0 
@targets
@attributes
@translators
a 0 u 13 0 0 0 hln 100 PCBOARDS=PCB
a 0 u 13 0 0 0 hln 100 CADSTAR=PCB
a 0 u 13 0 0 0 hln 100 EDIF=PCB
a 0 u 13 0 0 0 hln 100 ORCAD=PCB
a 0 u 13 0 0 0 hln 100 PADS=PCB
a 0 u 13 0 0 0 hln 100 PCAD=PCB
a 0 u 13 0 0 0 hln 100 PROTEL=PCB
a 0 u 13 0 0 0 hln 100 TANGO=PCB
a 0 u 13 0 0 0 hln 100 SCICARDS=PCB
a 0 u 13 0 0 0 hln 100 PSPICE=PSPICE
a 0 u 13 0 0 0 hln 100 XILINX=XILINX
@setup
unconnectedPins 0
connectViaLabel 0
connectViaLocalLabels 0
NoStim4ExtIFPortsWarnings 1
AutoGenStim4ExtIFPorts 1
@index
pageloc 1 0 6431 
@status
n 0 100:00:20:14:05:59;948395159 e 
s 2832 100:00:20:14:15:40;948395740 e 
*page 1 0 1520 970 iB
@ports
port 52 BUBBLE 300 320 h
a 1 x 3 0 0 0 hcn 100 LABEL=Vtube
port 61 AGND 390 240 h
port 62 AGND 430 240 h
port 65 AGND 220 250 h
port 64 AGND 150 250 h
port 17 BUBBLE 390 120 h
a 1 x 3 0 0 0 hcn 100 LABEL=Vtube
port 63 AGND 580 230 h
@parts
part 16 ABS 300 400 h
a 0 sp 11 0 20 12 hln 100 PART=ABS
a 0 a 0 0 0 0 hln 100 PKGREF=ABS1
a 0 ap 0 0 -12 -2 hln 100 REFDES=ABS1
part 13 MULT 460 330 v
a 0 sp 0 0 16 32 hln 100 PART=MULT
a 0 a 0 0 0 0 hln 100 PKGREF=MULT1
a 1 ap 0 0 10 2 hln 100 REFDES=MULT1
part 8 D1N4007 150 220 v
a 0 s 0 0 0 0 hln 100 PKGTYPE=DO-41
a 0 s 0 0 0 0 hln 100 GATE=
a 0 a 0 0 0 0 hln 100 PKGREF=D2
a 0 ap 9 0 15 0 hln 100 refdes=D2
a 0 sp 11 0 17 -19 hln 100 PART=D1N4007
part 7 D1N4007 150 190 v
a 0 s 0 0 0 0 hln 100 PKGTYPE=DO-41
a 0 s 0 0 0 0 hln 100 GATE=
a 0 a 0 0 0 0 hln 100 PKGREF=D1
a 0 ap 9 0 15 0 hln 100 refdes=D1
a 0 sp 11 0 17 -21 hln 100 PART=D1N4007
part 9 D1N4007 150 250 v
a 0 s 0 0 0 0 hln 100 PKGTYPE=DO-41
a 0 s 0 0 0 0 hln 100 GATE=
a 0 a 0 0 0 0 hln 100 PKGREF=D3
a 0 ap 9 0 15 0 hln 100 refdes=D3
a 0 sp 11 0 15 -23 hln 100 PART=D1N4007
part 11 PWR 370 320 h
a 0 u 13 0 38 14 hlb 100 EXP=2
a 0 sp 11 0 14 12 hln 100 PART=PWR
a 0 a 0 0 0 0 hln 100 PKGREF=PWR1
a 0 ap 0 0 -12 -2 hln 100 REFDES=PWR1
part 12 GAIN 320 320 h
a 0 u 13 0 6 -4 hln 100 GAIN={1/{ko}}
a 0 sp 0 0 0 30 hln 100 PART=GAIN
a 0 a 0 0 0 0 hln 100 PKGREF=GAIN1
a 1 ap 0 0 0 0 hln 100 REFDES=GAIN1
part 14 MULT 470 190 h
a 0 sp 0 0 16 32 hln 100 PART=MULT
a 0 a 0 0 0 0 hln 100 PKGREF=MULT2
a 1 ap 0 0 10 2 hln 100 REFDES=MULT2
part 73 R 580 190 d
a 0 sp 0 0 0 10 hlb 100 PART=R
a 0 s 0 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0 0 0 0 hln 100 GATE=
a 0 a 0 0 0 0 hln 100 PKGREF=R4
a 0 ap 9 0 15 0 hln 100 REFDES=R4
a 0 u 13 0 33 -3 hln 100 VALUE=1k
part 5 L 260 120 h
a 0 u 13 0 15 25 hln 100 VALUE={Lind}
a 0 sp 0 0 0 10 hlb 100 PART=L
a 0 s 0 0 0 0 hln 100 PKGTYPE=L3216C
a 0 s 0 0 0 0 hln 100 GATE=
a 0 a 0 0 0 0 hln 100 PKGREF=L1
a 0 ap 9 0 15 0 hln 100 REFDES=L1
part 15 ABM2 360 380 h
a 0 u 13 0 14 18 hln 100 EXP2=(V(%IN2) +1m)) 
a 0 sp 0 0 14 48 hln 100 PART=ABM2
a 0 a 0 0 0 0 hln 100 PKGREF=ABM21
a 0 ap 0 0 -12 -2 hln 100 REFDES=ABM21
a 0 u 13 0 14 8 hln 100 EXP1=( V(%IN1)/
part 10 R 150 120 d
a 0 x 0 0 0 0 hln 100 PKGREF=Rctrl
a 0 xp 9 0 15 0 hln 100 REFDES=Rctrl
a 0 u 13 0 19 51 hln 100 VALUE=1u
a 0 sp 0 0 0 10 hlb 100 PART=R
a 0 s 0 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0 0 0 0 hln 100 GATE=
part 79 PARAM 130 310 h
a 0 u 13 0 0 40 hln 100 NAME3=ko
a 0 a 0 0 0 0 hln 100 PKGREF=PM1
a 1 ap 0 0 10 -2 hcn 100 refdes=PM1
a 0 u 13 0 0 20 hln 100 NAME1=Vcap
a 0 u 13 0 0 30 hln 100 NAME2=Lind
a 0 u 13 0 50 42 hlb 100 VALUE3=16.6
a 0 u 13 0 50 32 hlb 100 VALUE2=820u
a 0 u 13 0 50 22 hlb 100 VALUE1=565
part 4 R 330 120 h
a 0 x 0 0 0 0 hln 100 PKGREF=Rind
a 0 xp 9 0 15 0 hln 100 REFDES=Rind
a 0 u 13 0 15 25 hln 100 VALUE=0.09
a 0 sp 0 0 0 10 hlb 100 PART=R
a 0 s 0 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0 0 0 0 hln 100 GATE=
part 3 R 220 160 d
a 0 x 0 0 0 0 hln 100 PKGREF=Resr
a 0 xp 9 0 15 0 hln 100 REFDES=Resr
a 0 u 13 0 31 -5 hln 100 VALUE=0.15
a 0 sp 0 0 0 10 hlb 100 PART=R
a 0 s 0 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0 0 0 0 hln 100 GATE=
part 378 PARAM 220 310 h
a 0 u 13 0 0 30 hln 100 NAME2=
a 0 u 13 0 0 40 hln 100 NAME3=
a 0 u 13 0 50 32 hlb 100 VALUE2=
a 0 u 13 0 50 42 hlb 100 VALUE3=
a 0 a 0 0 0 0 hln 100 PKGREF=PM5
a 1 ap 0 0 10 -2 hcn 100 refdes=PM5
a 0 u 13 0 0 20 hln 100 NAME1=cap
a 0 u 13 0 50 22 hlb 100 VALUE1=1120u
part 2 C 220 220 d
a 0 u 13 0 17 -19 hln 100 VALUE={cap}
a 0 u 0 0 0 0 hln 100 IC={Vcap}
a 0 sp 0 0 0 10 hlb 100 PART=C
a 0 s 0 0 0 0 hln 100 PKGTYPE=CK05
a 0 s 0 0 0 0 hln 100 GATE=
a 0 a 0 0 0 0 hln 100 PKGREF=C1
a 0 ap 9 0 15 0 hln 100 REFDES=C1
part 6 G 430 230 H
a 0 s 11 0 10 34 hln 100 PART=G
a 0 a 0 0 0 0 hln 100 PKGREF=G1
a 1 ap 9 0 10 4 hln 100 REFDES=G1
part 379 R 390 150 d
a 0 sp 0 0 0 10 hlb 100 PART=R
a 0 s 0 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0 0 0 0 hln 100 GATE=
a 0 u 13 0 33 -1 hln 100 VALUE=1u
a 0 x 0 0 0 0 hln 100 PKGREF=Rsense
a 0 xp 9 0 15 0 hln 100 REFDES=Rsense
part 72 INTEG 500 190 h
a 0 sp 0 0 0 30 hln 100 PART=INTEG
a 0 a 0 0 0 0 hln 100 PKGREF=INTEG1
a 0 ap 0 0 -6 -6 hln 100 REFDES=INTEG1
part 1 titleblk 1520 970 h
a 1 s 13 0 350 10 hcn 100 PageSize=B
a 1 s 13 0 180 60 hcn 100 PageTitle=
a 1 s 13 0 340 95 hrn 100 PageCount=1
a 1 s 13 0 300 95 hrn 100 PageNO=1
part 78 iMarker 390 150 u
a 0 a 0 0 6 20 hlb 100 LABEL=2
part 76 nodeMarker 550 190 h
a 0 a 0 0 4 22 hlb 100 LABEL=1
@conn
w 23
s 220 200 220 220 22
w 39
s 450 320 430 320 38
w 41
s 460 330 460 390 40
s 460 390 450 390 42
w 45
s 360 380 300 380 44
s 300 380 300 400 46
s 300 380 300 320 48
s 300 320 320 320 50
w 31
s 430 230 460 230 30
s 460 230 460 300 32
s 460 230 460 190 34
s 460 190 470 190 36
w 25
s 320 120 330 120 24
w 19
s 220 160 220 120 18
s 220 120 260 120 20
s 220 120 150 120 66
w 27
s 390 190 390 230 380
w 382
s 390 120 390 150 28
s 370 120 390 120 26
s 480 120 390 120 70
s 480 180 480 120 68
w 75
a 0 sr 0 0 0 0 hln 100 LABEL=Energy
s 580 190 550 190 77
a 0 sr 3 0 565 188 hln 100 LABEL=Energy
@junction
j 220 160
+ p 3 1
+ w 19
j 260 120
+ p 5 1
+ w 19
j 220 220
+ p 2 1
+ w 23
j 220 200
+ p 3 2
+ w 23
j 330 120
+ p 4 1
+ w 25
j 320 120
+ p 5 2
+ w 25
j 370 120
+ p 4 2
+ w 382
j 390 120
+ s 17
+ w 382
j 390 230
+ p 6 3
+ w 27
j 430 230
+ p 6 1
+ w 31
j 430 320
+ p 11 OUT
+ w 39
j 450 320
+ p 13 IN1
+ w 39
j 460 330
+ p 13 IN2
+ w 41
j 450 390
+ p 15 OUT
+ w 41
j 360 380
+ p 15 IN1
+ w 45
j 300 400
+ p 16 IN
+ w 45
j 300 380
+ w 45
+ w 45
j 300 320
+ s 52
+ w 45
j 320 320
+ p 12 IN
+ w 45
j 370 320
+ p 11 IN
+ p 12 OUT
j 360 400
+ p 15 IN2
+ p 16 OUT
j 460 230
+ w 31
+ w 31
j 460 300
+ p 13 OUT
+ w 31
j 470 190
+ p 14 IN2
+ w 31
j 390 240
+ s 61
+ p 6 4
j 430 240
+ s 62
+ p 6 2
j 220 250
+ s 65
+ p 2 2
j 150 190
+ p 8 2
+ p 7 1
j 150 220
+ p 8 1
+ p 9 2
j 150 160
+ p 7 2
+ p 10 2
j 150 250
+ p 9 1
+ s 64
j 220 120
+ w 19
+ w 19
j 150 120
+ p 10 1
+ w 19
j 480 180
+ p 14 IN1
+ w 382
j 500 190
+ p 72 in
+ p 14 OUT
j 580 230
+ s 63
+ p 73 2
j 550 190
+ p 72 out
+ w 75
j 580 190
+ p 73 1
+ w 75
j 390 190
+ p 379 2
+ w 27
j 390 150
+ p 379 1
+ w 382
j 390 150
+ p 78 pin1
+ p 379 1
j 390 150
+ p 78 pin1
+ w 382
j 550 190
+ p 76 pin1
+ p 72 out
j 550 190
+ p 76 pin1
+ w 75
@attributes
a 0 s 0 0 0 0 hln 100 PAGETITLE=
a 0 s 0 0 0 0 hln 100 PAGENO=1
a 0 s 0 0 0 0 hln 100 PAGESIZE=B
a 0 s 0 0 0 0 hln 100 PAGECOUNT=1
@text
