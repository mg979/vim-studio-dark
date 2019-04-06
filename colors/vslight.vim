" Name:         Vim Studio Light
" Author:       Gianmaria Bajo <mg1979.git@gmail.com>
" Maintainer:   Gianmaria Bajo <mg1979.git@gmail.com>
" License:      Vim License (see `:help license`)
" Last Updated: sab 06 apr 2019 13:50:59 CEST

if !(has('termguicolors') && &termguicolors) && !has('gui_running')
      \ && (!exists('&t_Co') || &t_Co < 256)
  echoerr '[Vim Studio Light] There are not enough colors.'
  finish
endif

if &background == 'dark'
  exe "so ".fnamemodify(expand('<sfile>:p'), ":h")."/vsdark.vim"
  finish
endif

set background=light

hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'vslight'

call vsd#init()
let s:load_for = { ft -> g:Vsd[ft] || g:Vsd.extra_syntax }

hi Normal ctermfg=234 ctermbg=250 guifg=#1e1e1e guibg=#bdbdbd guisp=NONE cterm=NONE gui=NONE
let contrast = [ ['#a8a8a8', '248'],
      \['#b2b2b2', '249'],
      \['#bdbdbd', '250']]
let gui  = contrast[g:Vsd.contrast][0]
let term = contrast[g:Vsd.contrast][1]
exe "hi! Normal guibg=".gui." ctermbg=".term
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
hi Conditional ctermfg=21 ctermbg=NONE guifg=#2222ff guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Statement ctermfg=21 ctermbg=NONE guifg=#2222ff guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Operator ctermfg=236 ctermbg=NONE guifg=#333333 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Number ctermfg=fg ctermbg=NONE guifg=fg guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Type ctermfg=21 ctermbg=NONE guifg=#2222ff guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi PreProc ctermfg=54 ctermbg=NONE guifg=#6f008a guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Keyword ctermfg=54 ctermbg=NONE guifg=#6f008a guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Underlined ctermfg=54 ctermbg=NONE guifg=#6f008a guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Special ctermfg=88 ctermbg=NONE guifg=#682900 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi SpecialKey ctermfg=88 ctermbg=NONE guifg=#682900 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi NonText ctermfg=25 ctermbg=NONE guifg=#0070af guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Title ctermfg=25 ctermbg=NONE guifg=#0070af guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Comment ctermfg=22 ctermbg=NONE guifg=#006600 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Ignore ctermfg=22 ctermbg=NONE guifg=#006600 guibg=NONE guisp=NONE cterm=NONE gui=NONE
hi Conceal ctermfg=22 ctermbg=NONE guifg=#006600 guibg=NONE guisp=NONE cterm=NONE gui=NONE
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
if s:load_for('vim')
  hi! link vimDocstring String
  hi! link vimEndBlock Conditional
  hi! link vimConditional Conditional
  hi! link vimRepeat Conditional
  hi! link helpCommand Type
  hi vimLet ctermfg=236 ctermbg=NONE guifg=#333333 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi vimCall ctermfg=236 ctermbg=NONE guifg=#333333 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi vimSelf ctermfg=25 ctermbg=NONE guifg=#0070af guibg=NONE guisp=NONE cterm=NONE,italic gui=NONE,italic
  hi vimUserFunc ctermfg=234 ctermbg=NONE guifg=#1e1e1e guibg=NONE guisp=NONE cterm=NONE gui=NONE
endif
hi! link helpCommand Type
hi! link helpSectionDelim PreProc
hi! link HelpHeadline Statement
if s:load_for('python')
  hi! link pythonSelf Identifier
  hi! link pythonOperatorSymbol Operator
  hi! link pythonBraces Special
  hi! link pythonStringType Statement
  hi! link pythonOperator Statement
  hi! link pythonBoolean Command
  hi! link pythonNone Command
  hi! link pythonStructure Keyword
  hi! link pythonStorageClass Keyword
  hi! link pythonTypeDef Keyword
  hi pythonGlobalVar ctermfg=21 ctermbg=NONE guifg=#2222ff guibg=NONE guisp=NONE cterm=NONE,italic gui=NONE,italic
  hi pythonFunction ctermfg=54 ctermbg=NONE guifg=#6f008a guibg=NONE guisp=NONE cterm=NONE,bold gui=NONE,bold
  hi! link pythonBuiltinFunc Function
endif
if s:load_for('markdown')
  hi mkdItalic ctermfg=54 ctermbg=NONE guifg=#6f008a guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi mkdBold ctermfg=54 ctermbg=NONE guifg=#6f008a guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi mkdBoldItalic ctermfg=54 ctermbg=NONE guifg=#6f008a guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi mkdListItem ctermfg=88 ctermbg=NONE guifg=#682900 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi mkdID ctermfg=54 ctermbg=NONE guifg=#6f008a guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi mkdRule ctermfg=54 ctermbg=NONE guifg=#6f008a guibg=NONE guisp=NONE cterm=NONE gui=NONE
endif
if s:load_for('cpp')
  hi cppStructure ctermfg=54 ctermbg=NONE guifg=#6f008a guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi cStorageClass ctermfg=196 ctermbg=NONE guifg=#ff0000 guibg=NONE guisp=NONE cterm=NONE gui=NONE
  hi! link cCharacter String
  hi! link cppOperatorSymbol Operator
endif
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
call vsd#extras()
finish

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
" Conditional			darkblue	none bold
" Statement			darkblue	none bold
" Operator			darkgrey	none
" Number				fg		none
" Type				darkblue	none
" PreProc				purple		none
" Keyword				purple		none
" Underlined			purple		none
" Special				special		none
" SpecialKey			special		none
" NonText				blue		none
" Title				blue		none
" Comment				green		none
" Ignore				green		none
" Conceal				green		none
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
" vimDocstring		->	String
" vimEndBlock   		->	Conditional
" vimConditional		->	Conditional
" vimRepeat		->	Conditional
" helpCommand		->	Type
" vimLet				darkgrey	none
" vimCall				darkgrey	none
" vimSelf				blue		none italic
" vimUserFunc			foreground	none
" helpCommand		->	Type
" helpSectionDelim	->	PreProc
" HelpHeadline		->	Statement
" pythonSelf		->	Identifier
" pythonOperatorSymbol	->	Operator
" pythonBraces		->	Special
" pythonStringType	->	Statement
" pythonOperator		->	Statement
" pythonBoolean		->	Command
" pythonNone		->	Command
" pythonStructure		->	Keyword
" pythonStorageClass	->	Keyword
" pythonTypeDef		->	Keyword
" pythonGlobalVar			darkblue	none italic
" pythonFunction			purple		none bold
" pythonBuiltinFunc    	->	Function
" mkdItalic			purple		 none
" mkdBold				purple		 none
" mkdBoldItalic			purple		 none
" mkdListItem			special		 none
" mkdID				purple		 none
" mkdRule				purple		 none
" cppStructure			purple		none
" cStorageClass			red		none
" cCharacter		->	String
" cppOperatorSymbol	->	Operator
