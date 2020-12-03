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
!#ABS Absolute Value
 #ABS  ABS(numeric expression)
 #ABS Returns the absolute value of the
 #ABS numeric expression.
!#ASC ASCII Code
 #ASC  ASC(string)
 #ASC Returns the code value of the first
 #ASC character in the string.
!#ATN Arctangent
 #ATN  ATN(numeric expression)
 #ATN Returns the arctangent of numeric expression (in radians). The result ranges from -PI to PI.
X#ATN  ARC(1)
X#ATN evaluates to ® the value of PI.
!#BEEP Emit a Tone
!#CALL Call a Machine Level Subroutine
 #CALL  CALL address, expr1, expr2
 #CALL Calls a machine level subroutine
 #CALL beginning at 'address'. The A register
 #CALL is set to the value of expr1 and the
 #CALL HL register to expr2. expr1 in [0,255]
 #CALL expr2 in [-32768,65535]
X#CALL  CALL 60000,10,VARPTR(A%)
X#CALL calls a subroutine beginning at
X#CALL address 60000. Upon entry, reg A
X#CALL contains 10, and register HL
X#CALL the address of the variable A%.
!#CDBL Convert to Double-Precision
!#CHR$ Character Value
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
!#CLOAD Load a Program From Cassette
 #CLOAD  CLOAD "filename", R
 #CLOAD is identical to
 #CLOAD  LOAD "CAS:filename", R
X#CLOAD  CLOAD
X#CLOAD loads the first BASIC program
X#CLOAD found on the cassette tape.
!#CLOAD? Verify a Cassette Load
 #CLOAD?  CLOAD? filename
 #CLOAD? Compares 'filename' with the BASIC prog
 #CLOAD? currently in memory.
X#CLOAD?  CLOAD? "ACCT"
X#CLOAD? compares the cassette file ACCT with the
X#CLOAD? program currently in memory.
!#CLOADM Load a Machine-Language Program From Cassette
 #CLOADM  CLOADM "filename"
!#CLOSE Close Open Files
 #CLOSE  CLOSE 'file number list'
 #CLOSE Closes the specified files. List is
 #CLOSE optional; if omitted, BASIC closes all
 #CLOSE open files.
!#CLS Clear Screen
!#COM Enable/Disable Communications Interrupt
 #COM  COM ON or OFF or STOP
 #COM Enables or disables the ON COM interrupt.
 #COM OFF disables the interrupt.
 #COM STOP disables the interrupt. But BASIC
 #COM "remembers" that a character was
 #COM received, immediately jumping to the sub
 #COM if COM ON is issued later.
!#CONT Continue Execution
 #CONT CONT resumes execution of a program
 #CONT after you have pressed BREAK, or after
 #CONT BASIC has encountered a STOP command.
!#COS Cosine
!#CSAVE Save a Program on Cassette
 #CSAVE  CSAVE "filename", A
 #CSAVE Saves the current BASIC program to tape.
 #CSAVE A is optional; if present saves in ASCII
 #CSAVE otherwise saves in tokenized format.
!#CSAVEM Save a Machine Language Program to Cassette
 #CSAVEM  CSAVEM "filename",'start','end','entry'
 #CSAVEM The 'entry' addr is optional; defaults
 #CSAVEM to 'start'.
!#CSNG Convert to Single Precision
!#CSRLIN Vertical Cursor Position
 #CSRLIN This function returns the vertical pos
 #CSRLIN (line number) of the Cursor, where 0
 #CSRLIN is the top line and 7 is the bottom.
X#CSRLIN  10 CLS: A% = CSRLIN
X#CSRLIN clears the Screen and assigns A% the
X#CSRLIN value 0.
!#DATA Define a Data Set
!#DATE$ Current Date
X#DATE$  DATE$ = "11/02/82"
X#DATE$ Sets the date to November 11, 1982.
!#DAY$ Current Day of Week
 #DAY$ Valid strings include:
 #DAY$  Mon Tue Wed Thu Fri Sat Sun
!#DEFDBL Define Double-Precision Variables
 #DEFDBL  DEFDBL 'letter list'
 #DEFDBL DEFDBL defines all of the variables
 #DEFDBL which begin with the letters in
 #DEFDBL 'letter list' to be double-precision
 #DEFDBL variables. 'letter list' consist of
 #DEFDBL individual letters and/or letter ranges
 #DEFDBL of the form 'letter1' - 'letter2'.
!#DEFINT Define Integer Variables
 #DEFINT See DEFDBL.
!#DEFSNG Define Single-Precision Variables
 #DEFSNG See DEFDBL.
!#DEFSTR Define String Variables
 #DEFSTR See DEFDBL.
!#DIM Define Array Size
 #DIM  DIM 'variable name'('dimensions') #DIM Defines a multi-dimensional, zero-indexed array. To redimension an array, you must first use the command CLEAR (this destroys all variable values).
!#EDIT Edit a BASIC Program
 #EDIT  EDIT 'line number range'
 #EDIT EDIT enters the text editor using the
 #EDIT lines given by 'line number range'.
 #EDIT line number range may be:
 #EDIT  null         edit the entire program.
 #EDIT  line1-line2  edit the specified lines.
 #EDIT  -line2       edit from start to line2.
 #EDIT  line1-       edit from line1 to end.
 #EDIT  .            edit last-accessed line
 #EDIT               (last edited, entered,
 #EDIT               listed, etc).
!#END End Execution
!#EOF Test for End-of-File
 #EOF  EOF('file number')
 #EOF EOF tests for an end-of-file condition
 #EOF on RAM, cassette, or communications
 #EOF files. Returns true if the specified
 #EOF 'file number' is for a file that has
 #EOF reached end-of-life condition, false
 #EOF otherwise.
!#ERL Get Line Number of Error
 #ERL ERL returns the line number of the last
 #ERL error - or the value 65535 if the last
 #ERL error was from a direct command. This
 #ERL command is useful in conjunction with
 #ERL the ON ERROR GOTO command.
X#ERL  100 ON ERROR GOTO 2000
X#ERL  .
X#ERL  .
X#ERL  2000 IF ERR = 23 THEN RESUME ELSE PRINT "Error";ERR;"in line";ERL:STOP
!#ERR Get Error Code Number
 #ERR Returns the error code number of the
 #ERR last error. See ERL for an example.
!#ERROR Simulate an Error
 #ERROR  ERROR 'numeric expression'
 #ERROR This command simulates the error
 #ERROR specified by 'numeric expression'.
 #ERROR BASIC behaves just nas if your program
 #ERROR had committed the error.
X#ERROR  100 ERROR 10
X#ERROR Prints "DD Error in 100" and stops
X#ERROR execution of the program.
!#EXP Exponential (Antilog)
!#FILES Display File Names
 #FILES This command will cause BASIC to
 #FILES display all of the files currently
 #FILES stored in RAM without exiting BASIC.
!#FIX Truncate Real Numbers
 #FIX  FIX('numeric expression')
 #FIX FIX returns the whole number portion
 #FIX of 'numeric expression'. Note that its
 #FIX behavior differs from INT in the case
 #FIX of negative numbers, in which case
 #FIX INT will return a number lower in value
 #FIX (higher in magnitude) than its arg.
!#FOR Establish Program Looping
!#FRE Free Memory Space
 #FRE  FRE('dummy expression')
 #FRE FRE returns the current amount of
 #FRE unused numeric memory in bytes when
 #FRE 'dummy expression' is numeric, and the
 #FRE current total amount of unused string
 #FRE space when 'dummy expression' is string
 #FRE type.
X#FRE  PRINT FRE(0)
X#FRE  ? FRE("")
!#GOSUB Call a BASIC Subroutine
!#GOTO Branch Program Execution
!#HIMEM Get High Memory Address
 #HIMEM This function returns the top address
 #HIMEM of memory available to BASIC. You may
 #HIMEM change this value with the CLEAR
 #HIMEM command.
X#HIMEM  PRINT HIMEM
!#IF Test Relational Expression
 #IF Model 100 BASIC supports IF, THEN
 #IF and ELSE.
!#INKEY$ Poll Keyboard
 #INKEY$ This function returns the string value
 #INKEY$ of the key currently pressed, if any.
 #INKEY$ If no key is pressed, the function
 #INKEY$ returns the null string ("").
 #INKEY$ In either case, BASIC doesn't wait for
 #INKEY$ keyboard input, but goes to the next
 #INKEY$ statement.
 #INKEY$ (NOTE: if you press an undefined
 #INKEY$ Function Key, PASTE, or LABEL, INKEY$
 #INKEY$ returns an ASCII 0 with a length
 #INKEY$ of one.)
!#INP Input From a Port
!#INPUT Input Data From Keyboard
 #INPUT  INPUT "prompt", 'var list'
 #INPUT INPUT blocks and waits for keyboard input. The values you
 #INPUT enter must correspond in number and type, to the variables
 #INPUT in 'var list'. Vars are separated by commas.
 #INPUT You may either input all vars on one line, separated by
 #INPUT commas, or you can hit ENTER after each one, prompted
 #INPUT each time by "?". For string variables, you may use quotes, but they are only required if you wish to include commas, colons, or leading blanks.
!#INPUT # Input From A File
!#INPUT$ Input Characters From the Keyboard/A File
 #INPUT$  INPUT$('num')
 #INPUT$  INPUT$('num','file')
 #INPUT$ Function returning a string of 'num' characters from the
 #INPUT$ keyboard or from a file. INPUT$ accepts all keys as input except BREAK. It does not echo keyboard input.
X#INPUT$ 10 A$ = INPUT$(5)
!#INSTR Search A String
 #INSTR  INSTR('start position','search string','match string')
 #INSTR INSTR searches 'search string' for the first occurrence
 #INSTR of 'match string', beginnint at 'start position'
 #INSTR (OPTIONAL: 1 if absent). Returns zero when no match
 #INSTR is found.
X#INSTR PRINT INSTR("dimethylsulfate","sulfate")
X#INSTR  => 9
!#INT Get Whole Number Representation
!#IPL Define Warm Start Program
 #IPL  IPL "filename"
 #IPL The named file is run automatically whenever you turn on
 #IPL your Model 100. IPL will execute properly only if the Computer is turned off while in BASIC.
!#KEY Define Function Keys
 #KEY  KEY 'function key number', 'string expr'
 #KEY Where 'function key number' is a number from 1 to 8, and 'string expression' is 15 chars or less.
X#KEY  KEY 6,"?TIME$" + CHR$(13)
X#KEY defines Function Key 6 as ?TIME$ followed by carriage return. Now whenever you press Fn Key 6, BASIC returns the time.
X#KEY To reset the function keys to the cold start default, make the following calls:
X#KEY  CALL 23164,0,23366
X#KEY  CALL 27795
!#KEY LIST List Function Key Definitions
!#KEY ON/OFF/STOP Enable/Disable Function Key Interrupts
 #KEY ON/OFF/STOP  KEY ('fn key number') ON/OFF/STOP
 #KEY ON/OFF/STOP ON enables the interrupt so that if you press a Function Key, BASIC branches to the ON KEY subroutine.
 #KEY ON/OFF/STOP OFF disables the interrupt.
 #KEY ON/OFF/STOP STOP disables the interrupt, but branches to ON KEY on re-enabling, if a key was pressed while disabled.
X#KEY ON/OFF/STOP  100 KEY (2) ON
X#KEY ON/OFF/STOP enables Fn Key 2.
X#KEY ON/OFF/STOP  100 KEY ON
X#KEY ON/OFF/STOP enables all Function Keys.
X#KEY ON/OFF/STOP  100 KEY (4) OFF
X#KEY ON/OFF/STOP disables Fn Key 4.
!#KILL Delete a RAM File
!#LCOPY Copy Screen to Printer
!#LEFT$ Return L:eft Portion of a String
 #LEFT$  LEFT$('string','length')
!#LEN Get Size of a String
 #LEN  LEN('string')
!#LET Assignment Statement
!#LINE Draw a Line on the Screen
 #LINE  LINE (x1,y1)-(x2,y2),'switch',BF
 #LINE Draws a line using the specified start and end coordinates.
 #LINE x1 and x2 range from 0 to 239; y1 and y2 from 0 to 63.
 #LINE (x1,y1) is optional; if omitted the line will start from the end of the previous LINE command.
 #LINE 'Switch' is a numeric expr and is optional. Odd (default) indicates to set the pixels in the line, even indicates that pixels shall be unset.
 #LINE B tells BASIC to draw a hollow box instead of a line.
 #LINE BF tells BASIC to draw a filled box.
 #LINE Both B and BF require you to specify 'switch'.
X#LINE  10 LINE (20,20)-(50,63)
X#LINE  20 LINE -(30,30)
X#LINE draws lines from (20,20) to (50,63) and from there to (30,30).
!#LIST List Program on the Screen
 #LIST See EDIT for how to use the line number range.
!#LLIST List Program on the Printer
!#LINE INPUT Input a String from the Keyboard
 #LINE INPUT  LINE INPUT "prompt";'string variable'
 #LINE INPUT Also accepts  #'file',  at start.
 #LINE INPUT LINE INPUT differs from INPUT in that:
 #LINE INPUT  BASIC doesn't display a ? prompt.
 #LINE INPUT  You may have only one var name
 #LINE INPUT  BASIC assigns all input, including commas, leading blanks, etc, to string variable.
!#LOAD Load a BASIC Program
 #LOAD  LOAD "devince:filename or configuration",R
 #LOAD R is optional, and indicates that the loaded program should be run immediately.
!#LOADM Load a Machine-Language Program
 #LOADM  LOADM "RAM/CAS:filename"
 #LOADM Loads a M/L program at the address specified when it was saved.
!#LOG Natural Logarithm
!#LPOS Printer Column Position
 #LPOS  LPOS('dummy numeric expression')
!#LPRINT Print Data on Printer
!#LPRINT USING Print Formatted Data on Printer
 #LPRINT USING See PRINT USING.
!#MAXFILES Maximum Number of Files
 #MAXFILES Contains the current maximum number of files. You may access MAXFILES like any numeric variable. Default value is 1.
!#MAXRAM Amount of Memory
 #MAXRAM Contains the memory size of your Model 100.
X#MAXRAM  CLEAR 1000,MAXRAM
X#MAXRAM clears 1000 bytes for string storage and sets the high memory to the max amount for your machine.
!#MDM ON/OFF/STOP Enable/Disable Modem Interrupt
!#MENU Return to Menu
 #MENU MENU exits BASIC and returns you to the main menu.
!#MERGE Merge Two Programs
 #MERGE  MERGE "device:filename or configuration"
 #MERGE Merges the lines from the ASCII formatted file named by the argument, with the lines of the current program.
 #MERGE If BASIC finds a duplicate line number, the line from the MERGE argument replaces the existing line from the currently-loaded program.
!#MID$ Get/Replace Middle Characters of String
X#MID$  10 HASH$ = MID$(A$,2,2)
X#MID$ if A$ is "00349953", then this statement assigns "34" to HASH$.
X#MID$  10 MID$(A$,5) = "FF"
X#MID$ if A$ is "00000000", this this stmt changes A$ to "0000FF00".
!#MOTOR Turn Cassette Motor On and Off
 #MOTOR  MOTOR ON/OFF
!#NAME...AS Rename a RAM File
 #NAME...AS  NAME "file1" AS "file2"
!#NEW Erase the Current Program
