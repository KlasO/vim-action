" Vim syntax file
" Language: Action! 
" Maintainer: Klas Olsson
" Latest Revision: 13 November 2021
" TODO validate the keyword statements; 
if exists("b:current_syntax")
  finish
  endif

syntax case ignore

" Action! Reserved Keywords
syntax keyword actionReservedKeywords AND ARRAY BYTE CARD CHAR DEFINE DO ELSE
syntax keyword actionReservedKeywords ELSEIF EXIT FI FOR FUNC IF INCLUDE INT
syntax keyword actionReservedKeywords LSH MOD MODULE OD OR POINTER PROC
syntax keyword actionReservedKeywords RETURN RSH SET STEP THEN TO
syntax keyword actionReservedKeywords TYPE UNTIL WHILE XOR
" Action! Commands
syntax keyword actionCommands
\ ARRAY
\ BREAK
\ BYTE
\ CARD
\ CLOSE
\ COLOR
\ DEFINE
\ DEVICE
\ DO
\ DRAWTO
\ ELSE
\ ELSEIF
\ EOF
\ ERROR
\ EXIT
\ FI
\ FILL
\ FOR
\ FUNCTION
\ GET
\ GETD
\ GRAPHICS 
\ IF
\ INCLUDE
\ INPUTB
\ INPUTBD
\ INPUTC
\ INPUTCD
\ INPUTI
\ INPUTID
\ INPUTMD
\ INPUTSD
\ INT
\ LIST
\ LOCATE
\ MODULE
\ MOVEBLOCK
\ NOTE
\ OD
\ OPEN
\ PADDLE
\ PEEK
\ PEEKC
\ PLOT
\ POINT
\ POINTER
\ POKE
\ POKEC
\ POSITION
\ PRINT
\ PRINTB
\ PRINTBD
\ PRINTBDE
\ PRINTBE
\ PRINTC
\ PRINTCD
\ PRINTCDE
\ PRINTCE
\ PRINTD
\ PRINTDE
\ PRINTE
\ PRINTF
\ PRINTID
\ PRINTIDE
\ PRINTIE
\ PROC
\ PTRIG
\ PUT
\ PUTD
\ PUTDE
\ PUTE
\ RAND
\ RETURN
\ SASSIGN
\ SCOMPARE
\ SCOPY
\ SCOPYS
\ SET
\ SETBLOCK
\ SETCOLOR
\ SNDRST
\ SOUND
\ STICK
\ STRB
\ STRC
\ STRI
\ STRIG
\ THEN
\ TRACE
\ TYPE
\ UNTIL
\ VALB
\ VALC
\ VALI
\ WHILE
\ XIO
\ ZERO

<<<<<<< HEAD:syntax/action.vim
" Action! Numbers
syntax match actionNumber "\<\d\+\>"
syntax match actionNumber "\$\x\+\>" " 'bug', but adding \< doesn't behave!
syntax match actionNumber "%[01]\+\>"




" Action! Operators
syntax match actionOperator "\v\*"
syntax match actionOperator "\v/"
syntax match actionOperator "\v\+"
syntax match actionOperator "\v-"
syntax match actionOperator "\v\?"
syntax match actionOperator "\v\*\="
syntax match actionOperator "\v/\="
syntax match actionOperator "\v\+\="
syntax match actionOperator "\v-\="


highlight default link actionReservedKeywords Keyword
highlight default link actionCommands Keyword
highlight link actionNumber Number
highlight link actionOperator Operator
=======
" Action numbers
syntax match actionNumbers "\v<\d+>"
syntax match actionNumbers "\v<\d+\.\d+>
syntax match actionNumbers "\v<\d*\.?\d+([Ee]-?)?\d+>"
syntax match actionNumbers "\v<0x\x+([Pp]-?)?\x+>
syntax match actionNumbers "\v<0b[01]+>"
syntax match actionNumbers "\v<0o\o+>

highlight default link actionReservedKwords Keyword
highlight default link actionCommands Keyword
highlight default link actionNumbers Number
>>>>>>> ff2bfad638d7a9272167f1387835e1cc22a80ac5:syntax/act.vim
