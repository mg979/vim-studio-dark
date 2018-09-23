" Name:         Vim Studio Light
" Author:       Gianmaria Bajo <mg1979.git@gmail.com>
" Maintainer:   Gianmaria Bajo <mg1979.git@gmail.com>
" License:      Vim License (see `:help license`)
" Last Updated: dom 23 set 2018 14:45:36 CEST

if &background == 'dark'
  exe "so ".fnamemodify(expand('<sfile>:p'), ":h")."/vsdark.vim"
  finish
endif

if !(has('termguicolors') && &termguicolors) && !has('gui_running')
      \ && (!exists('&t_Co') || &t_Co < 256)
  echoerr '[Vim Studio Light] There are not enough colors.'
  finish
endif

set background=light

hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'vslight'

call vsd#init()
let s:load_for = { ft -> g:VSD[ft] || g:VSD.extra_syntax }

hi Normal ctermfg=234 ctermbg=250 guifg=#1e1e1e guibg=#bdbdbd guisp=NONE cterm=NONE gui=NONE
hi MatchParen ctermfg=196 ctermbg=bg guifg=#ff0000 guibg=bg guisp=NONE cterm=NONE gui=NONE
hi CursorLineNr ctermfg=21 ctermbg=bg guifg=#2222ff guibg=bg guisp=NONE cterm=NONE gui=NONE
hi Visual ctermfg=NONE ctermbg=248 guifg=NONE guibg=#aaaaaa guisp=NONE cterm=NONE gui=NONE
hi VisualNOS ctermfg=NONE ctermbg=248 guifg=NONE guibg=#aaaaaa guisp=NONE cterm=NONE gui=NONE
hi Folded ctermfg=21 ctermbg=bg guifg=#2222ff guibg=bg guisp=NONE cterm=NONE gui=NONE
hi FoldColumn ctermfg=21 ctermbg=bg guifg=#2222ff guibg=bg guisp=NONE cterm=NONE gui=NONE
hi IncSearch ctermfg=196 ctermbg=214 guifg=#ff0000 guibg=#ffbc29 guisp=NONE cterm=NONE gui=NONE
hi Search ctermfg=25 ctermbg=223 guifg=#0070af guibg=#f2c38f guisp=NONE cterm=NONE gui=NONE
hi WildMenu ctermfg=bg ctermbg=25 guifg=bg guibg=#0070af guisp=NONE cterm=NONE gui=NONE
hi Question ctermfg=21 ctermbg=214 guifg=#2222ff guibg=#ffbc29 guisp=NONE cterm=NONE gui=NONE
hi MoreMsg ctermfg=21 ctermbg=bg guifg=#2222ff guibg=bg guisp=NONE cterm=NONE gui=NONE
hi ModeMsg ctermfg=21 ctermbg=bg guifg=#2222ff guibg=bg guisp=NONE cterm=NONE gui=NONE
hi StatusLine ctermfg=25 ctermbg=248 guifg=#0070af guibg=#aaaaaa guisp=NONE cterm=NONE gui=NONE
hi StatusLineTerm ctermfg=25 ctermbg=248 guifg=#0070af guibg=#aaaaaa guisp=NONE cterm=NONE gui=NONE
hi StatusLineNC ctermfg=fg ctermbg=bg guifg=fg guibg=bg guisp=NONE cterm=NONE gui=NONE
hi StatusLineTermNC ctermfg=fg ctermbg=bg guifg=fg guibg=bg guisp=NONE cterm=NONE gui=NONE
hi Error ctermfg=196 ctermbg=bg guifg=#ff0000 guibg=bg guisp=NONE cterm=NONE gui=NONE
hi ErrorMsg ctermfg=196 ctermbg=bg guifg=#ff0000 guibg=bg guisp=NONE cterm=NONE gui=NONE
hi WarningMsg ctermfg=174 ctermbg=bg guifg=#df8c8c guibg=bg guisp=NONE cterm=NONE gui=NONE
hi SpellBad ctermfg=174 ctermbg=bg guifg=#df8c8c guibg=bg guisp=NONE cterm=NONE gui=NONE
hi SpellCap ctermfg=174 ctermbg=bg guifg=#df8c8c guibg=bg guisp=NONE cterm=NONE gui=NONE
hi Todo ctermfg=21 ctermbg=bg guifg=#2222ff guibg=bg guisp=NONE cterm=NONE gui=NONE
hi Pmenu ctermfg=236 ctermbg=248 guifg=#333333 guibg=#aaaaaa guisp=NONE cterm=NONE gui=NONE
hi PmenuSel ctermfg=bg ctermbg=25 guifg=bg guibg=#0070af guisp=NONE cterm=NONE gui=NONE
hi PmenuThumb ctermfg=21 ctermbg=21 guifg=#2222ff guibg=#2222ff guisp=NONE cterm=NONE gui=NONE
hi PmenuSbar ctermfg=22 ctermbg=22 guifg=#006600 guibg=#006600 guisp=NONE cterm=NONE gui=NONE
hi DiffAdd ctermfg=fg ctermbg=22 guifg=fg guibg=#006600 guisp=NONE cterm=NONE gui=NONE
hi DiffChange ctermfg=fg ctermbg=223 guifg=fg guibg=#f2c38f guisp=NONE cterm=NONE gui=NONE
hi DiffDelete ctermfg=174 ctermbg=bg guifg=#df8c8c guibg=bg guisp=NONE cterm=NONE gui=NONE
hi DiffText ctermfg=fg ctermbg=223 guifg=fg guibg=#f2c38f guisp=NONE cterm=NONE,bold gui=NONE,bold
hi SignColumn ctermfg=fg ctermbg=bg guifg=fg guibg=bg guisp=NONE cterm=NONE gui=NONE
hi LineNr ctermfg=102 ctermbg=bg guifg=#888888 guibg=bg guisp=NONE cterm=NONE gui=NONE
hi CursorLine ctermfg=fg ctermbg=248 guifg=fg guibg=#aaaaaa guisp=NONE cterm=NONE gui=NONE
hi CursorColumn ctermfg=fg ctermbg=248 guifg=fg guibg=#aaaaaa guisp=NONE cterm=NONE gui=NONE
hi ColorColumn ctermfg=fg ctermbg=248 guifg=fg guibg=#aaaaaa guisp=NONE cterm=NONE gui=NONE
hi EndOfBuffer ctermfg=255 ctermbg=bg guifg=#f2f2f2 guibg=bg guisp=NONE cterm=NONE gui=NONE
hi VertSplit ctermfg=25 ctermbg=25 guifg=#0070af guibg=#0070af guisp=NONE cterm=NONE gui=NONE
hi TabLine ctermfg=fg ctermbg=248 guifg=fg guibg=#aaaaaa guisp=NONE cterm=NONE gui=NONE
hi TabLineSel ctermfg=248 ctermbg=21 guifg=#aaaaaa guibg=#2222ff guisp=NONE cterm=NONE gui=NONE
hi TabLineFill ctermfg=fg ctermbg=248 guifg=fg guibg=#aaaaaa guisp=NONE cterm=NONE gui=NONE
hi ToolbarLine ctermfg=248 ctermbg=21 guifg=#aaaaaa guibg=#2222ff guisp=NONE cterm=NONE gui=NONE
hi ToolbarButton ctermfg=21 ctermbg=248 guifg=#2222ff guibg=#aaaaaa guisp=NONE cterm=NONE gui=NONE
hi String ctermfg=124 ctermbg=bg guifg=#a31515 guibg=bg guisp=NONE cterm=NONE gui=NONE
hi Constant ctermfg=54 ctermbg=bg guifg=#6f008a guibg=bg guisp=NONE cterm=NONE gui=NONE
hi Directory ctermfg=21 ctermbg=bg guifg=#2222ff guibg=bg guisp=NONE cterm=NONE gui=NONE
hi Identifier ctermfg=236 ctermbg=bg guifg=#333333 guibg=bg guisp=NONE cterm=NONE,italic gui=NONE,italic
hi Function ctermfg=236 ctermbg=bg guifg=#333333 guibg=bg guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Conditional ctermfg=21 ctermbg=bg guifg=#2222ff guibg=bg guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Statement ctermfg=21 ctermbg=bg guifg=#2222ff guibg=bg guisp=NONE cterm=NONE,bold gui=NONE,bold
hi Operator ctermfg=236 ctermbg=bg guifg=#333333 guibg=bg guisp=NONE cterm=NONE gui=NONE
hi Number ctermfg=fg ctermbg=bg guifg=fg guibg=bg guisp=NONE cterm=NONE gui=NONE
hi Type ctermfg=21 ctermbg=bg guifg=#2222ff guibg=bg guisp=NONE cterm=NONE gui=NONE
hi PreProc ctermfg=54 ctermbg=bg guifg=#6f008a guibg=bg guisp=NONE cterm=NONE gui=NONE
hi Keyword ctermfg=54 ctermbg=bg guifg=#6f008a guibg=bg guisp=NONE cterm=NONE gui=NONE
hi Underlined ctermfg=175 ctermbg=bg guifg=#d18ec2 guibg=bg guisp=NONE cterm=NONE gui=NONE
hi Special ctermfg=88 ctermbg=bg guifg=#682900 guibg=bg guisp=NONE cterm=NONE gui=NONE
hi SpecialKey ctermfg=88 ctermbg=bg guifg=#682900 guibg=bg guisp=NONE cterm=NONE gui=NONE
hi NonText ctermfg=25 ctermbg=bg guifg=#0070af guibg=bg guisp=NONE cterm=NONE gui=NONE
hi Title ctermfg=25 ctermbg=bg guifg=#0070af guibg=bg guisp=NONE cterm=NONE gui=NONE
hi Comment ctermfg=22 ctermbg=bg guifg=#006600 guibg=bg guisp=NONE cterm=NONE gui=NONE
hi Ignore ctermfg=22 ctermbg=bg guifg=#006600 guibg=bg guisp=NONE cterm=NONE gui=NONE
hi Conceal ctermfg=22 ctermbg=bg guifg=#006600 guibg=bg guisp=NONE cterm=NONE gui=NONE
hi Cursor ctermfg=22 ctermbg=bg guifg=#006600 guibg=bg guisp=NONE cterm=NONE gui=NONE
hi Command ctermfg=54 ctermbg=bg guifg=#6f008a guibg=bg guisp=NONE cterm=NONE gui=NONE
hi! link QuickFixLine Search
hi GitGutterAdd ctermfg=22 ctermbg=bg guifg=#006600 guibg=bg guisp=NONE cterm=NONE gui=NONE
hi GitGutterChange ctermfg=88 ctermbg=bg guifg=#682900 guibg=bg guisp=NONE cterm=NONE gui=NONE
hi GitGutterChangeDelete ctermfg=88 ctermbg=bg guifg=#682900 guibg=bg guisp=NONE cterm=NONE gui=NONE
hi GitGutterDelete ctermfg=196 ctermbg=bg guifg=#ff0000 guibg=bg guisp=NONE cterm=NONE gui=NONE
hi SignifySignAdd ctermfg=22 ctermbg=bg guifg=#006600 guibg=bg guisp=NONE cterm=NONE gui=NONE
hi SignifySignChange ctermfg=88 ctermbg=bg guifg=#682900 guibg=bg guisp=NONE cterm=NONE gui=NONE
hi SignifySignChangeDelete ctermfg=88 ctermbg=bg guifg=#682900 guibg=bg guisp=NONE cterm=NONE gui=NONE
hi SignifySignDelete ctermfg=196 ctermbg=bg guifg=#ff0000 guibg=bg guisp=NONE cterm=NONE gui=NONE
if s:load_for('vim')
  hi! link vimDocstring String
  hi! link vimConditional Conditional
  hi! link vimRepeat Conditional
  hi! link vimLetVar Identifier
  hi! link helpCommand Type
  hi vimLet ctermfg=236 ctermbg=bg guifg=#333333 guibg=bg guisp=NONE cterm=NONE gui=NONE
  hi vimCall ctermfg=236 ctermbg=bg guifg=#333333 guibg=bg guisp=NONE cterm=NONE gui=NONE
  hi vimSelf ctermfg=44 ctermbg=bg guifg=#42dcd7 guibg=bg guisp=NONE cterm=NONE,italic gui=NONE,italic
endif
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
  hi pythonGlobalVar ctermfg=21 ctermbg=bg guifg=#2222ff guibg=bg guisp=NONE cterm=NONE,italic gui=NONE,italic
  hi pythonFunction ctermfg=54 ctermbg=bg guifg=#6f008a guibg=bg guisp=NONE cterm=NONE,bold gui=NONE,bold
endif
if s:load_for('markdown')
  hi mkdItalic ctermfg=54 ctermbg=bg guifg=#6f008a guibg=bg guisp=NONE cterm=NONE gui=NONE
  hi mkdBold ctermfg=54 ctermbg=bg guifg=#6f008a guibg=bg guisp=NONE cterm=NONE gui=NONE
  hi mkdBoldItalic ctermfg=54 ctermbg=bg guifg=#6f008a guibg=bg guisp=NONE cterm=NONE gui=NONE
  hi mkdListItem ctermfg=88 ctermbg=bg guifg=#682900 guibg=bg guisp=NONE cterm=NONE gui=NONE
  hi mkdID ctermfg=54 ctermbg=bg guifg=#6f008a guibg=bg guisp=NONE cterm=NONE gui=NONE
  hi mkdRule ctermfg=54 ctermbg=bg guifg=#6f008a guibg=bg guisp=NONE cterm=NONE gui=NONE
endif
if s:load_for('cpp')
  hi cppStructure ctermfg=54 ctermbg=bg guifg=#6f008a guibg=bg guisp=NONE cterm=NONE gui=NONE
  hi! link cCharacter String
  hi! link cppOperatorSymbol Operator
endif
call vsd#terminal_light()
call vsd#extras()
call vsd#more_colors()
silent! LightlineTheme Tomorrow_Night_Bright
silent! VMTheme lightblue1
if exists('loaded_xtabline')
  let g:xtabline.Vars.has_reloaded_scheme = 1
  silent! XTabTheme codedark
endif
filetype detect
finish

" Background: light
" Color:	    foreground	#1e1e1e ~
" Color:	    background	#bdbdbd ~
" Color:	    gold	#ffbc29 ~
" Color:	    yellow	#f2c38f ~
" Color:	    darkblue	#2222ff ~
" Color:	    blue	#0070af ~
" Color:	    green	#006600 ~
" Color:	    cyan	#42dcd7 ~
" Color:	    purple	#6f008a ~
" Color:	    pink	#d18ec2 ~
" Color:	    darkgrey	#333333 ~
" Color:	    lightgrey	#aaaaaa ~
" Color:	    grey	#888888 ~
" Color:	    darkred	#a31515 ~
" Color:	    lightred	#df8c8c ~
" Color:	    red		#ff0000 ~
" Color:	    white	#f2f2f2 ~
" Color:	    special	#682900 ~
" Normal				foreground	background
" MatchParen			red		bg
" CursorLineNr			darkblue	bg
" Visual				none		lightgrey
" VisualNOS			none		lightgrey
" Folded				darkblue	bg
" FoldColumn			darkblue	bg
" IncSearch			red		gold
" Search				blue		yellow
" WildMenu			bg		blue
" Question			darkblue	gold
" MoreMsg				darkblue	bg
" ModeMsg				darkblue	bg
" StatusLine			blue	        lightgrey
" StatusLineTerm			blue	        lightgrey
" StatusLineNC			fg		bg
" StatusLineTermNC		fg		bg
" Error				red		bg
" ErrorMsg			red		bg
" WarningMsg			lightred	bg
" SpellBad			lightred	bg
" SpellCap			lightred	bg
" Todo				darkblue	bg
" Pmenu				darkgrey	lightgrey
" PmenuSel			bg		blue
" PmenuThumb			darkblue	darkblue
" PmenuSbar			green		green
" DiffAdd				fg		green
" DiffChange			fg		yellow
" DiffDelete			lightred	bg
" DiffText			fg		yellow bold
" SignColumn			fg		bg
" LineNr				grey 		bg
" CursorLine			fg		lightgrey
" CursorColumn			fg		lightgrey
" ColorColumn			fg		lightgrey
" EndOfBuffer			white		bg
" VertSplit			blue		blue
" TabLine				fg		lightgrey
" TabLineSel			lightgrey	darkblue
" TabLineFill			fg		lightgrey
" ToolbarLine			lightgrey	darkblue
" ToolbarButton			darkblue	lightgrey
" String				darkred		bg
" Constant			purple		bg
" Directory			darkblue	bg
" Identifier			darkgrey	bg italic
" Function			darkgrey	bg bold
" Conditional			darkblue	bg bold
" Statement			darkblue	bg bold
" Operator			darkgrey	bg
" Number				fg		bg
" Type				darkblue	bg
" PreProc				purple		bg
" Keyword				purple		bg
" Underlined			pink		bg
" Special				special		bg
" SpecialKey			special		bg
" NonText				blue		bg
" Title				blue		bg
" Comment				green		bg
" Ignore				green		bg
" Conceal				green		bg
" Cursor				green		bg
" Command				purple		bg
" QuickFixLine		->	Search
" GitGutterAdd			green		bg
" GitGutterChange			special		bg
" GitGutterChangeDelete		special		bg
" GitGutterDelete			red		bg
" SignifySignAdd			green		bg
" SignifySignChange		special		bg
" SignifySignChangeDelete		special		bg
" SignifySignDelete		red		bg
" vimDocstring		->	String
" vimConditional		->	Conditional
" vimRepeat		->	Conditional
" vimLetVar		->	Identifier
" helpCommand		->	Type
" vimLet				darkgrey	bg
" vimCall				darkgrey	bg
" vimSelf				cyan		bg italic
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
" pythonGlobalVar			darkblue	bg italic
" pythonFunction			purple		bg bold
" mkdItalic			purple		 bg
" mkdBold				purple		 bg
" mkdBoldItalic			purple		 bg
" mkdListItem			special		 bg
" mkdID				purple		 bg
" mkdRule				purple		 bg
" cppStructure			purple		bg
" cCharacter		->	String
" cppOperatorSymbol	->	Operator
