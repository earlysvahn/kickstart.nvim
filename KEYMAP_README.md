# Keymap Cheat Sheet

This table contains the keymaps used in Neovim with their associated commands and descriptions.

| Mode  | Key | Command | Description |
|-------|-----|---------|-------------|
| Normal | <Esc> | <Cmd>nohlsearch<CR> | Clear search highlights |
| Normal |  freq | [No command] | [F]requency search |
| Normal |  Z | [No command] | [Z] Search with Args |
| Normal |  s/ | [No command] | [S]earch [/] in Open Files |
| Normal |  / | [No command] | [/] Fuzzily search in current buffer |
| Normal |  ghp | [No command] | [G]ithub [P]ull Requests |
| Normal |  ghr | [No command] | [G]ithub [I]ssues |
| Normal |  sn | [No command] | [S]earch [N]eovim files |
| Normal |  sa | [No command] | [S]earch with [A]rgs (live grep) |
| Normal |  cs | [No command] | [C]hoose [S]cheme with preview |
| Normal |    | [No command] | [ ] Find existing buffers |
| Normal |  s. | [No command] | [S]earch Recent Files ("." for repeat) |
| Normal |  sr | [No command] | [S]earch [R]esume |
| Normal |  sd | [No command] | [S]earch [D]iagnostics |
| Normal |  sg | [No command] | [S]earch by [G]rep |
| Normal |  sw | [No command] | [S]earch current [W]ord |
| Normal |  ss | [No command] | [S]earch [S]elect Telescope |
| Normal |  sf | [No command] | [S]earch [F]iles |
| Normal |  sk | [No command] | [S]earch [K]eymaps |
| Normal |  sh | [No command] | [S]earch [H]elp |
| Normal |  nd | <Cmd>NoiceDismiss<CR> | Dismiss Noice Message |
| Normal |  bp | [No command] | [B]reakpoint [S]et |
| Normal |  bt | [No command] | [B]reakpoint [T]oggle |
| Normal |  - | [No command] | ADD DESCRIPTION |
| Normal |  e | [No command] | NeoTree reveal |
| Normal |  4 | [No command] | harpoon to file 4 |
| Normal |  3 | [No command] | harpoon to file 3 |
| Normal |  2 | [No command] | harpoon to file 2 |
| Normal |  1 | [No command] | harpoon to file 1 |
| Normal |  a | [No command] | harpoon quick menu |
| Normal |  A | [No command] | harpoon file |
| Normal |  5 | [No command] | harpoon to file 5 |
| Normal |  f | [No command] | [F]ormat buffer |
| Normal |  fml | [No command] | ADD DESCRIPTION |
| Normal |  cfj | :s/{\s*/{\r    / | s/: /: \r    /g | s/, /,\r    /g | s/\s*}/\r}/<CR> | [C]ode [F]ormat JSON object |
| Normal |  cfl | :s/{\s*/{\r    / | s/, /,\r    /g | s/\s*}/\r}/<CR> | [C]ode [F]ormat Lua object |
| Normal |  d | "_dd | [D]elete into " register |
| Normal |  ya | gg"+yG | [Y]ank entire file into " register in normal mode |
| Normal |  Y | "+Y | [Y]ank entire line into " register in normal mode |
| Normal |  y | "+y | [Y]ank selected text into " register in normal mode |
| Normal |  q | [No command] | Open diagnostic [Q]uickfix list |
| Normal |  ) | ciw(<C-R>") | Replace word in parentheses [)] |
| Normal |  ] | ciw[<C-R>"] | Replace word in square brackets [] |
| Normal |  } | ciw{<C-R>"} | Replace word in curly braces [}] |
| Normal |  ' | ciw'<C-R>"' | Replace word in single quotes ['] |
| Normal |  " | ciw"<C-R>"" | Replace word in quotes [" |
| Normal |   i | :e ~/.config/nvim/<CR> | Open [I]nit config |
| Normal |  w | :setlocal formatoptions-=cro<CR>:w<CR> | [W]rite without auto comment |
| Normal |  r | :%s/\<lt><C-R><C-W>\>/<C-R><C-W>/gI<Left><Left><Left> | [R]eplace word under cursor |
| Normal | % | <Plug>(MatchitNormalForward) | ADD DESCRIPTION |
| Normal | & | :&&<CR> | :help &-default |
| Normal | - | <Cmd>Oil<CR> | Open parent directory |
| Normal | Y | y$ | :help Y-default |
| Normal | [% | <Plug>(MatchitNormalMultiBackward) | ADD DESCRIPTION |
| Normal | [d | [No command] | Jump to the previous diagnostic |
| Normal | ]% | <Plug>(MatchitNormalMultiForward) | ADD DESCRIPTION |
| Normal | ]d | [No command] | Jump to the next diagnostic |
| Normal | g% | <Plug>(MatchitNormalBackward) | ADD DESCRIPTION |
| Normal | g] | [No command] | Move to right "around" |
| Normal | g[ | [No command] | Move to left "around" |
| Normal | gcc | [No command] | Toggle comment line |
| Normal | gc | [No command] | Toggle comment |
| Normal | gx | [No command] | Opens filepath or URI under cursor with the system handler (file explorer, web browser, …) |
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
| Normal | zK | [No command] | Peek Fold |
| Normal | zM | [No command] | Close all folds |
| Normal | zR | [No command] | Open all folds |
| Normal | <Plug>PlenaryTestFile | :lua require('plenary.test_harness').test_file(vim.fn.expand("%:p"))<CR> | ADD DESCRIPTION |
| Normal | <Plug>(MatchitNormalMultiForward) | :<C-U>call matchit#MultiMatch("W",  "n")<CR> | ADD DESCRIPTION |
| Normal | <Plug>(MatchitNormalMultiBackward) | :<C-U>call matchit#MultiMatch("bW", "n")<CR> | ADD DESCRIPTION |
| Normal | <Plug>(MatchitNormalBackward) | :<C-U>call matchit#Match_wrapper('',0,'n')<CR> | ADD DESCRIPTION |
| Normal | <Plug>(MatchitNormalForward) | :<C-U>call matchit#Match_wrapper('',1,'n')<CR> | ADD DESCRIPTION |
| Normal | <F7> | [No command] | [F7] See last session result |
| Normal | <F3> | [No command] | [F3] Step Out |
| Normal | <F2> | [No command] | [F2] Step Over |
| Normal | <F1> | [No command] | [F1] Step Into |
| Normal | <F5> | [No command] | [F5] Start/Continue |
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
| Insert | <C-X> | [No command] | Codeium Clear |
| Insert | <C-G> | [No command] | Codeium Accept |
| Insert | <C-L> | codeium#AcceptNextLine() | ADD DESCRIPTION |
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
| Insert | <C-W> | <C-G>u<C-W> | :help i_CTRL-W-default |
| Insert | <C-U> | <C-G>u<C-U> | :help i_CTRL-U-default |
| Insert | <Tab> | codeium#Accept() | ADD DESCRIPTION |
| Visual |  f | [No command] | [F]ormat buffer |
| Visual |  cfj | :s/{\s*/{\r    / | s/: /: \r    /g | s/, /,\r    /g | s/\s*}/\r}/<CR> | [C]ode [F]ormat JSON object |
| Visual |  cfl | :s/{\s*/{\r    / | s/, /,\r    /g | s/\s*}/\r}/<CR> | [C]ode [F]ormat Lua object |
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
| Visual | // | y/<C-R>"<CR> | Search for highlighted text in buffer |
| Visual | <lt> | <lt>gv | Indent left and stay in indent mode |
| Visual | > | >gv | Indent right and stay in indent mode |
| Visual | @ | mode() ==# 'V' ? ':normal! @'.getcharstr().'<CR>' : '@' | :help v_@-default |
| Visual | J | :m '>+1<CR>gv=gv | Move selected line [J]own |
| Visual | K | :m '<lt>-2<CR>gv=gv | Move selected line [K]up |
| Visual | Q | mode() ==# 'V' ? ':normal! @<C-R>=reg_recorded()<CR><CR>' : 'Q' | :help v_Q-default |
| Visual | [% | <Plug>(MatchitVisualMultiBackward) | ADD DESCRIPTION |
| Visual | ]% | <Plug>(MatchitVisualMultiForward) | ADD DESCRIPTION |
| Visual | a% | <Plug>(MatchitVisualTextObject) | ADD DESCRIPTION |
| Visual | al | [No command] | Around last textobject |
| Visual | an | [No command] | Around next textobject |
| Visual | a | [No command] | Around textobject |
| Visual | g% | <Plug>(MatchitVisualBackward) | ADD DESCRIPTION |
| Visual | g] | [No command] | Move to right "around" |
| Visual | g[ | [No command] | Move to left "around" |
| Visual | gc | [No command] | Toggle comment |
| Visual | gx | [No command] | Opens filepath or URI under cursor with the system handler (file explorer, web browser, …) |
| Visual | il | [No command] | Inside last textobject |
| Visual | in | [No command] | Inside next textobject |
| Visual | i | [No command] | Inside textobject |
| Visual | sa | :<C-U>lua MiniSurround.add('visual')<CR> | Add surrounding to selection |
| Visual | <Plug>(MatchitVisualTextObject) | <Plug>(MatchitVisualMultiBackward)o<Plug>(MatchitVisualMultiForward) | ADD DESCRIPTION |
| Visual | <Plug>(MatchitVisualMultiForward) | :<C-U>call matchit#MultiMatch("W",  "n")<CR>m'gv`` | ADD DESCRIPTION |
| Visual | <Plug>(MatchitVisualMultiBackward) | :<C-U>call matchit#MultiMatch("bW", "n")<CR>m'gv`` | ADD DESCRIPTION |
| Visual | <Plug>(MatchitVisualBackward) | :<C-U>call matchit#Match_wrapper('',0,'v')<CR>m'gv`` | ADD DESCRIPTION |
| Visual | <Plug>(MatchitVisualForward) | :<C-U>call matchit#Match_wrapper('',1,'v')<CR>:if col("''") != col("$") | exe ":normal! m'" | endif<CR>gv`` | ADD DESCRIPTION |
| Visual (Selection) |  f | [No command] | [F]ormat buffer |
| Visual (Selection) |  cfj | :s/{\s*/{\r    / | s/: /: \r    /g | s/, /,\r    /g | s/\s*}/\r}/<CR> | [C]ode [F]ormat JSON object |
| Visual (Selection) |  cfl | :s/{\s*/{\r    / | s/, /,\r    /g | s/\s*}/\r}/<CR> | [C]ode [F]ormat Lua object |
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
| Visual (Selection) | // | y/<C-R>"<CR> | Search for highlighted text in buffer |
| Visual (Selection) | <lt> | <lt>gv | Indent left and stay in indent mode |
| Visual (Selection) | > | >gv | Indent right and stay in indent mode |
| Visual (Selection) | @ | mode() ==# 'V' ? ':normal! @'.getcharstr().'<CR>' : '@' | :help v_@-default |
| Visual (Selection) | J | :m '>+1<CR>gv=gv | Move selected line [J]own |
| Visual (Selection) | K | :m '<lt>-2<CR>gv=gv | Move selected line [K]up |
| Visual (Selection) | Q | mode() ==# 'V' ? ':normal! @<C-R>=reg_recorded()<CR><CR>' : 'Q' | :help v_Q-default |
| Visual (Selection) | [% | <Plug>(MatchitVisualMultiBackward) | ADD DESCRIPTION |
| Visual (Selection) | ]% | <Plug>(MatchitVisualMultiForward) | ADD DESCRIPTION |
| Visual (Selection) | a% | <Plug>(MatchitVisualTextObject) | ADD DESCRIPTION |
| Visual (Selection) | al | [No command] | Around last textobject |
| Visual (Selection) | an | [No command] | Around next textobject |
| Visual (Selection) | a | [No command] | Around textobject |
| Visual (Selection) | g% | <Plug>(MatchitVisualBackward) | ADD DESCRIPTION |
| Visual (Selection) | g] | [No command] | Move to right "around" |
| Visual (Selection) | g[ | [No command] | Move to left "around" |
| Visual (Selection) | gc | [No command] | Toggle comment |
| Visual (Selection) | gx | [No command] | Opens filepath or URI under cursor with the system handler (file explorer, web browser, …) |
| Visual (Selection) | il | [No command] | Inside last textobject |
| Visual (Selection) | in | [No command] | Inside next textobject |
| Visual (Selection) | i | [No command] | Inside textobject |
| Visual (Selection) | sa | :<C-U>lua MiniSurround.add('visual')<CR> | Add surrounding to selection |
| Visual (Selection) | <Plug>(MatchitVisualTextObject) | <Plug>(MatchitVisualMultiBackward)o<Plug>(MatchitVisualMultiForward) | ADD DESCRIPTION |
| Visual (Selection) | <Plug>(MatchitVisualMultiForward) | :<C-U>call matchit#MultiMatch("W",  "n")<CR>m'gv`` | ADD DESCRIPTION |
| Visual (Selection) | <Plug>(MatchitVisualMultiBackward) | :<C-U>call matchit#MultiMatch("bW", "n")<CR>m'gv`` | ADD DESCRIPTION |
| Visual (Selection) | <Plug>(MatchitVisualBackward) | :<C-U>call matchit#Match_wrapper('',0,'v')<CR>m'gv`` | ADD DESCRIPTION |
| Visual (Selection) | <Plug>(MatchitVisualForward) | :<C-U>call matchit#Match_wrapper('',1,'v')<CR>:if col("''") != col("$") | exe ":normal! m'" | endif<CR>gv`` | ADD DESCRIPTION |
| Command | <Plug>(TelescopeFuzzyCommandSearch) | <C-\>e "lua require('telescope.builtin').command_history { default_text = [=[" . escape(getcmdline(), '"') . "]=] }"<CR><CR> | ADD DESCRIPTION |
| Terminal | <C-T> | <C-\><C-N> | Exit terminal mode |
