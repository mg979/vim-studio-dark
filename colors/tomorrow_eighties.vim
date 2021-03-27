" Name:         Tomorrow-Night-Eighties
" Author:       Chris Kempson <http://chriskempson.com>
" Maintainer:   Gianmaria Bajo <mg1979.git@gmail.com>
" License:      Vim License (see `:help license`)
" Last Updated: sab 27 mar 2021 23:11:44 CET

" Generated by Colortemplate v2.1.0

set background=dark

hi clear
let g:colors_name = 'tomorrow_eighties'

let s:t_Co = exists('&t_Co') && !empty(&t_Co) && &t_Co > 1 ? &t_Co : 2

if (has('termguicolors') && &termguicolors) || has('gui_running')
  let g:terminal_ansi_colors = ['#000000', '#f2777a', '#99cc99', '#f99157', '#6699cc', '#cc99cc', '#66cccc', '#393939', '#666666', '#ff3334', '#9ec400', '#ffcc66', '#6699cc', '#b777e0', '#54ced6', '#393939']
  if has('nvim')
    let g:terminal_color_0 = '#000000'
    let g:terminal_color_1 = '#f2777a'
    let g:terminal_color_2 = '#99cc99'
    let g:terminal_color_3 = '#f99157'
    let g:terminal_color_4 = '#6699cc'
    let g:terminal_color_5 = '#cc99cc'
    let g:terminal_color_6 = '#66cccc'
    let g:terminal_color_7 = '#393939'
    let g:terminal_color_8 = '#666666'
    let g:terminal_color_9 = '#ff3334'
    let g:terminal_color_10 = '#9ec400'
    let g:terminal_color_11 = '#ffcc66'
    let g:terminal_color_12 = '#6699cc'
    let g:terminal_color_13 = '#b777e0'
    let g:terminal_color_14 = '#54ced6'
    let g:terminal_color_15 = '#393939'
  endif
  hi Normal guifg=#cccccc guibg=#262626 gui=NONE cterm=NONE
  let g:Vsd = get(g:, 'Vsd', {})
  silent! call vsd#init('tomorrow_eighties')
  hi EndOfBuffer guifg=#393939 guibg=NONE gui=NONE cterm=NONE
  hi LineNr guifg=#393939 guibg=NONE gui=NONE cterm=NONE
  hi NonText guifg=#777777 guibg=NONE gui=NONE cterm=NONE
  hi Search guifg=#262626 guibg=#666666 gui=NONE cterm=NONE
  hi IncSearch guifg=#262626 guibg=#f99157 gui=bold cterm=bold
  hi TabLine guifg=#393939 guibg=fg gui=reverse cterm=reverse
  hi TabLineFill guifg=#393939 guibg=fg gui=reverse cterm=reverse
  hi StatusLine guifg=#393939 guibg=#ffcc66 gui=reverse cterm=reverse
  hi StatusLineNC guifg=#393939 guibg=fg gui=reverse cterm=reverse
  hi StatusLineTerm guifg=#393939 guibg=#ffcc66 gui=reverse cterm=reverse
  hi StatusLineTermNC guifg=#393939 guibg=fg gui=reverse cterm=reverse
  hi VertSplit guifg=#262626 guibg=#393939 gui=NONE cterm=NONE
  hi Visual guifg=NONE guibg=#264f78 gui=NONE cterm=NONE
  hi VisualNOS guifg=NONE guibg=#264f78 gui=NONE cterm=NONE
  hi Directory guifg=#6699cc guibg=NONE gui=NONE cterm=NONE
  hi ModeMsg guifg=#99cc99 guibg=NONE gui=NONE cterm=NONE
  hi MoreMsg guifg=#99cc99 guibg=NONE gui=NONE cterm=NONE
  hi Question guifg=#99cc99 guibg=NONE gui=NONE cterm=NONE
  hi WarningMsg guifg=#f2777a guibg=NONE gui=NONE cterm=NONE
  hi MatchParen guifg=#f2777a guibg=#393939 gui=bold cterm=bold
  hi Folded guifg=#777777 guibg=NONE gui=NONE cterm=NONE
  hi FoldColumn guifg=fg guibg=NONE gui=NONE cterm=NONE
  hi CursorLine guifg=NONE guibg=#393939 gui=NONE cterm=NONE
  hi CursorLineNr guifg=#ffcc66 guibg=NONE gui=NONE cterm=NONE
  hi CursorColumn guifg=fg guibg=#393939 gui=NONE cterm=NONE
  hi SignColumn guifg=fg guibg=NONE gui=NONE cterm=NONE
  hi ColorColumn guifg=fg guibg=#393939 gui=NONE cterm=NONE
  hi Comment guifg=#777777 guibg=NONE gui=NONE cterm=NONE
  hi Todo guifg=#777777 guibg=NONE gui=NONE cterm=NONE
  hi Title guifg=#ffcc66 guibg=NONE gui=NONE cterm=NONE
  hi Constant guifg=#f99157 guibg=NONE gui=NONE cterm=NONE
  hi String guifg=#99cc99 guibg=NONE gui=NONE cterm=NONE
  hi Identifier guifg=#f2777a guibg=NONE gui=NONE cterm=NONE
  hi Function guifg=#61afef guibg=NONE gui=NONE cterm=NONE
  hi Statement guifg=#f2777a guibg=NONE gui=NONE cterm=NONE
  hi Conditional guifg=#cc99cc guibg=NONE gui=NONE cterm=NONE
  hi Repeat guifg=#cc99cc guibg=NONE gui=NONE cterm=NONE
  hi Label guifg=#cc99cc guibg=NONE gui=NONE cterm=NONE
  hi Operator guifg=#66cccc guibg=NONE gui=NONE cterm=NONE
  hi Type guifg=#6699cc guibg=NONE gui=NONE cterm=NONE
  hi Structure guifg=#6699cc guibg=NONE gui=NONE cterm=NONE
  hi Special guifg=#666666 guibg=NONE gui=NONE cterm=NONE
  hi SpecialKey guifg=#666666 guibg=NONE gui=NONE cterm=NONE
  hi PreProc guifg=#cc99cc guibg=NONE gui=NONE cterm=NONE
  hi Define guifg=#cc99cc guibg=NONE gui=NONE cterm=NONE
  hi Include guifg=#cc99cc guibg=NONE gui=NONE cterm=NONE
  hi SpellBad guifg=#f2777a guibg=NONE gui=undercurl cterm=undercurl
  hi SpellCap guifg=#f99157 guibg=NONE gui=undercurl cterm=undercurl
  hi SpellLocal guifg=#f99157 guibg=NONE gui=undercurl cterm=undercurl
  hi SpellRare guifg=#cc99cc guibg=NONE gui=undercurl cterm=undercurl
  hi Pmenu guifg=fg guibg=#1e1e1e gui=NONE cterm=NONE
  hi PmenuSel guifg=#1e1e1e guibg=#cc99cc gui=NONE cterm=NONE
  hi PmenuSbar guifg=#262626 guibg=#262626 gui=NONE cterm=NONE
  hi PmenuThumb guifg=#cc99cc guibg=#cc99cc gui=NONE cterm=NONE
  hi DiffAdd guifg=NONE guibg=#073655 gui=NONE cterm=NONE
  hi DiffChange guifg=NONE guibg=#333233 gui=NONE cterm=NONE
  hi DiffDelete guifg=#262626 guibg=#730b00 gui=bold cterm=bold
  hi DiffText guifg=NONE guibg=#730b00 gui=bold cterm=bold
  hi Cursor guifg=#262626 guibg=#99cc99 gui=NONE cterm=NONE
  hi! link QuickFixLine Search
  hi! link Delimiter Special
  hi Underlined guifg=#6699cc guibg=NONE gui=underline cterm=underline
  hi diffAdded guifg=#99cc99 guibg=NONE gui=NONE cterm=NONE
  hi diffRemoved guifg=#f2777a guibg=NONE gui=NONE cterm=NONE
  hi gitcommitSummary guifg=fg guibg=NONE gui=bold cterm=bold
  hi Command guifg=#f2777a guibg=NONE gui=NONE cterm=NONE
  hi Error guifg=#f2777a guibg=NONE gui=NONE cterm=NONE
  hi ErrorMsg guifg=#f2777a guibg=NONE gui=NONE cterm=NONE
  hi Ignore guifg=#393939 guibg=NONE gui=NONE cterm=NONE
  hi Conceal guifg=#393939 guibg=NONE gui=NONE cterm=NONE
  hi GitGutterAdd guifg=#99cc99 guibg=NONE gui=NONE cterm=NONE
  hi GitGutterChange guifg=#666666 guibg=NONE gui=NONE cterm=NONE
  hi GitGutterChangeDelete guifg=#666666 guibg=NONE gui=NONE cterm=NONE
  hi GitGutterDelete guifg=#f2777a guibg=NONE gui=NONE cterm=NONE
  hi SignifySignAdd guifg=#99cc99 guibg=NONE gui=NONE cterm=NONE
  hi SignifySignChange guifg=#666666 guibg=NONE gui=NONE cterm=NONE
  hi SignifySignChangeDelete guifg=#666666 guibg=NONE gui=NONE cterm=NONE
  hi SignifySignDelete guifg=#f2777a guibg=NONE gui=NONE cterm=NONE
  if get(g:Vsd, 'extra_highlight', 1)
    hi! link helpCommand Type
    hi! link helpSectionDelim Directory
    hi! link helpHeader PreProc
    hi! link helpHeadline Statement
    hi! link helpHyperTextEntry String
    hi! link helpHyperTextJump Identifier
    hi! link helpExample Comment
    hi! link helpOption Type
    hi! link helpSpecial Special
    hi pythonBytesEscape guifg=#f99157 guibg=NONE gui=NONE cterm=NONE
    hi pythonStrFormat guifg=#f99157 guibg=NONE gui=NONE cterm=NONE
    hi pythonStrFormatting guifg=#f99157 guibg=NONE gui=NONE cterm=NONE
    hi cSpecial guifg=#f99157 guibg=NONE gui=NONE cterm=NONE
    hi! link cBraces Delimiter
  endif
  let g:fzf_colors = { "fg": ["fg", "Normal"], "none": ["none", "Normal"], "hl": ["fg", "Conditional"], "fg+": ["fg", "CursorLine", "CursorColumn", "Normal"], "none+": ["none", "CursorLine", "CursorColumn"], "hl+": ["fg", "Conditional"], "info": ["fg", "Conditional"], "border": ["fg", "Ignore"], "prompt": ["fg", "Comment"], "pointer": ["fg", "Conditional"], "marker": ["fg", "Conditional"], "spinner": ["fg", "Conditional"], "header": ["fg", "Conditional"] }
  unlet s:t_Co
  finish
endif

if s:t_Co >= 256
  hi Normal ctermfg=252 ctermbg=235 cterm=NONE
  if !has('patch-8.0.0616') && !has('nvim') " Fix for Vim bug
    set background=dark
  endif
  let g:Vsd = get(g:, 'Vsd', {})
  silent! call vsd#init('tomorrow_eighties')
  hi EndOfBuffer ctermfg=237 ctermbg=NONE cterm=NONE
  hi LineNr ctermfg=237 ctermbg=NONE cterm=NONE
  hi NonText ctermfg=243 ctermbg=NONE cterm=NONE
  hi Search ctermfg=235 ctermbg=241 cterm=NONE
  hi IncSearch ctermfg=235 ctermbg=209 cterm=bold
  hi TabLine ctermfg=237 ctermbg=fg cterm=reverse
  hi TabLineFill ctermfg=237 ctermbg=fg cterm=reverse
  hi StatusLine ctermfg=237 ctermbg=222 cterm=reverse
  hi StatusLineNC ctermfg=237 ctermbg=fg cterm=reverse
  hi StatusLineTerm ctermfg=237 ctermbg=222 cterm=reverse
  hi StatusLineTermNC ctermfg=237 ctermbg=fg cterm=reverse
  hi VertSplit ctermfg=235 ctermbg=237 cterm=NONE
  hi Visual ctermfg=NONE ctermbg=24 cterm=NONE
  hi VisualNOS ctermfg=NONE ctermbg=24 cterm=NONE
  hi Directory ctermfg=67 ctermbg=NONE cterm=NONE
  hi ModeMsg ctermfg=151 ctermbg=NONE cterm=NONE
  hi MoreMsg ctermfg=151 ctermbg=NONE cterm=NONE
  hi Question ctermfg=151 ctermbg=NONE cterm=NONE
  hi WarningMsg ctermfg=210 ctermbg=NONE cterm=NONE
  hi MatchParen ctermfg=210 ctermbg=237 cterm=bold
  hi Folded ctermfg=243 ctermbg=NONE cterm=NONE
  hi FoldColumn ctermfg=fg ctermbg=NONE cterm=NONE
  hi CursorLine ctermfg=NONE ctermbg=237 cterm=NONE
  hi CursorLineNr ctermfg=222 ctermbg=NONE cterm=NONE
  hi CursorColumn ctermfg=fg ctermbg=237 cterm=NONE
  hi SignColumn ctermfg=fg ctermbg=NONE cterm=NONE
  hi ColorColumn ctermfg=fg ctermbg=237 cterm=NONE
  hi Comment ctermfg=243 ctermbg=NONE cterm=NONE
  hi Todo ctermfg=243 ctermbg=NONE cterm=NONE
  hi Title ctermfg=222 ctermbg=NONE cterm=NONE
  hi Constant ctermfg=209 ctermbg=NONE cterm=NONE
  hi String ctermfg=151 ctermbg=NONE cterm=NONE
  hi Identifier ctermfg=210 ctermbg=NONE cterm=NONE
  hi Function ctermfg=39 ctermbg=NONE cterm=NONE
  hi Statement ctermfg=210 ctermbg=NONE cterm=NONE
  hi Conditional ctermfg=182 ctermbg=NONE cterm=NONE
  hi Repeat ctermfg=182 ctermbg=NONE cterm=NONE
  hi Label ctermfg=182 ctermbg=NONE cterm=NONE
  hi Operator ctermfg=80 ctermbg=NONE cterm=NONE
  hi Type ctermfg=67 ctermbg=NONE cterm=NONE
  hi Structure ctermfg=67 ctermbg=NONE cterm=NONE
  hi Special ctermfg=241 ctermbg=NONE cterm=NONE
  hi SpecialKey ctermfg=241 ctermbg=NONE cterm=NONE
  hi PreProc ctermfg=182 ctermbg=NONE cterm=NONE
  hi Define ctermfg=182 ctermbg=NONE cterm=NONE
  hi Include ctermfg=182 ctermbg=NONE cterm=NONE
  hi SpellBad ctermfg=210 ctermbg=NONE cterm=undercurl
  hi SpellCap ctermfg=209 ctermbg=NONE cterm=undercurl
  hi SpellLocal ctermfg=209 ctermbg=NONE cterm=undercurl
  hi SpellRare ctermfg=182 ctermbg=NONE cterm=undercurl
  hi Pmenu ctermfg=fg ctermbg=0 cterm=NONE
  hi PmenuSel ctermfg=0 ctermbg=182 cterm=NONE
  hi PmenuSbar ctermfg=235 ctermbg=235 cterm=NONE
  hi PmenuThumb ctermfg=182 ctermbg=182 cterm=NONE
  hi DiffAdd ctermfg=NONE ctermbg=24 cterm=NONE
  hi DiffChange ctermfg=NONE ctermbg=236 cterm=NONE
  hi DiffDelete ctermfg=235 ctermbg=88 cterm=bold
  hi DiffText ctermfg=NONE ctermbg=88 cterm=bold
  hi Cursor ctermfg=235 ctermbg=151 cterm=NONE
  hi! link QuickFixLine Search
  hi! link Delimiter Special
  hi Underlined ctermfg=67 ctermbg=NONE cterm=underline
  hi diffAdded ctermfg=151 ctermbg=NONE cterm=NONE
  hi diffRemoved ctermfg=210 ctermbg=NONE cterm=NONE
  hi gitcommitSummary ctermfg=fg ctermbg=NONE cterm=bold
  hi Command ctermfg=210 ctermbg=NONE cterm=NONE
  hi Error ctermfg=210 ctermbg=NONE cterm=NONE
  hi ErrorMsg ctermfg=210 ctermbg=NONE cterm=NONE
  hi Ignore ctermfg=237 ctermbg=NONE cterm=NONE
  hi Conceal ctermfg=237 ctermbg=NONE cterm=NONE
  hi GitGutterAdd ctermfg=151 ctermbg=NONE cterm=NONE
  hi GitGutterChange ctermfg=241 ctermbg=NONE cterm=NONE
  hi GitGutterChangeDelete ctermfg=241 ctermbg=NONE cterm=NONE
  hi GitGutterDelete ctermfg=210 ctermbg=NONE cterm=NONE
  hi SignifySignAdd ctermfg=151 ctermbg=NONE cterm=NONE
  hi SignifySignChange ctermfg=241 ctermbg=NONE cterm=NONE
  hi SignifySignChangeDelete ctermfg=241 ctermbg=NONE cterm=NONE
  hi SignifySignDelete ctermfg=210 ctermbg=NONE cterm=NONE
  if get(g:Vsd, 'extra_highlight', 1)
    hi! link helpCommand Type
    hi! link helpSectionDelim Directory
    hi! link helpHeader PreProc
    hi! link helpHeadline Statement
    hi! link helpHyperTextEntry String
    hi! link helpHyperTextJump Identifier
    hi! link helpExample Comment
    hi! link helpOption Type
    hi! link helpSpecial Special
    hi pythonBytesEscape ctermfg=209 ctermbg=NONE cterm=NONE
    hi pythonStrFormat ctermfg=209 ctermbg=NONE cterm=NONE
    hi pythonStrFormatting ctermfg=209 ctermbg=NONE cterm=NONE
    hi cSpecial ctermfg=209 ctermbg=NONE cterm=NONE
    hi! link cBraces Delimiter
  endif
  let g:fzf_colors = { "fg": ["fg", "Normal"], "none": ["none", "Normal"], "hl": ["fg", "Conditional"], "fg+": ["fg", "CursorLine", "CursorColumn", "Normal"], "none+": ["none", "CursorLine", "CursorColumn"], "hl+": ["fg", "Conditional"], "info": ["fg", "Conditional"], "border": ["fg", "Ignore"], "prompt": ["fg", "Comment"], "pointer": ["fg", "Conditional"], "marker": ["fg", "Conditional"], "spinner": ["fg", "Conditional"], "header": ["fg", "Conditional"] }
  unlet s:t_Co
  finish
endif

" Background: dark
" Color:	black		#1e1e1e		0	Black
" Color:	darkred		#730b00		88	DarkRed
" Color:	darkgreen	#008000		2	DarkGreen
" Color:	orange		#f99157		209	DarkYellow
" Color:	darkblue	#073655		24	DarkBlue
" Color:	darkmagenta	#800080		5	DarkMagenta
" Color:	darkcyan	#66cccc		80	DarkCyan
" Color:	foreground	#cccccc		252	LightGray
" Color:	darkgray	#333233		236	DarkGray
" Color:	red		#f2777a		210	Red
" Color:	green		#99cc99		151	Green
" Color:	yellow		#ffcc66		222	Yellow
" Color:	blue		#6699cc		67	Blue
" Color:	magenta		#ff00ff		13	Magenta
" Color:	cyan		#00ffff		14	Cyan
" Color:	white		#ffffff		15	White
" Color:	background	#262626 ~
" Color:	selection	#264f78 ~
" Color:	comment		#777777 ~
" Color:	brightblue	#61afef ~
" Color:	purple		#cc99cc ~
" Color:	window		#393939 ~
" Color:	special		#666666 ~
" Color:  term0  		#000000 ~
" Color:  term8  		#666666 ~
" Color:  term9  		#ff3334 ~
" Color:  term10 		#9ec400 ~
" Color:  term13 		#b777e0 ~
" Color:  term14 		#54ced6 ~
" Term Colors: term0	red	green		orange
" Term Colors: blue	purple	darkcyan	window
" Term Colors: term8	term9	term10		yellow
" Term Colors: blue	term13	term14		window
" vim: et ts=2 sw=2
