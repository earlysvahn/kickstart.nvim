return {
  'Exafunction/codeium.vim',
  event = 'BufEnter',
  config = function()
    vim.keymap.set('i', '<C-g>', function()
      return vim.fn['codeium#Accept']()
    end, { expr = true, silent = true, desc = '[C]odeium Accept' })

    vim.keymap.set('i', '<C-x>', function()
      return vim.fn['codeium#Clear']()
    end, { expr = true, silent = true, desc = '[C]odeium [X]it' })

    vim.keymap.set('i', '<C-]>', function()
      return vim.fn
    end, { expr = true, silent = true, desc = 'Codeium Cycle Completions Next' })

    vim.keymap.set('n', '<C-a>', '<C-w>p', { silent = true, desc = 'Switch to Last Window' })

    vim.g.codeium_filetypes = {
      markdown = false,
    }
  end,
}
