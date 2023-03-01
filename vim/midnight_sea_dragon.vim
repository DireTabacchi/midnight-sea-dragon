" /------------------------------------------------------------------\
" Name:			Midnight Sea Dragon
" Author:		DireTabacchi
" Maintainer:	DireTabacchi
" Last Change:	2023 03 01
" \------------------------------------------------------------------/

" Initialization: {{{

if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

let g:colors_name="midnight sea dragon"

" }}}
" Palette: {{{

" fill the dict with colors

" TODO: update xterm-256 colors
" Open Midnight Sea
let s:msd0 =  ["#01040d", 0]
let s:msd1 =  ["#060b1a", 0]
let s:msd2 =  ["#0f1426", 0]
let s:msd3 =  ["#1a2033", 0]

" Icy Moon Light
let s:msd4 =  ["#8f9ecc", 0]
let s:msd5 =  ["#b8c3e6", 0]
let s:msd6 =  ["#e6ecff", 0]

" Midnight Seafoam
let s:msd7 =  ["#0abfa1", 0]
let s:msd8 =  ["#0ab0bf", 0]
let s:msd9 =  ["#1386bf", 0]
let s:msd10 = ["#135bbf", 0]

" Dragon's Flair
let s:msd11 = ["#bf2626", 0]
let s:msd12 = ["#cc581f", 0]
let s:msd13 = ["#ccaa00", 0]
let s:msd14 = ["#1e8013", 0]
let s:msd15 = ["#a611a6", 0]

" }}}
" Setup Emphasis: {{{

let s:bold = 'bold,'
let s:italic = 'italic,'
let s:underline = 'underline,'
let s:undercurl = 'undercurl,'
let s:inverse = 'inverse,'

"}}}

" Setup Colors: {{{

let s:vim_bg = ['bg', 'bg']
let s:vim_fg = ['fg', 'fg']
let s:none	 = ['NONE', 'NONE']

" }}}
" Highlight Function: {{{

" copied from morhetz/gruvbox
function! s:HL(group_name, fg, ...)
	" Arguments: group_name, guifg, guibg, gui, guisp
	let fg = a:fg

	" background
	if a:0 >= 1
		let bg = a:1
	else
		let bg = s:none
	endif

	" emphasis
	if a:0 >= 2 && strlen(a:2)
		let emstr = a:2
	else
		let emstr = 'NONE,'
	endif

	let histring = [ 'hi', a:group_name,
		\ 'guifg=' . fg[0], 'ctermfg=' . fg[1],
		\ 'guibg=' . bg[0], 'ctermbg=' . bg[1],
		\ 'gui=' . emstr[:-2], 'cterm=' . emstr[:-2]
		\ ]

	" special
	if a:0 >= 3
		call add(histring, 'guisp=' . a:3[0])
	endif

	execute join(histring, ' ')
endfunction


" }}}

" Begin Colorscheme -------------------------------------------------
" General UI: {{{

set background=dark

" Normal text
call s:HL('Normal', s:msd6, s:msd0)

" status line of current window
call s:HL('StatusLine', s:msd8, s:msd2)
" status line of not-current window
call s:HL('StatusLineNC', s:msd4, s:msd1, s:italic)
" Screen line the Cursor is on
call s:HL('CursorLine', s:none, s:msd1)
hi! link CursorColumn CursorLine

" TODO: TabLine

" Match paired brackets under the cursor
call s:HL('MatchParen', s:msd8, s:msd3, s:bold)

" Highlighted screen columns
call s:HL('ColorColumn', s:none, s:msd1)

" Concealed element
call s:HL('Conceal', s:msd3, s:none)


call s:HL('NonText', s:msd3, s:none)
hi! link SpecialKey NonText

call s:HL('Visual', s:none, s:msd2)
hi! link VisualNOS Visual

call s:HL('Search', s:msd1, s:msd8)
call s:HL('IncSearch', s:msd6, s:msd10)
hi! link CurSearch IncSearch

call s:HL('VertSplit', s:msd1, s:msd0)
call s:HL('Directory', s:msd8, s:none)
call s:HL('Title', s:msd7, s:none)
call s:HL('ErrorMsg', s:msd0, s:msd11, s:bold)
call s:HL('MoreMsg', s:msd8, s:none)
call s:HL('ModeMsg', s:msd14, s:none, s:inverse . s:bold)
    
call s:HL('Question', s:msd9, s:none, s:bold)
call s:HL('WarningMsg', s:msd1, s:msd13, s:bold . s:italic)
hi! link EndOfBuffer NonText

" }}}
" Popup Menu: {{{
call s:HL('Pmenu', s:msd4, s:msd1)
call s:HL('PmenuSel', s:msd8, s:msd3)
call s:HL('PmenuSbar', s:msd4, s:msd1)
call s:HL('PmenuThumb', s:msd8, s:msd3)

" }}}
" Gutter: {{{

call s:HL('CursorLineNr', s:msd7, s:none)
call s:HL('LineNr', s:msd10, s:none)

call s:HL('Folded', s:msd3, s:msd1, s:italic . s:bold)
call s:HL('FoldColumn', s:msd3, s:msd0, s:italic . s:bold)
call s:HL('SignColumn', s:msd1, s:msd0, s:italic . s:bold)

" }}}
" Neovim Diagnostics: {{{

call s:HL("DiagnosticWarn", s:msd13)
call s:HL("DiagnosticError", s:msd11)
call s:HL("DiagnosticInfo", s:msd8)
call s:HL("DiagnosticHint", s:msd10)
call s:HL("DiagnosticUnderlineWarn", s:msd13, s:none, s:undercurl)
call s:HL("DiagnosticUnderlineError", s:msd11, s:none, s:underline)
call s:HL("DiagnosticUnderlineInfo", s:msd8, s:none, s:undercurl)
call s:HL("DiagnosticUnderlineHint", s:msd10, s:none, s:underline)

"}}}
" Cursor: {{{
" Character under curor
call s:HL('Cursor', s:msd0, s:msd4, s:inverse)
" language-mapping cursor
hi! link lCursor Cursor

"}}}
" Syntax Highlighting: {{{

" Comments
call s:HL('Comment', s:msd3, s:none)
" Generic Constants
call s:HL('Constant', s:msd4)
call s:HL('String', s:msd14)
call s:HL('Character', s:msd14)
call s:HL('Number', s:msd15)
call s:HL('Float', s:msd15)
call s:HL('Boolean', s:msd4)
" Generic Identifiers
call s:HL('Identifier', s:msd4)
call s:HL('Function', s:msd8)
" Generic Statements
call s:HL('Statement', s:msd9)
call s:HL('Conditional', s:msd9)
call s:HL('Repeat', s:msd9)
call s:HL('Label', s:msd9)
call s:HL('Operator' , s:msd5)
call s:HL('Keyword', s:msd9)
" Generic Pre-processors
call s:HL('PreProc', s:msd10)
call s:HL('Include', s:msd10)
hi! link Define Include
call s:HL('Macro', s:msd10)
hi! link PreCondit Include
" Generic Types
call s:HL('Type', s:msd7)
call s:HL('StorageClass', s:msd7)
call s:HL('Structure', s:msd7)
call s:HL('Typedef', s:msd7)
" Generic Specials
call s:HL('Special', s:msd13)
call s:HL('SpecialChar', s:msd13)
call s:HL('Tag', s:msd4)
call s:HL('Delimiter', s:msd6)
call s:HL('SpecialComment',s:msd8)
call s:HL('Debug', s:msd6)
" Other Generics
call s:HL('Underlined', s:msd10, s:none, s:underline)
call s:HL('Error', s:msd4, s:msd11, s:bold)
call s:HL('Todo', s:msd13, s:none, s:bold)

" }}}

" Language Specific
" Haskell: {{{

"call s:HL('hsDelimiter', s:orange[0])
" call s:HL('ConId', s:green[1])
" call s:HL('VarId', s:cyan[1])
"call s:HL('hsVarSym', s:magenta[1])

" }}}
" Rust: {{{

call s:HL('rustDerive', s:msd15)
call s:HL('rustSigil', s:msd12)
call s:HL('rustQuestionMark', s:msd12)
call s:HL('rustAttribute', s:msd10)
call s:HL('rustStructure', s:msd9)
call s:HL('rustStorage', s:msd9)
call s:HL('rustFuncCall', s:msd8)
call s:HL('rustIdentifier', s:msd7)
call s:HL('rustType', s:msd7)
call s:HL('rustTrait', s:msd7)
call s:HL('rustOperator', s:msd4)

" }}}
" Markdown: {{{

call s:HL('markdownH1', s:msd11, s:none, s:bold)
call s:HL('markdownH2', s:msd12, s:none, s:bold)
call s:HL('markdownH3', s:msd13, s:none, s:bold)
call s:HL('markdownH4', s:msd14, s:none, s:bold)
call s:HL('markdownH5', s:msd10, s:none, s:bold)
call s:HL('markdownH6', s:msd15, s:none, s:bold)

call s:HL('markdownItalic', s:msd7, s:none, s:italic)
call s:HL('markdownItalicDelimiter', s:msd4, s:none, s:italic)
call s:HL('markdownBold', s:msd9, s:none, s:bold)
hi! link markdownBoldDelimiter markdownItalicDelimiter
call s:HL('markdownBoldItalic', s:msd8, s:none, s:bold . s:italic)
hi! link markdownBoldItalicDelimiter markdownItalicDelimiter

call s:HL('markdownBlockQuote',s:msd9, s:none, s:italic)
call s:HL('markdownCode', s:msd8)
call s:HL('markdownCodeBlock', s:msd8)
call s:HL('markdownCodeDelimiter', s:msd4)
call s:HL('markdownListMarker', s:msd7)

call s:HL('markdownRule', s:msd4)
call s:HL('markdownHeadingRule', s:msd4)

call s:HL('markdownLinkText', s:msd10, s:none, s:underline)
call s:HL('markdownUrl', s:msd7, s:none)
hi! link markdownUrlTitle String
hi! link markdownUrlTitleDelimiter markdownUrlTitle

" }}}
" CandCpp: {{{

"call s:HL()

" }}}
