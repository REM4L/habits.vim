" Vim syntax file
" Language: habits
" Filenames: *.hbt
" Maintainer: ysftaha
" Latest Revision: 28 Nov 2020

if exists("b:current_syntax")
  finish
endif

syn match habitsDay "^\s\+[0-9]\+"

syn match habitsMonth "^\w\{3}\s\+[0-9]\+\s\+\w" 

syn match habitsBoolTrue "1" contained

syn match habitsBoolFalse "0" contained

syn match habitsBool "|\s\+[10]\+\s\+\(|$\)\=" transparent
\ contains=habitsBoolTrue,habitsBoolFalse,habitsSep

syn match habitsNumber "|\s\+\zs\d\+[.]\d\+\s\+\(|$\)\=" contains=habitsSep

syn match habitsTitle "|\zs\s\+[a-zA-Z]\+\s\+\ze\(|$\)\=" contains=habitsSep

if synIDtrans(hlID('diffAdded')) " check for diff legacy colors
  hi def link habitsBoolTrue     diffAdded
  hi def link habitsBoolFalse    diffRemoved
else 
  hi def link habitsBoolTrue     DiffAdd
  hi def link habitsBoolFalse    DiffDelete
endif

hi def link habitsMonth  Title
hi def link habitsNumber Number
hi def link habitsTitle  Title
hi def link habitsDay    Type

let b:current_syntax = "habits"
