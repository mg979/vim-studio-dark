" Name:         Vim Studio Dark
" Author:       Gianmaria Bajo <mg1979.git@gmail.com>
" Maintainer:   Gianmaria Bajo <mg1979.git@gmail.com>
" License:      Vim License (see `:help license`)
" Last Updated: sab 22 set 2018 19:19:53 CEST

if &background == 'light'
  exe "so ".fnamemodify(expand('<sfile>:p'), ":h")."/vslight.vim"
  finish
endif

if !(has('termguicolors') && &termguicolors) && !has('gui_running')
      \ && (!exists('&t_Co') || &t_Co < 256)
  echoerr '[Vim Studio Dark] There are not enough colors.'
  finish
endif

set background=dark

hi clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'vsdark'

call vsd#init()
let s:load_for = { ft -> g:VSD[ft] || g:VSD.extra_syntax }

hi Normal ctermfg=252 ctermbg=234 guifg=#c5d4dd guibg=#1e1e1e guisp=NONE cterm=NONE gui=NONE
hi MatchParen ctermfg=196 ctermbg=bg guifg=#ff0000 guibg=bg guisp=NONE cterm=NONE gui=NONE
hi CursorLineNr ctermfg=39 ctermbg=bg guifg=#569cd6 guibg=bg guisp=NONE cterm=NONE gui=NONE
hi Visual ctermfg=NONE ctermbg=24 guifg=NONE guibg=#264f78 guisp=NONE cterm=NONE gui=NONE
hi VisualNOS ctermfg=NONE ctermbg=24 guifg=NONE guibg=#264f78 guisp=NONE cterm=NONE gui=NONE
hi Folded ctermfg=39 ctermbg=bg guifg=#569cd6 guibg=bg guisp=NONE cterm=NONE gui=NONE
hi FoldColumn ctermfg=39 ctermbg=bg guifg=#569cd6 guibg=bg guisp=NONE cterm=NONE gui=NONE
hi IncSearch ctermfg=236 ctermbg=174 guifg=#333233 guibg=#df8c8c guisp=NONE cterm=NONE gui=NONE
hi Search ctermfg=NONE ctermbg=239 guifg=NONE guibg=#4c4e50 guisp=NONE cterm=NONE gui=NONE
hi ToolbarButton ctermfg=109 ctermbg=39 guifg=#7fc1ca guibg=#569cd6 guisp=NONE cterm=NONE gui=NONE
hi Question ctermfg=39 ctermbg=bg guifg=#569cd6 guibg=bg guisp=NONE cterm=NONE gui=NONE
hi MoreMsg ctermfg=39 ctermbg=bg guifg=#569cd6 guibg=bg guisp=NONE cterm=NONE gui=NONE
hi ModeMsg ctermfg=39 ctermbg=bg guifg=#569cd6 guibg=bg guisp=NONE cterm=NONE gui=NONE
hi WildMenu ctermfg=fg ctermbg=24 guifg=fg guibg=#073655 guisp=NONE cterm=NONE gui=NONE
hi StatusLine ctermfg=fg ctermbg=239 guifg=fg guibg=#4c4e50 guisp=NONE cterm=NONE gui=NONE
hi StatusLineTerm ctermfg=39 ctermbg=109 guifg=#569cd6 guibg=#7fc1ca guisp=NONE cterm=NONE gui=NONE
hi Error ctermfg=196 ctermbg=bg guifg=#ff0000 guibg=bg guisp=NONE cterm=NONE gui=NONE
hi ErrorMsg ctermfg=196 ctermbg=bg guifg=#ff0000 guibg=bg guisp=NONE cterm=NONE gui=NONE
hi WarningMsg ctermfg=174 ctermbg=bg guifg=#df8c8c guibg=bg guisp=NONE cterm=NONE gui=NONE
hi SpellBad ctermfg=174 ctermbg=bg guifg=#df8c8c guibg=bg guisp=NONE cterm=NONE gui=NONE
hi SpellCap ctermfg=174 ctermbg=bg guifg=#df8c8c guibg=bg guisp=NONE cterm=NONE gui=NONE
hi Todo ctermfg=174 ctermbg=bg guifg=#df8c8c guibg=bg guisp=NONE cterm=NONE gui=NONE
hi Pmenu ctermfg=fg ctermbg=239 guifg=fg guibg=#4c4e50 guisp=NONE cterm=NONE gui=NONE
hi PmenuSel ctermfg=fg ctermbg=24 guifg=fg guibg=#073655 guisp=NONE cterm=NONE gui=NONE
hi PmenuSbar ctermfg=65 ctermbg=65 guifg=#608b4e guibg=#608b4e guisp=NONE cterm=NONE gui=NONE
hi PmenuThumb ctermfg=39 ctermbg=39 guifg=#569cd6 guibg=#569cd6 guisp=NONE cterm=NONE gui=NONE
hi DiffAdd ctermfg=239 ctermbg=150 guifg=#4c4e50 guibg=#a8ce93 guisp=NONE cterm=NONE gui=NONE
hi DiffChange ctermfg=239 ctermbg=223 guifg=#4c4e50 guibg=#f2c38f guisp=NONE cterm=NONE gui=NONE
hi DiffDelete ctermfg=174 ctermbg=bg guifg=#df8c8c guibg=bg guisp=NONE cterm=NONE gui=NONE
hi DiffText ctermfg=239 ctermbg=223 guifg=#4c4e50 guibg=#f2c38f guisp=NONE cterm=NONE,bold gui=NONE,bold
hi diffAdded ctermfg=150 ctermbg=bg guifg=#a8ce93 guibg=bg guisp=NONE cterm=NONE gui=NONE
hi diffChanged ctermfg=223 ctermbg=bg guifg=#f2c38f guibg=bg guisp=NONE cterm=NONE gui=NONE
hi diffRemoved ctermfg=174 ctermbg=bg guifg=#df8c8c guibg=bg guisp=NONE cterm=NONE gui=NONE
hi diffDiffer ctermfg=223 ctermbg=bg guifg=#f2c38f guibg=bg guisp=NONE cterm=NONE,bold gui=NONE,bold
hi diffFile ctermfg=173 ctermbg=bg guifg=#ce9178 guibg=bg guisp=NONE cterm=NONE,bold gui=NONE,bold
hi diffLine ctermfg=186 ctermbg=bg guifg=#dada93 guibg=bg guisp=NONE cterm=NONE,italic gui=NONE,italic
hi SignColumn ctermfg=fg ctermbg=bg guifg=fg guibg=bg guisp=NONE cterm=NONE gui=NONE
hi LineNr ctermfg=109 ctermbg=bg guifg=#7fc1ca guibg=bg guisp=NONE cterm=NONE gui=NONE
hi CursorLine ctermfg=NONE ctermbg=236 guifg=NONE guibg=#333233 guisp=NONE cterm=NONE gui=NONE
hi CursorColumn ctermfg=fg ctermbg=236 guifg=fg guibg=#333233 guisp=NONE cterm=NONE gui=NONE
hi ColorColumn ctermfg=fg ctermbg=236 guifg=fg guibg=#333233 guisp=NONE cterm=NONE gui=NONE
hi EndOfBuffer ctermfg=bg ctermbg=bg guifg=bg guibg=bg guisp=NONE cterm=NONE gui=NONE
hi VertSplit ctermfg=236 ctermbg=235 guifg=#333233 guibg=#212733 guisp=NONE cterm=NONE gui=NONE
hi StatusLineNC ctermfg=fg ctermbg=109 guifg=fg guibg=#7fc1ca guisp=NONE cterm=NONE gui=NONE
hi StatusLineTermNC ctermfg=fg ctermbg=109 guifg=fg guibg=#7fc1ca guisp=NONE cterm=NONE gui=NONE
hi TabLine ctermfg=248 ctermbg=236 guifg=#a9a9a9 guibg=#333233 guisp=NONE cterm=NONE gui=NONE
hi TabLineSel ctermfg=39 ctermbg=239 guifg=#569cd6 guibg=#4c4e50 guisp=NONE cterm=NONE gui=NONE
hi TabLineFill ctermfg=248 ctermbg=236 guifg=#a9a9a9 guibg=#333233 guisp=NONE cterm=NONE gui=NONE
hi ToolbarLine ctermfg=fg ctermbg=109 guifg=fg guibg=#7fc1ca guisp=NONE cterm=NONE gui=NONE
hi String ctermfg=173 ctermbg=bg guifg=#ce9178 guibg=bg guisp=NONE cterm=NONE gui=NONE
hi Constant ctermfg=150 ctermbg=bg guifg=#a8ce93 guibg=bg guisp=NONE cterm=NONE gui=NONE
hi Directory ctermfg=39 ctermbg=bg guifg=#569cd6 guibg=bg guisp=NONE cterm=NONE gui=NONE
hi Identifier ctermfg=251 ctermbg=bg guifg=#c9c6c9 guibg=bg guisp=NONE cterm=NONE,italic gui=NONE,italic
hi Function ctermfg=255 ctermbg=bg guifg=#e6eef3 guibg=bg guisp=NONE cterm=NONE gui=NONE
hi Statement ctermfg=39 ctermbg=bg guifg=#569cd6 guibg=bg guisp=NONE cterm=NONE gui=NONE
hi Conditional ctermfg=39 ctermbg=bg guifg=#569cd6 guibg=bg guisp=NONE cterm=NONE gui=NONE
hi Operator ctermfg=186 ctermbg=bg guifg=#dada93 guibg=bg guisp=NONE cterm=NONE gui=NONE
hi Number ctermfg=109 ctermbg=bg guifg=#7fc1ca guibg=bg guisp=NONE cterm=NONE gui=NONE
hi Type ctermfg=150 ctermbg=bg guifg=#a8ce93 guibg=bg guisp=NONE cterm=NONE gui=NONE
hi Define ctermfg=150 ctermbg=bg guifg=#a8ce93 guibg=bg guisp=NONE cterm=NONE gui=NONE
hi PreProc ctermfg=104 ctermbg=bg guifg=#9a93e1 guibg=bg guisp=NONE cterm=NONE gui=NONE
hi Keyword ctermfg=104 ctermbg=bg guifg=#9a93e1 guibg=bg guisp=NONE cterm=NONE gui=NONE
hi Underlined ctermfg=176 ctermbg=bg guifg=#c586c0 guibg=bg guisp=NONE cterm=NONE gui=NONE
hi Special ctermfg=223 ctermbg=bg guifg=#f2c38f guibg=bg guisp=NONE cterm=NONE gui=NONE
hi SpecialKey ctermfg=223 ctermbg=bg guifg=#f2c38f guibg=bg guisp=NONE cterm=NONE gui=NONE
hi NonText ctermfg=223 ctermbg=bg guifg=#f2c38f guibg=bg guisp=NONE cterm=NONE gui=NONE
hi Title ctermfg=223 ctermbg=bg guifg=#f2c38f guibg=bg guisp=NONE cterm=NONE gui=NONE
hi Comment ctermfg=65 ctermbg=bg guifg=#608b4e guibg=bg guisp=NONE cterm=NONE gui=NONE
hi Ignore ctermfg=65 ctermbg=bg guifg=#608b4e guibg=bg guisp=NONE cterm=NONE gui=NONE
hi Conceal ctermfg=65 ctermbg=bg guifg=#608b4e guibg=bg guisp=NONE cterm=NONE gui=NONE
hi Cursor ctermfg=bg ctermbg=34 guifg=bg guibg=#00af00 guisp=NONE cterm=NONE gui=NONE
hi Command ctermfg=176 ctermbg=bg guifg=#c586c0 guibg=bg guisp=NONE cterm=NONE gui=NONE
hi! link QuickFixLine Search
hi GitGutterAdd ctermfg=34 ctermbg=bg guifg=#00af00 guibg=bg guisp=NONE cterm=NONE gui=NONE
hi GitGutterChange ctermfg=223 ctermbg=bg guifg=#f2c38f guibg=bg guisp=NONE cterm=NONE gui=NONE
hi GitGutterChangeDelete ctermfg=223 ctermbg=bg guifg=#f2c38f guibg=bg guisp=NONE cterm=NONE gui=NONE
hi GitGutterDelete ctermfg=196 ctermbg=bg guifg=#ff0000 guibg=bg guisp=NONE cterm=NONE gui=NONE
hi SignifySignAdd ctermfg=34 ctermbg=bg guifg=#00af00 guibg=bg guisp=NONE cterm=NONE gui=NONE
hi SignifySignChange ctermfg=223 ctermbg=bg guifg=#f2c38f guibg=bg guisp=NONE cterm=NONE gui=NONE
hi SignifySignChangeDelete ctermfg=223 ctermbg=bg guifg=#f2c38f guibg=bg guisp=NONE cterm=NONE gui=NONE
hi SignifySignDelete ctermfg=196 ctermbg=bg guifg=#ff0000 guibg=bg guisp=NONE cterm=NONE gui=NONE
if s:load_for('vim')
  hi! link vimDocstring String
  hi! link vimConditional Conditional
  hi! link vimRepeat Conditional
  hi! link vimLetVar Identifier
  hi! link helpCommand Type
  hi vimLet ctermfg=248 ctermbg=bg guifg=#a9a9a9 guibg=bg guisp=NONE cterm=NONE gui=NONE
  hi vimCall ctermfg=248 ctermbg=bg guifg=#a9a9a9 guibg=bg guisp=NONE cterm=NONE gui=NONE
  hi vimSelf ctermfg=109 ctermbg=bg guifg=#7fc1ca guibg=bg guisp=NONE cterm=NONE,italic gui=NONE,italic
endif
if s:load_for('python')
  hi! link pythonSelf Identifier
  hi! link pythonOperatorSymbol Operator
  hi! link pythonBraces Special
  hi! link pythonGlobalVar Define
  hi! link pythonStringType Statement
  hi! link pythonOperator Statement
  hi! link pythonBoolean Command
  hi! link pythonNone Command
  hi! link pythonStructure Keyword
  hi! link pythonStorageClass Keyword
  hi! link pythonTypeDef Keyword
  hi pythonFunction ctermfg=44 ctermbg=bg guifg=#42dcd7 guibg=bg guisp=NONE cterm=NONE gui=NONE
endif
if s:load_for('markdown')
  hi mkdItalic ctermfg=176 ctermbg=bg guifg=#c586c0 guibg=bg guisp=NONE cterm=NONE gui=NONE
  hi mkdBold ctermfg=176 ctermbg=bg guifg=#c586c0 guibg=bg guisp=NONE cterm=NONE gui=NONE
  hi mkdBoldItalic ctermfg=176 ctermbg=bg guifg=#c586c0 guibg=bg guisp=NONE cterm=NONE gui=NONE
  hi mkdListItem ctermfg=223 ctermbg=bg guifg=#f2c38f guibg=bg guisp=NONE cterm=NONE gui=NONE
  hi mkdID ctermfg=104 ctermbg=bg guifg=#9a93e1 guibg=bg guisp=NONE cterm=NONE gui=NONE
  hi mkdRule ctermfg=104 ctermbg=bg guifg=#9a93e1 guibg=bg guisp=NONE cterm=NONE gui=NONE
endif
if s:load_for('cpp')
  hi cppStructure ctermfg=176 ctermbg=bg guifg=#c586c0 guibg=bg guisp=NONE cterm=NONE gui=NONE
  hi! link cCharacter String
  hi! link cppOperatorSymbol Operator
endif
call vsd#terminal_dark()
call vsd#extras()
call vsd#more_colors()
silent! LightlineTheme deus
silent! VMTheme iceblue
if exists('loaded_xtabline')
  let g:xtabline.Vars.has_reloaded_scheme = 1
  silent! XTabTheme codedark
endif
filetype detect
finish

" Background: dark
" Color:      background      #1e1e1e ~
" Color:      foreground      #c5d4dd ~
" Color:      white           #e6eef3 ~
" Color:      yellow          #dada93 ~
" Color:      special         #f2c38f ~
" Color:      skyblue         #569cd6 ~
" Color:      darkblue        #073655 ~
" Color:      blue            #264f78 ~
" Color:      nightblue       #212733 ~
" Color:      lightgreen      #a8ce93 ~
" Color:      green     	    #00af00 ~
" Color:      darkgreen       #608b4e ~
" Color:      bluegrey        #7fc1ca ~
" Color:      cyan            #42dcd7 ~
" Color:      purple          #9a93e1 ~
" Color:      pink            #c586c0 ~
" Color:      grey            #4c4e50 ~
" Color:      darkgrey        #333233 ~
" Color:      lightgrey       #a9a9a9 ~
" Color:      identifier      #c9c6c9 ~
" Color:      string          #ce9178 ~
" Color:      lightred        #df8c8c ~
" Color:      red             #ff0000 ~
" Normal 				            foreground      background
" MatchParen                      red          	bg
" CursorLineNr                    skyblue     	bg
" Visual                          none          	blue
" VisualNOS                       none          	blue
" Folded                          skyblue     	bg
" FoldColumn                      skyblue     	bg
" IncSearch                       darkgrey      	lightred
" Search                          none          	grey
" ToolbarButton                   bluegrey      	skyblue
" Question                        skyblue     	bg
" MoreMsg                         skyblue     	bg
" ModeMsg                         skyblue     	bg
" WildMenu                        fg            	darkblue
" StatusLine                      fg    	        grey
" StatusLineTerm                  skyblue     	bluegrey
" Error                           red          	bg
" ErrorMsg                        red          	bg
" WarningMsg                      lightred        bg
" SpellBad                        lightred        bg
" SpellCap                        lightred        bg
" Todo                            lightred        bg
" Pmenu                           fg    	        grey
" PmenuSel                        fg    	        darkblue
" PmenuSbar                       darkgreen     	darkgreen
" PmenuThumb                      skyblue     	skyblue
" DiffAdd                         grey         	lightgreen
" DiffChange                      grey         	special
" DiffDelete                      lightred        bg
" DiffText                        grey         	special bold
" diffAdded                       lightgreen      bg
" diffChanged                     special         bg
" diffRemoved                     lightred        bg
" diffDiffer                      special         bg bold
" diffFile                        string          bg bold
" diffLine                        yellow          bg italic
" SignColumn                      fg            	bg
" LineNr                          bluegrey      	bg
" CursorLine                      none            darkgrey
" CursorColumn                    fg            	darkgrey
" ColorColumn                     fg            	darkgrey
" EndOfBuffer                     bg          	bg
" VertSplit                       darkgrey      	nightblue
" StatusLineNC                    fg    	        bluegrey
" StatusLineTermNC                fg    	        bluegrey
" TabLine                         lightgrey    	darkgrey
" TabLineSel                      skyblue     	grey
" TabLineFill                     lightgrey    	darkgrey
" ToolbarLine                     fg    	        bluegrey
" String                          string        	bg
" Constant                        lightgreen    	bg
" Directory                       skyblue     	bg
" Identifier                      identifier    	bg italic
" Function                        white         	bg
" Statement                       skyblue       	bg
" Conditional                     skyblue       	bg
" Operator                        yellow        	bg
" Number                          bluegrey        bg
" Type                            lightgreen    	bg
" Define                          lightgreen    	bg
" PreProc                         purple        	bg
" Keyword                         purple        	bg
" Underlined                      pink          	bg
" Special                         special       	bg
" SpecialKey                      special       	bg
" NonText                         special       	bg
" Title                           special       	bg
" Comment                         darkgreen     	bg
" Ignore                          darkgreen     	bg
" Conceal                         darkgreen     	bg
" Cursor 				            bg           	green
" Command                         pink            bg
" QuickFixLine -> Search
" GitGutterAdd                    green   	    bg
" GitGutterChange                 special 	    bg
" GitGutterChangeDelete           special 	    bg
" GitGutterDelete                 red    	        bg
" SignifySignAdd                  green   	    bg
" SignifySignChange               special 	    bg
" SignifySignChangeDelete         special 	    bg
" SignifySignDelete               red    	        bg
" vimDocstring   		    -> 	    String
" vimConditional 		    -> 	    Conditional
" vimRepeat      		    -> 	    Conditional
" vimLetVar      		    -> 	    Identifier
" helpCommand             -> 	    Type
" vimLet  			            lightgrey 	    bg
" vimCall 			            lightgrey 	    bg
" vimSelf 			            bluegrey 	 	bg italic
" pythonSelf           	-> 	    Identifier
" pythonOperatorSymbol 	-> 	    Operator
" pythonBraces         	-> 	    Special
" pythonGlobalVar      	-> 	    Define
" pythonStringType     	-> 	    Statement
" pythonOperator          -> 	    Statement
" pythonBoolean           ->      Command
" pythonNone              ->      Command
" pythonStructure         ->      Keyword
" pythonStorageClass      ->      Keyword
" pythonTypeDef           ->      Keyword
" pythonFunction                  cyan            bg
" mkdItalic                       pink            bg
" mkdBold                         pink            bg
" mkdBoldItalic                   pink            bg
" mkdListItem                     special         bg
" mkdID                           purple          bg
" mkdRule                         purple          bg
" cppStructure                    pink            bg
" cCharacter              ->      String
" cppOperatorSymbol       ->      Operator
