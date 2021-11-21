" indent/act.vim
" Vim indent file
" Language:    Action!
" Maintainer:  Klas Olsson
" Created:     13 November 2021
" Example code from Swift example https://thoughtbot.com/blog/writing-vim-syntax-plugins
"TODO Must rewrite the ActionIndent function
if exists("b:did_indent")
    finish
  endif
 let b:did_indent = 1

setlocal indentexpr=ActionIndent()

function! ActionIndent()
   let line = getline(v:lnum)
   let previousNum = prevnonblank(v:lnum - 1)
   let previous = getline(previousNum)
   if previous =~ "DO" && previous !~ "OD" && line !~ "OD"
     return indent(previousNum) + &tabstop
   endif
 endfunction
