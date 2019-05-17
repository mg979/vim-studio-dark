" Name:         Vim Studio Dark
" Author:       Gianmaria Bajo <mg1979.git@gmail.com>
" Maintainer:   Gianmaria Bajo <mg1979.git@gmail.com>
" License:      Vim License (see `:help license`)
" Last Updated: ven 17 mag 2019 19:22:08 CEST

if !(has('termguicolors') && &termguicolors) && !has('gui_running')
      \ && (!exists('&t_Co') || &t_Co < 256)
  echoerr '[Vim Studio Dark] There are not enough colors.'
  finish
endif

hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'vsdark'

let g:Vsd = get(g:, 'Vsd', {})
let g:Vsd.contrast = get(g:Vsd, 'contrast', 1)
command! VsdContrast call vsd#options#contrast()

if &background ==# 'dark'
  hi Normal ctermfg=252 ctermbg=234 guifg=#c5d4dd guibg=#1e1e1e guisp=NONE cterm=NONE gui=NONE
  if exists('g:Vsd')
    let contrast = [ ['#262626', '235'],
          \['#1e1e1e', '234'],
          \['#181818', '233']]
    let gui  = contrast[g:Vsd.contrast][0]
    let term = contrast[g:Vsd.contrast][1]
    exe "hi! Normal guibg=".gui." ctermbg=".term
  endif
  if !has('patch-8.0.0616') && !has('gui_running') && !has('nvim')
    set background=dark
  endif
  hi MatchParen ctermfg=196 ctermbg=NONE guifg=#ff0000 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi CursorLineNr ctermfg=110 ctermbg=NONE guifg=#83afe5 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Visual ctermfg=NONE ctermbg=24 guifg=NONE guibg=#264f78 guisp=NONE cterm=NONE gui=NONE
  hi VisualNOS ctermfg=NONE ctermbg=24 guifg=NONE guibg=#264f78 guisp=NONE cterm=NONE gui=NONE
  hi Folded ctermfg=32 ctermbg=NONE guifg=#569cd6 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi FoldColumn ctermfg=32 ctermbg=NONE guifg=#569cd6 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi IncSearch ctermfg=236 ctermbg=174 guifg=#333233 guibg=#df8c8c guisp=NONE cterm=NONE gui=NONE
  hi Search ctermfg=NONE ctermbg=239 guifg=NONE guibg=#4c4e50 guisp=NONE cterm=NONE gui=NONE
  hi Question ctermfg=32 ctermbg=NONE guifg=#569cd6 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi MoreMsg ctermfg=32 ctermbg=NONE guifg=#569cd6 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi ModeMsg ctermfg=32 ctermbg=NONE guifg=#569cd6 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi WildMenu ctermfg=fg ctermbg=24 guifg=fg guibg=#073655 guisp=NONE cterm=NONE gui=NONE
  hi StatusLine ctermfg=fg ctermbg=239 guifg=fg guibg=#4c4e50 guisp=NONE cterm=NONE gui=NONE
  hi StatusLineTerm ctermfg=fg ctermbg=239 guifg=fg guibg=#4c4e50 guisp=NONE cterm=NONE gui=NONE
  hi StatusLineNC ctermfg=fg ctermbg=NONE guifg=fg guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi StatusLineTermNC ctermfg=fg ctermbg=NONE guifg=fg guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Error ctermfg=196 ctermbg=NONE guifg=#ff0000 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi ErrorMsg ctermfg=196 ctermbg=NONE guifg=#ff0000 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi WarningMsg ctermfg=174 ctermbg=NONE guifg=#df8c8c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Todo ctermfg=174 ctermbg=NONE guifg=#df8c8c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SpellBad ctermfg=196 ctermbg=NONE guifg=#ff0000 guibg=NONE guisp=NONE cterm=NONE,undercurl gui=NONE,undercurl
  hi SpellCap ctermfg=174 ctermbg=NONE guifg=#df8c8c guibg=NONE guisp=NONE cterm=NONE,undercurl gui=NONE,undercurl
  hi SpellLocal ctermfg=32 ctermbg=NONE guifg=#569cd6 guibg=NONE guisp=NONE cterm=NONE,undercurl gui=NONE,undercurl
  hi SpellRare ctermfg=174 ctermbg=NONE guifg=#df8c8c guibg=NONE guisp=NONE cterm=NONE,undercurl gui=NONE,undercurl
  hi Pmenu ctermfg=fg ctermbg=239 guifg=fg guibg=#4c4e50 guisp=NONE cterm=NONE gui=NONE
  hi PmenuSel ctermfg=fg ctermbg=24 guifg=fg guibg=#073655 guisp=NONE cterm=NONE gui=NONE
  hi PmenuSbar ctermfg=65 ctermbg=65 guifg=#608b4e guibg=#608b4e guisp=NONE cterm=NONE gui=NONE
  hi PmenuThumb ctermfg=32 ctermbg=32 guifg=#569cd6 guibg=#569cd6 guisp=NONE cterm=NONE gui=NONE
  hi DiffAdd ctermfg=NONE ctermbg=24 guifg=NONE guibg=#264f78 guisp=NONE cterm=NONE gui=NONE
  hi DiffChange ctermfg=NONE ctermbg=236 guifg=NONE guibg=#333233 guisp=NONE cterm=NONE gui=NONE
  hi DiffDelete ctermfg=196 ctermbg=NONE guifg=#ff0000 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi DiffText ctermfg=NONE ctermbg=88 guifg=NONE guibg=#730b00 guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi diffAdded ctermfg=150 ctermbg=NONE guifg=#a8ce93 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi diffChanged ctermfg=223 ctermbg=NONE guifg=#f2c38f guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi diffRemoved ctermfg=174 ctermbg=NONE guifg=#df8c8c guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi diffDiffer ctermfg=223 ctermbg=NONE guifg=#f2c38f guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi diffFile ctermfg=173 ctermbg=NONE guifg=#ce9178 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi diffLine ctermfg=186 ctermbg=NONE guifg=#dada93 guibg=NONE guisp=NONE cterm=NONE,italic gui=NONE,italic
  hi SignColumn ctermfg=fg ctermbg=NONE guifg=fg guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi LineNr ctermfg=239 ctermbg=NONE guifg=#4c4e50 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi CursorLine ctermfg=NONE ctermbg=236 guifg=NONE guibg=#333233 guisp=NONE cterm=NONE gui=NONE
  hi CursorColumn ctermfg=fg ctermbg=236 guifg=fg guibg=#333233 guisp=NONE cterm=NONE gui=NONE
  hi ColorColumn ctermfg=fg ctermbg=236 guifg=fg guibg=#333233 guisp=NONE cterm=NONE gui=NONE
  hi EndOfBuffer ctermfg=239 ctermbg=NONE guifg=#4c4e50 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi VertSplit ctermfg=236 ctermbg=235 guifg=#333233 guibg=#212733 guisp=NONE cterm=NONE gui=NONE
  hi TabLine ctermfg=248 ctermbg=236 guifg=#a9a9a9 guibg=#333233 guisp=NONE cterm=NONE gui=NONE
  hi TabLineSel ctermfg=32 ctermbg=239 guifg=#569cd6 guibg=#4c4e50 guisp=NONE cterm=NONE gui=NONE
  hi TabLineFill ctermfg=248 ctermbg=236 guifg=#a9a9a9 guibg=#333233 guisp=NONE cterm=NONE gui=NONE
  hi ToolbarLine ctermfg=fg ctermbg=239 guifg=fg guibg=#4c4e50 guisp=NONE cterm=NONE gui=NONE
  hi ToolbarButton ctermfg=239 ctermbg=110 guifg=#4c4e50 guibg=#83afe5 guisp=NONE cterm=NONE gui=NONE
  hi String ctermfg=173 ctermbg=NONE guifg=#ce9178 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Constant ctermfg=150 ctermbg=NONE guifg=#a8ce93 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Directory ctermfg=32 ctermbg=NONE guifg=#569cd6 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Number ctermfg=109 ctermbg=NONE guifg=#7fc1ca guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Identifier ctermfg=251 ctermbg=NONE guifg=#c9c6c9 guibg=NONE guisp=NONE cterm=NONE,italic gui=NONE,italic
  hi Function ctermfg=186 ctermbg=NONE guifg=#dada93 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Statement ctermfg=32 ctermbg=NONE guifg=#569cd6 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Conditional ctermfg=32 ctermbg=NONE guifg=#569cd6 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Operator ctermfg=186 ctermbg=NONE guifg=#dada93 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Keyword ctermfg=176 ctermbg=NONE guifg=#c586c0 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Define ctermfg=104 ctermbg=NONE guifg=#9a93e1 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi PreProc ctermfg=104 ctermbg=NONE guifg=#9a93e1 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Type ctermfg=150 ctermbg=NONE guifg=#a8ce93 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Underlined ctermfg=176 ctermbg=NONE guifg=#c586c0 guibg=NONE guisp=NONE cterm=NONE,underline gui=NONE,underline
  hi Special ctermfg=223 ctermbg=NONE guifg=#f2c38f guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SpecialKey ctermfg=223 ctermbg=NONE guifg=#f2c38f guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi NonText ctermfg=223 ctermbg=NONE guifg=#f2c38f guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Title ctermfg=223 ctermbg=NONE guifg=#f2c38f guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Comment ctermfg=65 ctermbg=NONE guifg=#608b4e guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Ignore ctermfg=65 ctermbg=NONE guifg=#608b4e guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Conceal ctermfg=65 ctermbg=NONE guifg=#608b4e guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi Cursor ctermfg=234 ctermbg=34 guifg=#1e1e1e guibg=#00af00 guisp=NONE cterm=NONE gui=NONE
  hi Command ctermfg=176 ctermbg=NONE guifg=#c586c0 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link QuickFixLine Search
  hi! link Delimiter Special
  hi GitGutterAdd ctermfg=34 ctermbg=NONE guifg=#00af00 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi GitGutterChange ctermfg=223 ctermbg=NONE guifg=#f2c38f guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi GitGutterChangeDelete ctermfg=223 ctermbg=NONE guifg=#f2c38f guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi GitGutterDelete ctermfg=196 ctermbg=NONE guifg=#ff0000 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SignifySignAdd ctermfg=34 ctermbg=NONE guifg=#00af00 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SignifySignChange ctermfg=223 ctermbg=NONE guifg=#f2c38f guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SignifySignChangeDelete ctermfg=223 ctermbg=NONE guifg=#f2c38f guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi SignifySignDelete ctermfg=196 ctermbg=NONE guifg=#ff0000 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link helpCommand Type
  hi! link helpSectionDelim PreProc
  hi! link HelpHeadline Statement
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
  finish
endif

hi Normal ctermfg=234 ctermbg=250 guifg=#1e1e1e guibg=#bdbdbd guisp=NONE cterm=NONE gui=NONE
if exists('g:Vsd')
  let contrast = [ ['#a8a8a8', '248'],
        \['#b2b2b2', '249'],
        \['#bdbdbd', '250']]
  let gui  = contrast[g:Vsd.contrast][0]
  let term = contrast[g:Vsd.contrast][1]
  exe "hi! Normal guibg=".gui." ctermbg=".term
endif
hi MatchParen ctermfg=196 ctermbg=NONE guifg=#ff0000 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi CursorLineNr ctermfg=21 ctermbg=NONE guifg=#2222ff guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Visual ctermfg=NONE ctermbg=248 guifg=NONE guibg=#aaaaaa guisp=NONE cterm=NONE gui=NONE
hi VisualNOS ctermfg=NONE ctermbg=248 guifg=NONE guibg=#aaaaaa guisp=NONE cterm=NONE gui=NONE
hi Folded ctermfg=21 ctermbg=NONE guifg=#2222ff guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi FoldColumn ctermfg=21 ctermbg=NONE guifg=#2222ff guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi IncSearch ctermfg=196 ctermbg=214 guifg=#ff0000 guibg=#ffbc29 guisp=NONE cterm=NONE gui=NONE
hi Search ctermfg=25 ctermbg=223 guifg=#0070af guibg=#f2c38f guisp=NONE cterm=NONE gui=NONE
hi WildMenu ctermfg=234 ctermbg=25 guifg=#1e1e1e guibg=#0070af guisp=NONE cterm=NONE gui=NONE
hi Question ctermfg=21 ctermbg=214 guifg=#2222ff guibg=#ffbc29 guisp=NONE cterm=NONE gui=NONE
hi MoreMsg ctermfg=21 ctermbg=NONE guifg=#2222ff guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi ModeMsg ctermfg=21 ctermbg=NONE guifg=#2222ff guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi StatusLine ctermfg=25 ctermbg=248 guifg=#0070af guibg=#aaaaaa guisp=NONE cterm=NONE gui=NONE
hi StatusLineTerm ctermfg=25 ctermbg=248 guifg=#0070af guibg=#aaaaaa guisp=NONE cterm=NONE gui=NONE
hi StatusLineNC ctermfg=fg ctermbg=NONE guifg=fg guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi StatusLineTermNC ctermfg=fg ctermbg=NONE guifg=fg guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Error ctermfg=196 ctermbg=NONE guifg=#ff0000 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi ErrorMsg ctermfg=196 ctermbg=NONE guifg=#ff0000 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi WarningMsg ctermfg=174 ctermbg=NONE guifg=#df8c8c guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Todo ctermfg=21 ctermbg=NONE guifg=#2222ff guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpellBad ctermfg=196 ctermbg=NONE guifg=#ff0000 guibg=NONE guisp=NONE cterm=NONE,undercurl gui=NONE,undercurl
hi SpellCap ctermfg=54 ctermbg=NONE guifg=#6f008a guibg=NONE guisp=NONE cterm=NONE,undercurl gui=NONE,undercurl
hi SpellLocal ctermfg=25 ctermbg=NONE guifg=#0070af guibg=NONE guisp=NONE cterm=NONE,undercurl gui=NONE,undercurl
hi SpellRare ctermfg=54 ctermbg=NONE guifg=#6f008a guibg=NONE guisp=NONE cterm=NONE,undercurl gui=NONE,undercurl
hi Pmenu ctermfg=236 ctermbg=248 guifg=#333333 guibg=#aaaaaa guisp=NONE cterm=NONE gui=NONE
hi PmenuSel ctermfg=234 ctermbg=25 guifg=#1e1e1e guibg=#0070af guisp=NONE cterm=NONE gui=NONE
hi PmenuThumb ctermfg=21 ctermbg=21 guifg=#2222ff guibg=#2222ff guisp=NONE cterm=NONE gui=NONE
hi PmenuSbar ctermfg=22 ctermbg=22 guifg=#006600 guibg=#006600 guisp=NONE cterm=NONE gui=NONE
hi DiffAdd ctermfg=NONE ctermbg=109 guifg=NONE guibg=#7fc1ca guisp=NONE cterm=NONE gui=NONE
hi DiffChange ctermfg=NONE ctermbg=248 guifg=NONE guibg=#aaaaaa guisp=NONE cterm=NONE gui=NONE
hi DiffDelete ctermfg=174 ctermbg=NONE guifg=#df8c8c guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi DiffText ctermfg=NONE ctermbg=223 guifg=NONE guibg=#f2c38f guisp=NONE cterm=NONE,bold gui=NONE,bold
hi! link diffAdded Comment
hi! link diffRemoved String
hi diffFile ctermfg=124 ctermbg=NONE guifg=#a31515 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi diffLine ctermfg=223 ctermbg=NONE guifg=#f2c38f guibg=NONE guisp=NONE cterm=NONE,italic gui=NONE,italic
hi SignColumn ctermfg=fg ctermbg=NONE guifg=fg guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi LineNr ctermfg=102 ctermbg=NONE guifg=#888888 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi CursorLine ctermfg=fg ctermbg=248 guifg=fg guibg=#aaaaaa guisp=NONE cterm=NONE gui=NONE
hi CursorColumn ctermfg=fg ctermbg=248 guifg=fg guibg=#aaaaaa guisp=NONE cterm=NONE gui=NONE
hi ColorColumn ctermfg=fg ctermbg=248 guifg=fg guibg=#aaaaaa guisp=NONE cterm=NONE gui=NONE
hi EndOfBuffer ctermfg=255 ctermbg=NONE guifg=#f2f2f2 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi VertSplit ctermfg=25 ctermbg=25 guifg=#0070af guibg=#0070af guisp=NONE cterm=NONE gui=NONE
hi TabLine ctermfg=fg ctermbg=248 guifg=fg guibg=#aaaaaa guisp=NONE cterm=NONE gui=NONE
hi TabLineSel ctermfg=248 ctermbg=21 guifg=#aaaaaa guibg=#2222ff guisp=NONE cterm=NONE gui=NONE
hi TabLineFill ctermfg=fg ctermbg=248 guifg=fg guibg=#aaaaaa guisp=NONE cterm=NONE gui=NONE
hi ToolbarLine ctermfg=248 ctermbg=21 guifg=#aaaaaa guibg=#2222ff guisp=NONE cterm=NONE gui=NONE
hi ToolbarButton ctermfg=21 ctermbg=248 guifg=#2222ff guibg=#aaaaaa guisp=NONE cterm=NONE gui=NONE
hi String ctermfg=124 ctermbg=NONE guifg=#a31515 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Constant ctermfg=54 ctermbg=NONE guifg=#6f008a guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Directory ctermfg=21 ctermbg=NONE guifg=#2222ff guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Identifier ctermfg=236 ctermbg=NONE guifg=#333333 guibg=NONE guisp=NONE cterm=NONE,italic gui=NONE,italic
hi Function ctermfg=236 ctermbg=NONE guifg=#333333 guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Statement ctermfg=21 ctermbg=NONE guifg=#2222ff guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Conditional ctermfg=21 ctermbg=NONE guifg=#2222ff guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Operator ctermfg=236 ctermbg=NONE guifg=#333333 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Number ctermfg=fg ctermbg=NONE guifg=fg guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Type ctermfg=21 ctermbg=NONE guifg=#2222ff guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Keyword ctermfg=54 ctermbg=NONE guifg=#6f008a guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Underlined ctermfg=54 ctermbg=NONE guifg=#6f008a guibg=NONE guisp=NONE cterm=NONE,underline gui=NONE,underline
hi Special ctermfg=88 ctermbg=NONE guifg=#682900 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpecialKey ctermfg=88 ctermbg=NONE guifg=#682900 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi NonText ctermfg=25 ctermbg=NONE guifg=#0070af guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Title ctermfg=25 ctermbg=NONE guifg=#0070af guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Comment ctermfg=22 ctermbg=NONE guifg=#006600 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Ignore ctermfg=22 ctermbg=NONE guifg=#006600 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Conceal ctermfg=22 ctermbg=NONE guifg=#006600 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Define ctermfg=54 ctermbg=NONE guifg=#6f008a guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi PreProc ctermfg=54 ctermbg=NONE guifg=#6f008a guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Cursor ctermfg=234 ctermbg=21 guifg=#1e1e1e guibg=#2222ff guisp=NONE cterm=NONE gui=NONE
hi Command ctermfg=54 ctermbg=NONE guifg=#6f008a guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link QuickFixLine Search
hi! link Delimiter Special
hi GitGutterAdd ctermfg=22 ctermbg=NONE guifg=#006600 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi GitGutterChange ctermfg=88 ctermbg=NONE guifg=#682900 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi GitGutterChangeDelete ctermfg=88 ctermbg=NONE guifg=#682900 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi GitGutterDelete ctermfg=196 ctermbg=NONE guifg=#ff0000 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SignifySignAdd ctermfg=22 ctermbg=NONE guifg=#006600 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SignifySignChange ctermfg=88 ctermbg=NONE guifg=#682900 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SignifySignChangeDelete ctermfg=88 ctermbg=NONE guifg=#682900 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SignifySignDelete ctermfg=196 ctermbg=NONE guifg=#ff0000 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi! link helpCommand Type
hi! link helpSectionDelim PreProc
hi! link HelpHeadline Statement
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
finish

" Background: dark
" Color:	    background		#1e1e1e ~
" Color:	    foreground		#c5d4dd ~
" Color:	    white		#e6eef3 ~
" Color:	    yellow		#dada93 ~
" Color:	    special		#f2c38f ~
" Color:	    skyblue		#569cd6 32 Blue
" Color:	    darkblue		#073655 ~
" Color:	    lightblue		#83afe5 ~
" Color:	    blue		#264f78 ~
" Color:	    nightblue		#212733 ~
" Color:	    lightgreen		#a8ce93 ~
" Color:	    green		#00af00 ~
" Color:	    darkgreen		#608b4e ~
" Color:	    cyangrey		#7fc1ca ~
" Color:	    cyan		#42dcd7 ~
" Color:	    purple		#9a93e1 ~
" Color:	    pink		#c586c0 ~
" Color:	    grey		#4c4e50 ~
" Color:	    darkgrey		#333233 ~
" Color:	    lightgrey		#a9a9a9 ~
" Color:	    identifier		#c9c6c9 ~
" Color:	    string		#ce9178 ~
" Color:	    lightred		#df8c8c ~
" Color:	    red			#ff0000 ~
" Color:	    darkred		#730b00 ~
" Normal				foreground	background
" MatchParen			red		none
" CursorLineNr			lightblue	none
" Visual				none		blue
" VisualNOS			none		blue
" Folded				skyblue		none
" FoldColumn			skyblue		none
" IncSearch			darkgrey	lightred
" Search				none		grey
" Question			skyblue		none
" MoreMsg				skyblue		none
" ModeMsg				skyblue		none
" WildMenu			fg		darkblue
" StatusLine			fg		grey
" StatusLineTerm                  fg           	grey
" StatusLineNC			fg		none
" StatusLineTermNC		fg		none
" Error				red		none
" ErrorMsg			red		none
" WarningMsg			lightred	none
" Todo				lightred	none
" SpellBad			red   		none undercurl
" SpellCap			lightred	none undercurl
" SpellLocal			skyblue		none undercurl
" SpellRare			lightred	none undercurl
" Pmenu				fg		grey
" PmenuSel			fg		darkblue
" PmenuSbar			darkgreen	darkgreen
" PmenuThumb			skyblue		skyblue
" DiffAdd				none		blue
" DiffChange			none		darkgrey
" DiffDelete			red	        none bold
" DiffText       			none	        darkred bold
" diffAdded			lightgreen	none
" diffChanged			special		none
" diffRemoved			lightred	none
" diffDiffer			special		none bold
" diffFile			string		none bold
" diffLine			yellow		none italic
" SignColumn			fg		none
" LineNr				grey		none
" CursorLine			none		darkgrey
" CursorColumn			fg		darkgrey
" ColorColumn			fg		darkgrey
" EndOfBuffer			grey		none
" VertSplit			darkgrey	nightblue
" TabLine				lightgrey	darkgrey
" TabLineSel			skyblue		grey
" TabLineFill			lightgrey	darkgrey
" ToolbarLine			fg		grey
" ToolbarButton                   grey      	lightblue
" String				string		none
" Constant			lightgreen	none
" Directory			skyblue		none
" Number				cyangrey	none
" Identifier			identifier	none italic
" Function			yellow		none
" Statement			skyblue		none
" Conditional			skyblue		none
" Operator			yellow		none
" Keyword				pink		none
" Define				purple		none
" PreProc				purple		none
" Type				lightgreen	none
" Underlined			pink		none underline
" Special				special		none
" SpecialKey			special		none
" NonText				special		none
" Title				special		none
" Comment				darkgreen	none
" Ignore				darkgreen	none
" Conceal				darkgreen	none
" Cursor				background	green
" Command				pink		none
" QuickFixLine		->	Search
" Delimiter		->	Special
" GitGutterAdd			green		none
" GitGutterChange			special		none
" GitGutterChangeDelete		special		none
" GitGutterDelete			red		none
" SignifySignAdd			green		none
" SignifySignChange		special		none
" SignifySignChangeDelete		special		none
" SignifySignDelete		red		none
" helpCommand		->	Type
" helpSectionDelim	->	PreProc
" HelpHeadline		->	Statement
" Background: light
" Color:	    foreground	#1e1e1e ~
" Color:	    background	#bdbdbd ~
" Color:	    gold	#ffbc29 ~
" Color:	    yellow	#f2c38f ~
" Color:	    darkblue	#2222ff ~
" Color:	    blue	#0070af ~
" Color:	    green	#006600 ~
" Color:	    lightgreen	#a8ce93 ~
" Color:      cyangrey 	#7fc1ca ~
" Color:	    purple	#6f008a ~
" Color:	    darkgrey	#333333 ~
" Color:	    lightgrey	#aaaaaa ~
" Color:	    grey	#888888 ~
" Color:	    darkred	#a31515 ~
" Color:	    lightred	#df8c8c ~
" Color:	    red		#ff0000 ~
" Color:	    white	#f2f2f2 ~
" Color:	    special	#682900 ~
" Normal				foreground	background
" MatchParen			red		none
" CursorLineNr			darkblue	none
" Visual				none		lightgrey
" VisualNOS			none		lightgrey
" Folded				darkblue	none
" FoldColumn			darkblue	none
" IncSearch			red		gold
" Search				blue		yellow
" WildMenu			foreground	blue
" Question			darkblue	gold
" MoreMsg				darkblue	none
" ModeMsg				darkblue	none
" StatusLine			blue	        lightgrey
" StatusLineTerm			blue	        lightgrey
" StatusLineNC			fg		none
" StatusLineTermNC		fg		none
" Error				red		none
" ErrorMsg			red		none
" WarningMsg			lightred	none
" Todo				darkblue	none
" SpellBad			red   		none undercurl
" SpellCap			purple		none undercurl
" SpellLocal			blue		none undercurl
" SpellRare			purple 		none undercurl
" Pmenu				darkgrey	lightgrey
" PmenuSel			foreground	blue
" PmenuThumb			darkblue	darkblue
" PmenuSbar			green		green
" DiffAdd				none		cyangrey
" DiffChange			none		lightgrey
" DiffDelete			lightred	none bold
" DiffText			none		yellow bold
" diffAdded			-> Comment
" diffRemoved			-> String
" diffFile			darkred		none bold
" diffLine			yellow		none italic
" SignColumn			fg		none
" LineNr				grey 		none
" CursorLine			fg		lightgrey
" CursorColumn			fg		lightgrey
" ColorColumn			fg		lightgrey
" EndOfBuffer			white		none
" VertSplit			blue		blue
" TabLine				fg		lightgrey
" TabLineSel			lightgrey	darkblue
" TabLineFill			fg		lightgrey
" ToolbarLine			lightgrey	darkblue
" ToolbarButton			darkblue	lightgrey
" String				darkred		none
" Constant			purple		none
" Directory			darkblue	none
" Identifier			darkgrey	none italic
" Function			darkgrey	none bold
" Statement			darkblue	none bold
" Conditional			darkblue	none bold
" Operator			darkgrey	none
" Number				fg		none
" Type				darkblue	none
" Keyword				purple		none
" Underlined			purple		none underline
" Special				special		none
" SpecialKey			special		none
" NonText				blue		none
" Title				blue		none
" Comment				green		none
" Ignore				green		none
" Conceal				green		none
" Define 				purple		none
" PreProc				purple		none
" Cursor				foreground	darkblue
" Command				purple		none
" QuickFixLine		->	Search
" Delimiter		->	Special
" GitGutterAdd			green		none
" GitGutterChange			special		none
" GitGutterChangeDelete		special		none
" GitGutterDelete			red		none
" SignifySignAdd			green		none
" SignifySignChange		special		none
" SignifySignChangeDelete		special		none
" SignifySignDelete		red		none
" helpCommand		->	Type
" helpSectionDelim	->	PreProc
" HelpHeadline		->	Statement
