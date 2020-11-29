0 ' spirographs
100 TAU=8*ATN(1)
105 ' radius of larger, 'A' circle
110 AR=31
115 ' radius of smaller, 'B' circle
120 DIM BR(2)
125 ' size of step to take
130 SS=0.5
135 ' screen dimens
140 SW=240:SH=64
145 ' start pos, tilt, and progress
150 DIM PB(2),X0(2),Y0(2),SB(2),CR(2)
175 GOSUB 600 'init sine lookup
176 FOR I=0 TO 2:BR(I)=AR*RND(1):SB(I)=SS/BR(I):CR(I)=AR-BR(I):NEXT
180 CLS
190 SA=SS/AR:SY=32
195 ' ***
200 W=PA+0.25:GOSUB 700:GC=S:W=PA:GOSUB 700:GS=S
201 FOR I=0 TO 1
202 SX=SW/6+I*SW/3
203 SX=SW/4+I*SW/2
205 W=PB(I)+0.25:GOSUB 700:B=S
210 X1=SX+CR(I)*GC+BR(I)*B
250 W=PB(I):GOSUB 700:B=S
260 Y1=SY+CR(I)*GS+BR(I)*B
390 IF PA=0 THEN 450
400 LINE (X0(I),Y0(I))-(X1,Y1)
450 X0(I)=X1:Y0(I)=Y1:PB(I)=PB(I)-SB(I)
490 NEXT
492 IF PA>3 THEN PA=0:GOTO 176
495 PA=PA+SA
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
