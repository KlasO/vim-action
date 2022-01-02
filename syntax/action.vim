" Vim syntax file 
" Language: Action! 
" Maintainer: Klas Olsson
" Latest Revision: 13 November 2021
" TODO validate the keyword statements; 
" TODO add regions for DO - OD, IF - FI, WHILE, UNTIL
if exists("b:current_syntax")
  finish
  endif

syntax case ignore
colorscheme torte

" Action! Commands
syntax keyword actionCommands
\ ARRAY BREAK BYTE CARD CLOSE COLOR DEFINE DEVICE DO DRAWTO ELSE ELSEIF EOF
\ ERROR EXIT FI FILL FOR FUNCTION GET GETD GRAPHICS IF INCLUDE INPUTB
\ INPUTBD INPUTC INPUTCD INPUTI INPUTID INPUTMD INPUTSD INT LIST LOCATE 
\ MODULE MOVEBLOCK NOTE OD OPEN PADDLE PEEK PEEKC PLOT POINT POINTER
\ POKE POKEC POSITION PRINT PRINTB PRINTBD PRINTBDE PRINTBE PRINTC PRINTCD
\ PRINTCDE PRINTCE PRINTD PRINTDE PRINTE PRINTF PRINTID PRINTIDE PRINTIE
\ PROC PTRIG PUT PUTD PUTDE PUTE RAND RETURN SASSIGN SCOMPARE SCOPY
\ SCOPYS SET SETBLOCK SETCOLOR SNDRST SOUND STICK STRB STRC STRI STRIG
\ THEN TRACE TYPE UNTIL VALB VALC VALI WHILE XIO ZERO

" Action! Comments
syntax match actionComment ";.*$" 

" Action! Variables
syntax match actionVariable /\<\h\w*\>/
" Action! Numbers
"syntax match actionNumber /$\x\+\>/     " Positive hex number
"syntax match actionNumber /\-\?\$\x\+\>/   " Neg hex number
syntax match actionNumber /\-\=$\x\+\>/   " Neg hex number
"syntax match actionNumber /\-\=\d\+\>/
syntax match actionNumber /\-\=\d\+\>/
syntax match actionNumber /\-\=\d\+\.\d*\>/
"syntax match actionNumber /\<\d\+\.\d*\>/

" Action! Constants
syntax match actionConstant "\'."        " Single char constant; any ATASCII char

" Action! Operators
syntax match actionOperator '*'
syntax match actionOperator '/'
syntax match actionOperator '+'
syntax match actionOperator '\-\(\d\|\x\|\$\)\@!'
syntax match actionOperator '='
syntax match actionOperator '=='
syntax keyword actionOperator AND LSH MOD OR RSH XOR

" highlight Keyword ctermfg=Yellow
" highlight Constant ctermfg=Magenta 
" highlight Operator ctermfg=Blue
" highlight Comment ctermfg=DarkBlue
" highlight Identifier ctermfg=DarkGreen

highlight link actionCommands Keyword
highlight link actionNumber Constant
highlight link actionOperator Operator  
highlight link actionComment  Comment 
highlight link actionVariable Identifier


let b:current_syntax = "action"
