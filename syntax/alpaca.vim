" syntax/alpaca.vim

if exists("b:current_syntax")
    finish
endif

let b:current_syntax = "alpaca"

" Match language specific keywords
syntax keyword alpacaKeyword
      \ match
      \ with
      \ fn
      \ import
      \ import_type
      \ beam
      \ module
      \ export
      \ export_type
      \ receive
      \ send
      \ test
      \ in
      \ utf8
      \ unit
      \ binary
      \ string
      \ bool
      \ float
      \ int
      \ list
      \ is_float
      \ is_list
      \ is_binary
      \ is_integer
      \ is_atom

highlight link alpacaKeyword Keyword

syntax keyword alpacaTypedef type let val nextgroup=alpacaBind
highlight link alpacaTypedef TypeDef

syntax match alpacaBind "\s*[0-9a-zA-Z_]*" contained
highlight link alpacaBind Function

syntax region alpacaString start=/\v"/ skip=/\v\\./ end=/\v"/
highlight link alpacaString String

syntax match alpacaComment "\v--.*$"
syntax region alpacaComment start=/\v\{-/ end=/\v-\}/
highlight link alpacaComment Comment

syntax match alpacaNumber "\v(\d+)"
syntax match alpacaNumber "\v(\d+)\.(\d+)"
highlight link alpacaNumber Number

syntax match alpacaAtom ":[a-z][a-zA-Z_0-9]*"
syntax keyword alpacaAtom true false
highlight link alpacaAtom Constant

