BASIC Searchable Reference Document

This document presents information about BASIC commands, in a suitable format for convenience of use with the built-in SCHEDL program.

If you rename this file to NOTE.DO, then you can perform the following operations within SCHEDL:
 - Provide a summary of the available commands with:
     Find !#
 - Provide all details of a command with:
     Find #CMD
   (add a space after to avoid commands that are also prefixes of other commands)
 - To show example usage of a command (where available):
     Find X#CMD

-- Entries follow --
!#ABS ABS(X)
!#ASC ASC(C$)
!#ATN ATN(X)
 #ATN Arctangent. Given the ratio of opposite/
 #ATN adjacent, returns the angle. Ranges from
 #ATN -PI to PI. ATN(1)*4 gives PI.
!#BEEP Emit a Tone
!#CALL CALL address, expr1, expr2
 #CALL Calls a machine level subroutine
 #CALL beginning at 'address'. The A register
 #CALL is set to the value of expr1 and the
 #CALL HL register to expr2.
X#CALL  CALL 60000,10,VARPTR(A%)
X#CALL calls a subroutine beginning at
X#CALL address 60000. Upon entry, reg A
X#CALL contains 10, and register HL
X#CALL the address of the variable A%.
!#CDBL Convert to Double-Precision
!#CHR$ CHR$("A")
!#CINT Convert to Integer
!#CLEAR Clear Variables and Allocate String Space
 #CLEAR  CLEAR string space, high memory
 #CLEAR Clears the values in all numeric and
 #CLEAR string variables, and closes all open
 #CLEAR files. 'string space' is a numeric expr
 #CLEAR and is optional. If you omit it, BASIC
 #CLEAR allocates 256 bytes by default.
 #CLEAR 'high memory' is a numeric expr and is
 #CLEAR also optional. Setting it to less than
 #CLEAR MAXRAM can protect a portion of memory
 #CLEAR from being overwritten - e.g. for
 #CLEAR writing a machine language program
 #CLEAR to later save as a .CO command.
!#CLOAD CLOAD "filename", [ R ]
 #CLOAD  is identical to
 #CLOAD  LOAD "CAS:filename", [ R ]
!#CLOAD? Verify a Cassette Load
 #CLOAD?  CLOAD? "file"
!#CLOADM Load a Machine-Language Program From Cassette
 #CLOADM  CLOADM "filename"
!#CLOSE CLOSE 1,4,5
 #CLOSE CLOSE   ' all
!#CLS Clear Screen
!#COM Enable/Disable Communications Interrupt
 #COM  COM ON or OFF or STOP
 #COM STOP disables the interrupt, but triggers
 #COM later on COM ON if data was received while
 #COM sopped.
!#CONT Continue Execution
 #CONT CONT resumes execution of a program
 #CONT after you have pressed BREAK, or after
 #CONT BASIC has encountered a STOP command.
!#COS COS(X)
!#CSAVE Save a Program on Cassette
 #CSAVE  CSAVE "filename", [ A ]
 #CSAVE Saves the current BASIC program to tape.
 #CSAVE if A present saves in ASCII otherwise tokens
!#CSAVEM Save a Machine Language Program to Cassette
 #CSAVEM  CSAVEM "filename",'start','end' [,'entry']
!#CSNG Convert to Single Precision
!#CSRLIN returns the vertical cursor pos, 0-7
!#DATA Define a Data Set
!#DATE$ Current Date
!#DAY$ Current Day of Week
!#DEFDBL Define Double-Precision Variables
 #DEFDBL  DEFDBL 'letter list'
 #DEFDBL DEFDBL defines all of the variables
 #DEFDBL which begin with specified letters
 #DEFDBL to be double-precision.
X#DEFDBL  DEFDBL A,E,M-P
!#DEFINT Define Integer Variables
 #DEFINT See DEFDBL.
!#DEFSNG Define Single-Precision Variables
 #DEFSNG See DEFDBL.
!#DEFSTR Define String Variables
 #DEFSTR See DEFDBL.
!#DIM multi-dimensional, zero-indexed.
!#EDIT Edit a BASIC Program
 #EDIT  EDIT 'line number range'
X#EDIT  EDIT .  ' edit last-accessed line
!#END End Execution
!#EOF  EOF(1) ' true if file 1 at EOF
!#ERL Get Line Number of Error
X#ERL  2000 IF ERR = 23 THEN RESUME ELSE PRINT "Error";ERR;"in line";ERL:STOP
!#ERR Get Error Code Number
 #ERR See ERL for an example.
!#ERROR 100 ERROR 10  ' "DO Error in 100"
!#EXP Exponential (Antilog)
!#FILES Display File Names
!#FIX FIX(X) returns the whole number portion
 #FIX of X. Note that its behavior differs
 #FIX from INT in the case when X is negative
 #FIX (INT returns floor in that case)
!#FOR Establish Program Looping
!#FRE FRE('dummy expression')
 #FRE returns the current amount of
 #FRE unused numeric memory when dummy expr is
 #FRE numeric, and string memory when it's
 #FRE string type.
X#FRE  PRINT FRE(0)
X#FRE  ? FRE("")
!#GOSUB Call a BASIC Subroutine
!#GOTO Branch Program Execution
!#HIMEM Get High Memory Address
 #HIMEM This function returns the top address
 #HIMEM of memory available to BASIC. Change
 #HIMEM this value with the CLEAR command.
!#IF Test Relational Expression
 #IF Model 100 BASIC supports IF, THEN
 #IF and ELSE.
!#INKEY$ Poll Keyboard
 #INKEY$ returns immediately, empty if no key
 #INKEY$ is pressed.
X#INKEY$ A$ = INKEY$
!#INP Input From a Port
