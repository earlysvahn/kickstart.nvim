# Keymap Cheat Sheet

This table contains the keymaps used in Neovim with their associated commands and descriptions.

| Mode  | Key | Command | Description |
|-------|-----|---------|-------------|
| n | <Esc> | <Cmd>nohlsearch<CR> | Clear search highlights |
| n |  freq | [No command] | [F]requency search |
| n |  Z | [No command] | [Z] Search with Args |
| n |  s/ | [No command] | [S]earch [/] in Open Files |
| n |  / | [No command] | [/] Fuzzily search in current buffer |
| n |  ghp | [No command] | [G]ithub [P]ull Requests |
| n |  ghr | [No command] | [G]ithub [I]ssues |
| n |  sn | [No command] | [S]earch [N]eovim files |
| n |  sa | [No command] | [S]earch with [A]rgs (live grep) |
| n |  cs | [No command] | [C]hoose [S]cheme with preview |
| n |    | [No command] | [ ] Find existing buffers |
| n |  s. | [No command] | [S]earch Recent Files ("." for repeat) |
| n |  sr | [No command] | [S]earch [R]esume |
| n |  sd | [No command] | [S]earch [D]iagnostics |
| n |  sg | [No command] | [S]earch by [G]rep |
| n |  sw | [No command] | [S]earch current [W]ord |
| n |  ss | [No command] | [S]earch [S]elect Telescope |
| n |  sf | [No command] | [S]earch [F]iles |
| n |  sk | [No command] | [S]earch [K]eymaps |
| n |  sh | [No command] | [S]earch [H]elp |
| n |  nd | <Cmd>NoiceDismiss<CR> | Dismiss Noice Message |
| n |  bp | [No command] | [B]reakpoint [S]et |
| n |  bt | [No command] | [B]reakpoint [T]oggle |
| n |  - | [No command] | ADD DESCRIPTION |
| n |  fml | [No command] | ADD DESCRIPTION |
| n |  f | [No command] | [F]ormat buffer |
| n |  e | [No command] | NeoTree reveal |
| n |  A | [No command] | harpoon file |
| n |  5 | [No command] | harpoon to file 5 |
| n |  4 | [No command] | harpoon to file 4 |
| n |  3 | [No command] | harpoon to file 3 |
| n |  2 | [No command] | harpoon to file 2 |
| n |  1 | [No command] | harpoon to file 1 |
| n |  a | [No command] | harpoon quick menu |
| n |  cfj | :s/{\s*/{\r    / | s/: /: \r    /g | s/, /,\r    /g | s/\s*}/\r}/<CR> | [C]ode [F]ormat JSON object |
| n |  cfl | :s/{\s*/{\r    / | s/, /,\r    /g | s/\s*}/\r}/<CR> | [C]ode [F]ormat Lua object |
| n |  d | "_dd | [D]elete into " register |
| n |  ya | gg"+yG | [Y]ank entire file into " register in normal mode |
| n |  Y | "+Y | [Y]ank entire line into " register in normal mode |
| n |  y | "+y | [Y]ank selected text into " register in normal mode |
| n |  q | [No command] | Open diagnostic [Q]uickfix list |
| n |  ) | ciw(<C-R>") | Replace word in parentheses [)] |
| n |  ] | ciw[<C-R>"] | Replace word in square brackets [] |
| n |  } | ciw{<C-R>"} | Replace word in curly braces [}] |
| n |  ' | ciw'<C-R>"' | Replace word in single quotes ['] |
| n |  " | ciw"<C-R>"" | Replace word in quotes [" |
| n |   i | :e ~/.config/nvim/<CR> | Open [I]nit config |
| n |  w | :setlocal formatoptions-=cro<CR>:w<CR> | [W]rite without auto comment |
| n |  r | :%s/\<lt><C-R><C-W>\>/<C-R><C-W>/gI<Left><Left><Left> | [R]eplace word under cursor |
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
| n | <F3> | [No command] | [F3] Step Out |
| n | <F2> | [No command] | [F2] Step Over |
| n | <F1> | [No command] | [F1] Step Into |
| n | <F5> | [No command] | [F5] Start/Continue |
| n | <F7> | [No command] | [F7] See last session result |
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
