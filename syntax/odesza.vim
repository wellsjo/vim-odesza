" Vim syntax file
" Language: Odesza
" Maintainer: Wells Johnston
" Filenames: *.odesza

if exists("b:current_syntax")
  finish
endif

syn region odeszaInlineJS start="${" end="}" contains=odeszaString,odeszaJSTemplateString
syn keyword odeszaJSKeyword if else in typeof return with continue break while let try catch for contained containedin=odeszaInlineJS
syn match odeszaJSNumber "[0-9]" contained containedin=odeszaInlineJS
syn match odeszaJSOperator "=>\|=" contained containedin=odeszaInlineJS

syn region odeszaString start=/"/ end=/"/ contains=odeszaInlineJS
syn region odeszaString start=/\'/ skip=/\\'/ end=/\'/ contains=odeszaInlineJS

syn region odeszaJSTemplateString start="`" end="`" contains=odeszaInlineJS

syn region odeszaComment start="\/\*\*" end="\\*/"
syn match odeszaComment /\/\/.*$/
syn keyword odeszaTodo TODO Todo contained containedin=odeszaComment

syn match odeszaKeyword /extends \(\w\|\.\|\/\)*/
syn keyword odeszaKeyword block inclde endblock
hi def link odeszaKeyword Statement

hi def link odeszaJSTemplateString String
hi def link odeszaJSOperator Operator
hi def link odeszaJSNumber Number
hi def link odeszaJSKeyword Statement
hi def link odeszaIdentifier Identifier
hi def link odeszaJSNumber Number

hi def link odeszaTodo Todo
hi def link odeszaComment Comment
hi def link odeszaString String

let b:current_syntax = "odesza"
