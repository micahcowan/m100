10 ' ********************************
20 ' *                              *
30 ' *  Micah's menu setup          *
40 ' *                              *
50 ' *  Sets up the function key    *
60 ' *  labels how I like them,     *
70 ' *  with save/load from serial. *
80 ' *                              *
90 ' ********************************
100 '
110 ' * First, call some ROM routines
120 ' *  to restore the system defaults
130 CALL 23164,0,23366
140 CALL 27795
150 ' * Then set up my serial load/save
151 ' * LOAD at 300 baud
152 ' * SAVE at 19,200 baud
155 Q$=CHR$(34):R$=CHR$(13)
160 FOR I=6 TO 7
170 READ K$:READ B$
180 KEY I,K$+Q$+"COM:"+B$+"8N1D"+Q$
190 NEXT
200 END
300 DATA LOAD,"3",SAVE,"8"
