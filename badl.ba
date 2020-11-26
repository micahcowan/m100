5 ' print line numbers preceding lines missing numbers
7 CLEAR 512
10 OPEN"XMD2.DO" FOR INPUT AS 1
20 LINE INPUT #1, A$
30 LINE INPUT #1, A$
40 V=VAL(A$):IF V=0 THEN PRINT " "L; ELSE L=V
50 IF NOT EOF(1) THEN GOTO 30
60 PRINT:PRINT "Done."
