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

syn match odeszaSymbol "${"
syn match odeszaSymbol "}"

syn keyword odeszaKeyword block endblock extends include

hi def link odeszaString String
hi def link odeszaSymbol Statement
hi def link odeszaKeyword Statement

let b:current_syntax = "odesza"
