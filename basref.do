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
