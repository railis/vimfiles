set background=dark
hi clear

if exists("syntax_on")
 syntax reset
endif


hi Normal ctermfg=white ctermbg=233
hi NonText ctermfg=233 ctermbg=233

hi Cursor ctermfg=0 ctermbg=15
hi LineNr ctermfg=239 ctermbg=233

hi Folded ctermfg=103 ctermbg=60
hi Title ctermfg=187 cterm=bold

hi SpecialKey ctermfg=8 ctermbg=236

hi WildMenu ctermfg=0 ctermbg=195
hi PmenuSbar ctermfg=0 ctermbg=15

hi Error ctermfg=203 ctermbg=none cterm=underline
hi ErrorMsg ctermfg=white ctermbg=203 cterm=bold
hi WarningMsg ctermfg=white ctermbg=203 cterm=bold

hi ModeMsg gui=bold ctermfg=0 ctermbg=189 cterm=bold

if version >= 700 " Vim 7.x specific colors
 hi CursorLine ctermbg=none cterm=none
 hi CursorColumn ctermbg=none cterm=none
 hi MatchParen ctermfg=white ctermbg=darkgray 
 hi Pmenu ctermfg=white ctermbg=242 
 hi PmenuSel ctermfg=0 ctermbg=195 
 hi Search ctermfg=none ctermbg=238
endif

" Syntax highlighting
hi Comment ctermfg=8 
" like: string
hi String ctermfg=lightgreen 
hi Number ctermfg=212 

" like: class
hi Keyword ctermfg=117 
hi PreProc ctermfg=117 
" like: if
hi Conditional ctermfg=68 

hi Todo ctermfg=251 ctermbg=none 
" like: symbol
hi Constant ctermfg=151 

" like: instance variable
hi Identifier ctermfg=147 
hi Function ctermfg=223 
" like: class
hi Type ctermfg=229 
hi Statement ctermfg=110 

" like: regex \d \f
hi Special ctermfg=173 
hi Delimiter ctermfg=37 
hi Operator ctermfg=1 
hi link InstanceVariable Identifier

hi link Character Constant
hi link Boolean Constant
hi link Float Number
hi link Repeat Statement
hi link Label Statement
hi link Exception Statement
hi link Include PreProc
hi link Define PreProc
hi link Macro PreProc
hi link PreCondit PreProc
hi link StorageClass Type
hi link Structure Type
hi link Typedef Type
hi link Tag Special
hi link SpecialChar Special
hi link SpecialComment Special
hi link Debug Special

" Special for Ruby
hi rubyRegexp ctermfg=brown 
hi rubyRegexpDelimiter ctermfg=brown 
hi rubyEscape ctermfg=cyan 
hi rubyInterpolationDelimiter ctermfg=23 
hi rubyControl ctermfg=167 "and break, etc
hi rubyStringDelimiter ctermfg=lightgreen 
hi link rubyClass Keyword 
hi link rubyModule Keyword 
hi link rubyKeyword Keyword 
hi link rubyOperator Operator
hi link rubyIdentifier Identifier
hi link rubyInstanceVariable InstanceVariable
hi link rubyGlobalVariable InstanceVariable
hi link rubyClassVariable InstanceVariable
hi link rubyConstant Type 

" Special for XML
hi link xmlTag Keyword 
hi link xmlTagName Conditional 
hi link xmlEndTag Identifier 

" Special for HTML
hi link htmlTag Keyword 
hi link htmlTagName Conditional 
hi link htmlEndTag Identifier 

" Special for Javascript
hi link javaScriptNumber Number 

" Special for CSharp
hi link csXmlTag Keyword 

hi pythonSpaceError ctermbg=red guibg=red

hi Comment ctermfg=darkgray

hi StatusLine ctermbg=darkgrey ctermfg=white
hi StatusLineNC ctermbg=1 ctermfg=lightgrey
hi VertSplit ctermbg=236 ctermfg=233
hi LineNr ctermfg=236 ctermbg=233
hi CursorLine       ctermfg=none       ctermbg=234    cterm=NONE
hi Function         ctermfg=222     ctermbg=NONE   cterm=none
hi Visual           ctermfg=NONE       ctermbg=236    cterm=NONE

hi Error            ctermfg=16         ctermbg=red    cterm=NONE
hi ErrorMsg         ctermfg=16         ctermbg=red    cterm=NONE
hi WarningMsg       ctermfg=16         ctermbg=red    cterm=NONE
hi SpellBad         ctermfg=16         ctermbg=160    cterm=NONE

" ir_black doesn't highlight operators for some reason
hi Operator         ctermfg=lightblue  ctermbg=NONE   cterm=NONE

highlight DiffAdd term=reverse cterm=bold ctermbg=lightgreen ctermfg=16
highlight DiffChange term=reverse cterm=bold ctermbg=lightblue ctermfg=16
highlight DiffText term=reverse cterm=bold ctermbg=lightgray ctermfg=16
highlight DiffDelete term=reverse cterm=bold ctermbg=lightred ctermfg=16

highlight PmenuSel ctermfg=16 ctermbg=156

hi Directory ctermfg=68

hi ESearchMatch ctermfg=147
hi ESearchFName ctermfg=229
