" Vim syntax file
" Language: Odesza
" Maintainer: Wells Johnston
" Filenames: *.odesza

if exists("b:current_syntax")
  finish
endif

syn match odeszaNumber "[0-9]"

syn region odeszaString start=/"/  skip=/\\"/ end=/"/ contains=odeszaInlineJS
syn region odeszaString start=/\'/ skip=/\\'/ end=/\'/ contains=odeszaInlineJS

syn region odeszaComment start="\/\*\*" end="\\*/" contains=Todo
syn match odeszaComment /\/\/.*$/ contains=Todo

syn region odeszaInlineJS start="${" end="}" containedin=odeszaString,odeszaJSTemplateString contains=odeszaString,odeszaJSTemplateString
syn region odeszaJSTemplateString start="`" end="`" containedin=odeszaInlineJS contains=odeszaInlineJS

syn keyword odeszaJSKeyword return var containedin=odeszaInlineJS
syn match odeszaJSOperator "=>\|+\|=" containedin=odeszaInlineJS

syn keyword odeszaTodo TODO Todo containedin=odeszaComment

syn match odeszaKeyword /block \w*/
syn match odeszaKeyword /include \(\w\|\.\|\/\)*/
syn match odeszaKeyword /extends \(\w\|\.\|\/\)*/
syn keyword odeszaKeyword endblock

syn match odeszaSymbol "${"
syn match odeszaSymbol "}"

hi def link odeszaJSTemplateString String
hi def link odeszaJSOperator Operator
hi def link odeszaJSKeyword Statement
hi def link odeszaNumber Number

hi def link odeszaTodo Todo
hi def link odeszaComment Comment
hi def link odeszaString String
hi def link odeszaSymbol Statement
hi def link odeszaKeyword Statement

let b:current_syntax = "odesza"
