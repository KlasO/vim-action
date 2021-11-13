" Vim syntax file
" Language: Action! 
" Maintainer: Klas Olsson
" Latest Revision: 13 November 2021
" TODO validate the keyword statements; 
if exists("b:current_syntax")
  finish
  endif
" Keywords
syn keyword actionReservedKeywords AND ARRAY BYTE CARD CHAR DEFINE DO ELSE
syn keyword actionReservedKeywords ELSEIF EXIT FI FOR FUNC IF INCLUDE INT
syn keyword actionReservedKeywords LSH MOD MODULE OD OR POINTER PROC
syn keyword actionReservedKeywords RETURN RSH SET STEP THEN TO
syn keyword actionReservedKeywords TYPE UNTIL WHILE XOR
"TODO  Check if ; can/must be a keyword (as it is defined in ftplugin as
"comment string) 
syn keyword actionReservedKeywords + > [ - >= ] * < " / <= ' & $ ; % ^ ! @ = ( <> ) # .
