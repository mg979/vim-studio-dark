let s:load_for = { ft -> g:VSD[ft] || g:VSD.extra_syntax }

fun! vsd#reset#do()
  if s:load_for('vim')      | call s:vim()      | endif
  if s:load_for('python')   | call s:python()   | endif
  if s:load_for('cpp')      | call s:cpp()      | endif
  if s:load_for('markdown') | call s:markdown() | endif
  autocmd! vsd_extra_syntax
  augroup! vsd_extra_syntax
endfun

"------------------------------------------------------------------------------

fun! s:vim()
  syn cluster vimFuncBodyList remove=vimDocstring,vimConditional,vimSelf,vimCall,vimLetVar
  syn keyword vimLet  let unl[et] skipwhite nextgroup=vimVar,vimFuncVar
  silent! syntax clear vimDocstring
  silent! syntax clear vimConditional
  silent! syntax clear vimRepeat
  silent! syntax clear vimLetVar
  silent! syntax clear vimCall
  silent! syntax clear vimSelf
  hi! link vimCommand                   Statement
  hi! link vimLet                       Statement
  if has_key(b:, 'endwise_syngroups')
    let b:endwise_syngroups = substitute(b:endwise_syngroups, ',vimConditional,vimRepeat', '', '')
  endif
endfun

fun! s:python()
  silent! syntax clear pythonSelf
  silent! syntax clear pythonOperatorSymbol
  silent! syntax clear pythonBraces
  silent! syntax clear pythonGlobalVar
  silent! syntax clear pythonStringType
  hi! link pythonOperator               Operator
  hi! link pythonBoolean                Boolean
  hi! link pythonNone                   Constant
  hi! link pythonStructure              Keyword
  hi! link pythonStorageClass           Keyword
  hi! link pythonTypeDef                Keyword
  hi! link pythonFunction               Function
endfun

fun! s:cpp()
  silent! syntax clear cppOperatorSymbol
  silent! syntax clear cppBraces
  hi! link cCharacter                   Constant
  hi! link cppStructure                 Type
endfun

fun! s:markdown()
  hi! link mkdItalic                    htmlItalic
  hi! link mkdBold                      htmlBold
  hi! link mkdBoldItalic                htmlBoldItalic
  hi! link mkdListItem                  Identifier
  hi! link mkdID                        Identifier
  hi! link mkdRule                      Identifier
  hi! link mkdCode                      String
endfun

