10 ' ********************
20 ' *                  *
30 ' *  Maze Generator  *
40 ' *                  *
50 ' ********************
60 '
100 SW%=240:SH%=64      ' scrn dimens
105 CW%=4:  CH%=CW%     ' cell dimens
110 MH%=(SH%-1)\CH%     ' maze dimens
112 MW%=(SW%-1)\CW%
113 MW%=MH%*1.5
115 RE%=MW%*MH%         ' unforged cells
130 PW%=1+CW%*MW%       ' maze dimens
140 PH%=1+CH%*MH%       '  in pixels
144 BX%=(SW%-PW%)\2
146 BY%=(SH%-PH%)\2
150 DIM MZ%(MW%-1,MH%-1)
160 DM%=(1=1)   ' draw maze as create?
162 PS%=(1=1)   ' play sounds?
169 ' cell openings (cardinal directions)
170 N%=1:S%=2:W%=4:E%=8
174 GOSUB 10000
179 ' random seed
180 SD=VAL(RIGHT$(TIME$,2))
185 FOR I=1 TO SD:T=RND(1):NEXT
200 CLS
205 ' draw a blank maze to start
210 LINE (BX%,BY%)-(BX%+PW%-1,BY%+PH%-1),1,BF
215 ' * First, choose a random start
220 CX%=1+RND(1)*(MW%-2):CY%=1+RND(1)*(MH%-2)
225 RE%=RE%-1
295 ' * (LOOP START) Now move by a cell
300 IF DM% THEN GOSUB 3000
305 GOSUB 3200
310 IF C%=0 THEN GOTO 4000
320 D%=RND(1)*C%
400 IF (A% AND N%)=0 THEN GOTO 420
410 IF D%=0 THEN GOTO 6500 ELSE D%=D%-1
420 IF (A% AND S%)=0 THEN GOTO 440
430 IF D%=0 THEN GOTO 6600 ELSE D%=D%-1
440 IF (A% AND W%)<>0 AND D%=0 THEN GOTO 6700 ELSE GOTO 6800
460 ' *** end maze construction loop
470 STOP ' shouldn't ever reach here
2995 ' * Draw open maze cell
3000 TX%=BX%+1+CW%*CX%
3010 TY%=BY%+1+CH%*CY%
3020 LINE (TX%,TY%)-(TX%+CW%-2,TY%+CH%-2),0,BF
3030 RETURN
3195 ' * Count available path moves
3200 C%=0:A%=0
3210 IF MZ%(CX%,CY%-1)=0 THEN C%=C%+1:A%=N%
3220 IF MZ%(CX%,CY%+1)=0 THEN C%=C%+1:A%=A% OR S%
3230 IF MZ%(CX%-1,CY%)=0 THEN C%=C%+1:A%=A% OR W%
3240 IF MZ%(CX%+1,CY%)=0 THEN C%=C%+1:A%=A% OR E%
3250 RETURN
3995 ' * Find a random path point
3996 ' * from which to branch
4000 IF RE%=0 THEN GOTO 7000
4010 REM CX%=RND(1)*MW%:CY%=RND(1)*MH%
4011 GOTO 4100 ' no RND, just scan
4020 IF MZ%(CX%,CY%)=0 THEN GOTO 4100
4030 GOSUB 3200:IF C%=0 THEN GOTO 4100
4040 GOTO 300   ' found a forge point
4095 ' keep scanning for a forge point
4100 IF PS% THEN SOUND 16000,2
4105 CX%=CX%+1
4110 IF CX%<MW%-1 THEN GOTO 4020
4120 CX%=1:CY%=CY%+1
4130 IF CY%>=MH%-1 THEN CY%=1
4140 GOTO 4020
6495 ' * forge upwards
6500 IF NOT DM% THEN GOTO 6540
6530 LINE (TX%,TY%-1)-(TX%+CW%-2,TY%-1),0
6540 MZ%(CX%,CY%)=MZ%(CX%,CY%)+N%
6550 CY%=CY%-1
6560 MZ%(CX%,CY%)=MZ%(CX%,CY%)+S%
6570 IF PS% THEN SOUND 1000+(RE%/(MW%*MH%))*15000,2
6580 RE%=RE%-1:GOTO 300
6595 ' * forge downwards
6600 IF NOT DM% THEN GOTO 6640
6630 LINE (TX%,TY%+CH%-1)-(TX%+CW%-2,TY%+CH%-1),0
6640 MZ%(CX%,CY%)=MZ%(CX%,CY%)+S%
6650 CY%=CY%+1
6660 MZ%(CX%,CY%)=MZ%(CX%,CY%)+N%
6670 IF PS% THEN SOUND 1000+(RE%/(MW%*MH%))*15000,2
6680 RE%=RE%-1:GOTO 300
6695 ' * forge westwards
6700 IF NOT DM% THEN GOTO 6740
6730 LINE (TX%-1,TY%)-(TX%-1,TY%+CH%-2),0
6740 MZ%(CX%,CY%)=MZ%(CX%,CY%)+W%
6750 CX%=CX%-1
6760 MZ%(CX%,CY%)=MZ%(CX%,CY%)+E%
6770 IF PS% THEN SOUND 1000+(RE%/(MW%*MH%))*15000,2
6780 RE%=RE%-1:GOTO 300
6795 ' * forge eastwards
6800 IF NOT DM% THEN GOTO 6840
6830 LINE (TX%+CW%-1,TY%)-(TX%+CW%-1,TY%+CH%-2),0
6840 MZ%(CX%,CY%)=MZ%(CX%,CY%)+E%
6850 CX%=CX%+1
6860 MZ%(CX%,CY%)=MZ%(CX%,CY%)+W%
6870 IF PS% THEN SOUND 1000+(RE%/(MW%*MH%))*15000,2
6880 RE%=RE%-1:GOTO 300
6998 ' * Done generating the maze.
6999 ' * Beep once then loop forever.
7000 IF NOT PS% THEN GOTO 7100
7010 READ A:READ B
7020 IF B=0 THEN GOTO 7100
7030 SOUND A,B
7040 GOTO 7010
7100 END
7999 ' * End song
8000 DATA 5332,10,7109,5,7109,5,6319,10,7109,10,0,10,7998,4,5652,10,8478,4,5332,10
9000 DATA 0,0
9995 ' * Initialize maze border
10000 MZ%(0,0)=S% OR E%:MZ%(0,MH%-1)=N% OR E%:MZ%(MW%-1,0)=S% OR W%:MZ%(MW%-1,MH%-1)=N% OR W%
10010 CY%=0:GOSUB 10100:CY%=MH%-1:GOSUB 10100
10020 CX%=0:GOSUB 10200:CX%=MW%-1:GOSUB 10200
10025 RE%=RE%-(MW%+MW%+MH%+MH%-4)
10030 RETURN
10100 FOR CX%=1 TO MW%-2:MZ%(CX%,CY%)=W% OR E%:NEXT:RETURN
10200 FOR CY%=1 TO MH%-2:MZ%(CX%,CY%)=N% OR S%:NEXT:RETURN
