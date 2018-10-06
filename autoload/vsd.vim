"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"SYNTAX EXRAS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let s:load_for = { ft -> g:VSD[ft] || g:VSD.extra_syntax }
let s:schemes  = ['vsdark', 'vslight', 'tomorrow_eighties']
let s:skip     = { -> exists('g:colors_name') && index(s:schemes, g:colors_name) >= 0 }

fun! vsd#init()
  let g:VSD              = get(g:, 'VSD', {})
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
  augroup end
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
  call s:reset_syntax()
endfun

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

fun! s:reset_syntax()

  if s:load_for('vim')
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
    hi! link helpCommand                  Comment
    if has_key(b:, 'endwise_syngroups')
      let b:endwise_syngroups = substitute(b:endwise_syngroups, ',vimConditional,vimRepeat', '', '')
    endif
  endif
  if s:load_for('python')
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
  endif
  if s:load_for('cpp')
    silent! syntax clear cppOperatorSymbol
    silent! syntax clear cppBraces
    hi! link cCharacter                   Constant
    hi! link cppStructure                 Type
  endif
  if s:load_for('markdown')
    hi! link mkdItalic                    htmlItalic
    hi! link mkdBold                      htmlBold
    hi! link mkdBoldItalic                htmlBoldItalic
    hi! link mkdListItem                  Identifier
    hi! link mkdID                        Identifier
    hi! link mkdRule                      Identifier
    hi! link mkdCode                      String
  endif
endfun

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

fun! vsd#terminal_dark()
  let g:terminal_ansi_colors = [
        \ "#3C4C55",
        \ "#DF8C8C",
        \ "#A8CE93",
        \ "#DADA93",
        \ "#83AFE5",
        \ "#9A93E1",
        \ "#83AFE5",
        \ "#C5D4DD",
        \ "#608b4e",
        \ "#F2C38F",
        \ "#A8CE93",
        \ "#DADA93",
        \ "#83AFE5",
        \ "#D18EC2",
        \ "#83AFE5",
        \ "#E6EEF3"
        \]

  " NEOVIM TERMINAL MODE
  let g:terminal_color_0 = "#3C4C55"
  let g:terminal_color_1 = "#DF8C8C"
  let g:terminal_color_2 = "#A8CE93"
  let g:terminal_color_3 = "#DADA93"
  let g:terminal_color_4 = "#83AFE5"
  let g:terminal_color_5 = "#9A93E1"
  let g:terminal_color_6 = "#83AFE5"
  let g:terminal_color_7 = "#C5D4DD"
  let g:terminal_color_8 = "#608b4e"
  let g:terminal_color_9 = "#F2C38F"
  let g:terminal_color_10 = "#A8CE93"
  let g:terminal_color_11 = "#DADA93"
  let g:terminal_color_12 = "#83AFE5"
  let g:terminal_color_13 = "#D18EC2"
  let g:terminal_color_14 = "#83AFE5"
  let g:terminal_color_15 = "#E6EEF3"

  " FZF
  let g:fzf_colors = {
        \ "fg":      ["fg", "Normal"],
        \ "bg":      ["bg", "Normal"],
        \ "hl":      ["fg", "Conditional"],
        \ "fg+":     ["fg", "CursorLine", "CursorColumn", "Normal"],
        \ "bg+":     ["bg", "CursorLine", "CursorColumn"],
        \ "hl+":     ["fg", "Conditional"],
        \ "info":    ["fg", "Conditional"],
        \ "border":  ["fg", "Ignore"],
        \ "prompt":  ["fg", "Comment"],
        \ "pointer": ["fg", "Conditional"],
        \ "marker":  ["fg", "Conditional"],
        \ "spinner": ["fg", "Conditional"],
        \ "header":  ["fg", "Conditional"]
        \}
endfun

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

fun! vsd#terminal_light()
  let g:terminal_ansi_colors = [
        \ "#3C4C55",
        \ "#DF8C8C",
        \ "#A8CE93",
        \ "#DADA93",
        \ "#83AFE5",
        \ "#9A93E1",
        \ "#83AFE5",
        \ "#C5D4DD",
        \ "#608b4e",
        \ "#F2C38F",
        \ "#A8CE93",
        \ "#DADA93",
        \ "#83AFE5",
        \ "#D18EC2",
        \ "#83AFE5",
        \ "#E6EEF3"
        \]

  " NEOVIM TERMINAL MODE
  let g:terminal_color_0 = "#3C4C55"
  let g:terminal_color_1 = "#DF8C8C"
  let g:terminal_color_2 = "#A8CE93"
  let g:terminal_color_3 = "#DADA93"
  let g:terminal_color_4 = "#83AFE5"
  let g:terminal_color_5 = "#9A93E1"
  let g:terminal_color_6 = "#83AFE5"
  let g:terminal_color_7 = "#C5D4DD"
  let g:terminal_color_8 = "#608b4e"
  let g:terminal_color_9 = "#F2C38F"
  let g:terminal_color_10 = "#A8CE93"
  let g:terminal_color_11 = "#DADA93"
  let g:terminal_color_12 = "#83AFE5"
  let g:terminal_color_13 = "#D18EC2"
  let g:terminal_color_14 = "#83AFE5"
  let g:terminal_color_15 = "#E6EEF3"

  " FZF
  let g:fzf_colors = {
        \ "fg":      ["fg", "Normal"],
        \ "bg":      ["bg", "Normal"],
        \ "hl":      ["fg", "Conditional"],
        \ "fg+":     ["fg", "CursorLine", "CursorColumn", "Normal"],
        \ "bg+":     ["bg", "CursorLine", "CursorColumn"],
        \ "hl+":     ["fg", "Conditional"],
        \ "info":    ["fg", "Conditional"],
        \ "border":  ["fg", "Ignore"],
        \ "prompt":  ["fg", "Comment"],
        \ "pointer": ["fg", "Conditional"],
        \ "marker":  ["fg", "Conditional"],
        \ "spinner": ["fg", "Conditional"],
        \ "header":  ["fg", "Conditional"]
        \}
endfun

