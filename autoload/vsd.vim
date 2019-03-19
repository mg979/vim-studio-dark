"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" init colorscheme
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let s:load_for = { ft -> g:Vsd[ft] || g:Vsd.extra_syntax }

fun! vsd#init()
  let g:Vsd              = get(g:,    'Vsd',          {})
  let g:Vsd.extra_syntax = get(g:Vsd, 'extra_syntax', 1)
  let g:Vsd.contrast     = get(g:Vsd, 'contrast',     1)
  let g:Vsd.vim          = get(g:Vsd, 'vim',          g:Vsd.extra_syntax)
  let g:Vsd.python       = get(g:Vsd, 'python',       g:Vsd.extra_syntax)
  let g:Vsd.cpp          = get(g:Vsd, 'cpp',          g:Vsd.extra_syntax)
  let g:Vsd.markdown     = get(g:Vsd, 'markdown',     g:Vsd.extra_syntax)

  command! VsdContrast call vsd#options#contrast()
  command! VsdEnd      call vsd#options#end()
  command! VsdOptions  call vsd#options#show()
endfun

fun! vsd#extras()
  augroup vsd_syntax
    au!
    au ColorScheme *    call vsd#reset()
    au Filetype vim     call s:vim()
    au Filetype python  call s:python()
    au Filetype cpp     call s:cpp()
  augroup END
endfun

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" colorscheme syntax
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

fun! s:vim()
  if !s:load_for('vim') | return | endif

  syn match   vimDocstring    '^\s\s\{-}"""\w.*'
  syn match   vimEndBlock     '\v<end(if|for|while|wh|try)>'
  syn keyword vimConditional  if elseif else try catch finally in
  syn keyword vimRepeat       wh[ile] for skipwhite nextgroup=vimVar
  syn keyword vimLet          let unl[et] skipwhite nextgroup=vimFBVar,vimVar
  syn keyword vimCall         cal[l] nextgroup=Function,vimFunction
  syn keyword vimSelf         self
  syn cluster vimFuncBodyList add=vimDocstring,vimConditional,vimEndBlock,vimSelf,vimCall,vimRepeat
  if has_key(b:, 'endwise_syngroups')
    let b:endwise_syngroups .= ',vimConditional,vimRepeat'
  endif
endfun

fun! s:python()
  if !s:load_for('python') | return | endif

  syn keyword pythonSelf            self
  syn match   pythonOperatorSymbol  '\V=\|-\|+\|*\|@\|/\|%\|&\||\|^\|~\|<\|>\|!='
  syn match   pythonBraces          '{\|}\|\[\|\]'
  syn match   pythonGlobalVar       '\<[A-Z_]\+\>'
  syn match   pythonStringType      '\((\)\@<=[rfub]\(["\']\)\@='
endfun

fun! s:cpp()
  if !s:load_for('cpp') | return | endif

  syn match cppOperatorSymbol   '\V = \| > \| < \| - \| + \| * \| / \| % \| && \| || \|^\|<<\|>>\| != \| <= \| >= \| == \| += \| -= \| *= \| /= \| %= '
endfun



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" reset syntax (after colorscheme change)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

fun! vsd#reset()
  if s:ignore() | return | endif
  autocmd! vsd_syntax
  augroup! vsd_syntax
  delcommand VsdContrast
  delcommand VsdOptions
  delcommand VsdEnd
  if s:load_for('vim')      | call s:reset_vim()      | endif
  if s:load_for('python')   | call s:reset_python()   | endif
  if s:load_for('cpp')      | call s:reset_cpp()      | endif
  if s:load_for('markdown') | call s:reset_markdown() | endif
endfun

"------------------------------------------------------------------------------

fun! s:reset_vim()
  syn cluster vimFuncBodyList remove=vimDocstring,vimConditional,vimSelf,vimCall
  syn keyword vimLet  let unl[et] skipwhite nextgroup=vimVar,vimFuncVar
  silent! syntax clear vimDocstring
  silent! syntax clear vimEndBlock
  silent! syntax clear vimConditional
  silent! syntax clear vimRepeat
  silent! syntax clear vimCall
  silent! syntax clear vimSelf
  hi! link vimCommand                   Statement
  hi! link vimLet                       Statement
  if has_key(b:, 'endwise_syngroups')
    let b:endwise_syngroups = substitute(b:endwise_syngroups, ',vimConditional,vimRepeat', '', '')
  endif
endfun

fun! s:reset_python()
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

fun! s:reset_cpp()
  silent! syntax clear cppOperatorSymbol
  silent! syntax clear cppBraces
  hi! link cCharacter                   Constant
  hi! link cppStructure                 Type
  hi! link cStorageClass                Type
endfun

fun! s:reset_markdown()
  hi! link mkdItalic                    htmlItalic
  hi! link mkdBold                      htmlBold
  hi! link mkdBoldItalic                htmlBoldItalic
  hi! link mkdListItem                  Identifier
  hi! link mkdID                        Identifier
  hi! link mkdRule                      Identifier
  hi! link mkdCode                      String
endfun

"------------------------------------------------------------------------------

fun! s:ignore()
  return index(['vsdark', 'vslight', 'sand', 'tomorrow_eighties'], g:colors_name) >= 0
endfun


