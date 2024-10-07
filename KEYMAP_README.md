# Keymap Cheat Sheet

This table contains the keymaps used in Neovim with their associated commands and descriptions.

| Mode  | Key | Command | Description |
|-------|-----|---------|-------------|
| Normal | <Esc> | <Cmd>nohlsearch<CR> | Clear search highlights |
| Normal |  e | [No command] | [F]ormat buffer |
| Normal |  gr | <Cmd>:ChatGPTRun<CR> | ADD DESCRIPTION |
| Normal |  gt | <Cmd>:ChatGPTEditWithInstructions<CR> | ADD DESCRIPTION |
| Normal |  gA | <Cmd>:ChatGPTActAs<CR> | ADD DESCRIPTION |
| Normal |  ga | <Cmd>:ChatGPT<CR> | ADD DESCRIPTION |
| Normal |  - | [No command] | ADD DESCRIPTION |
| Normal |  bp | [No command] | [B]reakpoint [S]et |
| Normal |  bt | [No command] | [B]reakpoint [T]oggle |
| Normal |  fq | [No command] | [F]requency search |
| Normal |  fz | [No command] | [F]ind with Args |
| Normal |  fs/ | [No command] | [F]ind [S]earch in Open Files |
| Normal |  f/ | [No command] | [F]ind in current buffer |
| Normal |  ghp | [No command] | [G]ithub [P]ull Requests |
| Normal |  ghr | [No command] | [G]ithub [I]ssues |
| Normal |  fn | [No command] | [F]ind [N]eovim files |
| Normal |  fa | [No command] | [F]ind with [A]rgs (live grep) |
| Normal |  fc | [No command] | [F]ind [C]olorscheme with preview |
| Normal |    | [No command] | [ ] Find existing buffers |
| Normal |  f. | [No command] | [F]ind Recent Files |
| Normal |  fr | [No command] | [F]ind [R]esume |
| Normal |  fd | [No command] | [F]ind [D]iagnostics |
| Normal |  fg | [No command] | [F]ind by [G]rep |
| Normal |  fw | [No command] | [F]ind current [W]ord |
| Normal |  fs | [No command] | [F]ind [S]elect Telescope |
| Normal |  ff | [No command] | [F]ind [F]iles |
| Normal |  fk | [No command] | [F]ind [K]eymaps |
| Normal |  fh | [No command] | [F]ind [H]elp |
| Normal |  nd | <Cmd>NoiceDismiss<CR> | Dismiss Noice Message |
| Normal |  fml | [No command] | ADD DESCRIPTION |
| Normal |  a | [No command] | harpoon quick menu |
| Normal |  A | [No command] | harpoon file |
| Normal |  5 | [No command] | harpoon to file 5 |
| Normal |  4 | [No command] | harpoon to file 4 |
| Normal |  3 | [No command] | harpoon to file 3 |
| Normal |  2 | [No command] | harpoon to file 2 |
| Normal |  1 | [No command] | harpoon to file 1 |
| Normal |  lg | [No command] | LazyGit |
| Normal |  cfj | :s/{\s*/{\r    / | s/: /: \r    /g | s/, /,\r    /g | s/\s*}/\r}/<CR> | [C]ode [F]ormat JSON object |
| Normal |  cfl | :s/{\s*/{\r    / | s/, /,\r    /g | s/\s*}/\r}/<CR> | [C]ode [F]ormat Lua object |
| Normal |  gd | :s/\v\s*(\/\/|--|#).*//<CR> | [D]elete [C]omments |
| Normal |  d | "_dd | [D]elete into " register |
| Normal |  ya | gg"+yG | [Y]ank entire file into " register in normal mode |
| Normal |  Y | "+Y | [Y]ank entire line into " register in normal mode |
| Normal |  y | "+y | [Y]ank selected text into " register in normal mode |
| Normal |  q | [No command] | Open diagnostic [Q]uickfix list |
| Normal |  bf | <Cmd>BufferLineGoToBuffer 1<CR> | [B]uffer [F]irst |
| Normal |  bc | <Cmd>BufferLinePickClose<CR> | [B]uffer [C]lose pick |
| Normal |  bl | [No command] | ADD DESCRIPTION |
| Normal |  bh | <Cmd>BufferLineMovePrev<CR> | [B]uffer move [L]eft |
| Normal |  bo | <Cmd>%bd|e#|bd#<CR> | [B]uffer [O]nly keep current |
| Normal |  ba | <Cmd>%bd|e#|bd#<CR> | [B]uffer delete [A]ll |
| Normal |  bd | <Cmd>bdelete<CR> | [B]uffer [D]elete |
| Normal |  bb | <Cmd>b#<CR> | [B]uffer toggle between [B]uffers |
| Normal |  bn | <Cmd>bnext<CR> | [B]uffer [N]ext |
| Normal |  ) | ciw(<C-R>") | Replace word in parentheses [)] |
| Normal |  ] | ciw[<C-R>"] | Replace word in square brackets [] |
| Normal |  } | ciw{<C-R>"} | Replace word in curly braces [}] |
| Normal |  ' | ciw'<C-R>"' | Replace word in single quotes ['] |
| Normal |  " | ciw"<C-R>"" | Replace word in quotes [" |
| Normal |  ss | :!tmux popup -E bash ~/dotfiles/tmux/tmux-sessionizer.sh<CR> | ADD DESCRIPTION |
| Normal |   i | :e ~/.config/nvim/<CR> | Open [I]nit config |
| Normal |  w | :setlocal formatoptions-=cro<CR>:w<CR> | [W]rite without auto comment |
| Normal |  r | :%s/\<lt><C-R><C-W>\>/<C-R><C-W>/gI<Left><Left><Left> | [R]eplace word under cursor |
| Normal | % | <Plug>(MatchitNormalForward) | ADD DESCRIPTION |
| Normal | & | :&&<CR> | :help &-default |
| Normal | , | [No command] | ADD DESCRIPTION |
| Normal | - | <Cmd>Oil<CR> | Open parent directory |
| Normal | ; | [No command] | ADD DESCRIPTION |
| Normal | F | [No command] | ADD DESCRIPTION |
| Normal | S | [No command] | [S]earch with Flash Treesitter in Normal, Visual, and Operator mode |
| Normal | T | [No command] | ADD DESCRIPTION |
| Normal | Y | y$ | :help Y-default |
| Normal | [% | <Plug>(MatchitNormalMultiBackward) | ADD DESCRIPTION |
| Normal | [b | <Cmd>bprevious<CR> | [B]uffer [P]revious |
| Normal | [d | [No command] | Jump to the previous diagnostic |
| Normal | ]% | <Plug>(MatchitNormalMultiForward) | ADD DESCRIPTION |
| Normal | ]b | <Cmd>bnext<CR> | [B]uffer [N]ext |
| Normal | ]d | [No command] | Jump to the next diagnostic |
| Normal | f | [No command] | ADD DESCRIPTION |
| Normal | g% | <Plug>(MatchitNormalBackward) | ADD DESCRIPTION |
| Normal | g] | [No command] | Move to right "around" |
| Normal | g[ | [No command] | Move to left "around" |
| Normal | gcc | [No command] | Toggle comment line |
| Normal | gc | [No command] | Toggle comment |
| Normal | gx | [No command] | Opens filepath or URI under cursor with the system handler (file explorer, web browser, …) |
| Normal | s | [No command] | [S]earch with Flash jump in Normal, Visual, and Operator mode |
| Normal | shn | [No command] | Highlight next surrounding |
| Normal | sFn | [No command] | Find next left surrounding |
| Normal | sfn | [No command] | Find next right surrounding |
| Normal | srn | [No command] | Replace next surrounding |
| Normal | sdn | [No command] | Delete next surrounding |
| Normal | shl | [No command] | Highlight previous surrounding |
| Normal | sFl | [No command] | Find previous left surrounding |
| Normal | sfl | [No command] | Find previous right surrounding |
| Normal | srl | [No command] | Replace previous surrounding |
| Normal | sdl | [No command] | Delete previous surrounding |
| Normal | sn | [No command] | Update `MiniSurround.config.n_lines` |
| Normal | sh | [No command] | Highlight surrounding |
| Normal | sF | [No command] | Find left surrounding |
| Normal | sf | [No command] | Find right surrounding |
| Normal | sr | [No command] | Replace surrounding |
| Normal | sd | [No command] | Delete surrounding |
| Normal | sa | [No command] | Add surrounding |
| Normal | t | [No command] | ADD DESCRIPTION |
| Normal | zK | [No command] | Peek Fold |
| Normal | zM | [No command] | Close all folds |
| Normal | zR | [No command] | Open all folds |
| Normal | <Plug>luasnip-expand-repeat | [No command] | LuaSnip: Repeat last node expansion |
| Normal | <Plug>luasnip-delete-check | [No command] | LuaSnip: Removes current snippet from jumplist |
| Normal | <Plug>(MatchitNormalMultiForward) | :<C-U>call matchit#MultiMatch("W",  "n")<CR> | ADD DESCRIPTION |
| Normal | <Plug>(MatchitNormalMultiBackward) | :<C-U>call matchit#MultiMatch("bW", "n")<CR> | ADD DESCRIPTION |
| Normal | <Plug>(MatchitNormalBackward) | :<C-U>call matchit#Match_wrapper('',0,'n')<CR> | ADD DESCRIPTION |
| Normal | <Plug>(MatchitNormalForward) | :<C-U>call matchit#Match_wrapper('',1,'n')<CR> | ADD DESCRIPTION |
| Normal | <F3> | [No command] | [F3] Step Out |
| Normal | <F2> | [No command] | [F2] Step Over |
| Normal | <F1> | [No command] | [F1] Step Into |
| Normal | <F5> | [No command] | [F5] Start/Continue |
| Normal | <F7> | [No command] | [F7] See last session result |
| Normal | <Plug>PlenaryTestFile | :lua require('plenary.test_harness').test_file(vim.fn.expand("%:p"))<CR> | ADD DESCRIPTION |
| Normal | <C-K> | <Cmd>NvimTmuxNavigateUp<CR> | ADD DESCRIPTION |
| Normal | <C-J> | <Cmd>NvimTmuxNavigateDown<CR> | ADD DESCRIPTION |
| Normal | <C-H> | <Cmd>NvimTmuxNavigateLeft<CR> | ADD DESCRIPTION |
| Normal | <Down> | <Cmd>echo "Use j to move!!"<CR> | Discourage using [Down] arrow |
| Normal | <Up> | <Cmd>echo "Use k to move!!"<CR> | Discourage using [Up] arrow |
| Normal | <Right> | <Cmd>echo "Use l to move!!"<CR> | Discourage using [Right] arrow |
| Normal | <Left> | <Cmd>echo "Use h to move!!"<CR> | Discourage using [Left] arrow |
| Normal | <C-Right> | :vertical resize +2<CR> | Resize vertical split [Right] |
| Normal | <C-Left> | :vertical resize -2<CR> | Resize vertical split [Left] |
| Normal | <C-S-Up> | :resize -2<CR> | Resize horizontal split [Up] |
| Normal | <C-S-Down> | :resize +2<CR> | Resize horizontal split [Down] |
| Normal | <C-W><C-D> | <C-W>d | Show diagnostics under the cursor |
| Normal | <C-W>d | [No command] | Show diagnostics under the cursor |
| Normal | <C-L> | <Cmd>NvimTmuxNavigateRight<CR> | ADD DESCRIPTION |
| Insert | <C-H> | [No command] | cmp.utils.keymap.set_map |
| Insert | <Up> | [No command] | cmp.utils.keymap.set_map |
| Insert | <C-B> | [No command] | cmp.utils.keymap.set_map |
| Insert | <Down> | [No command] | cmp.utils.keymap.set_map |
| Insert | <C-N> | [No command] | cmp.utils.keymap.set_map |
| Insert | <S-Tab> | [No command] | cmp.utils.keymap.set_map |
| Insert | <C-Y> | [No command] | cmp.utils.keymap.set_map |
| Insert | <C-P> | [No command] | cmp.utils.keymap.set_map |
| Insert | <C-F> | [No command] | cmp.utils.keymap.set_map |
| Insert | <C-Space> | [No command] | cmp.utils.keymap.set_map |
| Insert | <C-E> | [No command] | cmp.utils.keymap.set_map |
| Insert | <C-X> | [No command] | Codeium Clear |
| Insert | <C-G> | [No command] | Codeium Accept |
| Insert | <C-L> | [No command] | cmp.utils.keymap.set_map |
| Insert | <C-K> | codeium#AcceptNextWord() | ADD DESCRIPTION |
| Insert | <M-Bslash> | <Plug>(codeium-complete) | ADD DESCRIPTION |
| Insert | <M-[> | <Plug>(codeium-previous) | ADD DESCRIPTION |
| Insert | <M-]> | <Plug>(codeium-next-or-complete) | ADD DESCRIPTION |
| Insert | <C-]> | [No command] | Codeium Cycle Completions Next |
| Insert | <Plug>(codeium-complete) | <Cmd>call codeium#Complete()<CR> | ADD DESCRIPTION |
| Insert | <Plug>(codeium-previous) | <Cmd>call codeium#CycleCompletions(-1)<CR> | ADD DESCRIPTION |
| Insert | <Plug>(codeium-next-or-complete) | <Cmd>call codeium#CycleOrComplete()<CR> | ADD DESCRIPTION |
| Insert | <Plug>(codeium-next) | <Cmd>call codeium#CycleCompletions(1)<CR> | ADD DESCRIPTION |
| Insert | <Plug>(codeium-dismiss) | <Cmd>call codeium#Clear()<CR> | ADD DESCRIPTION |
| Insert | <Plug>luasnip-expand-repeat | [No command] | LuaSnip: Repeat last node expansion |
| Insert | <Plug>luasnip-delete-check | [No command] | LuaSnip: Removes current snippet from jumplist |
| Insert | <Plug>luasnip-jump-prev | [No command] | LuaSnip: Jump to the previous node |
| Insert | <Plug>luasnip-jump-next | [No command] | LuaSnip: Jump to the next node |
| Insert | <Plug>luasnip-prev-choice | [No command] | LuaSnip: Change to the previous choice from the choiceNode |
| Insert | <Plug>luasnip-next-choice | [No command] | LuaSnip: Change to the next choice from the choiceNode |
| Insert | <Plug>luasnip-expand-snippet | [No command] | LuaSnip: Expand the current snippet |
| Insert | <Plug>luasnip-expand-or-jump | [No command] | LuaSnip: Expand or jump in the current snippet |
| Insert | <C-W> | <C-G>u<C-W> | :help i_CTRL-W-default |
| Insert | <C-U> | <C-G>u<C-U> | :help i_CTRL-U-default |
| Insert | <Tab> | [No command] | cmp.utils.keymap.set_map |
| Insert | <CR> | [No command] | cmp.utils.keymap.set_map |
| Visual |  e | [No command] | [F]ormat buffer |
| Visual |  cfj | :s/{\s*/{\r    / | s/: /: \r    /g | s/, /,\r    /g | s/\s*}/\r}/<CR> | [C]ode [F]ormat JSON object |
| Visual |  cfl | :s/{\s*/{\r    / | s/, /,\r    /g | s/\s*}/\r}/<CR> | [C]ode [F]ormat Lua object |
| Visual |  gd | :s/\v\s*(\/\/|--|#).*//<CR> | [D]elete [C]omments |
| Visual |  d | "_dd | [D]elete into " register |
| Visual |  ya | gg"+yG | [Y]ank entire file into " register in visual mode |
| Visual |  y | "+y | [Y]ank selected text into " register in visual mode |
| Visual |  ) | c(<C-R>") | Replace selection with parentheses [)] |
| Visual |  ] | c[<C-R>"] | Replace selection with square brackets [] |
| Visual |  } | c{<C-R>"} | Replace selection with curly braces [}] |
| Visual |  ' | c'<C-R>"' | Replace selection with single quotes ['] |
| Visual |  " | c"<C-R>"" | Replace selection with quotes [" |
| Visual | # | [No command] | :help v_#-default |
| Visual | % | <Plug>(MatchitVisualForward) | ADD DESCRIPTION |
| Visual | * | [No command] | :help v_star-default |
| Visual | , | [No command] | ADD DESCRIPTION |
| Visual | // | y/<C-R>"<CR> | Search for highlighted text in buffer |
| Visual | ; | [No command] | ADD DESCRIPTION |
| Visual | <lt> | <lt>gv | Indent left and stay in indent mode |
| Visual | > | >gv | Indent right and stay in indent mode |
| Visual | @ | mode() ==# 'V' ? ':normal! @'.getcharstr().'<CR>' : '@' | :help v_@-default |
| Visual | F | [No command] | ADD DESCRIPTION |
| Visual | J | :m '>+1<CR>gv=gv | Move selected line [J]own |
| Visual | K | :m '<lt>-2<CR>gv=gv | Move selected line [K]up |
| Visual | Q | mode() ==# 'V' ? ':normal! @<C-R>=reg_recorded()<CR><CR>' : 'Q' | :help v_Q-default |
| Visual | R | [No command] | [R]emote Treesitter Search in Operator and Visual mode |
| Visual | S | [No command] | [S]earch with Flash Treesitter in Normal, Visual, and Operator mode |
| Visual | T | [No command] | ADD DESCRIPTION |
| Visual | [% | <Plug>(MatchitVisualMultiBackward) | ADD DESCRIPTION |
| Visual | ]% | <Plug>(MatchitVisualMultiForward) | ADD DESCRIPTION |
| Visual | a% | <Plug>(MatchitVisualTextObject) | ADD DESCRIPTION |
| Visual | al | [No command] | Around last textobject |
| Visual | an | [No command] | Around next textobject |
| Visual | a | [No command] | Around textobject |
| Visual | f | [No command] | ADD DESCRIPTION |
| Visual | g% | <Plug>(MatchitVisualBackward) | ADD DESCRIPTION |
| Visual | g] | [No command] | Move to right "around" |
| Visual | g[ | [No command] | Move to left "around" |
| Visual | gc | [No command] | Toggle comment |
| Visual | gx | [No command] | Opens filepath or URI under cursor with the system handler (file explorer, web browser, …) |
| Visual | il | [No command] | Inside last textobject |
| Visual | in | [No command] | Inside next textobject |
| Visual | i | [No command] | Inside textobject |
| Visual | s | [No command] | [S]earch with Flash jump in Normal, Visual, and Operator mode |
| Visual | sa | :<C-U>lua MiniSurround.add('visual')<CR> | Add surrounding to selection |
| Visual | t | [No command] | ADD DESCRIPTION |
| Visual | <C-H> | [No command] | cmp.utils.keymap.set_map |
| Visual | <C-L> | [No command] | cmp.utils.keymap.set_map |
| Visual | <Plug>luasnip-jump-prev | [No command] | LuaSnip: Jump to the previous node |
| Visual | <Plug>luasnip-jump-next | [No command] | LuaSnip: Jump to the next node |
| Visual | <Plug>luasnip-prev-choice | [No command] | LuaSnip: Change to the previous choice from the choiceNode |
| Visual | <Plug>luasnip-next-choice | [No command] | LuaSnip: Change to the next choice from the choiceNode |
| Visual | <Plug>luasnip-expand-snippet | [No command] | LuaSnip: Expand the current snippet |
| Visual | <Plug>luasnip-expand-or-jump | [No command] | LuaSnip: Expand or jump in the current snippet |
| Visual | <Plug>luasnip-expand-repeat | [No command] | LuaSnip: Repeat last node expansion |
| Visual | <Plug>(MatchitVisualTextObject) | <Plug>(MatchitVisualMultiBackward)o<Plug>(MatchitVisualMultiForward) | ADD DESCRIPTION |
| Visual | <Plug>(MatchitVisualMultiForward) | :<C-U>call matchit#MultiMatch("W",  "n")<CR>m'gv`` | ADD DESCRIPTION |
| Visual | <Plug>(MatchitVisualMultiBackward) | :<C-U>call matchit#MultiMatch("bW", "n")<CR>m'gv`` | ADD DESCRIPTION |
| Visual | <Plug>(MatchitVisualBackward) | :<C-U>call matchit#Match_wrapper('',0,'v')<CR>m'gv`` | ADD DESCRIPTION |
| Visual | <Plug>(MatchitVisualForward) | :<C-U>call matchit#Match_wrapper('',1,'v')<CR>:if col("''") != col("$") | exe ":normal! m'" | endif<CR>gv`` | ADD DESCRIPTION |
| Visual (Selection) |  e | [No command] | [F]ormat buffer |
| Visual (Selection) |  cfj | :s/{\s*/{\r    / | s/: /: \r    /g | s/, /,\r    /g | s/\s*}/\r}/<CR> | [C]ode [F]ormat JSON object |
| Visual (Selection) |  cfl | :s/{\s*/{\r    / | s/, /,\r    /g | s/\s*}/\r}/<CR> | [C]ode [F]ormat Lua object |
| Visual (Selection) |  gd | :s/\v\s*(\/\/|--|#).*//<CR> | [D]elete [C]omments |
| Visual (Selection) |  d | "_dd | [D]elete into " register |
| Visual (Selection) |  ya | gg"+yG | [Y]ank entire file into " register in visual mode |
| Visual (Selection) |  y | "+y | [Y]ank selected text into " register in visual mode |
| Visual (Selection) |  ) | c(<C-R>") | Replace selection with parentheses [)] |
| Visual (Selection) |  ] | c[<C-R>"] | Replace selection with square brackets [] |
| Visual (Selection) |  } | c{<C-R>"} | Replace selection with curly braces [}] |
| Visual (Selection) |  ' | c'<C-R>"' | Replace selection with single quotes ['] |
| Visual (Selection) |  " | c"<C-R>"" | Replace selection with quotes [" |
| Visual (Selection) | # | [No command] | :help v_#-default |
| Visual (Selection) | % | <Plug>(MatchitVisualForward) | ADD DESCRIPTION |
| Visual (Selection) | * | [No command] | :help v_star-default |
| Visual (Selection) | , | [No command] | ADD DESCRIPTION |
| Visual (Selection) | // | y/<C-R>"<CR> | Search for highlighted text in buffer |
| Visual (Selection) | ; | [No command] | ADD DESCRIPTION |
| Visual (Selection) | <lt> | <lt>gv | Indent left and stay in indent mode |
| Visual (Selection) | > | >gv | Indent right and stay in indent mode |
| Visual (Selection) | @ | mode() ==# 'V' ? ':normal! @'.getcharstr().'<CR>' : '@' | :help v_@-default |
| Visual (Selection) | F | [No command] | ADD DESCRIPTION |
| Visual (Selection) | J | :m '>+1<CR>gv=gv | Move selected line [J]own |
| Visual (Selection) | K | :m '<lt>-2<CR>gv=gv | Move selected line [K]up |
| Visual (Selection) | Q | mode() ==# 'V' ? ':normal! @<C-R>=reg_recorded()<CR><CR>' : 'Q' | :help v_Q-default |
| Visual (Selection) | R | [No command] | [R]emote Treesitter Search in Operator and Visual mode |
| Visual (Selection) | S | [No command] | [S]earch with Flash Treesitter in Normal, Visual, and Operator mode |
| Visual (Selection) | T | [No command] | ADD DESCRIPTION |
| Visual (Selection) | [% | <Plug>(MatchitVisualMultiBackward) | ADD DESCRIPTION |
| Visual (Selection) | ]% | <Plug>(MatchitVisualMultiForward) | ADD DESCRIPTION |
| Visual (Selection) | a% | <Plug>(MatchitVisualTextObject) | ADD DESCRIPTION |
| Visual (Selection) | al | [No command] | Around last textobject |
| Visual (Selection) | an | [No command] | Around next textobject |
| Visual (Selection) | a | [No command] | Around textobject |
| Visual (Selection) | f | [No command] | ADD DESCRIPTION |
| Visual (Selection) | g% | <Plug>(MatchitVisualBackward) | ADD DESCRIPTION |
| Visual (Selection) | g] | [No command] | Move to right "around" |
| Visual (Selection) | g[ | [No command] | Move to left "around" |
| Visual (Selection) | gc | [No command] | Toggle comment |
| Visual (Selection) | gx | [No command] | Opens filepath or URI under cursor with the system handler (file explorer, web browser, …) |
| Visual (Selection) | il | [No command] | Inside last textobject |
| Visual (Selection) | in | [No command] | Inside next textobject |
| Visual (Selection) | i | [No command] | Inside textobject |
| Visual (Selection) | s | [No command] | [S]earch with Flash jump in Normal, Visual, and Operator mode |
| Visual (Selection) | sa | :<C-U>lua MiniSurround.add('visual')<CR> | Add surrounding to selection |
| Visual (Selection) | t | [No command] | ADD DESCRIPTION |
| Visual (Selection) | <Plug>luasnip-expand-repeat | [No command] | LuaSnip: Repeat last node expansion |
| Visual (Selection) | <Plug>(MatchitVisualTextObject) | <Plug>(MatchitVisualMultiBackward)o<Plug>(MatchitVisualMultiForward) | ADD DESCRIPTION |
| Visual (Selection) | <Plug>(MatchitVisualMultiForward) | :<C-U>call matchit#MultiMatch("W",  "n")<CR>m'gv`` | ADD DESCRIPTION |
| Visual (Selection) | <Plug>(MatchitVisualMultiBackward) | :<C-U>call matchit#MultiMatch("bW", "n")<CR>m'gv`` | ADD DESCRIPTION |
| Visual (Selection) | <Plug>(MatchitVisualBackward) | :<C-U>call matchit#Match_wrapper('',0,'v')<CR>m'gv`` | ADD DESCRIPTION |
| Visual (Selection) | <Plug>(MatchitVisualForward) | :<C-U>call matchit#Match_wrapper('',1,'v')<CR>:if col("''") != col("$") | exe ":normal! m'" | endif<CR>gv`` | ADD DESCRIPTION |
| Command | <C-S> | [No command] | Toggle Flash Search in Command mode |
| Command | <Plug>luasnip-expand-repeat | [No command] | LuaSnip: Repeat last node expansion |
| Command | <Plug>luasnip-delete-check | [No command] | LuaSnip: Removes current snippet from jumplist |
| Command | <Plug>(TelescopeFuzzyCommandSearch) | <C-\>e "lua require('telescope.builtin').command_history { default_text = [=[" . escape(getcmdline(), '"') . "]=] }"<CR><CR> | ADD DESCRIPTION |
| Terminal | <C-T> | <C-\><C-N> | Exit terminal mode |
