" Name:         Sand
" Author:       Gianmaria Bajo <mg1979.git@gmail.com>
" Maintainer:   Gianmaria Bajo <mg1979.git@gmail.com>
" License:      Vim License (see `:help license`)
" Last Updated: sab 06 ott 2018 17:47:57 CEST

if !(has('termguicolors') && &termguicolors) && !has('gui_running')
      \ && (!exists('&t_Co') || &t_Co < 256)
  echoerr '[Sand] There are not enough colors.'
  finish
endif

set background=dark

hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'sand'

call vsd#init()
let s:load_for = { ft -> g:VSD[ft] || g:VSD.extra_syntax }


" highlight groups
hi Cursor	guibg=khaki guifg=slategrey
hi VertSplit	guibg=#c2bfa5 guifg=grey50 gui=none
hi Folded	guibg=grey30 guifg=gold
hi FoldColumn	guibg=grey30 guifg=tan
hi IncSearch	guifg=slategrey guibg=khaki
hi ModeMsg	guifg=goldenrod
hi MoreMsg	guifg=SeaGreen
hi NonText	guifg=LightBlue guibg=grey30
hi Question	guifg=springgreen
hi Search	guibg=peru guifg=wheat
hi SpecialKey	guifg=yellowgreen
hi StatusLine	guibg=#c2bfa5 guifg=black gui=none
hi StatusLineNC	guibg=#c2bfa5 guifg=grey50 gui=none
hi Title	guifg=indianred
hi Visual	gui=none guifg=khaki guibg=olivedrab
hi WarningMsg	guifg=salmon

" syntax highlighting groups
hi Comment	guifg=SkyBlue
hi Constant	guifg=#ffa0a0
hi Identifier	guifg=palegreen
hi Statement	guifg=khaki
hi PreProc	guifg=indianred
hi Type		guifg=darkkhaki gui=bold
hi Special	guifg=navajowhite
hi Ignore	guifg=grey40
hi Todo		guifg=orangered guibg=yellow2

" color terminal definitions
hi SpecialKey	ctermfg=darkgreen
hi NonText	cterm=bold ctermfg=darkblue
hi Directory	ctermfg=darkcyan
hi ErrorMsg	cterm=bold ctermfg=7 ctermbg=1
hi IncSearch	cterm=NONE ctermfg=yellow ctermbg=green
hi Search	cterm=NONE ctermfg=grey ctermbg=blue
hi MoreMsg	ctermfg=darkgreen
hi ModeMsg	cterm=NONE ctermfg=brown
hi LineNr	ctermfg=3
hi Question	ctermfg=green
hi StatusLine	cterm=bold,reverse
hi StatusLineNC cterm=reverse
hi VertSplit	cterm=reverse
hi Title	ctermfg=5
hi Visual	cterm=reverse
hi VisualNOS	cterm=bold,underline
hi WarningMsg	ctermfg=1
hi WildMenu	ctermfg=0 ctermbg=3
hi Folded	ctermfg=darkgrey ctermbg=NONE
hi FoldColumn	ctermfg=darkgrey ctermbg=NONE
hi DiffAdd	ctermbg=4
hi DiffChange	ctermbg=5
hi DiffDelete	cterm=bold ctermfg=4 ctermbg=6
hi DiffText	cterm=bold ctermbg=1
hi Comment	ctermfg=darkcyan
hi Constant	ctermfg=brown
hi Special	ctermfg=5
hi Identifier	ctermfg=6
hi Statement	ctermfg=3
hi PreProc	ctermfg=5
hi Type		ctermfg=2 cterm=bold
hi Underlined	cterm=underline ctermfg=5
hi Ignore	cterm=bold ctermfg=7
hi Ignore	ctermfg=darkgrey
hi Error	cterm=bold ctermfg=7 ctermbg=1
hi Normal ctermfg=251 ctermbg=236 guifg=#c6c6b9 guibg=#2d2d2d guisp=NONE cterm=NONE gui=NONE
hi Comment ctermfg=242 ctermbg=bg guifg=#6b6a61 guibg=bg guisp=NONE cterm=NONE,italic gui=NONE,italic
hi Folded ctermfg=242 ctermbg=238 guifg=#6b6a61 guibg=#404040 guisp=NONE cterm=NONE gui=NONE
hi LineNr ctermfg=239 ctermbg=bg guifg=#4d4d4d guibg=bg guisp=NONE cterm=NONE,italic gui=NONE,italic
hi SignColumn ctermfg=239 ctermbg=235 guifg=#4d4d4d guibg=#262626 guisp=NONE cterm=NONE,italic gui=NONE,italic
hi VertSplit ctermfg=fg ctermbg=235 guifg=fg guibg=#262626 guisp=NONE cterm=NONE gui=NONE
hi Search ctermfg=255 ctermbg=172 guifg=#e6eef3 guibg=#cd853f guisp=NONE cterm=NONE gui=NONE
hi IncSearch ctermfg=255 ctermbg=167 guifg=#e6eef3 guibg=#cd5c5c guisp=NONE cterm=NONE gui=NONE
hi Pmenu ctermfg=bg ctermbg=101 guifg=bg guibg=#999966 guisp=NONE cterm=NONE gui=NONE
hi PmenuSel ctermfg=fg ctermbg=239 guifg=fg guibg=#4d4d4d guisp=NONE cterm=NONE gui=NONE
hi PmenuSbar ctermfg=bg ctermbg=235 guifg=bg guibg=#262626 guisp=NONE cterm=NONE gui=NONE
hi PmenuThumb ctermfg=101 ctermbg=242 guifg=#999966 guibg=#6b6a61 guisp=NONE cterm=NONE gui=NONE
hi Todo ctermfg=fg ctermbg=167 guifg=fg guibg=#cd5c5c guisp=NONE cterm=NONE,bold gui=NONE,bold
hi NonText ctermfg=236 ctermbg=bg guifg=#333333 guibg=bg guisp=NONE cterm=NONE gui=NONE
hi ColorColumn ctermfg=fg ctermbg=235 guifg=fg guibg=#262626 guisp=NONE cterm=NONE gui=NONE
hi Cursor ctermfg=bg ctermbg=180 guifg=bg guibg=#dfaf87 guisp=NONE cterm=NONE gui=NONE
hi CursorLine ctermfg=fg ctermbg=238 guifg=fg guibg=#404040 guisp=NONE cterm=NONE gui=NONE
hi! link CursorColumn CursorLine
hi Identifier ctermfg=fg ctermbg=bg guifg=fg guibg=bg guisp=NONE cterm=NONE gui=NONE
hi Statement ctermfg=150 ctermbg=bg guifg=#a8ce93 guibg=bg guisp=NONE cterm=NONE gui=NONE
hi String ctermfg=245 ctermbg=bg guifg=#8d8d8d guibg=bg guisp=NONE cterm=NONE gui=NONE
hi PreProc ctermfg=182 ctermbg=bg guifg=#c9acd2 guibg=bg guisp=NONE cterm=NONE gui=NONE
hi Special ctermfg=223 ctermbg=bg guifg=#f2c38f guibg=bg guisp=NONE cterm=NONE gui=NONE
hi Title ctermfg=173 ctermbg=bg guifg=#ed8e5e guibg=bg guisp=NONE cterm=NONE gui=NONE
hi DiffChange ctermfg=NONE ctermbg=239 guifg=NONE guibg=#4d4d4d guisp=NONE cterm=NONE gui=NONE
hi DiffDelete ctermfg=167 ctermbg=bg guifg=#cd5c5c guibg=bg guisp=NONE cterm=NONE,bold gui=NONE,bold
hi DiffText ctermfg=NONE ctermbg=88 guifg=NONE guibg=#730b00 guisp=NONE cterm=NONE,bold gui=NONE,bold
hi diffAdded ctermfg=71 ctermbg=bg guifg=#7ab87a guibg=bg guisp=NONE cterm=NONE gui=NONE
hi diffChanged ctermfg=223 ctermbg=bg guifg=#f2c38f guibg=bg guisp=NONE cterm=NONE gui=NONE
hi diffRemoved ctermfg=167 ctermbg=bg guifg=#cd5c5c guibg=bg guisp=NONE cterm=NONE gui=NONE
hi diffDiffer ctermfg=223 ctermbg=bg guifg=#f2c38f guibg=bg guisp=NONE cterm=NONE,bold gui=NONE,bold
hi diffFile ctermfg=245 ctermbg=bg guifg=#8d8d8d guibg=bg guisp=NONE cterm=NONE,bold gui=NONE,bold
hi diffLine ctermfg=101 ctermbg=bg guifg=#999966 guibg=bg guisp=NONE cterm=NONE,italic gui=NONE,italic
hi GitGutterAdd ctermfg=71 ctermbg=bg guifg=#7ab87a guibg=bg guisp=NONE cterm=NONE gui=NONE
hi GitGutterChange ctermfg=223 ctermbg=bg guifg=#f2c38f guibg=bg guisp=NONE cterm=NONE gui=NONE
hi GitGutterChangeDelete ctermfg=223 ctermbg=bg guifg=#f2c38f guibg=bg guisp=NONE cterm=NONE gui=NONE
hi GitGutterDelete ctermfg=167 ctermbg=bg guifg=#cd5c5c guibg=bg guisp=NONE cterm=NONE gui=NONE
hi SignifySignAdd ctermfg=71 ctermbg=bg guifg=#7ab87a guibg=bg guisp=NONE cterm=NONE gui=NONE
hi SignifySignChange ctermfg=223 ctermbg=bg guifg=#f2c38f guibg=bg guisp=NONE cterm=NONE gui=NONE
hi SignifySignChangeDelete ctermfg=223 ctermbg=bg guifg=#f2c38f guibg=bg guisp=NONE cterm=NONE gui=NONE
hi SignifySignDelete ctermfg=167 ctermbg=bg guifg=#cd5c5c guibg=bg guisp=NONE cterm=NONE gui=NONE
"call vsd#extras()
"call vsd#more_colors()
silent! LightlineTheme seoul256
silent! VMTheme sand
if exists('loaded_xtabline')
  let g:xtabline.Vars.has_reloaded_scheme = 1
  silent! XTabTheme tomorrow
endif
filetype detect
" Neovim terminal colors
let g:terminal_color_foreground = "#e6e1dc"
let g:terminal_color_background = "#2b2b2b"
let g:terminal_color_0 = "#2b2b2b"
let g:terminal_color_8 = "#5a647e"
let g:terminal_color_1 = "#da4939"
let g:terminal_color_9 = "#da4939"
let g:terminal_color_2 = "#a5c261"
let g:terminal_color_10 = "#a5c261"
let g:terminal_color_3 = "#ffc66d"
let g:terminal_color_11 = "#ffc66d"
let g:terminal_color_4 = "#6d9cbe"
let g:terminal_color_12 = "#6d9cbe"
let g:terminal_color_5 = "#b6b3eb"
let g:terminal_color_13 = "#b6b3eb"
let g:terminal_color_6 = "#519f50"
let g:terminal_color_14 = "#519f50"
let g:terminal_color_7 = "#e6e1dc"
let g:terminal_color_15 = "#f9f7f3"
finish

" Background: dark
" Color:	    background		#2d2d2d ~
" Color:	    foreground		#c6c6b9 ~
" Color:	    lightgrey		#6b6a61 ~
" Color:	    black		#262626 ~
" Color:	    grey		#4d4d4d ~
" Color:	    grey2		#404040 ~
" Color:	    darkgrey		#333333 ~
" Color:	    sepia		#999966 ~
" Color:	    title		#ed8e5e ~
" Color:	    peru		#cd853f ~
" Color:	    white		#e6eef3 ~
" Color:	    red			#cd5c5c ~
" Color:	    darkred		#730b00 ~
" Color:	    lightgreen		#a8ce93 ~
" Color:	    green		#7ab87a ~
" Color:	    pink		#c9acd2 ~
" Color:	    special		#f2c38f ~
" Color:	    cursor 		#dfaf87 ~
" Color:	    string		#8d8d8d ~
" Normal				foreground		background
" Comment				lightgrey		bg italic
" Folded				lightgrey		grey2
" LineNr				grey			bg italic
" SignColumn			grey			black italic
" VertSplit			fg			black
" Search				white			peru
" IncSearch			white			red
" Pmenu				bg			sepia
" PmenuSel			fg			grey
" PmenuSbar			bg			black
" PmenuThumb			sepia			lightgrey
" Todo				fg			red bold
" NonText				darkgrey		bg
" ColorColumn			fg			black
" Cursor			        bg			cursor
" CursorLine			fg			grey2
" CursorColumn		  ->	CursorLine
" Identifier			fg			bg
" Statement			lightgreen		bg
" String				string			bg
" PreProc				pink			bg
" Special				special			bg
" Title				title			bg
" DiffChange			none		grey
" DiffDelete			red	        bg bold
" DiffText       			none	        darkred bold
" diffAdded			green	                bg
" diffChanged			special		        bg
" diffRemoved			red	                bg
" diffDiffer			special		        bg bold
" diffFile			string		        bg bold
" diffLine			sepia		        bg italic
" GitGutterAdd			green		bg
" GitGutterChange			special		bg
" GitGutterChangeDelete		special		bg
" GitGutterDelete			red		bg
" SignifySignAdd			green		bg
" SignifySignChange		special		bg
" SignifySignChangeDelete		special		bg
" SignifySignDelete		red		bg
