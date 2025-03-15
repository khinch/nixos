" Store the following config under ~/.config/nvim/colors/root-loops.vim
" then load it into neovim via ':colorscheme root-loops' or by declaring
" it as your colorscheme in your neovim config.

" root-loops.vim -- Root Loops Vim Color Scheme.
" Webpage:          https://rootloops.sh
" Description:      A neovim color scheme for cereal lovers

hi clear

if exists("syntax_on")
    syntax reset
endif

let colors_name = "root loops"

if ($TERM =~ '256' || &t_Co >= 256) || has("gui_running")
    hi Normal ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
    hi NonText ctermfg=0 guifg=#2f3c45
    hi Comment ctermfg=8 cterm=italic guifg=#596d7c gui=italic
    hi Constant ctermfg=3 guifg=#c68c2e
    hi Error ctermfg=1 guifg=#ed6677
    hi Identifier ctermfg=9 guifg=#f58993
    hi Function ctermfg=4 guifg=#5a9bec
    hi Special ctermfg=13 guifg=#d18fef
    hi Statement ctermfg=5 guifg=#c36ee7
    hi String ctermfg=2 guifg=#6ead47
    hi Operator ctermfg=6 guifg=#33acac
    hi Boolean ctermfg=3 guifg=#c68c2e
    hi Label ctermfg=14 guifg=#3dc4c4
    hi Keyword ctermfg=5 guifg=#c36ee7
    hi Exception ctermfg=5 guifg=#c36ee7
    hi Conditional ctermfg=5 guifg=#c36ee7
    hi PreProc ctermfg=13 guifg=#d18fef
    hi Include ctermfg=5 guifg=#c36ee7
    hi Macro ctermfg=5 guifg=#c36ee7
    hi StorageClass ctermfg=11 guifg=#dfa13e
    hi Structure ctermfg=11 guifg=#dfa13e
    hi Todo ctermbg=9 ctermfg=0 cterm=bold guibg=#f58993 guifg=#1b242a gui=bold
    hi Type ctermfg=11 guifg=#dfa13e
    hi Underlined cterm=underline gui=underline
    hi Bold cterm=bold gui=bold
    hi Italic cterm=italic gui=italic
    hi Ignore ctermbg=NONE ctermfg=NONE cterm=NONE guibg=NONE guifg=NONE gui=NONE
    hi StatusLine ctermbg=0 ctermfg=15 cterm=NONE guibg=#2f3c45 guifg=#e6ecf1 gui=NONE
    hi StatusLineNC ctermbg=0 ctermfg=15 cterm=NONE guibg=#1b242a guifg=#f4f7f9 gui=NONE
    hi VertSplit ctermfg=8 guifg=#596d7c
    hi TabLine ctermbg=0 ctermfg=7 guibg=#2f3c45 guifg=#b9c9d5
    hi TabLineFill ctermbg=NONE ctermfg=0 guibg=NONE guifg=#2f3c45
    hi TabLineSel ctermbg=11 ctermfg=0 guibg=#dfa13e guifg=#2f3c45
    hi Title ctermfg=4 cterm=bold guifg=#5a9bec gui=bold
    hi CursorLine ctermbg=0 ctermfg=NONE guibg=#2f3c45 guifg=NONE
    hi Cursor ctermbg=15 ctermfg=0 guibg=#e6ecf1 guifg=#1b242a
    hi CursorColumn ctermbg=0 guibg=#2f3c45
    hi LineNr ctermfg=8 guifg=#596d7c
    hi CursorLineNr ctermfg=6 guifg=#33acac
    hi helpLeadBlank ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
    hi helpNormal ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
    hi Visual ctermbg=8 ctermfg=15 cterm=bold guibg=#596d7c guifg=#e6ecf1 gui=bold
    hi VisualNOS ctermbg=8 ctermfg=15 cterm=bold guibg=#596d7c guifg=#e6ecf1 gui=bold
    hi Pmenu ctermbg=0 ctermfg=15 guibg=#2f3c45 guifg=#e6ecf1
    hi PmenuSbar ctermbg=8 ctermfg=7 guibg=#596d7c guifg=#b9c9d5
    hi PmenuSel ctermbg=8 ctermfg=15 cterm=bold guibg=#596d7c guifg=#e6ecf1 gui=bold
    hi PmenuThumb ctermbg=7 ctermfg=NONE guibg=#b9c9d5 guifg=NONE
    hi FoldColumn ctermfg=7 guifg=#b9c9d5
    hi Folded ctermfg=12 guifg=#7cb1f5
    hi WildMenu ctermbg=0 ctermfg=15 cterm=NONE guibg=#2f3c45 guifg=#e6ecf1 gui=NONE
    hi SpecialKey ctermfg=0 guifg=#2f3c45
    hi IncSearch ctermbg=1 ctermfg=0 guibg=#ed6677 guifg=#1b242a
    hi CurSearch ctermbg=3 ctermfg=0 guibg=#c68c2e guifg=#1b242a
    hi Search ctermbg=11 ctermfg=0 guibg=#dfa13e guifg=#1b242a
    hi Directory ctermfg=4 guifg=#5a9bec
    hi MatchParen ctermbg=0 ctermfg=3 cterm=bold guibg=#2f3c45 guifg=#c68c2e gui=bold
    hi SpellBad cterm=undercurl gui=undercurl guisp=#f58993
    hi SpellCap cterm=undercurl gui=undercurl guisp=#dfa13e
    hi SpellLocal cterm=undercurl gui=undercurl guisp=#7cb1f5
    hi SpellRare cterm=undercurl gui=undercurl guisp=#7fc453
    hi ColorColumn ctermbg=8 guibg=#596d7c
    hi SignColumn ctermfg=7 guifg=#b9c9d5
    hi ModeMsg ctermbg=15 ctermfg=0 cterm=bold guibg=#f4f7f9 guifg=#2f3c45 gui=bold
    hi MoreMsg ctermfg=4 guifg=#5a9bec
    hi Question ctermfg=4 guifg=#5a9bec
    hi QuickFixLine ctermbg=0 ctermfg=14 guibg=#2f3c45 guifg=#3dc4c4
    hi Conceal ctermfg=8 guifg=#596d7c
    hi ToolbarLine ctermbg=0 ctermfg=15 guibg=#2f3c45 guifg=#f4f7f9
    hi ToolbarButton ctermbg=8 ctermfg=15 guibg=#596d7c guifg=#f4f7f9
    hi debugPC ctermfg=7 guifg=#b9c9d5
    hi debugBreakpoint ctermfg=8 guifg=#596d7c
    hi ErrorMsg ctermfg=1 cterm=bold,italic guifg=#ed6677 gui=bold,italic
    hi WarningMsg ctermfg=11 guifg=#dfa13e
    hi DiffAdd ctermbg=10 ctermfg=0 guibg=#7fc453 guifg=#1b242a
    hi DiffChange ctermbg=12 ctermfg=0 guibg=#7cb1f5 guifg=#1b242a
    hi DiffDelete ctermbg=9 ctermfg=0 guibg=#f58993 guifg=#1b242a
    hi DiffText ctermbg=14 ctermfg=0 guibg=#3dc4c4 guifg=#1b242a
    hi diffAdded ctermfg=10 guifg=#7fc453
    hi diffRemoved ctermfg=9 guifg=#f58993
    hi diffChanged ctermfg=12 guifg=#7cb1f5
    hi diffOldFile ctermfg=11 guifg=#dfa13e
    hi diffNewFile ctermfg=13 guifg=#d18fef
    hi diffFile ctermfg=12 guifg=#7cb1f5
    hi diffLine ctermfg=7 guifg=#b9c9d5
    hi diffIndexLine ctermfg=14 guifg=#3dc4c4
    hi healthError ctermfg=1 guifg=#ed6677
    hi healthSuccess ctermfg=2 guifg=#6ead47
    hi healthWarning ctermfg=3 guifg=#c68c2e
    hi NormalFloat ctermbg=0 ctermfg=15 guibg=#1b242a guifg=#e6ecf1
    hi FloatBorder ctermbg=0 ctermfg=7 guibg=#1b242a guifg=#b9c9d5
    hi FloatShadow ctermbg=0 ctermfg=15 guibg=#2f3c45 guifg=#e6ecf1

elseif &t_Co == 8 || $TERM !~# '^linux' || &t_Co == 16
    set t_Co=16
    hi Normal ctermbg=NONE ctermfg=NONE
    hi NonText ctermfg=0
    hi Comment ctermfg=8 cterm=italic
    hi Constant ctermfg=3
    hi Error ctermfg=1
    hi Identifier ctermfg=9
    hi Function ctermfg=4
    hi Special ctermfg=13
    hi Statement ctermfg=5
    hi String ctermfg=2
    hi Operator ctermfg=6
    hi Boolean ctermfg=3
    hi Label ctermfg=14
    hi Keyword ctermfg=5
    hi Exception ctermfg=5
    hi Conditional ctermfg=5
    hi PreProc ctermfg=13
    hi Include ctermfg=5
    hi Macro ctermfg=5
    hi StorageClass ctermfg=11
    hi Structure ctermfg=11
    hi Todo ctermbg=9 ctermfg=0 cterm=bold
    hi Type ctermfg=11
    hi Underlined cterm=underline
    hi Bold cterm=bold
    hi Italic cterm=italic
    hi Ignore ctermbg=NONE ctermfg=NONE cterm=NONE
    hi StatusLine ctermbg=0 ctermfg=15 cterm=NONE
    hi StatusLineNC ctermbg=0 ctermfg=15 cterm=NONE
    hi VertSplit ctermfg=8
    hi TabLine ctermbg=0 ctermfg=7
    hi TabLineFill ctermbg=NONE ctermfg=0
    hi TabLineSel ctermbg=11 ctermfg=0
    hi Title ctermfg=4 cterm=bold
    hi CursorLine ctermbg=0 ctermfg=NONE
    hi Cursor ctermbg=15 ctermfg=0
    hi CursorColumn ctermbg=0
    hi LineNr ctermfg=8
    hi CursorLineNr ctermfg=6
    hi helpLeadBlank ctermbg=NONE ctermfg=NONE
    hi helpNormal ctermbg=NONE ctermfg=NONE
    hi Visual ctermbg=8 ctermfg=15 cterm=bold
    hi VisualNOS ctermbg=8 ctermfg=15 cterm=bold
    hi Pmenu ctermbg=0 ctermfg=15
    hi PmenuSbar ctermbg=8 ctermfg=7
    hi PmenuSel ctermbg=8 ctermfg=15 cterm=bold
    hi PmenuThumb ctermbg=7 ctermfg=NONE
    hi FoldColumn ctermfg=7
    hi Folded ctermfg=12
    hi WildMenu ctermbg=0 ctermfg=15 cterm=NONE
    hi SpecialKey ctermfg=0
    hi IncSearch ctermbg=1 ctermfg=0
    hi CurSearch ctermbg=3 ctermfg=0
    hi Search ctermbg=11 ctermfg=0
    hi Directory ctermfg=4
    hi MatchParen ctermbg=0 ctermfg=3 cterm=bold
    hi SpellBad cterm=undercurl
    hi SpellCap cterm=undercurl
    hi SpellLocal cterm=undercurl
    hi SpellRare cterm=undercurl
    hi ColorColumn ctermbg=8
    hi SignColumn ctermfg=7
    hi ModeMsg ctermbg=15 ctermfg=0 cterm=bold
    hi MoreMsg ctermfg=4
    hi Question ctermfg=4
    hi QuickFixLine ctermbg=0 ctermfg=14
    hi Conceal ctermfg=8
    hi ToolbarLine ctermbg=0 ctermfg=15
    hi ToolbarButton ctermbg=8 ctermfg=15
    hi debugPC ctermfg=7
    hi debugBreakpoint ctermfg=8
    hi ErrorMsg ctermfg=1 cterm=bold,italic
    hi WarningMsg ctermfg=11
    hi DiffAdd ctermbg=10 ctermfg=0
    hi DiffChange ctermbg=12 ctermfg=0
    hi DiffDelete ctermbg=9 ctermfg=0
    hi DiffText ctermbg=14 ctermfg=0
    hi diffAdded ctermfg=10
    hi diffRemoved ctermfg=9
    hi diffChanged ctermfg=12
    hi diffOldFile ctermfg=11
    hi diffNewFile ctermfg=13
    hi diffFile ctermfg=12
    hi diffLine ctermfg=7
    hi diffIndexLine ctermfg=14
    hi healthError ctermfg=1
    hi healthSuccess ctermfg=2
    hi healthWarning ctermfg=3
    hi NormalFloat ctermbg=0 ctermfg=15
    hi FloatBorder ctermbg=0 ctermfg=7
    hi FloatShadow ctermbg=0 ctermfg=15
endif

hi link EndOfBuffer NonText
hi link SpecialComment Special
hi link Define PreProc
hi link PreCondit PreProc
hi link Number Constant
hi link Float Number
hi link Typedef Type
hi link SpecialChar Special
hi link Debug Special
hi link StatusLineTerm StatusLine
hi link StatusLineTermNC StatusLineNC
hi link WinSeparator VertSplit
hi link WinBar StatusLine
hi link WinBarNC StatusLineNC
hi link lCursor Cursor
hi link CursorIM Cursor
hi link Terminal Normal

if (has('termguicolors') && &termguicolors) || has('gui_running')
    let g:terminal_ansi_colors = [ '#2f3c45', '#ed6677', '#6ead47', '#c68c2e', '#5a9bec', '#c36ee7', '#33acac', '#b9c9d5', '#596d7c', '#f58993', '#7fc453', '#dfa13e', '#7cb1f5', '#d18fef', '#3dc4c4', '#f4f7f9' ]
endif
