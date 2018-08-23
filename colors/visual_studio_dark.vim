" " __   _____ ___       "
" " \ \ / / __|   \      "
" "  \ V /\__ \ |) |     "
" "   \_/ |___/___/ .vim "
"
"
" File:         visual_studio_dark.vim
" Author:       Gianmaria Bajo (mg1979.git@gmail.com)
" Credits:      adaptation of 'nova' scheme by Trevor D. Miller
" License:      MIT
"
" Copyright (c) 2017 Trevor D. Miller
" Copyright (c) 2018 Gianmaria Bajo (mg1979.git@gmail.com)
"
" MIT License
"
" Permission is hereby granted, free of charge, to any person obtaining
" a copy of this software and associated documentation files (the
" "Software"), to deal in the Software without restriction, including
" without limitation the rights to use, copy, modify, merge, publish,
" distribute, sublicense, and/or sell copies of the Software, and to
" permit persons to whom the Software is furnished to do so, subject to
" the following conditions:
"
" The above copyright notice and this permission notice shall be
" included in all copies or substantial portions of the Software.
"
" THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
" EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
" MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
" NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
" LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
" OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
" WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

" ==================================================================
" HIGHLIGHT
" ==================================================================
let s:col = {
      \ 'yel1': '#DADA93',
      \ 'yel2': '#F2C38F',
      \ 'lblu': '#97BEEF',
      \ 'blu1': '#83AFE5',
      \ 'blu2': '#569cd6',
      \ 'blu3': '#3A7CB2',
      \ 'blu4': '#264F78',
      \ 'blu5': '#244756',
      \ 'dbl1': '#073655',
      \ 'dbl2': '#212733',
      \ 'grn1': '#A8CE93',
      \ 'grn2': '#608b4e',
      \ 'cya1': '#7FC1CA',
      \ 'cya2': '#42DCD7',
      \ 'purp': '#9A93E1',
      \ 'pin1': '#dfafdf',
      \ 'pin2': '#D18EC2',
      \ 'pin3': '#C586C0',
      \ 'gre1': '#556873',
      \ 'gre2': '#3C4C55',
      \ 'gre3': '#4C4E50',
      \ 'dgre': '#3D3D40',
      \ 'lgr1': '#C5D4DD',
      \ 'lgr2': '#c9c6c9',
      \ 'lgr3': '#a9a9a9',
      \ 'lgr4': '#9a9a9a',
      \ 'blgr': '#6A7D89',
      \ 'strg': '#ce9178',
      \ 'red1': '#DF8C8C',
      \ 'red2': '#ff0000',
      \ 'red3': '#bf3434',
      \ 'whi1': '#F9F9FF',
      \ 'whi2': '#E6EEF3',
      \ 'blk1': '#333233',
      \ 'blk2': '#262626',
      \ 'blk3': '#1e1e1e',
      \}


fun! s:hi(item, fg, bg, ...)
  let s = [empty(a:fg)? 'NONE' : (a:fg[0]==#"\#"? a:fg : s:col[a:fg]),
        \  empty(a:bg)? 'NONE' : (a:bg[0]==#"\#"? a:bg : s:col[a:bg]),
        \  a:0? a:1 : 'NONE']

  execute printf("highlight %s guifg=%s guibg=%s cterm=%s gui=%s", a:item, s[0], s[1], s[2], s[2])
endfun


" ==================================================================
" RESET
" ==================================================================

if &background == 'light'
  exe "so ".fnamemodify(expand('<sfile>:p'), ":~:h")."/visual_studio_light.vim"
  finish
endif

set background=dark
highlight clear
set termguicolors
if exists("syntax_on")
  syntax reset
else
  syntax on
endif
let g:colors_name = "visual_studio_dark"
call s:hi("Normal", "lgr1", "blk2")

let s:reloaded = 0

let g:VSD_conservative = get(g:, 'VSD_conservative', 1)
let s:conservative = g:VSD_conservative

" ==================================================================
" UI GROUPS
" ==================================================================

call s:hi("Error", "red2", "")
call s:hi("ErrorMsg", "red2", "")
call s:hi("WarningMsg", "red1", "")
call s:hi("SpellBad", "red1", "")
call s:hi("SpellCap", "red1", "")
call s:hi("Todo", "red1", "")
call s:hi("typescriptParenError", "red1", "")
call s:hi("NeomakeErrorSign", "red1", "")
call s:hi("NeomakeWarningSign", "red1", "")


" USER CURRENT STATE
call s:hi("MatchParen",                      "red2", "")
call s:hi("CursorLineNr",                    "blu1", "")
call s:hi("Visual",                          "",     "blu4")
call s:hi("VisualNOS",                       "",     "blu4")
call s:hi("Folded",                          "blu1", "")
call s:hi("FoldColumn",                      "blu1", "")
call s:hi("IncSearch",                       "blk1", "red1")
call s:hi("Search",                          "",     "gre3")
call s:hi("ToolbarButton",                   "blgr", "blu1")
call s:hi("Question",                        "blu1", "")
call s:hi("MoreMsg",                         "blu1", "")
call s:hi("ModeMsg",                         "blu1", "")
call s:hi("WildMenu",                        "", "dbl1")
call s:hi("StatusLine",                      "lgr1", "dgre")
call s:hi("StatusLineTerm",                  "blu1", "blgr")
call s:hi("netrwTime",                       "blu1", "")
call s:hi("netrwSizeDate",                   "blu1", "")
call s:hi("CtrlPMatch",                      "gre2", "blu1")
call s:hi("gitcommitSummary",                "blu1", "")

"POPUP
call s:hi("Pmenu",                           "lgr1", "gre2")
call s:hi("PmenuSel",                        "lgr1", "dbl1")
call s:hi("PmenuSbar",                       "grn2", "grn2")
call s:hi("PmenuThumb",                      "blu1", "blu1")

" call s:hi("Pmenu",                           "lgr1", "gre1")
" call s:hi("PmenuSbar",                       "grn2", "grn2")
" call s:hi("PmenuSel",                        "gre1", "blu1")
" call s:hi("PmenuThumb",                      "blu1", "blu1")

" call s:hi('Pmenu', "#BBBBBB", "#2D2D30")
" call s:hi('PmenuSel', "#BBBBBB", "#073655")
" call s:hi('PmenuSbar', "", "#3D3D40")
" call s:hi('PmenuThumb', "", "#BBBBBB")

" VERSION CONTROL
call s:hi("DiffAdd",                         "gre2", "grn1")
call s:hi("DiffChange",                      "gre2", "yel2")
call s:hi("DiffDelete",                      "red1", "")
call s:hi("DiffText",                        "gre2", "yel2", "BOLD")
call s:hi("diffAdded",                       "grn1", "")
call s:hi("diffChanged",                     "yel2", "")
call s:hi("diffRemoved",                     "red1",     "")
call s:hi("diffDiffer",                      "yel2", "", "BOLD")
call s:hi("diffFile",                        "strg", "", "BOLD")
call s:hi("diffLine",                        "yel1", "", "ITALIC")
call s:hi("GitGutterAdd",                    "grn1", "")
call s:hi("GitGutterChange",                 "yel2", "")
call s:hi("GitGutterChangeDelete",           "yel2", "")
" call s:hi("GitGutterDelete",                 "red1", "")

" OTHER
call s:hi("SignColumn",                      "", "")
call s:hi("LineNr",                          "blgr", "")
call s:hi("CursorLine",                      "", "blk1")
call s:hi("CursorColumn",                    "", "blk1")
call s:hi("ColorColumn",                     "", "blk1")
call s:hi("EndOfBuffer",                     "blk2", "")
call s:hi("VertSplit",                       "blk1", "dbl2")
call s:hi("StatusLineNC",                    "lgr1", "blgr")
call s:hi("StatusLineTermNC",                "lgr1", "blgr")
call s:hi("TabLine",                         "lgr3", "blk3")
call s:hi("TabLineSel",                      "blu1", "gre2")
call s:hi("TabLineFill",                     "lgr3", "blk3")
call s:hi("ToolbarLine",                     "lgr1", "blgr")
call s:hi("fzf1",                            "gre2", "gre1")
call s:hi("fzf2",                            "gre2", "gre1")
call s:hi("fzf3",                            "gre2", "gre1")
call s:hi("EasyMotionTarget",                "red1", "", "BOLD")
call s:hi("EasyMotionTarget2First",          "yel2", "")
call s:hi("EasyMotionTarget2Second",         "yel1", "")


" ==================================================================
" SYNTAX GROUPS
" ==================================================================

" CONSTANT
call s:hi("String",                          "strg", "")
call s:hi("Constant",                        "grn1", "")
call s:hi("Directory",                       "grn1", "")
call s:hi("jsObjectBraces",                  "grn1", "")
call s:hi("jsBrackets",                      "grn1", "")
call s:hi("jsBlock",                         "grn1", "")
call s:hi("jsFuncBlock",                     "grn1", "")
call s:hi("jsClassBlock",                    "grn1", "")
call s:hi("jsTryCatchBlock",                 "grn1", "")
call s:hi("jsIfElseBlock",                   "grn1", "")
call s:hi("jsFinallyBlock",                  "grn1", "")
call s:hi("jsSwitchBlock",                   "grn1", "")
call s:hi("jsRepeatBlock",                   "grn1", "")
call s:hi("jsObjectValue",                   "grn1", "")
call s:hi("jsClassValue",                    "grn1", "")
call s:hi("jsParen",                         "grn1", "")
call s:hi("jsParenSwitch",                   "grn1", "")
call s:hi("jsParenCatch",                    "grn1", "")
call s:hi("jsParenIfElse",                   "grn1", "")
call s:hi("jsParenRepeat",                   "grn1", "")
call s:hi("jsBracket",                       "grn1", "")
call s:hi("jsTernaryIf",                     "grn1", "")
call s:hi("jsTemplateString",                "grn1", "")
call s:hi("jsTemplateVar",                   "grn1", "")
call s:hi("cssAttr",                         "grn1", "")
call s:hi("cssAttrRegion",                   "grn1", "")
call s:hi("cssAttributeSelector",            "grn1", "")
call s:hi("htmlTitle",                       "grn1", "")
call s:hi("htmlH1",                          "grn1", "")
call s:hi("htmlH2",                          "grn1", "")
call s:hi("htmlH3",                          "grn1", "")
call s:hi("htmlH4",                          "grn1", "")
call s:hi("htmlH5",                          "grn1", "")
call s:hi("htmlH6",                          "grn1", "")
call s:hi("htmlLink",                        "grn1", "")
call s:hi("markdownCode",                    "grn1", "")
call s:hi("markdownCodeBlock",               "grn1", "")
call s:hi("xmlString",                       "grn1", "")
call s:hi("netrwPlain",                      "grn1", "")
call s:hi("netrwDir",                        "grn1", "")
call s:hi("shDerefSimple",                   "grn1", "")
call s:hi("typescriptBracket",               "grn1", "")
call s:hi("typescriptBlock",                 "grn1", "")
call s:hi("goConst",                         "grn1", "")

" IDENTIFIER
call s:hi("Identifier",                      "lgr2", "", "ITALIC")
call s:hi("Function",                        "whi2", "")
call s:hi("jsVariableDef",                   "blu1", "")
call s:hi("jsObject",                        "blu1", "")
call s:hi("jsObjectKey",                     "blu1", "")
call s:hi("jsObjectKeyComputed",             "blu1", "")
call s:hi("jsClassPropertyComputed",         "blu1", "")
call s:hi("jsDestructuringPropertyComputed", "blu1", "")
call s:hi("jsDestructuringValue",            "blu1", "")
call s:hi("jsFutureKeys",                    "blu1", "")
call s:hi("jsObjectProp",                    "blu1", "")
call s:hi("jsPrototype",                     "blu1", "")
call s:hi("jsObjectStringKey",               "blu1", "")
call s:hi("jsFuncArgs",                      "blu1", "")
call s:hi("jsTaggedTemplate",                "blu1", "")
call s:hi("jsDestructuringBlock",            "blu1", "")
call s:hi("jsDestructuringArray",            "blu1", "")
call s:hi("jsDestructuringPropertyValue",    "blu1", "")
call s:hi("jsImportContainer",               "blu1", "")
call s:hi("jsExportContainer",               "blu1", "")
call s:hi("jsModuleGroup",                   "blu1", "")
call s:hi("jsModuleKeyword",                 "blu1", "")
call s:hi("javascriptHtmlEvents",            "blu1", "")
call s:hi("javascriptDomElemAttrs",          "blu1", "")
call s:hi("javascriptDomElemFuncs",          "blu1", "")
call s:hi("cssClassName",                    "blu1", "")
call s:hi("cssIdentifier",                   "blu1", "")
call s:hi("htmlTagName",                     "blu1", "")
call s:hi("htmlSpecialTagName",              "blu1", "")
call s:hi("htmlTag",                         "blu1", "")
call s:hi("htmlEndTag",                      "blu1", "")
call s:hi("jsonKeyword",                     "blu1", "")
call s:hi("xmlAttrib",                       "blu1", "")
call s:hi("netrwExe",                        "blu1", "")
call s:hi("shFunction",                      "blu1", "")
call s:hi("typescriptVariableDeclaration",   "blu1", "")
call s:hi("typescriptCall",                  "blu1", "")
call s:hi("typescriptRef",                   "blu1", "")
call s:hi("typescriptVars",                  "blu1", "")
call s:hi("typescriptFunction",              "blu1", "")

" STATEMENT
if s:conservative
  call s:hi("Statement",                       "blu2", "")
else
  call s:hi("Statement",                       "blu2", "")
  " call s:hi("Statement",                       "pin3", "")
endif
call s:hi("Conditional",                     "blu2", "")
"call s:hi("Conditional",                    "#98BC99", "")

" OPERATOR
call s:hi("Operator",                        "yel1", "")
call s:hi("Number",                          "cya1", "")
call s:hi("jsFuncCall",                      "yel1", "")
call s:hi("jsOperator",                      "yel1", "")
call s:hi("jsSpreadOperator",                "yel1", "")
call s:hi("jsTemplateExpression",            "yel1", "")
call s:hi("jsFuncArgExpression",             "yel1", "")
call s:hi("jsSpreadExpression",              "blu1", "")
call s:hi("jsRestExpression",                "blu1", "")
call s:hi("cssFunctionName",                 "yel1", "")
call s:hi("cssProp",                         "yel1", "")
call s:hi("htmlArg",                         "yel1", "")
call s:hi("jsxRegion",                       "yel1", "")
call s:hi("xmlTag",                          "yel1", "")
call s:hi("xmlEndTag",                       "yel1", "")
call s:hi("xmlTagName",                      "yel1", "")
call s:hi("xmlEqual",                        "yel1", "")
call s:hi("shCmdSubRegion",                  "yel1", "")
call s:hi("typescriptOperator",              "yel1", "")
call s:hi("typescriptOpSymbols",             "yel1", "")
call s:hi("typescriptProp",                  "yel1", "")
call s:hi("typescriptInterpolation",         "yel1", "")
call s:hi("typescriptEventListenerMethods",  "yel1", "")
call s:hi("dockerfileKeyword",               "yel1", "")

" TYPE
call s:hi("Type",                            "grn1", "")
call s:hi("Define",                          "grn1", "")
call s:hi("jsFunction",                      "grn1", "")
call s:hi("jsFunctionKey",                   "grn1", "")
call s:hi("jsStorageClass",                  "grn1", "")
call s:hi("jsExportDefault",                 "grn1", "")
call s:hi("jsNan",                           "grn1", "")
call s:hi("shFunctionKey",                   "grn1", "")
call s:hi("jsFlowDefinition",                "grn1", "")
call s:hi("jsFlowClassDef",                  "grn1", "")
call s:hi("jsFlowTypeStatement",             "grn1", "")
call s:hi("jsFlowTypeKeyword",               "grn1", "")
call s:hi("jsFlowImportType",                "grn1", "")
call s:hi("jsFlowArgumentDef",               "grn1", "")
call s:hi("jsFlowReturn",                    "grn1", "")
call s:hi("jsFlowFunctionGroup",             "grn1", "")
call s:hi("jsFlowClassGroup",                "grn1", "")
call s:hi("typescriptEnumKeyword",           "grn1", "")
call s:hi("typescriptVariable",              "grn1", "")
call s:hi("typescriptFuncKeyword",           "grn1", "")
call s:hi("typescriptDefault",               "grn1", "")
call s:hi("typescriptReserved",              "grn1", "")
call s:hi("goDeclaration",                   "grn1", "")

" GLOBAL
call s:hi("PreProc",                         "purp", "")
call s:hi("Keyword",                         "purp", "")
call s:hi("jsGlobalObjects",                 "purp", "")
call s:hi("jsThis",                          "purp", "")
call s:hi("jsSwitchCase",                    "purp", "")
call s:hi("jsParenDecorator",                "purp", "")
call s:hi("cssTagName",                      "purp", "")
call s:hi("jsGlobalNodeObjects",             "purp", "")
call s:hi("cssFontDescriptor",               "purp", "")
call s:hi("typescriptGlobal",                "purp", "")
call s:hi("typescriptExport",                "purp", "")
call s:hi("typescriptImport",                "purp", "")
call s:hi("goPackage",                       "purp", "")
call s:hi("goImport",                        "purp", "")

" EMPHASIS
call s:hi("Underlined",                      "pin2", "")
call s:hi("markdownItalic",                  "pin2", "")
call s:hi("markdownBold",                    "pin2", "")
call s:hi("markdownBoldItalic",              "pin2", "")

" SPECIAL
call s:hi("Special",                         "yel2", "")
call s:hi("SpecialKey",                      "yel2", "")
call s:hi("NonText",                         "yel2", "")
call s:hi("Title",                           "yel2", "")
call s:hi("jsBraces",                        "yel2", "")
call s:hi("jsFuncBraces",                    "yel2", "")
call s:hi("jsDestructuringBraces",           "yel2", "")
call s:hi("jsClassBraces",                   "yel2", "")
call s:hi("jsParens",                        "yel2", "")
call s:hi("jsFuncParens",                    "yel2", "")
call s:hi("jsArrowFunction",                 "yel2", "")
call s:hi("jsModuleAsterisk",                "yel2", "")
call s:hi("cssBraces",                       "yel2", "")
call s:hi("cssBraces",                       "yel2", "")
call s:hi("markdownHeadingDelimiter",        "yel2", "")
call s:hi("markdownH1",                      "yel2", "")
call s:hi("markdownH2",                      "yel2", "")
call s:hi("markdownH3",                      "yel2", "")
call s:hi("markdownH4",                      "yel2", "")
call s:hi("markdownH5",                      "yel2", "")
call s:hi("markdownH6",                      "yel2", "")
call s:hi("markdownRule",                    "yel2", "")
call s:hi("markdownListMarker",              "yel2", "")
call s:hi("markdownOrderedListMarker",       "yel2", "")
call s:hi("markdownLinkText",                "yel2", "")
call s:hi("markdownCodeDelimiter",           "yel2", "")
call s:hi("netrwClassify",                   "yel2", "")
call s:hi("netrwVersion",                    "yel2", "")
call s:hi("netrwSpecial",                    "yel2", "")
call s:hi("typescriptParens",                "yel2", "")
call s:hi("typescriptBraces",                "yel2", "")
call s:hi("typescriptArrowFunc",             "yel2", "")
call s:hi("typescriptPropietaryMethods",     "yel2", "")
call s:hi("typescriptParen",                 "yel2", "")
call s:hi("CtrlPStats",                      "yel2", "")

" TRIVIAL
call s:hi("Comment",                         "grn2", "")
call s:hi("Ignore",                          "grn2", "")
call s:hi("Conceal",                         "grn2", "")
call s:hi("Noise",                           "grn2", "")
call s:hi("jsNoise",                         "grn2", "")
call s:hi("jsFuncArgCommas",                 "grn2", "")
call s:hi("cssClassNameDot",                 "grn2", "")
call s:hi("jsonQuote",                       "grn2", "")
call s:hi("shQuote",                         "grn2", "")
call s:hi("typescriptEndColons",             "grn2", "")
call s:hi("typescriptTemplateSB",            "grn2", "")
call s:hi("typescriptCommentSkip",           "grn2", "")
call s:hi("typescriptDotNotation",           "grn2", "")
call s:hi("netrwSortBy",                     "grn2", "")
call s:hi("netrwSortSeq",                    "grn2", "")
call s:hi("netrwQuickHelp",                  "grn2", "")
call s:hi("netrwCopyTgt",                    "grn2", "")
call s:hi("netrwTreeBarSpace",               "grn2", "")
call s:hi("netrwSlash",                      "grn2", "")
call s:hi("netrwCmdNote",                    "grn2", "")
call s:hi("EasyMotionShade",                 "grn2", "")

"MARKDOWN
call s:hi("mkdListItem",                     "yel2", "")
call s:hi("mkdID",                           "purp", "")
call s:hi("mkdRule",                         "purp", "")

"PYTHON (POLYGLOT)

call s:hi("pythonStatement",                 "blu2", "")
call s:hi("pythonFunction",                  "cya2", "")
call s:hi("pythonConditional",               "blu2", "")
call s:hi("pythonRepeat",                    "blu2", "")
call s:hi("pythonOperator",                  "blu2", "")
call s:hi("pythonOperatorSymbol",            "yel1", "")
call s:hi("pythonGlobalVar",                 "grn1", "")
call s:hi("pythonException",                 "blu2", "")
call s:hi("pythonAsync",                     "blu2", "")
call s:hi("pythonInclude",                   "purp", "")
call s:hi("pythonDecorator",                 "grn1", "")
call s:hi("pythonDecoratorName",             "cya1", "")
call s:hi("pythonDoctestValue",              "purp", "")
"call s:hi("pythonMatrixMultiply",           "yel2", "")
"call s:hi("pythonTodo",                     "yel2", "")
"call s:hi("pythonComment",                  "yel2", "")
"call s:hi("pythonQuotes",                   "yel2", "")
"call s:hi("pythonEscape",                   "yel2", "")
"call s:hi("pythonString",                   "yel2", "")
"call s:hi("pythonTripleQuotes",             "yel2", "")
"call s:hi("pythonSpaceError",               "yel2", "")
"call s:hi("pythonDoctest",                  "yel2", "")
"call s:hi("pythonRawString",                "yel2", "")
"call s:hi("pythonNumber",                   "yel2", "")
call s:hi("pythonBoolean",                   "purp", "")
call s:hi("pythonNone",                      "purp", "")
call s:hi("pythonSelf",                      "lgr2", "", "ITALIC")
"call s:hi("pythonStructure",                "purp", "")
"call s:hi("pythonStorageClass",             "purp", "")
"call s:hi("pythonTypeDef",                  "purp", "")
call s:hi("pythonBuiltinFunc",               "pin1", "")
call s:hi("pythonBraces",                    "yel2", "")
"call s:hi("pythonAttribute",                "yel2", "")
call s:hi("pythonExClass",                   "pin1", "")
call s:hi("jediFat",                         "lgr1", "gre1", "ITALIC")

"VISUAL-MULTI
" call s:hi("VM_Extend",                   "gre2", "blu1")
" hi link VM_Mono   DiffChange
" hi link VM_Insert Pmenu
" hi VM_Cursor guibg=#3A7CB2 guifg=#333233

" ==================================================================
" VARIABLES
" ==================================================================

" VIM TERMINAL MODE
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

" VIM-POLYGLOT
let g:javascript_plugin_flow = 1

" VISUAL-MULTI

" let g:VM_Selection_hl     = 'VM_Extend'
" let g:VM_Mono_Cursor_hl   = 'VM_Mono'
" let g:VM_Ins_Mode_hl      = 'VM_Insert'
" let g:VM_Normal_Cursor_hl = 'VM_Cursor'

" if exists('g:loaded_visual_multi')
"   hi clear VM_Mono
"   hi clear VM_Cursor
"   hi clear VM_Extend
"   hi clear VM_Insert
"   call s:hi("VM_Mono",   "yel2", "blk2")
"   " call s:hi("VM_Cursor", "blu2", "blu5")
"   hi VM_Extend guibg=#005f87 guifg=NONE
"   hi link VM_Insert Search
"   hi link VM_Cursor Visual
" endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"SYNTAX EXRAS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

if !get(g:, 'VSD_extra_syntax', 0) | finish | endif

augroup vsd_extra_syntax
  au!
  au BufEnter *.py,*.vim if !s:reloaded | let s:reloaded = 1 | filetype detect | endif
  au FileType python call s:python_extra()
  au FileType vim    call s:vim_extra()
augroup END

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

fun! s:vim_extra()
  syn match vimDocstring '^\s\s\{-}"""\w.*'
  hi link vimDocstring String
  syn cluster vimFuncBodyList add=vimDocstring
  if s:conservative | return | endif

  "more colors
  syn keyword vimConditional if elseif else endif while endwhile for endfor try catch finally endtry return
  hi link vimConditional Conditional

  syn keyword vimLet let nextgroup=vimLetVar
  syn match vimLetVar '\(let \|for \)\@<=\(\w\|\.\|:\)\+'
  syn keyword vimCall call nextgroup=Function
  syn keyword vimSelf self
  " call s:hi("vimLetCall",                      "lblu", "")
  call s:hi("vimLet",                      "lgr3", "")
  call s:hi("vimCall",                      "lgr3", "")
  call s:hi("vimSelf",                      "cya1", "", "ITALIC")
  hi link vimLetVar Identifier
  syn cluster vimFuncBodyList add=vimConditional,vimSelf,vimCall,vimLet,vimLetVar
endfun

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

fun! s:python_extra()
  syn keyword pythonSelf self
  syn match pythonOperatorSymbol   '\V=\|-\|+\|*\|@\|/\|%\|&\||\|^\|~\|<\|>\|!='
  syn match pythonBraces           '{\|}\|\[\|\]'
  syn match pythonGlobalVar        '\<[A-Z_]*\>'
  syn match pythonStringType       '\((\)\@<=[rfub]\(["\']\)\@='
  hi link pythonSelf Identifier
  hi link pythonOperatorSymbol Operator
  hi link pythonBraces Special
  hi link pythonGlobalVar Special
  hi link pythonStringType Statement
endfun
