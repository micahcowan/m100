5 ' print differing lines between two files
7 CLEAR 1024:MAXFILES=2:L=1
10 OPEN"XMODEM.DO" FOR INPUT AS 1
12 OPEN"XMD2.DO" FOR INPUT AS 2
15 IF EOF(1) AND EOF(2) THEN GOTO 60
20 IF EOF(1) THEN A$="" ELSE LINE INPUT #1, A$
30 IF EOF(2) THEN B$="" ELSE LINE INPUT #2, B$
40 IF A$<>B$ THEN PRINT"---"L"---":PRINT"1: "A$:PRINT"2: "B$
50 L=L+1:GOTO 15
60 PRINT:PRINT "Done."
