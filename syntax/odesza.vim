" Vim syntax file
" Language: Odesza
" Maintainer: Wells Johnston
" Filenames: *.odesza

let b:main_syntax = "odesza"

if exists("b:current_syntax")
  finish
endif

" Inline JavaScript
syn region odeszaInlineJS start="${" end="}" containedin=odeszaString contains=@JavaScript,odeszaInlineJS

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

" JS Programm Keywords
syntax keyword javaScriptSource         import export
syntax keyword javaScriptType           const this undefined var void yield
syntax keyword javaScriptOperator       delete new in instanceof let typeof
syntax keyword javaScriptBoolean        true false
syntax keyword javaScriptNull           null

syntax match   javaScriptSpecial        "\\\d\d\d\|\\x\x\{2\}\|\\u\x\{4\}\|\\."
syntax match   javaScriptNumber         /\<-\=\d\+L\=\>\|\<0[xX]\x\+\>/
syntax match   javaScriptFloat          /\<-\=\%(\d\+\.\d\+\|\d\+\.\|\.\d\+\)\%([eE][+-]\=\d\+\)\=\>/
syntax match   javaScriptLabel          /\(?\s*\)\@<!\<\w\+\(\s*:\)\@=/

" JavaScript Prototype
syntax keyword javaScriptPrototype      prototype

" Statement Keywords
syntax keyword javaScriptConditional    if else
syntax keyword javaScriptRepeat         do while for
syntax keyword javaScriptBranch         break continue switch case default return
syntax keyword javaScriptStatement      try catch throw with finally

" Classes
syntax keyword javaScriptGlobalObjects  Array Boolean Date Function Infinity JavaArray JavaClass JavaObject JavaPackage Math Number NaN Object Packages RegExp String Undefined java netscape sun
syntax keyword javaScriptExceptions     Error EvalError RangeError ReferenceError SyntaxError TypeError URIError
syntax keyword javaScriptFutureKeys     abstract enum int short boolean export interface static byte long super char final native synchronized class float package throws const goto private transient debugger implements protected volatile double import public

hi def link javaScriptComment              Comment
hi def link javaScriptLineComment          Comment
hi def link javaScriptDocComment           Comment
hi def link javaScriptCommentTodo          Todo
hi def link javaScriptCvsTag               Function
hi def link javaScriptDocTags              Special
hi def link javaScriptDocSeeTag            Function
hi def link javaScriptDocParam             Function
hi def link javaScriptStringS              String
hi def link javaScriptStringD              String
hi def link javaScriptRegexpString         String
hi def link javaScriptCharacter            Character
hi def link javaScriptPrototype            Type
hi def link javaScriptConditional          Conditional
hi def link javaScriptBranch               Conditional
hi def link javaScriptRepeat               Repeat
hi def link javaScriptStatement            Statement
hi def link javaScriptFunction             Function
hi def link javaScriptError                Error
hi def link javaScriptParensError          Error
hi def link javaScriptParensErrA           Error
hi def link javaScriptParensErrB           Error
hi def link javaScriptParensErrC           Error
hi def link javaScriptOperator             Operator
hi def link javaScriptType                 Type
hi def link javaScriptNull                 Type
hi def link javaScriptNumber               Number
hi def link javaScriptFloat                Number
hi def link javaScriptBoolean              Boolean
hi def link javaScriptLabel                Label
hi def link javaScriptSpecial              Special
hi def link javaScriptSource               Special
hi def link javaScriptGlobalObjects        Special
hi def link javaScriptExceptions           Special
hi def link javaScriptDomErrNo             Constant
hi def link javaScriptDomNodeConsts        Constant
hi def link javaScriptDomElemAttrs         Label
hi def link javaScriptDomElemFuncs         PreProc
hi def link javaScriptHtmlEvents           Special
hi def link javaScriptHtmlElemAttrs        Label
hi def link javaScriptHtmlElemFuncs        PreProc
hi def link javaScriptCssStyles            Label

let b:current_syntax = "odesza"
