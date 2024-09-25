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

-- Buffer keymaps
vim.keymap.set('n', '[b', '<cmd>bprevious<cr>', { desc = '[B]uffer [P]revious' })
vim.keymap.set('n', '<leader>bp', '<cmd>bprevious<cr>', { desc = '[B]uffer [P]revious' })
vim.keymap.set('n', ']b', '<cmd>bnext<cr>', { desc = '[B]uffer [N]ext' })
vim.keymap.set('n', '<leader>bn', '<cmd>bnext<cr>', { desc = '[B]uffer [N]ext' })
vim.keymap.set('n', '<leader>bb', '<cmd>Telescope buffers<cr>', { desc = '[B]uffer [B]rowse' })
vim.keymap.set('n', '<leader>bd', '<cmd>bdelete<cr>', { desc = '[B]uffer [D]elete' })
vim.keymap.set('n', '<leader>ba', '<cmd>%bd|e#|bd#<cr>', { desc = '[B]uffer delete [A]ll' })
vim.keymap.set('n', '<leader>bo', '<cmd>%bd|e#|bd#<cr>', { desc = '[B]uffer [O]nly keep current' })
vim.keymap.set('n', '<leader>bh', '<cmd>BufferLineMovePrev<cr>', { desc = '[B]uffer move [L]eft' })
vim.keymap.set('n', '<leader>bl', '<cmd>BufferLineMoveNext<cr>', { desc = '[B]uffer move [R]ight' })
vim.keymap.set('n', '<leader>bt', '<cmd>BufferLineTogglePin<cr>', { desc = '[B]uffer [T]oggle pin' })
vim.keymap.set('n', '<leader>bc', '<cmd>BufferLinePickClose<cr>', { desc = '[B]uffer [C]lose pick' })
vim.keymap.set('n', '<leader>bf', '<cmd>BufferLineGoToBuffer 1<cr>', { desc = '[B]uffer [F]irst' })
vim.keymap.set('n', '<leader>bl', '<cmd>BufferLineGoToBuffer -1<cr>', { desc = '[B]uffer [L]ast' })

vim.keymap.set('n', '<leader>bb', '<cmd>b#<cr>', { desc = '[B]uffer toggle between [B]uffers' })

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
keymap.set('n', '<leader>d', '"_dd', { desc = '[D]elete into " register' })
keymap.set('v', '<leader>d', '"_dd', { desc = '[D]elete into " register' })

-- Stay in indent mode
keymap.set('v', '<', '<gv', { desc = 'Indent left and stay in indent mode' })
keymap.set('v', '>', '>gv', { desc = 'Indent right and stay in indent mode' })

-- Search for highlighted text in buffer
keymap.set('v', '//', 'y/<C-R>"<CR>', { desc = 'Search for highlighted text in buffer' })

-- Key mappings for formatting Lua tables, JavaScript objects, and JSON
-- This formats a Lua table, JavaScript object, or JSON into a multi-line structure

-- Normal mode mapping: Formats the current line as a Lua table
keymap.set('n', '<leader>cfl', ':s/{\\s*/{\\r    / | s/, /,\\r    /g | s/\\s*}/\\r}/<CR>', { desc = '[C]ode [F]ormat Lua object' })

-- Visual mode mapping: Formats the selected text as a Lua table
keymap.set('v', '<leader>cfl', ':s/{\\s*/{\\r    / | s/, /,\\r    /g | s/\\s*}/\\r}/<CR>', { desc = '[C]ode [F]ormat Lua object' })

-- Normal mode mapping: Formats the current line as JSON
keymap.set('n', '<leader>cfj', ':s/{\\s*/{\\r    / | s/: /: \\r    /g | s/, /,\\r    /g | s/\\s*}/\\r}/<CR>', { desc = '[C]ode [F]ormat JSON object' })

-- Visual mode mapping: Formats the selected text as JSON
keymap.set('v', '<leader>cfj', ':s/{\\s*/{\\r    / | s/: /: \\r    /g | s/, /,\\r    /g | s/\\s*}/\\r}/<CR>', { desc = '[C]ode [F]ormat JSON object' })
