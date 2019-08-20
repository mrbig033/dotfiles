" Vim syntax file
" Language:		Portugol
" Maintainer:		Daniel Teixeira <daniel.t.dt@gmail.com>
" URL:			https://github.com/danieltdt/vimfiles
" Release Coordinator:	Daniel Teixeira <daniel.t.dt@gmail.com>
" ----------------------------------------------------------------------------

if exists("b:current_syntax")
  finish
endif

syn match portugolComment "//.*$"

syn keyword portugolKeyword algoritmo var inicio retorne fimalgoritmo
syn keyword portugolKeyword se entao senao fimse enquanto faca fimenquanto
syn keyword portugolKeyword para de ate passo faca fimpara

syn keyword portugolType inteiro real caractere logico vetor

syn keyword portugolOperator e ou nao div

syn match portugolNumber '\d'

syn region portugolString start='"' end='"'

hi def link portugolComment Comment
hi def link portugolKeyword Statement
hi def link portugolType Type
hi def link portugolOperator Special
hi def link portugolNumber Constant
hi def link portugolString Constant

let b:current_syntax = "portugol"
