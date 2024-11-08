local keymap = vim.keymap

keymap.set('n', '<leader>r', ':%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>', { desc = '[R]eplace word under cursor' })

keymap.set('n', '<C-a>', '<C-w>p', { silent = true, desc = 'Switch to Last Window' })
keymap.set('n', '<leader>w', ':setlocal formatoptions-=cro<CR>:w<CR>', { noremap = true, silent = true, desc = '[W]rite without auto comment' })
keymap.set('n', '<space><space>i', ':e ~/.config/nvim/<CR>', { desc = 'Open [I]nit config' })
keymap.set('n', '<leader>ss', ':!tmux popup -E bash ~/dotfiles/config/tmux/tmux-sessionizer.sh<CR>')
keymap.set('n', '<space>ss', ':!tmux popup -E bash ~/dotfiles/config/tmux/tmux-sessionizer.sh<CR>')

keymap.set('v', 'J', ":m '>+1<CR>gv=gv", { desc = 'Move selected line [J]own' })
keymap.set('v', 'K', ":m '<-2<CR>gv=gv", { desc = 'Move selected line [K]up' })
keymap.set('n', '<space>"', 'ciw"<C-r>""', { desc = 'Replace word in quotes ["' })
keymap.set('n', "<space>'", "ciw'<C-r>\"'", { desc = "Replace word in single quotes [']" })
keymap.set('n', '<space>}', 'ciw{<C-r>"}', { desc = 'Replace word in curly braces [}]' })
keymap.set('n', '<space>]', 'ciw[<C-r>"]', { desc = 'Replace word in square brackets []' })
keymap.set('n', '<space>)', 'ciw(<C-r>")', { desc = 'Replace word in parentheses [)]' })
keymap.set('v', '<space>"', 'c"<C-r>""', { desc = 'Replace selection with quotes ["' })
keymap.set('v', "<space>'", "c'<C-r>\"'", { desc = "Replace selection with single quotes [']" })
keymap.set('v', '<space>}', 'c{<C-r>"}', { desc = 'Replace selection with curly braces [}]' })
keymap.set('v', '<space>]', 'c[<C-r>"]', { desc = 'Replace selection with square brackets []' })
keymap.set('v', '<space>)', 'c(<C-r>")', { desc = 'Replace selection with parentheses [)]' })

-- Buffer keymaps
keymap.set('n', '[b', '<cmd>bprevious<cr>', { desc = '[B]uffer [P]revious' })
keymap.set('n', '<leader>bp', '<cmd>bprevious<cr>', { desc = '[B]uffer [P]revious' })
keymap.set('n', ']b', '<cmd>bnext<cr>', { desc = '[B]uffer [N]ext' })
keymap.set('n', '<leader>bn', '<cmd>bnext<cr>', { desc = '[B]uffer [N]ext' })
keymap.set('n', '<leader>bb', '<cmd>b#<cr>', { desc = '[B]uffer toggle between [B]uffers' }) -- Fixed single purpose for <leader>bb
keymap.set('n', '<leader>bd', '<cmd>bdelete<cr>', { desc = '[B]uffer [D]elete' })
keymap.set('n', '<leader>ba', '<cmd>%bd|e#|bd#<cr>', { desc = '[B]uffer delete [A]ll' })
keymap.set('n', '<leader>bo', '<cmd>%bd|e#|bd#<cr>', { desc = '[B]uffer [O]nly keep current' })
keymap.set('n', '<leader>bh', '<cmd>BufferLineMovePrev<cr>', { desc = '[B]uffer move [L]eft' })
keymap.set('n', '<leader>bj', '<cmd>BufferLineMoveNext<cr>', { desc = '[B]uffer move [R]ight' }) -- Changed from bl to bj to avoid conflict
keymap.set('n', '<leader>bt', '<cmd>BufferLineTogglePin<cr>', { desc = '[B]uffer [T]oggle pin' })
keymap.set('n', '<leader>bc', '<cmd>BufferLinePickClose<cr>', { desc = '[B]uffer [C]lose pick' })
keymap.set('n', '<leader>bf', '<cmd>BufferLineGoToBuffer 1<cr>', { desc = '[B]uffer [F]irst' })
keymap.set('n', '<leader>bl', '<cmd>BufferLineGoToBuffer -1<cr>', { desc = '[B]uffer [L]ast' })

-- Resize with arrows
keymap.set('n', '<C-S-Down>', ':resize +2<CR>', { desc = 'Resize horizontal split [Down]' })
keymap.set('n', '<C-S-Up>', ':resize -2<CR>', { desc = 'Resize horizontal split [Up]' })
keymap.set('n', '<C-Left>', ':vertical resize -2<CR>', { desc = 'Resize vertical split [Left]' })
keymap.set('n', '<C-Right>', ':vertical resize +2<CR>', { desc = 'Resize vertical split [Right]' })

keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>', { desc = 'Clear search highlights' })

keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode shortcut
keymap.set('t', '<C-t>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>', { desc = 'Discourage using [Left] arrow' })
keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>', { desc = 'Discourage using [Right] arrow' })
keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>', { desc = 'Discourage using [Up] arrow' })
keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>', { desc = 'Discourage using [Down] arrow' })

keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Copy text to " register
keymap.set('n', '<leader>y', '"+y', { desc = '[Y]ank selected text into " register in normal mode' })
keymap.set('v', '<leader>y', '"+y', { desc = '[Y]ank selected text into " register in visual mode' })
keymap.set('n', '<leader>Y', '"+Y', { desc = '[Y]ank entire line into " register in normal mode' })
keymap.set('n', '<leader>ya', 'gg"+yG', { noremap = true, silent = true, desc = '[Y]ank entire file into " register in normal mode' })
keymap.set('v', '<leader>ya', 'gg"+yG', { noremap = true, silent = true, desc = '[Y]ank entire file into " register in visual mode' })

-- Delete text to " register
keymap.set('n', '<leader>_', '"_dd', { desc = '[D]elete into " register' })
keymap.set('v', '<leader>_', '"_dd', { desc = '[D]elete into " register' })

-- Stay in indent mode
keymap.set('v', '<', '<gv', { desc = 'Indent left and stay in indent mode' })
keymap.set('v', '>', '>gv', { desc = 'Indent right and stay in indent mode' })

-- Search for highlighted text in buffer
keymap.set('v', '//', 'y/<C-R>"<CR>', { desc = 'Search for highlighted text in buffer' })

-- C#
vim.keymap.set('n', '<Leader>cu', require('fredriksvahn.utils.globalusings').move_usings_to_global, { desc = '[C#] Move usings to GlobalUsings.cs' })
vim.keymap.set('n', '<Leader>cc', ':!dotnet build<CR>', { desc = '[C#] [B]uild Project' })
vim.keymap.set('n', '<Leader>cr', ':!dotnet run<CR>', { desc = '[C#] [R]un Project' })
vim.keymap.set('n', '<Leader>cf', ':!dotnet format<CR>', { desc = '[C#] [F]ormat Code' })
vim.keymap.set('n', '<Leader>ct', ':!dotnet test<CR>', { desc = '[C#] Run [T]ests' })
