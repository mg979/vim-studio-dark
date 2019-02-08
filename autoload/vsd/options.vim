"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" colorscheme options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

fun! vsd#options#show() abort
  """Show the options pane.
  let menu = s:build_menu()

  for item in sort(keys(menu), 'n')
    echo nr2char(item).' - '.s:pad(menu[item][0]).menu[item][1]
  endfor
  echo ''
  let ask = getchar()
  redraw
  if has_key(menu, ask)
    exe menu[ask][2]
  endif
endfun

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" colorscheme contrast
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

fun! vsd#options#contrast() abort
  """Cycle contrast mode for scheme.
  if g:Vsd.contrast == 0
    let g:Vsd.contrast = 1
    exe "colorscheme" g:colors_name
    redraw!
    echo "[Vsd] medium contrast"
  elseif g:Vsd.contrast == 1
    let g:Vsd.contrast = 2
    exe "colorscheme" g:colors_name
    redraw!
    echo "[Vsd] high contrast"
  else
    let g:Vsd.contrast = 0
    exe "colorscheme" g:colors_name
    redraw!
    echo "[Vsd] low contrast"
  endif
endfun

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" toggle end… visibility
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

fun! vsd#options#end() abort
  """Toggle visibility of end… syntax elements.
  if &ft == 'vim'
    let g:Vsd.vimEnd = !g:Vsd.vimEnd
    if g:Vsd.vimEnd
      hi! link vimEndBlock Conditional
    else
      hi vimEndBlock guifg=bg ctermfg=bg
    endif
    echo "vimEndBlock visibility set to" s:opts.vimEnd[g:Vsd.vimEnd]
  endif
endfun

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" helpers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:Vsd.vimEnd = get(g:Vsd, 'vimEnd', 1)

let s:opts = {
      \ 'contrast': ['low', 'medium', 'high'],
      \ 'vimEnd': ['hidden', 'visible'],
      \}

"------------------------------------------------------------------------------

fun! s:pad(t)
  return a:t.repeat("\t", 3 - strlen(a:t)/6)
endfun

"------------------------------------------------------------------------------

fun! s:build_menu()
  let ix = 97
  let menu = {
        \ ix: ['Contrast', s:opts.contrast[g:Vsd.contrast], 'VsdContrast']
        \}

  if &ft == 'vim'
    let menu[ix+1] = ['vimEnd', s:opts.vimEnd[g:Vsd.vimEnd], 'VsdEnd']
  endif
  return menu
endfun

