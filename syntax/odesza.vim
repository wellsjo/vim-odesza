" Vim syntax file
" Language: Odesza
" Maintainer: Wells Johnston
" Filenames: *.odesza

if exists("b:current_syntax")
  finish
endif

syn region odeszaInlineJS start="${" end="}" containedin=odeszaString,odeszaInlineJS contains=odeszaString,odeszaInlineJS

syn region odeszaString start=/"/  skip=/\\"/ end=/"/ contains=odeszaInlineJS
syn region odeszaString start=/\'/ skip=/\\'/ end=/\'/

syn region odeszaComment start="\/\*\*" end="\\*/" contains=Todo
syn match odeszaComment /\/\/.*$/ contains=Todo

syn match odeszaSymbol "${"
syn match odeszaSymbol "}"

syn keyword odeszaTodo TODO Todo containedin=odeszaComment
syn keyword odeszaKeyword block endblock extends include

hi def link odeszaTodo Todo
hi def link odeszaComment Comment
hi def link odeszaString String
hi def link odeszaSymbol Statement
hi def link odeszaKeyword Statement

let b:current_syntax = "odesza"
