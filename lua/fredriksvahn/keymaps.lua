local keymap = vim.keymap

keymap.set('n', '<leader>r', ':%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>', { desc = '[R]eplace word under cursor' })

keymap.set('n', '<leader>w', ':setlocal formatoptions-=cro<CR>:w<CR>', { noremap = true, silent = true, desc = '[W]rite without auto comment' })
keymap.set('n', '<space><space>i', ':e ~/.config/nvim/<CR>', { desc = 'Open [I]nit config' })

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
keymap.set('n', '<leader>y', '"+y', { desc = '[Y]ank into " register' })
keymap.set('v', '<leader>y', '"+y', { desc = '[Y]ank into " register' })
keymap.set('n', '<leader>Y', '"+Y', { desc = '[Y]ank into " register' })

-- Delete text to " register
keymap.set('n', '<leader>d', '"_d', { desc = '[D]elete into " register' })
keymap.set('v', '<leader>d', '"_d', { desc = '[D]elete into " register' })

-- Stay in indent mode
keymap.set('v', '<', '<gv', { desc = 'Indent left and stay in indent mode' })
keymap.set('v', '>', '>gv', { desc = 'Indent right and stay in indent mode' })

-- Search for highlighted text in buffer
keymap.set('v', '//', 'y/<C-R>"<CR>', { desc = 'Search for highlighted text in buffer' })
