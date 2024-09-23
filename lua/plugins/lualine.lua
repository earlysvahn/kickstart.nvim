return {
  'nvim-lualine/lualine.nvim',
  opts = function(_, opts)
    opts.options = {
      component_separators = '', -- ? | ? ? ? ? ? ? ? ?
      section_separators = '', -- { left = "?", right = "?" },
    }

    opts.extensions = { 'neo-tree', 'lazy', 'quickfix', 'nvim-tree' }
  end,
}
