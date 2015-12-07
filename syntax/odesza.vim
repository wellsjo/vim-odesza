" Vim syntax file
" Language: Odesza
" Maintainer: Wells Johnston
" Filenames: *.odesza

if exists("b:current_syntax")
  finish
endif


syn region odeszaString start=/"/  skip=/\\"/ end=/"/ contains=odeszaInlineJS
syn region odeszaString start=/\'/ skip=/\\'/ end=/\'/ contains=odeszaInlineJS

syn region odeszaComment start="\/\*\*" end="\\*/" contains=Todo
syn match odeszaComment /\/\/.*$/ contains=Todo

syn region odeszaInlineJS start="${" end="}" containedin=odeszaString,odeszaJSTemplateString contains=odeszaString,odeszaJSTemplateString,odeszaJSNumber
syn region odeszaJSTemplateString start="`" skip=/\\"\|\\'/ end="`" containedin=odeszaInlineJS contains=odeszaInlineJS

syn keyword odeszaJSKeyword if else in typeof return with continue break while let try catch for containedin=odeszaInlineJS
" syn match odeszaJSNumber "[0-9]" containedin=odeszaInlineJS
syn match odeszaJSOperator "=>\|=" contained

syn keyword odeszaTodo TODO Todo containedin=odeszaComment

syn match odeszaKeyword /block \w*/

syn match odeszaKeyword /include/ nextgroup=odeszaIdentifier skipwhite

syn match odeszaKeyword /extends \(\w\|\.\|\/\)*/
syn keyword odeszaKeyword endblock
hi def link odeszaKeyword Statement

syn match odeszaSymbol "${\|}"
hi def link odeszaSymbol Statement

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
