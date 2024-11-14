return {
  'lewis6991/gitsigns.nvim',
  opts = {
    signs = {
      add = { text = '+' },
      change = { text = '~' },
      delete = { text = '_' },
      topdelete = { text = '‾' },
      changedelete = { text = '~' },
    },
    signcolumn = false,
    on_attach = function(bufnr)
      local gs = package.loaded.gitsigns

      vim.keymap.set('n', '<leader>gb', gs.toggle_current_line_blame, { buffer = bufnr, desc = '[G]it [B]lame toggle' })

      vim.keymap.set('n', '<leader>gB', gs.blame_line, { buffer = bufnr, desc = '[G]it [B]lame line' })
    end,
  },
}
