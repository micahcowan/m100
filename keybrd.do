10 ' ***********************
20 ' *                     *
30 ' *  MUSICAL KEYBOARD   *
40 ' *                     *
50 ' ***********************
60 '
100 ST=1.059463: ' freq ratio of half-step
105 BF=8000
110 DIM FR%(18)
120 NO$="AWSEDFTGYHUJKOLP;'"
130 L=5
195 ' * Set up note frequencies
200 FOR I=1 TO 18
210 FR%(I)=BF
220 BF=BF/ST
250 NEXT
265 CLS
270 PRINT:PRINT"  Play music on the keyboard!"
275 PRINT  "  Press ESC to exit.":PRINT
280 GOSUB 500
295 ' *** Main Program Loop
300 A$=INKEY$
310 IF A$="" THEN 300
311 A=ASC(A$)
313 IF A=27 THEN END
315 IF A>=97 AND A<=122 THEN A=A-32:A$=CHR$(A)
320 N=INSTR(NO$,A$)
330 IF N<1 THEN 300
340 SOUND FR%(N),L
350 GOTO 300
499 ' * Draw keyboard legend.
500 NL=LEN(NO$)
510 S=220-NL\2
515 T=443       ' determines b/w keys
516 T1=0
520 FOR I=1 TO NL
525 T$=MID$(NO$,I,1)
530 IF T1=0 THEN GOTO 580
540 T2=T MOD 2:T=T\2
550 IF T2=0 THEN GOTO 580
560 PRINT @S-41+I,CHR$(27);"p";T$;CHR$(27);"q";
565 T1=0
570 GOTO 600
580 PRINT @S-1+I,T$
585 T1=1
600 NEXT
610 RETURN
