" Vim syntax file
" Language: Odesza
" Maintainer: Wells Johnston
" Filenames: *.odesza

let b:main_syntax = "odesza"

if exists("b:current_syntax")
  finish
endif

syn include @JavaScript syntax/odeszajs.vim

" Inline JavaScript
syn region odeszaInlineJS start="${" end="}" containedin=odeszaString contains=@JavaScript,odeszaInlineJS,odeszaString

" Strings
syn region odeszaString start=/"/ skip=/\\"/ end=/"/
syn region odeszaString start=/\'/ skip=/\\'/ end=/\'/

" comments
syntax region odeszaComment start=+\/\/+ end=+$+ keepend contains=javaScriptCommentTodo,@Spell
syntax region odeszaComment start=+^\s*\/\/+ skip=+\n\s*\/\/+ end=+$+ keepend
syntax region odeszaComment start="\$\cid:" end="\$" oneline contained
syntax region odeszaComment start="/\*"  end="\*/"
syn keyword odeszaTodo TODO Todo contained containedin=odeszaComment

" keywords
syn match odeszaKeyword /extends \(\w\|\.\|\/\)*/
syn match odeszaKeyword /include \(\w\|\.\|\/\)*/
syn match odeszaKeyword /block \w*/
syn keyword odeszaKeyword endblock
hi def link odeszaKeyword Statement

hi def link odeszaTodo Todo
hi def link odeszaComment Comment
hi def link odeszaString String

let b:current_syntax = "odesza"
