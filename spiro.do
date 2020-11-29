0 ' spirographs
100 TAU=8*ATN(1)
105 ' radius of larger, 'A' circle
110 AR=31
115 ' radius of smaller, 'B' circle
120 BR=0.8+AR/2
125 ' size of step to take
130 SS=1
135 ' center of screen
140 SX=120:SY=32
145 ' start pos, tilt, and progress
150 P=0
160 TI=-TAU/8
170 X0=-1:Y0=-1
175 GOSUB 600
180 CLS
190 CR=AR-BR:PA=TI:PB=TI:SA=SS/AR:SB=SS/BR
195 ' ***
200 W=PA+0.25:GOSUB 700:A=S:W=PB+0.25:GOSUB 700:B=S
210 X1=SX+CR*A+BR*B
250 W=PA:GOSUB 700:A=S:W=PB:GOSUB 700:B=S
260 Y1=SY+CR*A+BR*B
390 IF X0=-1 THEN 450
400 LINE (X0,Y0)-(X1,Y1)
450 X0=X1:Y0=Y1:PA=PA+SA:PB=PB-SB
460 IF PA>0.5 AND INKEY$<>"" THEN CLS:PA=0:PB=0:BR=RND(1)*AR:CR=AR-BR:X0=-1:SB=SS/BR
500 GOTO 200
510 END
600 DIM SN%(63)
610 FOR I=0 TO 63
620 READ SN%(I)
625 ' PRINT ".";
630 NEXT
640 RETURN
695 ' sine lookup
696 '   first, restrict argument to
697 '   corected range
700 W=W-INT(W):W=INT(W*64):S=SN%(W)/32:RETURN
800 DATA  0 , 3 , 6 , 9 , 12 , 15 , 17 , 20
810 DATA  22 , 24 , 26 , 28 , 29 , 30 , 31 , 31
820 DATA  32 , 31 , 31 , 30 , 29 , 28 , 26 , 24
830 DATA  22 , 20 , 17 , 15 , 12 , 9 , 6 , 3
840 DATA  0 ,-4 ,-7 ,-10 ,-13 ,-16 ,-18 ,-21
850 DATA -23 ,-25 ,-27 ,-29 ,-30 ,-31 ,-32 ,-32
860 DATA -32 ,-32 ,-32 ,-31 ,-30 ,-29 ,-27 ,-25
870 DATA -23 ,-21 ,-18 ,-16 ,-13 ,-10 ,-7 ,-4
