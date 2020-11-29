0  ' *********************************
1  ' *                               *
2  ' * ENTRY                         *
3  ' *                               *
4  ' * Prompt for entries into       *
5  ' * BASIC-oriented doc file       *
8  ' *                               *
9  ' *********************************
10 '
20 NM$="NOTE.DO"
30 OPEN NM$ FOR APPEND AS 1
40 CLS
45 PRINT FRE(0);" bytes remaining."
50 L$="":INPUT "ENTRY LABEL (EMPTY TO QUIT)";L$
60 IF L$="" THEN GOTO 1000
65 L$="#"+L$
70 PRINT "ENTER SHORT DESCRIPTION:"
80 LINE INPUT A$
90 PRINT #1,"!";L$;" ";A$
100 CLS
110 PRINT "ENTER DETAILED DESCRIPTION"
120 PRINT " (EMPTY TO END):"
130 LINE INPUT A$
140 IF A$="" THEN GOTO 200
150 PRINT #1," ";L$;" ";A$
160 GOTO 130
200 CLS
210 A$="":INPUT "ADD EXAMPLE (Y/N)";A$
213 IF A$="" THEN GOTO 300
215 A$=LEFT$(A$,1)
216 A$=CHR$(ASC(A$) AND NOT 32) 'ucase
220 IF LEFT$(A$,1)<>"Y" THEN GOTO 300
230 PRINT "ENTER EXAMPLE (EMPTY TO END):"
240 LINE INPUT A$
250 IF A$="" THEN GOTO 300
260 PRINT #1,"X";L$;" ";A$
270 GOTO 240
300 GOTO 40
1000 CLOSE:END
