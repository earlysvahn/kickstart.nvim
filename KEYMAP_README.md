# Keymap Cheat Sheet

This table contains the keymaps used in Neovim with their associated commands and descriptions.

| Mode  | Key | Command | Description |
|-------|-----|---------|-------------|
  | n | <Esc> | <Cmd>nohlsearch<CR> | Clear search highlights |
| n | freq | [No command] | [F]requency search |
| n | Z | [No command] | [Z] Search with Args |
| n | s/ | [No command] | [S]earch [/] in Open Files |
| n | / | [No command] | [/] Fuzzily search in current buffer |
| n | ghp | [No command] | [G]ithub [P]ull Requests |
| n | ghr | [No command] | [G]ithub [I]ssues |
| n | sn | [No command] | [S]earch [N]eovim files |
| n | sa | [No command] | [S]earch with [A]rgs (live grep) |
| n | cs | [No command] | [C]hoose [S]cheme with preview |
| n | s. | [No command] | [S]earch Recent Files ("." for repeat) |
| n | sr | [No command] | [S]earch [R]esume |
| n | sd | [No command] | [S]earch [D]iagnostics |
| n | sg | [No command] | [S]earch by [G]rep |
| n | sw | [No command] | [S]earch current [W]ord |
| n | ss | [No command] | [S]earch [S]elect Telescope |
| n | sf | [No command] | [S]earch [F]iles |
| n | sk | [No command] | [S]earch [K]eymaps |
| n | sh | [No command] | [S]earch [H]elp |
| n | nd | <Cmd>NoiceDismiss<CR> | Dismiss Noice Message |
| n | - | [No command] | ADD DESCRIPTION |
| n | bp | [No command] | [B]reakpoint [S]et |
| n | bt | [No command] | [B]reakpoint [T]oggle |
| n | 2 | [No command] | harpoon to file 2 |
| n | 1 | [No command] | harpoon to file 1 |
| n | a | [No command] | harpoon quick menu |
| n | A | [No command] | harpoon file |
| n | 5 | [No command] | harpoon to file 5 |
| n | 4 | [No command] | harpoon to file 4 |
| n | 3 | [No command] | harpoon to file 3 |
| n | fml | [No command] | ADD DESCRIPTION |
| n | f | [No command] | [F]ormat buffer |
| n | e | [No command] | NeoTree reveal |
| n | cfj | :s/{\s*/{\r    / \| s/: /: \r    /g \| s/, /,\r    /g \| s/\s*}/\r}/<CR> | [C]ode [F]ormat JSON object |
| n | cfl | :s/{\s*/{\r    / \| s/, /,\r    /g \| s/\s*}/\r}/<CR> | [C]ode [F]ormat Lua object |
| n | d | "_dd | [D]elete into " register |
| n | ya | gg"+yG | [Y]ank entire file into " register in normal mode |
| n | Y | "+Y | [Y]ank entire line into " register in normal mode |
| n | y | "+y | [Y]ank selected text into " register in normal mode |
| n | q | [No command] | Open diagnostic [Q]uickfix list |
| n | ) | ciw(<C-R>") | Replace word in parentheses [)] |
| n | ] | ciw[<C-R>"] | Replace word in square brackets [] |
| n | } | ciw{<C-R>"} | Replace word in curly braces [}] |
| n | ' | ciw'<C-R>"' | Replace word in single quotes ['] |
| n | " | ciw"<C-R>"" | Replace word in quotes [" |
| n | i | :e ~/.config/nvim/<CR> | Open [I]nit config |
| n | w | :setlocal formatoptions-=cro<CR>:w<CR> | [W]rite without auto comment |
| n | r | :%s/\<lt><C-R><C-W>\>/<C-R><C-W>/gI<Left><Left><Left> | [R]eplace word under cursor |
| n | % | <Plug>(MatchitNormalForward) | ADD DESCRIPTION |
| n | & | :&&<CR> | :help &-default |
| n | - | <Cmd>Oil<CR> | Open parent directory |
| n | Y | y$ | :help Y-default |
| n | [% | <Plug>(MatchitNormalMultiBackward) | ADD DESCRIPTION |
| n | [d | [No command] | Jump to the previous diagnostic |
| n | ]% | <Plug>(MatchitNormalMultiForward) | ADD DESCRIPTION |
| n | ]d | [No command] | Jump to the next diagnostic |
| n | g% | <Plug>(MatchitNormalBackward) | ADD DESCRIPTION |
| n | g] | [No command] | Move to right "around" |
| n | g[ | [No command] | Move to left "around" |
| n | gcc | [No command] | Toggle comment line |
| n | gc | [No command] | Toggle comment |
| n | gx | [No command] | Opens filepath or URI under cursor with the system handler (file explorer, web browser, …) |
| n | shn | [No command] | Highlight next surrounding |
| n | sFn | [No command] | Find next left surrounding |
| n | sfn | [No command] | Find next right surrounding |
| n | srn | [No command] | Replace next surrounding |
| n | sdn | [No command] | Delete next surrounding |
| n | shl | [No command] | Highlight previous surrounding |
| n | sFl | [No command] | Find previous left surrounding |
| n | sfl | [No command] | Find previous right surrounding |
| n | srl | [No command] | Replace previous surrounding |
| n | sdl | [No command] | Delete previous surrounding |
| n | sn | [No command] | Update `MiniSurround.config.n_lines` |
| n | sh | [No command] | Highlight surrounding |
| n | sF | [No command] | Find left surrounding |
| n | sf | [No command] | Find right surrounding |
| n | sr | [No command] | Replace surrounding |
| n | sd | [No command] | Delete surrounding |
| n | sa | [No command] | Add surrounding |
| n | zK | [No command] | Peek Fold |
| n | zM | [No command] | Close all folds |
| n | zR | [No command] | Open all folds |
| n | <Plug>PlenaryTestFile | :lua require('plenary.test_harness').test_file(vim.fn.expand("%:p"))<CR> | ADD DESCRIPTION |
| n | <Plug>(MatchitNormalMultiForward) | :<C-U>call matchit#MultiMatch("W",  "n")<CR> | ADD DESCRIPTION |
| n | <Plug>(MatchitNormalMultiBackward) | :<C-U>call matchit#MultiMatch("bW", "n")<CR> | ADD DESCRIPTION |
| n | <Plug>(MatchitNormalBackward) | :<C-U>call matchit#Match_wrapper('',0,'n')<CR> | ADD DESCRIPTION |
| n | <Plug>(MatchitNormalForward) | :<C-U>call matchit#Match_wrapper('',1,'n')<CR> | ADD DESCRIPTION |
| n | <F1> | [No command] | [F1] Step Into |
| n | <F5> | [No command] | [F5] Start/Continue |
| n | <F7> | [No command] | [F7] See last session result |
| n | <F3> | [No command] | [F3] Step Out |
| n | <F2> | [No command] | [F2] Step Over |
| n | <C-K> | <Cmd>NvimTmuxNavigateUp<CR> | ADD DESCRIPTION |
| n | <C-J> | <Cmd>NvimTmuxNavigateDown<CR> | ADD DESCRIPTION |
| n | <C-H> | <Cmd>NvimTmuxNavigateLeft<CR> | ADD DESCRIPTION |
| n | <Down> | <Cmd>echo "Use j to move!!"<CR> | Discourage using [Down] arrow |
| n | <Up> | <Cmd>echo "Use k to move!!"<CR> | Discourage using [Up] arrow |
| n | <Right> | <Cmd>echo "Use l to move!!"<CR> | Discourage using [Right] arrow |
| n | <Left> | <Cmd>echo "Use h to move!!"<CR> | Discourage using [Left] arrow |
| n | <C-Right> | :vertical resize +2<CR> | Resize vertical split [Right] |
| n | <C-Left> | :vertical resize -2<CR> | Resize vertical split [Left] |
| n | <C-S-Up> | :resize -2<CR> | Resize horizontal split [Up] |
| n | <C-S-Down> | :resize +2<CR> | Resize horizontal split [Down] |
| n | <C-W><C-D> | <C-W>d | Show diagnostics under the cursor |
| n | <C-W>d | [No command] | Show diagnostics under the cursor |
| n | <C-L> | <Cmd>NvimTmuxNavigateRight<CR> | ADD DESCRIPTION |
| v | f | [No command] | [F]ormat buffer |
| v | cfj | :s/{\s*/{\r    / \| s/: /: \r    /g \| s/, /,\r    /g \| s/\s*}/\r}/<CR> | [C]ode [F]ormat JSON object |
| v | cfl | :s/{\s*/{\r    / \| s/, /,\r    /g \| s/\s*}/\r}/<CR> | [C]ode [F]ormat Lua object |
| v | d | "_dd | [D]elete into " register |
| v | ya | gg"+yG | [Y]ank entire file into " register in visual mode |
| v | y | "+y | [Y]ank selected text into " register in visual mode |
| v | ) | c(<C-R>") | Replace selection with parentheses [)] |
| v | ] | c[<C-R>"] | Replace selection with square brackets [] |
| v | } | c{<C-R>"} | Replace selection with curly braces [}] |
| v | ' | c'<C-R>"' | Replace selection with single quotes ['] |
| v | " | c"<C-R>"" | Replace selection with quotes [" |
| v | # | [No command] | :help v_#-default |
| v | % | <Plug>(MatchitVisualForward) | ADD DESCRIPTION |
| v | * | [No command] | :help v_star-default |
| v | // | y/<C-R>"<CR> | Search for highlighted text in buffer |
| v | <lt> | <lt>gv | Indent left and stay in indent mode |
| v | > | >gv | Indent right and stay in indent mode |
| v | @ | mode() ==# 'V' ? ':normal! @'.getcharstr().'<CR>' : '@' | :help v_@-default |
| v | J | :m '>+1<CR>gv=gv | Move selected line [J]own |
| v | K | :m '<lt>-2<CR>gv=gv | Move selected line [K]up |
| v | Q | mode() ==# 'V' ? ':normal! @<C-R>=reg_recorded()<CR><CR>' : 'Q' | :help v_Q-default |
| v | [% | <Plug>(MatchitVisualMultiBackward) | ADD DESCRIPTION |
| v | ]% | <Plug>(MatchitVisualMultiForward) | ADD DESCRIPTION |
| v | a% | <Plug>(MatchitVisualTextObject) | ADD DESCRIPTION |
| v | al | [No command] | Around last textobject |
| v | an | [No command] | Around next textobject |
| v | a | [No command] | Around textobject |
| v | g% | <Plug>(MatchitVisualBackward) | ADD DESCRIPTION |
| v | g] | [No command] | Move to right "around" |
| v | g[ | [No command] | Move to left "around" |
| v | gc | [No command] | Toggle comment |
| v | gx | [No command] | Opens filepath or URI under cursor with the system handler (file explorer, web browser, …) |
| v | il | [No command] | Inside last textobject |
| v | in | [No command] | Inside next textobject |
| v | i | [No command] | Inside textobject |
| v | sa | :<C-U>lua MiniSurround.add('visual')<CR> | Add surrounding to selection |
| v | <Plug>(MatchitVisualTextObject) | <Plug>(MatchitVisualMultiBackward)o<Plug>(MatchitVisualMultiForward) | ADD DESCRIPTION |
| v | <Plug>(MatchitVisualMultiForward) | :<C-U>call matchit#MultiMatch("W",  "n")<CR>m'gv`` | ADD DESCRIPTION |
| v | <Plug>(MatchitVisualMultiBackward) | :<C-U>call matchit#MultiMatch("bW", "n")<CR>m'gv`` | ADD DESCRIPTION |
| v | <Plug>(MatchitVisualBackward) | :<C-U>call matchit#Match_wrapper('',0,'v')<CR>m'gv`` | ADD DESCRIPTION |
| v | <Plug>(MatchitVisualForward) | :<C-U>call matchit#Match_wrapper('',1,'v')<CR>:if col("''") != col("$") \| exe ":normal! m'" \| endif<CR>gv`` | ADD DESCRIPTION |
| i | <C-X> | [No command] | Codeium Clear |
| i | <C-G> | [No command] | Codeium Accept |
| i | <C-L> | codeium#AcceptNextLine() | ADD DESCRIPTION |
| i | <C-K> | codeium#AcceptNextWord() | ADD DESCRIPTION |
| i | <M-Bslash> | <Plug>(codeium-complete) | ADD DESCRIPTION |
| i | <M-[> | <Plug>(codeium-previous) | ADD DESCRIPTION |
| i | <M-]> | <Plug>(codeium-next-or-complete) | ADD DESCRIPTION |
| i | <C-]> | [No command] | Codeium Cycle Completions Next |
| i | <Plug>(codeium-complete) | <Cmd>call codeium#Complete()<CR> | ADD DESCRIPTION |
| i | <Plug>(codeium-previous) | <Cmd>call codeium#CycleCompletions(-1)<CR> | ADD DESCRIPTION |
| i | <Plug>(codeium-next-or-complete) | <Cmd>call codeium#CycleOrComplete()<CR> | ADD DESCRIPTION |
| i | <Plug>(codeium-next) | <Cmd>call codeium#CycleCompletions(1)<CR> | ADD DESCRIPTION |
| i | <Plug>(codeium-dismiss) | <Cmd>call codeium#Clear()<CR> | ADD DESCRIPTION |
| i | <C-W> | <C-G>u<C-W> | :help i_CTRL-W-default |
| i | <C-U> | <C-G>u<C-U> | :help i_CTRL-U-default |
| i | <Tab> | codeium#Accept() | ADD DESCRIPTION |
| x | f | [No command] | [F]ormat buffer |
| x | cfj | :s/{\s*/{\r    / \| s/: /: \r    /g \| s/, /,\r    /g \| s/\s*}/\r}/<CR> | [C]ode [F]ormat JSON object |
| x | cfl | :s/{\s*/{\r    / \| s/, /,\r    /g \| s/\s*}/\r}/<CR> | [C]ode [F]ormat Lua object |
| x | d | "_dd | [D]elete into " register |
| x | ya | gg"+yG | [Y]ank entire file into " register in visual mode |
| x | y | "+y | [Y]ank selected text into " register in visual mode |
| x | ) | c(<C-R>") | Replace selection with parentheses [)] |
| x | ] | c[<C-R>"] | Replace selection with square brackets [] |
| x | } | c{<C-R>"} | Replace selection with curly braces [}] |
| x | ' | c'<C-R>"' | Replace selection with single quotes ['] |
| x | " | c"<C-R>"" | Replace selection with quotes [" |
| x | # | [No command] | :help v_#-default |
| x | % | <Plug>(MatchitVisualForward) | ADD DESCRIPTION |
| x | * | [No command] | :help v_star-default |
| x | // | y/<C-R>"<CR> | Search for highlighted text in buffer |
| x | <lt> | <lt>gv | Indent left and stay in indent mode |
| x | > | >gv | Indent right and stay in indent mode |
| x | @ | mode() ==# 'V' ? ':normal! @'.getcharstr().'<CR>' : '@' | :help v_@-default |
| x | J | :m '>+1<CR>gv=gv | Move selected line [J]own |
| x | K | :m '<lt>-2<CR>gv=gv | Move selected line [K]up |
| x | Q | mode() ==# 'V' ? ':normal! @<C-R>=reg_recorded()<CR><CR>' : 'Q' | :help v_Q-default |
| x | [% | <Plug>(MatchitVisualMultiBackward) | ADD DESCRIPTION |
| x | ]% | <Plug>(MatchitVisualMultiForward) | ADD DESCRIPTION |
| x | a% | <Plug>(MatchitVisualTextObject) | ADD DESCRIPTION |
| x | al | [No command] | Around last textobject |
| x | an | [No command] | Around next textobject |
| x | a | [No command] | Around textobject |
| x | g% | <Plug>(MatchitVisualBackward) | ADD DESCRIPTION |
| x | g] | [No command] | Move to right "around" |
| x | g[ | [No command] | Move to left "around" |
| x | gc | [No command] | Toggle comment |
| x | gx | [No command] | Opens filepath or URI under cursor with the system handler (file explorer, web browser, …) |
| x | il | [No command] | Inside last textobject |
| x | in | [No command] | Inside next textobject |
| x | i | [No command] | Inside textobject |
| x | sa | :<C-U>lua MiniSurround.add('visual')<CR> | Add surrounding to selection |
| x | <Plug>(MatchitVisualTextObject) | <Plug>(MatchitVisualMultiBackward)o<Plug>(MatchitVisualMultiForward) | ADD DESCRIPTION |
| x | <Plug>(MatchitVisualMultiForward) | :<C-U>call matchit#MultiMatch("W",  "n")<CR>m'gv`` | ADD DESCRIPTION |
| x | <Plug>(MatchitVisualMultiBackward) | :<C-U>call matchit#MultiMatch("bW", "n")<CR>m'gv`` | ADD DESCRIPTION |
| x | <Plug>(MatchitVisualBackward) | :<C-U>call matchit#Match_wrapper('',0,'v')<CR>m'gv`` | ADD DESCRIPTION |
| x | <Plug>(MatchitVisualForward) | :<C-U>call matchit#Match_wrapper('',1,'v')<CR>:if col("''") != col("$") \| exe ":normal! m'" \| endif<CR>gv`` | ADD DESCRIPTION |
| c | <Plug>(TelescopeFuzzyCommandSearch) | <C-\>e "lua require('telescope.builtin').command_history { default_text = [=[" . escape(getcmdline(), '"') . "]=] }"<CR><CR> | ADD DESCRIPTION |
| t | <C-T> | <C-\><C-N> | Exit terminal mode |
