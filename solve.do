10 ' **********************************
20 ' *                                *
30 ' *  SOLUTION FINDER               *
40 ' *                                *
50 ' *  Finds the solution to a math  *
60 ' *  problem, to within a given    *
70 ' *  tolerance, provided a search  *
80 ' *  range and critereon.          *
85 ' *                                *
90 ' **********************************
300 ' *** Initial conditions
310 '   *   A and B are the minimum
320 '       and maximum for the search
330 '       range to find the answer.
340 '   *   D is the acceptable margin
350 '       of error.
360 '   *   X is the current guess.
370 '
380 '   *   The routine at line 1000
390 '       evaluates X, and sets E
400 '       to positive if X is too big
410 '       and negative if too small.
420 '
500 A=1
510 B=1.1
520 D=1D-7
595 ' *** Main search loop
600 IF B-A<D THEN 900
605 X=A + (B-A)/2
608 PRINTX;
610 GOSUB 1000
620 IF E>0 THEN 800
700 ' *  X is too small
705 PRINT"<"
710 A=X:GOTO 600
795 ' * X is too large
800 PRINT">"
805 B=X:GOTO 600
900 PRINT:PRINT"*** SOLUTION REACHED!!!"
910 END
995 ' *** Answer-testing subroutine
996 '      - Find the ratio of
997 '        a musical semitone
998 '        (half-step)
1000 E = (X^12) - 2 : RETURN
