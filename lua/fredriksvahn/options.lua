--vim.cmd 'language en_US'
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.g.have_nerd_font = true

local opt = vim.opt

opt.fillchars = { eob = ' ' }
opt.termguicolors = true
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.number = true
opt.relativenumber = true
opt.mouse = 'a'
opt.showmode = false

opt.list = false
vim.schedule(function()
  opt.clipboard = 'unnamedplus'
end)

opt.breakindent = true

opt.undofile = true

opt.ignorecase = true
opt.smartcase = true

opt.updatetime = 250

opt.timeoutlen = 300
opt.splitright = true
opt.splitbelow = true
opt.inccommand = 'split'
opt.cursorline = true
opt.scrolloff = 10
opt.foldcolumn = '0'


vim.api.nvim_create_autocmd("FileType", {
  pattern = "cs",
  callback = function()
    vim.opt_local.expandtab   = true
    vim.opt_local.shiftwidth  = 4
    vim.opt_local.tabstop     = 4
    vim.opt_local.softtabstop = 4
  end,
})
