" " __   _____ ___       "
" " \ \ / / __|   \      "
" "  \ V /\__ \ |) |     "
" "   \_/ |___/___/ .vim "
"
"
" File:         visual_studio_light.vim
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

fun! s:hi(item, fg, bg, ...)
  let col = {
        \ 'yel1': '#ffbc29',
        \ 'yel2': '#F2C38F',
        \ 'blu1': '#2222ff',
        \ 'blu2': '#0070af',
        \ 'blu3': '#212733',
        \ 'grn1': '#A8CE93',
        \ 'grn2': '#008000',
        \ 'cyan': '#7FC1CA',
        \ 'purp': '#6f008a',
        \ 'pin1': '#dfafdf',
        \ 'pin2': '#D18EC2',
        \ 'gre1': '#708090',
        \ 'gre2': '#808080',
        \ 'lgr1': '#C5D4DD',
        \ 'lgr2': '#c9c6c9',
        \ 'blgr': '#0070af',
        \ 'strg': '#a31515',
        \ 'red1': '#DF8C8C',
        \ 'red2': '#ff0000',
        \ 'red3': '#bf3434',
        \ 'whi1': '#dddddd',
        \ 'whi2': '#f2f2f2',
        \ 'blk1': '#333233',
        \ 'blk2': '#262626',
        \ 'blk3': '#1e1e1e',
        \ 'blk4': '#000000',
        \}

  let s = [empty(a:fg)? 'NONE' : (a:fg[0]==#"\#"? a:fg : col[a:fg]),
        \  empty(a:bg)? 'NONE' : (a:bg[0]==#"\#"? a:bg : col[a:bg]),
        \  a:0? a:1 : 'NONE']

  execute printf("highlight %s guifg=%s guibg=%s cterm=%s gui=%s", a:item, s[0], s[1], s[2], s[2])
endfun


" ==================================================================
" RESET
" ==================================================================

set background=light
highlight clear
set termguicolors
if exists("syntax_on")
  syntax reset
else
  syntax on
endif
let g:colors_name = "visual_studio_dark"
call s:hi("Normal", "blk4", "whi1")


" ==================================================================
" UI GROUPS
" ==================================================================

call s:hi("Error", "red2", "")
call s:hi("ErrorMsg", "red2", "")
call s:hi("WarningMsg", "red1", "")
call s:hi("SpellBad", "red1", "")
call s:hi("SpellCap", "red1", "")
call s:hi("Todo", "blu1", "")
call s:hi("typescriptParenError", "red1", "")
call s:hi("NeomakeErrorSign", "red1", "")
call s:hi("NeomakeWarningSign", "red1", "")


" USER CURRENT STATE
call s:hi("MatchParen",                      "red2", "")
call s:hi("CursorLineNr",                    "blu1", "")
call s:hi("Visual",                          "whi1", "blgr")
call s:hi("VisualNOS",                       "whi1", "blgr")
call s:hi("Folded",                          "blu1", "")
call s:hi("FoldColumn",                      "blu1", "")
call s:hi("IncSearch",                       "red2", "yel1")
call s:hi("Search",                          "blgr", "yel2")
call s:hi("WildMenu",                        "blu2", "yel1")
call s:hi("ToolbarButton",                   "blu1", "blgr")
call s:hi("Question",                        "blu1", "yel1")
call s:hi("MoreMsg",                         "blu1", "")
call s:hi("ModeMsg",                         "blu1", "")
call s:hi("StatusLine",                      "blu1", "whi2")
call s:hi("StatusLineTerm",                  "blgr", "blu1")
call s:hi("TabLineSel",                      "gre2", "blu1")
call s:hi("PmenuSel",                        "whi1", "blgr")
call s:hi("PmenuThumb",                      "blu1", "blu1")
call s:hi("netrwTime",                       "blu1", "")
call s:hi("netrwSizeDate",                   "blu1", "")
call s:hi("CtrlPMatch",                      "blu1", "gre2")
call s:hi("gitcommitSummary",                "blu1", "")

" VERSION CONTROL
call s:hi("DiffAdd",                         "blk2", "grn1")
call s:hi("DiffChange",                      "blk2", "yel2")
call s:hi("DiffDelete",                      "red1",     "")
call s:hi("DiffText",                        "blk2", "yel2", "BOLD")
call s:hi("diffAdded",                       "grn2", "")
call s:hi("diffChanged",                     "yel1", "")
call s:hi("diffRemoved",                     "red2",     "")
call s:hi("diffDiffer",                      "#ce9178", "", "BOLD")
call s:hi("diffFile",                        "strg", "", "BOLD")
call s:hi("diffLine",                        "#ce9178", "", "ITALIC")
call s:hi("GitGutterAdd",                    "",     "grn1")
call s:hi("GitGutterChange",                 "",     "yel2")
call s:hi("GitGutterChangeDelete",           "",     "yel2")
call s:hi("GitGutterDelete",                 "",     "red1")

" OTHER
call s:hi("SignColumn",                      "", "")
call s:hi("LineNr",                          "blgr", "")
call s:hi("CursorLine",                      "", "lgr1")
call s:hi("CursorColumn",                    "", "lgr1")
call s:hi("ColorColumn",                     "", "lgr1")
call s:hi("EndOfBuffer",                     "whi2", "")
call s:hi("VertSplit",                       "blgr", "blgr")
call s:hi("StatusLineNC",                    "blgr", "blgr")
call s:hi("StatusLineTermNC",                "blgr", "blgr")
call s:hi("TabLine",                         "blgr", "blgr")
call s:hi("TabLineFill",                     "blgr", "blgr")
call s:hi("ToolbarLine",                     "blgr", "blgr")
call s:hi("Pmenu",                           "gre1", "lgr1")
call s:hi("PmenuSbar",                       "grn2", "grn2")
call s:hi("fzf1",                            "gre1", "gre2")
call s:hi("fzf2",                            "gre1", "gre2")
call s:hi("fzf3",                            "gre1", "gre2")
call s:hi("EasyMotionTarget",                "red1", "", "BOLD")
call s:hi("EasyMotionTarget2First",          "yel2", "")
call s:hi("EasyMotionTarget2Second",         "yel1", "")


" ==================================================================
" SYNTAX GROUPS
" ==================================================================

" CONSTANT
call s:hi("String",                          "strg", "")
call s:hi("Constant",                        "purp", "")
call s:hi("Directory",                       "blu1", "")
call s:hi("jsObjectBraces",                  "blu1", "")
call s:hi("jsBrackets",                      "blu1", "")
call s:hi("jsBlock",                         "blu1", "")
call s:hi("jsFuncBlock",                     "blu1", "")
call s:hi("jsClassBlock",                    "blu1", "")
call s:hi("jsTryCatchBlock",                 "blu1", "")
call s:hi("jsIfElseBlock",                   "blu1", "")
call s:hi("jsFinallyBlock",                  "blu1", "")
call s:hi("jsSwitchBlock",                   "blu1", "")
call s:hi("jsRepeatBlock",                   "blu1", "")
call s:hi("jsObjectValue",                   "blu1", "")
call s:hi("jsClassValue",                    "blu1", "")
call s:hi("jsParen",                         "blu1", "")
call s:hi("jsParenSwitch",                   "blu1", "")
call s:hi("jsParenCatch",                    "blu1", "")
call s:hi("jsParenIfElse",                   "blu1", "")
call s:hi("jsParenRepeat",                   "blu1", "")
call s:hi("jsBracket",                       "blu1", "")
call s:hi("jsTernaryIf",                     "blu1", "")
call s:hi("jsTemplateString",                "blu1", "")
call s:hi("jsTemplateVar",                   "blu1", "")
call s:hi("cssAttr",                         "blu1", "")
call s:hi("cssAttrRegion",                   "blu1", "")
call s:hi("cssAttributeSelector",            "blu1", "")
call s:hi("htmlTitle",                       "blu1", "")
call s:hi("htmlH1",                          "blu1", "")
call s:hi("htmlH2",                          "blu1", "")
call s:hi("htmlH3",                          "blu1", "")
call s:hi("htmlH4",                          "blu1", "")
call s:hi("htmlH5",                          "blu1", "")
call s:hi("htmlH6",                          "blu1", "")
call s:hi("htmlLink",                        "blu1", "")
call s:hi("markdownCode",                    "blu1", "")
call s:hi("markdownCodeBlock",               "blu1", "")
call s:hi("xmlString",                       "blu1", "")
call s:hi("netrwPlain",                      "blu1", "")
call s:hi("netrwDir",                        "blu1", "")
call s:hi("shDerefSimple",                   "blu1", "")
call s:hi("typescriptBracket",               "blu1", "")
call s:hi("typescriptBlock",                 "blu1", "")
call s:hi("goConst",                         "blu1", "")

" IDENTIFIER
call s:hi("Identifier",                      "blu2", "", "ITALIC")
call s:hi("Function",                        "blu2", "")
"call s:hi("Conditional",                    "#98BC99", "")
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
call s:hi("Statement",                       "blu1", "")

" OPERATOR
call s:hi("Operator",                        "blu2", "")
call s:hi("Number",                          "blk3", "")
call s:hi("jsFuncCall",                      "blu2", "")
call s:hi("jsOperator",                      "blu2", "")
call s:hi("jsSpreadOperator",                "blu2", "")
call s:hi("jsTemplateExpression",            "blu2", "")
call s:hi("jsFuncArgExpression",             "blu2", "")
call s:hi("jsSpreadExpression",              "blu1", "")
call s:hi("jsRestExpression",                "blu1", "")
call s:hi("cssFunctionName",                 "blu2", "")
call s:hi("cssProp",                         "blu2", "")
call s:hi("htmlArg",                         "blu2", "")
call s:hi("jsxRegion",                       "blu2", "")
call s:hi("xmlTag",                          "blu2", "")
call s:hi("xmlEndTag",                       "blu2", "")
call s:hi("xmlTagName",                      "blu2", "")
call s:hi("xmlEqual",                        "blu2", "")
call s:hi("shCmdSubRegion",                  "blu2", "")
call s:hi("typescriptOperator",              "blu2", "")
call s:hi("typescriptOpSymbols",             "blu2", "")
call s:hi("typescriptProp",                  "blu2", "")
call s:hi("typescriptInterpolation",         "blu2", "")
call s:hi("typescriptEventListenerMethods",  "blu2", "")
call s:hi("dockerfileKeyword",               "blu2", "")

" TYPE
call s:hi("Type",                            "blu2", "")
call s:hi("jsFunction",                      "blu2", "")
call s:hi("jsFunctionKey",                   "blu2", "")
call s:hi("jsStorageClass",                  "blu2", "")
call s:hi("jsExportDefault",                 "blu2", "")
call s:hi("jsNan",                           "blu2", "")
call s:hi("shFunctionKey",                   "blu2", "")
call s:hi("jsFlowDefinition",                "blu2", "")
call s:hi("jsFlowClassDef",                  "blu2", "")
call s:hi("jsFlowTypeStatement",             "blu2", "")
call s:hi("jsFlowTypeKeyword",               "blu2", "")
call s:hi("jsFlowImportType",                "blu2", "")
call s:hi("jsFlowArgumentDef",               "blu2", "")
call s:hi("jsFlowReturn",                    "blu2", "")
call s:hi("jsFlowFunctionGroup",             "blu2", "")
call s:hi("jsFlowClassGroup",                "blu2", "")
call s:hi("typescriptEnumKeyword",           "blu2", "")
call s:hi("typescriptVariable",              "blu2", "")
call s:hi("typescriptFuncKeyword",           "blu2", "")
call s:hi("typescriptDefault",               "blu2", "")
call s:hi("typescriptReserved",              "blu2", "")
call s:hi("goDeclaration",                   "blu2", "")

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
call s:hi("Special",                         "#666600", "")
call s:hi("SpecialKey",                      "blu2", "")
call s:hi("NonText",                         "blu2", "")
call s:hi("Title",                           "blu2", "")
call s:hi("jsBraces",                        "blu2", "")
call s:hi("jsFuncBraces",                    "blu2", "")
call s:hi("jsDestructuringBraces",           "blu2", "")
call s:hi("jsClassBraces",                   "blu2", "")
call s:hi("jsParens",                        "blu2", "")
call s:hi("jsFuncParens",                    "blu2", "")
call s:hi("jsArrowFunction",                 "blu2", "")
call s:hi("jsModuleAsterisk",                "blu2", "")
call s:hi("cssBraces",                       "blu2", "")
call s:hi("cssBraces",                       "blu2", "")
call s:hi("markdownHeadingDelimiter",        "blu2", "")
call s:hi("markdownH1",                      "blu2", "")
call s:hi("markdownH2",                      "blu2", "")
call s:hi("markdownH3",                      "blu2", "")
call s:hi("markdownH4",                      "blu2", "")
call s:hi("markdownH5",                      "blu2", "")
call s:hi("markdownH6",                      "blu2", "")
call s:hi("markdownRule",                    "blu2", "")
call s:hi("markdownListMarker",              "blu2", "")
call s:hi("markdownOrderedListMarker",       "blu2", "")
call s:hi("markdownLinkText",                "blu2", "")
call s:hi("markdownCodeDelimiter",           "blu2", "")
call s:hi("netrwClassify",                   "blu2", "")
call s:hi("netrwVersion",                    "blu2", "")
call s:hi("netrwSpecial",                    "blu2", "")
call s:hi("typescriptParens",                "blu2", "")
call s:hi("typescriptBraces",                "blu2", "")
call s:hi("typescriptArrowFunc",             "blu2", "")
call s:hi("typescriptPropietaryMethods",     "blu2", "")
call s:hi("typescriptParen",                 "blu2", "")
call s:hi("CtrlPStats",                      "blu2", "")

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
call s:hi("mkdListItem",                     "purp", "")
call s:hi("mkdID",                           "purp", "")
call s:hi("mkdRule",                         "purp", "")

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
\ "hl":      ["fg", "Statement"],
\ "fg+":     ["fg", "CursorLine", "CursorColumn", "Normal"],
\ "bg+":     ["bg", "CursorLine", "CursorColumn"],
\ "hl+":     ["fg", "Statement"],
\ "info":    ["fg", "Statement"],
\ "border":  ["fg", "Ignore"],
\ "prompt":  ["fg", "Comment"],
\ "pointer": ["fg", "Statement"],
\ "marker":  ["fg", "Statement"],
\ "spinner": ["fg", "Statement"],
\ "header":  ["fg", "Statement"]
\}

" VIM-POLYGLOT
let g:javascript_plugin_flow = 1
