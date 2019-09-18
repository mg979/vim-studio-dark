"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" init
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

fun! vsd#init(scheme) abort
  let g:Vsd = get(g:, 'Vsd', {})
  let g:Vsd.contrast = get(g:Vsd, 'contrast', 1)
  let g:Vsd.conservative = get(g:Vsd, 'conservative', 1)
  command! VsdContrast call vsd#contrast()
  command! VsdOptions call vsd#show()
  command! VsdConservative call vsd#conservative()

  if a:scheme == 'vsdark'
    let contrast = [ ['#262626', '235'],
          \          ['#1e1e1e', '234'],
          \          ['#181818', '233']]

  elseif a:scheme == 'vslight'
    let contrast = [ ['#a8a8a8', '248'],
          \          ['#b2b2b2', '249'],
          \          ['#bdbdbd', '250']]

  elseif a:scheme == 'sand'
    let contrast = [ ['#3a3a3a', '237'],
          \          ['#2d2d2d', '236'],
          \          ['#262626', '235']]

  elseif a:scheme == 'tomorrow_eighties'
    let contrast = [ ['#303030', '236'],
                \    ['#262626', '235'],
                \    ['#1e1e1e', '234']]

  elseif a:scheme == 'pole'
    let contrast = [ ['#25262e', '235'],
                \    ['#1e1f25', '234'],
                \    ['#191a1f', '233']]
  endif

  if exists('g:loaded_visual_multi')
    let theme = {'vsdark': 'iceblue', 'sand': 'sand',
          \      'tomorrow_eighties': 'codedark', 'pole': 'ocean'}
    silent exe 'VMTheme' theme[a:scheme]
  endif
  if &termguicolors || has('gui_running')
    exe "hi! Normal guibg=" . contrast[g:Vsd.contrast][0]
  else
    exe "hi! Normal ctermbg=" . contrast[g:Vsd.contrast][1]
    set bg=dark
  endif
endfun

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" colorscheme options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

fun! vsd#show() abort
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

fun! vsd#conservative() abort
  let g:Vsd.conservative = !g:Vsd.conservative
  syntax reset
  exe 'colorscheme' g:colors_name
endfun

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" colorscheme contrast
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

fun! vsd#contrast() abort
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
" helpers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let s:opts = {
      \ 'contrast': ['low', 'medium', 'high'],
      \}

"------------------------------------------------------------------------------

fun! s:pad(t)
  return a:t.repeat("\t", 3 - strlen(a:t)/6)
endfun

"------------------------------------------------------------------------------

fun! s:build_menu()
  let menu = {
        \ 97: ['Contrast', s:opts.contrast[g:Vsd.contrast], 'VsdContrast'],
        \ 98: ['Conservative', g:Vsd.conservative, 'VsdConservative'],
        \}
  return menu
endfun

