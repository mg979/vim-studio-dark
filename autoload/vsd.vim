"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"SYNTAX EXRAS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let s:load_for = { ft -> g:VSD[ft] || g:VSD.extra_syntax }
let s:skip     = { -> exists('g:colors_name') && index(g:VSD.schemes, g:colors_name) >= 0 }

fun! vsd#init()
  let g:VSD              = get(g:, 'VSD', {})
  let g:VSD.schemes      = ['vsdark', 'vslight', 'tomorrow_eighties']
  let g:VSD.conservative = get(g:VSD, 'conservative', 0)
  let g:VSD.extra_syntax = get(g:VSD, 'extra_syntax', 1)
  let g:VSD.all_syntaxes = get(g:VSD, 'all_syntaxes', 0)
  let g:VSD.vim          = get(g:VSD, 'vim', g:VSD.all_syntaxes)
  let g:VSD.python       = get(g:VSD, 'python', g:VSD.all_syntaxes)
  let g:VSD.cpp          = get(g:VSD, 'cpp', g:VSD.all_syntaxes)
  let g:VSD.markdown     = get(g:VSD, 'markdown', g:VSD.all_syntaxes)
endfun

fun! vsd#extras()
  augroup vsd_extra_syntax
    au!
    au ColorScheme *   call vsd#reset()
    au filetype vim    call vsd#vim()
    au filetype python call vsd#python()
    au filetype cpp    call vsd#cpp()
  augroup END
endfun

fun! vsd#more_colors()
  if g:VSD.conservative | return | endif
  hi! link vimCommand Command
endfun

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

fun! vsd#vim()
  if !s:load_for('vim') | return | endif

  syn match vimDocstring '^\s\s\{-}"""\w.*'
  syn keyword vimConditional if elseif else endif try catch finally endtry
  syn keyword vimRepeat while endwhile for endfor in
  syn match vimLetVar '\(let \|for \)\@<=\(\w\|\.\|:\|#\)\+'
  syn keyword vimLet  let unl[et] skipwhite nextgroup=vimVar,vimFuncVar,vimLetVar
  syn keyword vimCall call nextgroup=Function
  syn keyword vimSelf self
  syn cluster vimFuncBodyList add=vimDocstring,vimConditional,vimSelf,vimCall,vimLetVar,vimRepeat
  if has_key(b:, 'endwise_syngroups')
    let b:endwise_syngroups .= ',vimConditional,vimRepeat'
  endif
endfun

fun! vsd#python()
  if !s:load_for('python') | return | endif

  syn keyword pythonSelf self
  syn match pythonOperatorSymbol   '\V=\|-\|+\|*\|@\|/\|%\|&\||\|^\|~\|<\|>\|!='
  syn match pythonBraces           '{\|}\|\[\|\]'
  syn match pythonGlobalVar        '\<[A-Z_]*\>'
  syn match pythonStringType       '\((\)\@<=[rfub]\(["\']\)\@='
endfun

fun! vsd#cpp()
  if !g:VSD.extra_syntax && !g:VSD['cpp'] | return | endif
  syn match cppOperatorSymbol   '\V = \| > \| < \| - \| + \| * \| / \| % \| && \| || \|^\|<<\|>>\| != \| <= \| >= \| == \| += \| -= \| *= \| /= \| %= '
endfun

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

fun! vsd#reset()
  if s:skip()
    return
  endif
  augroup vsd_extra_syntax
    au!
  augroup end
  call vsd#reset#do()
endfun
