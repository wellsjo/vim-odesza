" Vim syntax file
" Language: Odesza
" Maintainer: Wells Johnston
" Filenames: *.odesza

if exists("b:current_syntax")
  finish
endif

syn include @JavaScript syntax/javascript.vim

syn region odeszaInlineJS start="${" end="}$" contains=@JavaScript,odeszaJSTemplateString

syn region odeszaString start=/"/ end=/"/
syn region odeszaString start=/\'/ skip=/\\'/ end=/\'/

syn region odeszaComment start="\/\*\*" end="\\*/"
syn match odeszaComment /\/\/.*$/
syn keyword odeszaTodo TODO Todo contained containedin=odeszaComment

syn match odeszaKeyword /extends \(\w\|\.\|\/\)*/
syn match odeszaKeyword /\(block\|include\) \w*/
syn keyword odeszaKeyword endblock
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
