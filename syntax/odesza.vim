" Vim syntax file
" Language: Odesza
" Maintainer: Wells Johnston
" Filenames: *.odesza

if exists("b:current_syntax")
  finish
endif

syn keyword odeszaKeyword block endblock extends include
syn match odeszaInlineJS '${.*}'

hi def link odeszaKeyword Statement
hi def link odeszaInlineJS Statement

let b:current_syntax = "odesza"
